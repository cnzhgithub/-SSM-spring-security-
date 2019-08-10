package cn.zh.Controller;

import cn.zh.Service.OrderService;
import cn.zh.domin.Orders;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("order")
public class OrderController {
    @Autowired
    private OrderService orderService;
    @RequestMapping("findall")
    @Secured("ROLE_ADMIN")
    public ModelAndView findall(@RequestParam(name = "page",required = true,defaultValue = "1") String page1,@RequestParam(name = "pagesize",required = true,defaultValue = "3") String pagesize1){
        int page= Integer.parseInt(page1);
        int pagesize = Integer.parseInt(pagesize1);
        ModelAndView modelAndView = new ModelAndView();
        List<Orders> list = orderService.findall(page,pagesize);
        PageInfo info = new PageInfo(list);
        System.out.println(list.size());
        modelAndView.addObject("orderlist",info);
        modelAndView.setViewName("order_list");
        return modelAndView;
    }
    @RequestMapping("findbyid")
   public ModelAndView showfindall(@RequestParam(name = "oid",required = true) String oid){
        ModelAndView view = new ModelAndView();
        Orders orders = orderService.findbyid(oid);
        System.out.println(orders.getTlist().size());
        view.addObject("order",orders);
        view.setViewName("order_show");
        return view;
    }

}
