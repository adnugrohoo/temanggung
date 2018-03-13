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
 * @author mazipan
 */
public class UbahStatusOrderI implements ActionInterface {

    @Override
    public String execute(HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        StaffPmi staffPmi = (StaffPmi) session.getAttribute("loginasStaffPmi");
        String msg = "Gagal mengubah status order";
       List<Order> orders = new ArrayList<>();

        if (staffPmi != null) { 
            try {
                OrderDao orderDAO = ConnectionMySQL.getOrderDao();

                try {

                    String idStr = request.getParameter("id");
                    if (idStr != null) {
                        Integer idOrder = Integer.parseInt(idStr);
                        

                        orderDAO.updateStatusOrderI(idOrder);
                        msg = "Order has been delete";

                        try {
                            orders = orderDAO.tampilOrderStatusBelum();
                        } catch (Exception ex) {
                        }

                        msg = "Order has been saved";
                        request.setAttribute("orders", orders);

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
        return "homeStaffPmi.jsp";

    }


}
