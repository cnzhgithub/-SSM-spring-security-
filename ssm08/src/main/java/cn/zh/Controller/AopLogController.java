package cn.zh.Controller;

import cn.zh.Service.AoplogService;
import cn.zh.domin.SysLog;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("aoplog")
public class AopLogController {
    @Autowired
    private AoplogService aoplogService;
    @RequestMapping("findall")
    public ModelAndView findall(@RequestParam(name = "page",required = true,defaultValue = "1") String page1, @RequestParam(name = "pagesize",required = true,defaultValue = "3") String pagesize1){
        Integer page = Integer.valueOf(page1);
        Integer pagesize = Integer.valueOf(pagesize1);
        ModelAndView andView = new ModelAndView();
        List<SysLog> list = aoplogService.findall(page,pagesize);
        PageInfo info = new PageInfo(list);
        andView.addObject("loglist",info);
        andView.setViewName("log_list");
        return andView;
    }
}
