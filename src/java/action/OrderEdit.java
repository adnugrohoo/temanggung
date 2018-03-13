package action;

import com.dao.ComPekerjaanDao;
import com.entity.ComPekerjaan;
import dao.DocterDao;
import dao.OrderDao;
import dao.PatientDao;
import entity.Docter;
import entity.Order;
import entity.Hospital;
import entity.Patient;
import java.sql.SQLException;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import service.ConnectionMySQL;

/**
 *
 * @author mazipan
 */
public class OrderEdit implements ActionInterface {

    @Override
    public String execute(HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        Hospital hospital = (Hospital) session.getAttribute("loginashospital");
        Order order = null;
        List<Patient> patientList = new ArrayList<>();
        List<Docter> docterList = new ArrayList<>();
        List<String> tampungTanggalSemua = new ArrayList<>();
        String[] tanggal = null, tanggalMasuk = null, tanggalDigunakan = null;
        String bulanString = null, bulanMasukString = null, bulanDigunakanString = null;
        if (hospital != null) {
            try {
                OrderDao orderDAO = ConnectionMySQL.getOrderDao();
                PatientDao patientDAO = ConnectionMySQL.getPatientDao();
                DocterDao docterDAO = ConnectionMySQL.getDocterDao();

                try {

                    String idStr = request.getParameter("id");
                    if (idStr != null) {
                        Integer idBook = Integer.parseInt(idStr);
                        System.out.println("idorder edit : " + idBook);

                        order = orderDAO.getOrderById(idBook);
                        tanggal = order.getOrderTanggal().split("-");
                        tanggalMasuk = order.getOrderTanggalMasuk().split("-");
                        tanggalDigunakan = order.getOrderTanggalDigunakan().split("-");

                        bulanString = new DateFormatSymbols(new Locale("id", "ID", "id-ID")).getMonths()[Integer.parseInt(tanggal[1]) - 1];
                        bulanMasukString = new DateFormatSymbols(new Locale("id", "ID", "id-ID")).getMonths()[Integer.parseInt(tanggalMasuk[1]) - 1];
                        bulanDigunakanString = new DateFormatSymbols(new Locale("id", "ID", "id-ID")).getMonths()[Integer.parseInt(tanggalDigunakan[1]) - 1];
                        
                        //Mengembalikan nilai tanggal order
                        request.setAttribute("tanggalorder", tanggal[2]);
                        request.setAttribute("bulanorder", tanggal[1]);
                        request.setAttribute("bulanstringorder", bulanString);
                        request.setAttribute("tahunorder", tanggal[0]);
                        
                        //Mengembalikan nilai tanggal masuk order
                        request.setAttribute("tanggalmasukorder", tanggalMasuk[2]);
                        request.setAttribute("bulanmasukorder", tanggalMasuk[1]);
                        request.setAttribute("bulanmasukstringorder", bulanMasukString);
                        request.setAttribute("tahunmasukorder", tanggalMasuk[0]);
                        
                        //Mengembalikan nilai tanggal digunakan order
                        request.setAttribute("tanggaldigunakanorder", tanggalDigunakan[2]);
                        request.setAttribute("bulandigunakanorder", tanggalDigunakan[1]);
                        request.setAttribute("bulandigunakanstringorder", bulanDigunakanString);
                        request.setAttribute("tahundigunakanorder", tanggalDigunakan[0]);
                    }

                    patientList = patientDAO.selectAll();
                    docterList = docterDAO.selectAll();

                } catch (Exception ex) {
//                    Logger.getLogger(AdminCategory.class.getName()).log(Level.SEVERE, null, ex);
                }

            } catch (SQLException ex) {
//                Logger.getLogger(AdminCategory.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            return "index.jsp";
        }

        request.setAttribute("orderforedit", order);
        request.setAttribute("patients", patientList);
        request.setAttribute("docters", docterList);

        return "orderEdit.jsp";

    }

}
