package cn.zh.Service;

import cn.zh.domin.Orders;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderService {
//查询所有订单
    List<Orders> findall(int page,int pages);

    /*查詢和訂單相關的信息并展示到页面上*/
    Orders findbyid(String oid);
}
