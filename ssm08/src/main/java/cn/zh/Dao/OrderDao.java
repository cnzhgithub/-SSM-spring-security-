package cn.zh.Dao;

import cn.zh.domin.Orders;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderDao {
/*查询所有订单信息*/
    List<Orders> findall();

    /*查詢和訂單相關的信息并展示到页面上*/
    Orders findbyid(String oid);
}
