package cn.zh.Dao.iml;

import cn.zh.Dao.ProductDao;
import cn.zh.Service.ProductService;
import cn.zh.domin.Product;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class Productiml implements ProductService {
    @Autowired
    private ProductDao productDao;

    @Override
    public List<Product> findallproduct(Integer page,Integer pagesize) throws Exception {
        PageHelper.startPage(page,pagesize);
        return productDao.findallproduct();
    }

    @Override
    public void save(Product product) throws Exception {
        productDao.save(product);
    }

    @Override
    public Product findbyid(String id) throws Exception {
        return productDao.findbyid(id);
    }
}
