package cn.zh.Dao.iml;

import cn.zh.Dao.OrderDao;
import cn.zh.Service.OrderService;
import cn.zh.domin.Orders;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class Ordersiml implements OrderService {
    @Autowired
    private OrderDao orderDao;
    @Override
    public List<Orders> findall(int page,int pagesize) {
        PageHelper.startPage(page,pagesize);
        return orderDao.findall();
    }

    @Override
    public Orders findbyid(String oid) {
        return orderDao.findbyid(oid);
    }
}
