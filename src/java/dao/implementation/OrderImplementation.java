/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.implementation;

import com.dao.ComGolonganDarahDao;
import com.dao.ComKomponenDarahDao;
import com.entity.ComGolonganDarah;
import com.entity.ComKomponenDarah;
import dao.DocterDao;
import dao.OrderDao;
import dao.HospitalDao;
import dao.KomponenDao;
import dao.PatientDao;
import entity.Docter;
import entity.Order;
import entity.Hospital;
import entity.Komponen;
import entity.Patient;
import java.awt.Cursor;
import java.awt.Desktop;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperPrintManager;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import org.apache.poi.util.IOUtils;
import service.ConnectionMySQL;

/**
 *
 * @author heri
 */
public class OrderImplementation implements OrderDao {

    private Connection connection;
    public String reportName;
    public String fullPath;
    public String[] isiDir;
    public String reportDir;
    public JasperReport JRpt;
    public JasperPrint JPrint;
    public JasperExportManager ekspor;

    public OrderImplementation(Connection pConnection) {
        this.connection = pConnection;
    }

    @Override
    public void insert(Order pOrder) {
        PreparedStatement statement;
        statement = null;
        try {
            connection.setAutoCommit(false);

            String sql = "INSERT INTO torder SET "
                    + "orderNo = ?, "
                    + "orderTanggal = ?, "
                    + "orderNoKartu = ?, "
                    + "orderHb = ?, "
                    + "orderDiagnosa = ?, "
                    + "orderKelas = ?, "
                    + "orderBangsal = ?, "
                    + "orderTanggalMasuk = ?, "
                    + "orderTanggalDigunakan = ?, "
                    + "orderJmlMinta = ?, "
                    + "comKomponenDarahId = ?, "
                    + "orderStatus = ?, "
                    + "patientId = ?, "
                    + "docterId = ?, "
                    + "hospitalId=?;";

            statement = connection.prepareStatement(sql);

            statement.setString(1, pOrder.getOrderNo());
            statement.setString(2, pOrder.getOrderTanggal());
            statement.setString(3, pOrder.getOrderNoKartu());
            statement.setString(4, pOrder.getOrderHb());
            statement.setString(5, pOrder.getOrderDiagnosa());
            statement.setString(6, pOrder.getOrderKelas());
            statement.setString(7, pOrder.getOrderBangsal());
            statement.setString(8, pOrder.getOrderTanggalMasuk());
            statement.setString(9, pOrder.getOrderTanggalDigunakan());
            statement.setString(10, pOrder.getOrderJmlMinta());
            statement.setInt(11, pOrder.getOrderKomponenDarah().getKomponenId());
            statement.setString(12, "2");
            statement.setInt(13, pOrder.getPatient().getPatientId());
            statement.setInt(14, pOrder.getDocter().getDocterId());
            statement.setInt(15, pOrder.getHospital().getHospitalId());

            System.out.println(statement.toString());
            statement.executeUpdate();
            connection.commit();
        } catch (SQLException e) {
            try {
                try {
                    connection.rollback();
                } catch (SQLException ex) {
                }
                throw new Exception(e.getMessage());
            } catch (Exception ex) {
                Logger.getLogger(OrderImplementation.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException e) {
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                }
            }
        }
    }

    @Override
    public void update(Order pOrder) {

        PreparedStatement statement;
        statement = null;
        try {
            connection.setAutoCommit(false);

            String sql = "UPDATE torder SET orderNo = ?, "
                    + "orderTanggal = ?, "
                    + "orderNoKartu = ?, "
                    + "orderHb = ?, "
                    + "orderDiagnosa = ?, "
                    + "orderKelas = ?, "
                    + "orderBangsal = ?, "
                    + "orderTanggalMasuk = ?, "
                    + "orderTanggalDigunakan = ?, "
                    + "orderJmlMinta = ?, "
                    + "patientId = ?, "
                    + "docterId = ?, "
                    + "hospitalId = ? WHERE orderId = ?";

            statement = connection.prepareStatement(sql);

            statement.setString(1, pOrder.getOrderNo());
            statement.setString(2, pOrder.getOrderTanggal());
            statement.setString(3, pOrder.getOrderNoKartu());
            statement.setString(4, pOrder.getOrderHb());
            statement.setString(5, pOrder.getOrderDiagnosa());
            statement.setString(6, pOrder.getOrderKelas());
            statement.setString(7, pOrder.getOrderBangsal());
            statement.setString(8, pOrder.getOrderTanggalMasuk());
            statement.setString(9, pOrder.getOrderTanggalDigunakan());
            statement.setString(10, pOrder.getOrderJmlMinta());
            statement.setInt(11, pOrder.getPatient().getPatientId());
            statement.setInt(12, pOrder.getDocter().getDocterId());
            statement.setInt(13, pOrder.getHospital().getHospitalId());

            statement.setInt(14, pOrder.getOrderId());

            System.out.println(statement.toString());
            statement.executeUpdate();
            connection.commit();
        } catch (SQLException e) {
            try {
                try {
                    connection.rollback();
                } catch (SQLException ex) {
                }
                throw new Exception(e.getMessage());
            } catch (Exception ex) {
                Logger.getLogger(OrderImplementation.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException e) {
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                }
            }
        }
    }

    @Override
    public void delete(Integer pOrderId) {
        PreparedStatement statement;
        statement = null;
        try {
            connection.setAutoCommit(false);

            String sql = "DELETE FROM torder WHERE orderId = ?";

            statement = connection.prepareStatement(sql);
            statement.setInt(1, pOrderId);

            System.out.println(statement.toString());
            statement.executeUpdate();
            connection.commit();
        } catch (SQLException e) {
            try {
                try {
                    connection.rollback();
                } catch (SQLException ex) {
                }
                throw new Exception(e.getMessage());
            } catch (Exception ex) {
                Logger.getLogger(OrderImplementation.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException e) {
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                }
            }
        }
    }

    /**
     *
     * @return @throws Exception
     */
    @Override
    public List<Order> selectAll() throws Exception {
        PreparedStatement statement;
        ResultSet resultSet;
        statement = null;
        resultSet = null;
        List<Order> list;
        try {
            list = new ArrayList<>();
            connection.setAutoCommit(false);

            String sql = "SELECT * \n"
                    + "FROM torder o INNER JOIN patient p ON o.patientId=p.patientId \n"
                    + "INNER JOIN comGolonganDarah g ON p.comGolonganDarahId=g.comGolonganDarahId \n"
                    + "ORDER BY o.orderTanggal desc";
            System.out.println(sql);

            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Order order = new Order();

                Patient oPatient = new Patient();
                PatientDao patientDao = ConnectionMySQL.getPatientDao();
                oPatient = patientDao.selectPatientById(resultSet.getInt("patientId"));

                ComGolonganDarah oComGolonganDarah = new ComGolonganDarah();
                ComGolonganDarahDao oComGolonganDarahDao = ConnectionMySQL.getComGolonganDarahDao();
                oComGolonganDarah = oComGolonganDarahDao.selectComGolonganDarahById(resultSet.getInt("comGolonganDarahId"));

//                Hospital oHospital;
//                HospitalDao hospitalDao = ConnectionMySQL.getHospitalDao();
//                oHospital = hospitalDao.getHospitalById(resultSet.getInt("hospitalId"));
//
//                order.setHospital(oHospital);
                oPatient.setComGolonganDarah(oComGolonganDarah);
                order.setPatient(oPatient);
                order.setOrderId(resultSet.getInt("orderId"));
                order.setOrderNo(resultSet.getString("orderNo"));
                order.setOrderTanggal(resultSet.getString("orderTanggal"));
                order.setOrderNoKartu(resultSet.getString("orderNoKartu"));
                order.setOrderHb(resultSet.getString("orderHb"));
                order.setOrderDiagnosa(resultSet.getString("orderDiagnosa"));
                order.setOrderKelas(resultSet.getString("orderKelas"));
                order.setOrderBangsal(resultSet.getString("orderBangsal"));
                order.setOrderTanggalMasuk(resultSet.getString("orderTanggalMasuk"));
                order.setOrderTanggalDigunakan(resultSet.getString("orderTanggalDigunakan"));
                order.setOrderJmlMinta(resultSet.getString("orderJmlMinta"));
                order.setOrderJenisPermintaan(resultSet.getString("orderJenisPermintaan"));
                order.setOrderStatus(resultSet.getString("orderStatus"));

                list.add(order);
            }

            connection.setAutoCommit(false);
            connection.commit();
            return list;
        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException ex) {
            }
            throw new Exception(e.getMessage());
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException e) {
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                }
            }
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException ex) {
                }
            }
        }
    }

    @Override
    public List<Order> selectAllWithLimit(int offset, int noOfRecords) throws Exception {
        PreparedStatement statement;
        ResultSet resultSet;
        statement = null;
        resultSet = null;
        List<Order> list;
        try {
            list = new ArrayList<>();
            connection.setAutoCommit(false);

            String sql = "SELECT * \n"
                    + "FROM torder o INNER JOIN patient p ON o.patientId=p.patientId\n"
                    + "ORDER BY o.orderStatus, o.orderTanggal DESC LIMIT " + offset + "," + noOfRecords + ";";

            System.out.println(sql);

            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Order order = new Order();

                Hospital oHospital;
                Patient oPatient = new Patient();
                Docter oDocter = new Docter();

                HospitalDao hospitalDao = ConnectionMySQL.getHospitalDao();
                PatientDao patientDao = ConnectionMySQL.getPatientDao();
                DocterDao docterDao = ConnectionMySQL.getDocterDao();

                oHospital = hospitalDao.selectHospitalById(resultSet.getInt("hospitalId"));
                oPatient = patientDao.selectPatientById(resultSet.getInt("patientId"));
                oDocter = docterDao.selectDocterById(noOfRecords);

                order.setHospital(oHospital);
                order.setOrderId(resultSet.getInt("orderId"));
                order.setOrderNo(resultSet.getString("orderNo"));
                order.setOrderTanggal(resultSet.getString("orderTanggal"));
                order.setOrderNoKartu(resultSet.getString("orderNoKartu"));
                order.setOrderHb(resultSet.getString("orderHb"));
                order.setOrderDiagnosa(resultSet.getString("orderDiagnosa"));
                order.setOrderKelas(resultSet.getString("orderKelas"));
                order.setOrderBangsal(resultSet.getString("orderBangsal"));
                order.setOrderTanggalMasuk(resultSet.getString("orderTanggalMasuk"));
                order.setOrderTanggalDigunakan(resultSet.getString("orderTanggalDigunakan"));
                order.setOrderJmlMinta(resultSet.getString("orderJmlMinta"));
                order.setOrderJenisPermintaan(resultSet.getString("orderJenisPermintaan"));
                order.setOrderStatus(resultSet.getString("orderStatus"));
                order.setPatient(oPatient);
                order.setDocter(oDocter);

                list.add(order);
            }

            connection.setAutoCommit(false);
            connection.commit();
            return list;
        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException ex) {
            }
            throw new Exception(e.getMessage());
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException e) {
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                }
            }
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException ex) {
                }
            }
        }

    }

    public Integer getNoOfRecords() throws Exception {

        PreparedStatement statement;
        ResultSet resultSet;
        statement = null;
        resultSet = null;
        Integer count = 0;
        try {
            connection.setAutoCommit(false);

            String sql = "SELECT COUNT(*) FROM torder;";
            System.out.println(sql);

            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                count = resultSet.getInt(1);
            }

            connection.setAutoCommit(false);
            connection.commit();

            return count;
        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException ex) {
            }
            throw new Exception(e.getMessage());
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException e) {
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                }
            }
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException ex) {
                }
            }
        }
    }

    @Override
    public boolean cekStatusOrder() {
        boolean cek = false;
        try {

            connection.setAutoCommit(false);

            String sql = "SELECT o.orderstatus \n"
                    + "FROM torder o INNER JOIN patient p ON o.patientId=p.patientId \n"
                    + "INNER JOIN comGolonganDarah g ON p.comGolonganDarahId=g.comGolonganDarahId where o.orderstatus='2'";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                cek = true;
                return cek;
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderImplementation.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cek;
    }

    @Override
    public void updateStatusOrderI(int orderId) {
        PreparedStatement statement;
        statement = null;
        try {
            connection.setAutoCommit(false);

            String sql = "UPDATE torder SET orderStatus = '1' WHERE orderId = ?";

            statement = connection.prepareStatement(sql);
            statement.setInt(1, orderId);
            statement.executeUpdate();
            connection.commit();
        } catch (SQLException e) {
            try {
                try {
                    connection.rollback();
                } catch (SQLException ex) {
                }
                throw new Exception(e.getMessage());
            } catch (Exception ex) {
                Logger.getLogger(OrderImplementation.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException e) {
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                }
            }
        }
    }

    @Override
    public void updateStatusOrderII(int orderId) {
        PreparedStatement statement;
        statement = null;
        try {
            connection.setAutoCommit(false);

            String sql = "UPDATE torder SET orderStatus = '3' WHERE orderId = ?;";
            
            statement = connection.prepareStatement(sql);
            statement.setInt(1, orderId);
            statement.executeUpdate();
            connection.commit();
        } catch (SQLException e) {
            try {
                try {
                    connection.rollback();
                } catch (SQLException ex) {
                }
                throw new Exception(e.getMessage());
            } catch (Exception ex) {
                Logger.getLogger(OrderImplementation.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException e) {
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                }
            }
        }
    }

    @Override
    public List<Order> tampilOrderStatusBelum() {

        try {
            List<Order> listOrderBelum = new ArrayList<>();
            connection.setAutoCommit(false);

            String sql = "SELECT * \n"
                    + "FROM torder o INNER JOIN patient p ON o.patientId=p.patientId \n"
                    + "INNER JOIN comGolonganDarah g ON p.comGolonganDarahId=g.comGolonganDarahId where o.orderstatus='2' ORDER BY o.orderTanggal DESC";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Order order = new Order();

                Hospital oHospital;
                Patient oPatient = new Patient();
                Docter oDocter = new Docter();

                HospitalDao hospitalDao = ConnectionMySQL.getHospitalDao();
                PatientDao patientDao = ConnectionMySQL.getPatientDao();
                DocterDao docterDao = ConnectionMySQL.getDocterDao();

                oHospital = hospitalDao.selectHospitalById(resultSet.getInt("hospitalId"));
                oPatient = patientDao.selectPatientById(resultSet.getInt("patientId"));
                oDocter = docterDao.selectDocterById(10);

                order.setHospital(oHospital);
                order.setOrderId(resultSet.getInt("orderId"));
                order.setOrderNo(resultSet.getString("orderNo"));
                SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
                order.setOrderTanggal(sdf.format(resultSet.getDate("orderTanggal")));
                order.setOrderNoKartu(resultSet.getString("orderNoKartu"));
                order.setOrderHb(resultSet.getString("orderHb"));
                order.setOrderDiagnosa(resultSet.getString("orderDiagnosa"));
                order.setOrderKelas(resultSet.getString("orderKelas"));
                order.setOrderBangsal(resultSet.getString("orderBangsal"));
                order.setOrderTanggalMasuk(resultSet.getString("orderTanggalMasuk"));
                order.setOrderTanggalDigunakan(resultSet.getString("orderTanggalDigunakan"));
                order.setOrderJmlMinta(resultSet.getString("orderJmlMinta"));
                order.setOrderJenisPermintaan(resultSet.getString("orderJenisPermintaan"));
                order.setOrderStatus(resultSet.getString("orderStatus"));
                order.setPatient(oPatient);
                order.setDocter(oDocter);

                listOrderBelum.add(order);
            }
            connection.setAutoCommit(false);
            connection.commit();
            return listOrderBelum;
        } catch (SQLException ex) {
            Logger.getLogger(OrderImplementation.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(OrderImplementation.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public Order getOrderById(Integer id) throws Exception {
        PreparedStatement statement;
        ResultSet resultSet;
        statement = null;
        resultSet = null;
        try {
            connection.setAutoCommit(false);

            String sql = "SELECT * FROM torder o INNER JOIN patient p ON o.patientId=p.patientId "
                    + "WHERE orderId = " + id + ";";

            System.out.println(sql);

            Order order = null;

            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                order = new Order();

                order.setOrderId(resultSet.getInt("orderId"));

//                Category category;
//                CategoryDao categoryDao = ConnectionMySQL.getCategoryDao();
//                category = categoryDao.selectCategotyById(resultSet.getInt("id_cat"));
//                order.setCategory(category);
                Patient oPatient = new Patient();
                PatientDao patientDao = ConnectionMySQL.getPatientDao();
                oPatient = patientDao.getPatientById(resultSet.getInt("patientId"));
                Docter oDocter = new Docter();
                DocterDao docterDao = ConnectionMySQL.getDocterDao();
                oDocter = docterDao.getDocterById(resultSet.getInt("docterId"));
                order.setPatient(oPatient);
                order.setDocter(oDocter);
                Komponen komponen = new Komponen();
                KomponenDao komponenDao = ConnectionMySQL.getKomponenDao();
                komponen = komponenDao.getKomponenById(resultSet.getInt("comKomponenDarahId"));
                order.setOrderKomponenDarah(komponen);
                System.out.println(order.getOrderKomponenDarah().getComKomponenDarah().getComKomponenDarahName());

                order.setOrderId(resultSet.getInt("orderId"));
                order.setOrderNo(resultSet.getString("orderNo"));
                order.setOrderTanggal(resultSet.getString("orderTanggal"));
                order.setOrderNoKartu(resultSet.getString("orderNoKartu"));
                order.setOrderHb(resultSet.getString("orderHb"));
                order.setOrderDiagnosa(resultSet.getString("orderDiagnosa"));
                order.setOrderKelas(resultSet.getString("orderKelas"));
                order.setOrderBangsal(resultSet.getString("orderBangsal"));
                order.setOrderTanggalMasuk(resultSet.getString("orderTanggalMasuk"));
                order.setOrderTanggalDigunakan(resultSet.getString("orderTanggalDigunakan"));
                order.setOrderJmlMinta(resultSet.getString("orderJmlMinta"));
                order.setOrderJenisPermintaan(resultSet.getString("orderJenisPermintaan"));
                order.setOrderStatus(resultSet.getString("orderStatus"));
//                

            }
            connection.setAutoCommit(false);
            connection.commit();
            return order;
        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException ex) {
            }
            throw new Exception(e.getMessage());
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException e) {
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                }
            }
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException ex) {
                }
            }
        }

    }

    @Override
    public void print(String pOrderId) {

        String reportName;
        String fullPath;
        String[] isiDir;
        String reportDir;
        JasperPrint JPrint;
        JasperExportManager ekspor;
        JasperReport JRpt;

        try {
//            this.setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));

            Properties systemProp = System.getProperties();

            // Ambil current dir
            String currentDir = systemProp.getProperty("user.dir");

            File dir = new File(currentDir);
            reportName = "surat_permintaan.jrxml";
            String reportDirName = "report";

            File fileRpt;
            fullPath = "report/surat_permintaan.jasper";
            if (dir.isDirectory()) {
                isiDir = dir.list();
                for (int i = 0; i < isiDir.length; i++) {
                    fileRpt = new File(currentDir + File.separatorChar + isiDir[i] + File.separatorChar
                            + reportDirName + File.separatorChar + reportName);

                    if (fileRpt.isFile()) { // Cek apakah file RptMaster.jrxml ada
                        fullPath = fileRpt.toString();
                        System.out.println("Found Report File at : " + fullPath);
                    } // end if
                } // end for i
            } // end if

            // Ambil Direktori tempat file RptMaster.jrxml berada
            String[] subRptDir = fullPath.split(reportName);
            reportDir = subRptDir[0];
            System.out.println("Report Directory at : " + reportDir);

            // Ambil Kode Kategori
            String property = System.getProperty("jboss.server.config.dir");
            String jrxmlFileName = property + "/jasperreport/jrxml/test_jasper.jrxml";

            String result = "";
            String fileName = "/report/surat_permintaan.jasper";
//            String jrxmlFile = session.getServletContext().getRealPath("D:\\report\\surat_permintaan.jrxml");

            ClassLoader classLoader = getClass().getClassLoader();
            InputStream in = this.getClass().getClassLoader().getResourceAsStream(fileName);

            final String paramKdKategori = pOrderId;
            Connection con = null;
            try {
                // Persiapkan parameter untuk Report
                Map parameters = new HashMap();
                parameters.put("orderId", paramKdKategori);
                parameters.put("SUBREPORT_DIR", reportDir);

                try {
//                    JasperDesign jasperDesign = JRXmlLoader.load(new File(jrxmlFileName));
//                    InputStream input = new FileInputStream(new File(jrxmlFile));
                    JRpt = JasperCompileManager.compileReport(fullPath);
                    JPrint = JasperFillManager.fillReport(JRpt, parameters, connection);
                    JasperExportManager.exportReportToPdfFile(JPrint, "D://surat_permintaan.pdf");
                    File dir1 = new File("D://surat_permintaan.pdf");
                    Desktop.getDesktop().print(dir1);
                } catch (Exception rptexcpt) {

                    System.out.println("Report Can't view because : " + rptexcpt);
                }
            } catch (Exception e) {
                System.out.println(e);
            }
//            this.setCursor(Cursor.getDefaultCursor());
        } catch (Exception e) {
//            JOptionPane.showMessageDialog(rootPane, e.getMessage());
        }
    }

//    @Override
//    public void print2(Integer pServiceId) {
//
//        try {
////            this.setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
//
//            Properties systemProp = System.getProperties();
//
//            // Ambil current dir
//            String currentDir = systemProp.getProperty("user.dir");
//
//            File dir = new File(currentDir);
//            reportName = "surat_permintaan.jrxml";
//            String reportDirName = "report";
//
//            File fileRpt;
//            fullPath = null;
//            String jasperName = "report/surat_permintaan.jasper";
//            if (dir.isDirectory()) {
//                isiDir = dir.list();
//                for (int i = 0; i < isiDir.length; i++) {
//                    fileRpt = new File(currentDir + File.separatorChar + isiDir[i] + File.separatorChar
//                            + reportDirName + File.separatorChar + reportName);
//
//                    if (fileRpt.isFile()) { // Cek apakah file RptMaster.jrxml ada
//                        fullPath = fileRpt.toString();
//                        System.out.println("Found Report File at : " + fullPath);
//                    } // end if
//                } // end for i
//            } // end if
//
//            // Ambil Direktori tempat file RptMaster.jrxml berada
//            String[] subRptDir = fullPath.split(reportName);
//            reportDir = subRptDir[0];
//            System.out.println("Report Directory at : " + reportDir + jasperName);
//            // Ambil Kode Kategori
//            final int paramServiceId = pServiceId;
//            try {
//                // Persiapkan parameter untuk Report
//                Map parameters = new HashMap();
////                parameters.put("barcode", jasperRenderer);
//                parameters.put("orderId", paramServiceId);
//                parameters.put("SUBREPORT_DIR", reportDir + jasperName);
//
//                try {
//                    JRpt = JasperCompileManager.compileReport(fullPath);
//                    JPrint = JasperFillManager.fillReport(JRpt, parameters, connection);
//                    JasperPrintManager.printReport(JPrint, false);
////                    JasperViewer.viewReport(JPrint);
//                } catch (Exception rptexcpt) {
//                    System.out.println("Report Can't view because : " + rptexcpt);
//                }
//            } catch (Exception e) {
//                System.out.println(e);
//            }
//        } catch (Exception e) {
//        }
//    }
    @Override
    public String kodeOrderOtomatis() {
        String id = "";
        Date dNow = new Date();
        SimpleDateFormat ft = new SimpleDateFormat("yyyy/MM/dd");
        try {
            Statement stat = connection.createStatement();
            String sql = "Select max(cast(substr(orderNo,2) as int)) as max_id from torder";
            ResultSet rs = stat.executeQuery(sql);
            int idInt;
            while (rs.next()) {
                String idOrderDb = rs.getString("max_id");
                int idOrderInt = Integer.parseInt(idOrderDb);
                if (idOrderDb == null) {
                    idInt = 1;
                    id = "O0" + String.valueOf(idInt) + "," + ft.format(dNow);
                } else if (idOrderInt > 1 && idOrderInt < 9) {
                    id = "O0" + String.valueOf(idOrderInt + 1) + "," + ft.format(dNow);
                } else {
                    idInt = Integer.parseInt(idOrderDb) + 1;
                    id = "O" + String.valueOf(idInt) + "," + ft.format(dNow);
                }
            }
            return id;
        } catch (SQLException ex) {
            Logger.getLogger(PatientImplementation.class.getName()).log(Level.SEVERE, null, ex);
        }
        return id;
    }
}
