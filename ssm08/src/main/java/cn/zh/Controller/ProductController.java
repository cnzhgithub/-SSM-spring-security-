package cn.zh.Controller;

import cn.zh.Dao.iml.Productiml;
import cn.zh.domin.Product;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.security.RolesAllowed;
import java.util.List;

@Controller
@RequestMapping("product")
public class ProductController {
    @Autowired
    private Productiml productiml;
    @RequestMapping("findbyid")
    public Product findbyid(String id) throws Exception{
        Product product = productiml.findbyid(id);
        return product;
    }
    @RequestMapping(value = "save",method = RequestMethod.POST)
    public String save(Product product ) throws Exception{
        System.out.println(product.getPname()+""+product.getId());

        productiml.save(product);

        return "redirect:findall";
    }
    @RequestMapping(value = "findall",method = RequestMethod.GET)
    @RolesAllowed("ADMIN")
    public ModelAndView findall(@RequestParam(name = "page",required = true,defaultValue = "1") String page1, @RequestParam(name = "pagesize" ,required = true,defaultValue = "3") String pagesize1) throws Exception{
        Integer page = Integer.valueOf(page1);
        Integer pagesize = Integer.valueOf(pagesize1);
        ModelAndView view = new ModelAndView();
        List<Product> list = productiml.findallproduct(page,pagesize);
        PageInfo info = new PageInfo(list);
        view.addObject("productlist",info);
        view.setViewName("product_list");
        System.out.println();
        return view;
    }
}
