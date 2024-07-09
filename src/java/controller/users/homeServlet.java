package controller.users;

import constant.Constant;
import dal.impl.ProductDAO;
import entity.PageControll;
import entity.Products;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class homeServlet extends HttpServlet {

    ProductDAO productDAO = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        //set enconding UTF-8
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        PageControll pageControll = new PageControll();
        //get du lieu tu db len
        List<Products> listProduct = findProductDoGet(request, pageControll);

        session.setAttribute("listProduct", listProduct);
        request.setAttribute("pageControl", pageControll);
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    private List<Products> findProductDoGet(HttpServletRequest request, PageControll pageControl) {
        //get page
        String pageRaw = request.getParameter("page");
        //valid page
        int page;
        try {
            page = Integer.parseInt(pageRaw);
        } catch (NumberFormatException e) {
            page = 1;
        }

        List<Products> listProduct;
        //get về action:
        String action = request.getParameter("search") == null
                ? "defaultFindAll"
                : request.getParameter("search");
        //dựa theo giá trị action
        switch (action) {
            //tìm kiếm các quyển sách bằng từ khóa
            case "searchByName":
                //get về keyword muốn tìm kiếm
                String keyword = request.getParameter("keyword");
                //tìm về các quyển sách dựa theo thuộc tính name và keyword muốn tìm kiếm
                listProduct = productDAO.findContainsByProperty("productName", keyword);
                break;
            case "filter-price":
                float minPrice;
                float maxPrice;
                try {
                    minPrice = Float.parseFloat(request.getParameter("minPrice"));
                    maxPrice = Float.parseFloat(request.getParameter("maxPrice"));
                } catch (NumberFormatException e) {
                    minPrice = 0;
                    maxPrice = Float.MAX_VALUE;
                }
                listProduct = productDAO.findByMinMaxPrice(minPrice, maxPrice, page);
                break;
            case "searchByPriceIncrease":
                listProduct = productDAO.findByPriceIncrease();
                break;
            case "searchByPriceDecrease":
                listProduct = productDAO.findByPriceDecrease();
                break;
            default:
                listProduct = productDAO.findAll();
                break;
        }
        //total Record
        int totalRecord = listProduct.size();
        //totalPage
        int totalPage = (totalRecord % Constant.RECORD_PER_PAGE) == 0
                ? (totalRecord / Constant.RECORD_PER_PAGE)
                : (totalRecord / Constant.RECORD_PER_PAGE) + 1;

        //set page vào pageControl
        pageControl.setPage(page);
        //set totalRecord vào pageControl
        pageControl.setTotalRecord(totalRecord);
        //set total page
        pageControl.setTotalPage(totalPage);
        return listProduct;
    }

}
