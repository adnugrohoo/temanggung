package action;

import dao.OrderDao;
import entity.Hospital;
import entity.Order;
import entity.StaffPmi;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import service.ConnectionMySQL;

/**
 *
 * @author Martin
 */
public class UbahStatusOrderII implements ActionInterface {

    @Override
    public String execute(HttpServletRequest request) {
        int page = 1;
        int recordsPerPage = 10;
        HttpSession session = request.getSession(true);
        Hospital administrator = (Hospital) session.getAttribute("loginashospital");
        String msg = "Gagal mengubah status order";
        List<Order> orders = new ArrayList<>();

        if (administrator != null) {
            try {
                OrderDao orderDAO = ConnectionMySQL.getOrderDao();

                try {

                    String idStr = request.getParameter("id");
                    if (idStr != null) {
                        Integer idOrder = Integer.parseInt(idStr);

                        orderDAO.updateStatusOrderII(idOrder);
                        msg = "Order has been delete";

                        try {
                            String pageStr = request.getParameter("page");
                            if (pageStr != null) {
                                page = Integer.parseInt(pageStr);
                            }
                            request.setAttribute("currentPage", page);

                            //books = bookDAO.selectAll();
                            orders = orderDAO.selectAllWithLimit((page - 1) * recordsPerPage, recordsPerPage);
                            System.out.println("orders " + orders.size());

                            int noOfRecords = orderDAO.getNoOfRecords();
                            int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);

                            request.setAttribute("noOfPages", noOfPages);
                            request.setAttribute("currentPage", page);
                        } catch (Exception ex) {
                        }

                        msg = "Order has been saved";
                        request.setAttribute("orders", orders);
                        return "orderList.jsp";
                    }

                } catch (Exception ex) {
                    msg = "Failed to delete docter " + ex.getMessage();
//                    Logger.getLogger(AdminCategory.class.getName()).log(Level.SEVERE, null, ex);
                }

            } catch (SQLException ex) {
                msg = "Failed to delete docter " + ex.getMessage();
//                Logger.getLogger(AdminCategory.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            return "index.jsp";
        }

        request.setAttribute("msg", msg);
        return "orderList.jsp";

    }

}
