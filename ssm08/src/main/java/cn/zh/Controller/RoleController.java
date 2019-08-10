package cn.zh.Controller;

import cn.zh.Service.RoleService;
import cn.zh.domin.Permission;
import cn.zh.domin.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("role")
public class RoleController {
    @Autowired
    private RoleService roleService;

    @RequestMapping("insertper")
    public String insertrole(@RequestParam(name = "rid") String rid,@RequestParam(name = "pids") String[] pids){
        for (String pid:pids){
            roleService.insertper(rid,pid);
        }
        return "redirect:findall";
    }
    @RequestMapping("byIdaddRole")
    public ModelAndView byIdaddRole(@RequestParam(name = "rid",required = true) String rid){
        ModelAndView mv = new ModelAndView();
        Role role = roleService.findonerole(rid);
        mv.addObject("onerole",role);
        List<Permission> list = roleService.findper(rid);
        mv.addObject("listper",list);
        mv.setViewName("role_per_add");
        return mv;
    }

    @RequestMapping("save")
    public String save(Role role){
        roleService.save(role);
        return "redirect:findall";
    }
    @RequestMapping("findall")
    public ModelAndView findall(ModelAndView modelAndView){
        List<Role> list = roleService.findall();
        modelAndView.addObject("rolelist",list);
        modelAndView.setViewName("role_list");
        return modelAndView;
    }
}
