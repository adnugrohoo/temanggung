/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Order;
import java.util.List;

/**
 *
 * @author heri
 */
public interface OrderDao {

    public void insert(Order pOrder);

    public void update(Order pOrder);

    public void delete(Integer pOrderId);

    public String kodeOrderOtomatis();

    public List<Order> selectAll() throws Exception;

    public Integer getNoOfRecords() throws Exception;

    public boolean cekStatusOrder();

    public void updateStatusOrderI(int id);

    public void updateStatusOrderII(int id);

    public List<Order> tampilOrderStatusBelum();

    public Order getOrderById(Integer id) throws Exception;

    public List<Order> selectAllWithLimit(int offset, int noOfRecords) throws Exception;

    public void print(String pOrderId);
//    public void print(Integer pOrderId);
}
