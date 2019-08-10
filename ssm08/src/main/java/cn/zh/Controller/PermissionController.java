package cn.zh.Controller;

import cn.zh.Service.PermissionService;
import cn.zh.domin.Permission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("permission")
public class PermissionController {
    @Autowired
    private PermissionService permissionService;
    @RequestMapping("save")
    public String save(Permission permission){
        permissionService.save(permission);
        return "redirect:findall";
    }
    @RequestMapping("findall")
    public ModelAndView findall(ModelAndView modelAndView){
       List<Permission> list =  permissionService.findall();
       modelAndView.addObject("permissionlist",list);
       modelAndView.setViewName("permission_list");
        return modelAndView;
    }
}
