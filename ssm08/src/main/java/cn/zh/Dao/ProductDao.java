package cn.zh.Dao;

import cn.zh.domin.Product;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ProductDao {

    List<Product> findallproduct() throws Exception;

    /*保存商品订单*/
    void save(Product product) throws Exception;

    /*通过产品号查找订单*/
    Product findbyid(String id) throws Exception;
}
