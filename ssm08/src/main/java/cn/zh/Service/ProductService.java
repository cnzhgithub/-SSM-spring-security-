package cn.zh.Service;

import cn.zh.domin.Product;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ProductService {
    /*查询所有商品订单*/
    List<Product> findallproduct(Integer page,Integer pagesize) throws Exception;

    /*保存商品订单*/
    void save(Product product) throws Exception;

    /*通过产品号查找订单*/
    Product findbyid(String id) throws Exception;
}
