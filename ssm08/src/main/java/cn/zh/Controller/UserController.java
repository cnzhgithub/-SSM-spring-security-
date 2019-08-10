package cn.zh.Controller;

import cn.zh.Service.UserService;
import cn.zh.domin.Role;
import cn.zh.domin.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("insertrole")
    public String insertrole(@RequestParam(name = "id") String id,@RequestParam(name = "ids") String[] rids){
        for (String rid:rids){
            userService.insertrole(id,rid);
        }
        return "redirect:findall";
    }

    @RequestMapping("byIdaddRole")
    public ModelAndView byIdaddRole(@RequestParam(name = "id",required = true) String id){
        ModelAndView mv = new ModelAndView();
        User user1 = userService.findoneuser(id);
        mv.addObject("oneuser",user1);
        List<Role> list = userService.findrole(id);
        mv.addObject("listrole",list);
        mv.setViewName("user_role_add");
        return mv;
    }

    @RequestMapping("findbyid")
    public ModelAndView findbyid(@RequestParam(name = "id" ) String id){
        ModelAndView view = new ModelAndView();
        User user = userService.findbyid(id);
        view.addObject("userdata",user);
        /*List<Role> rlist = user.getList();
        view.addObject("roledata",rlist);*/
        view.setViewName("user_show");
        return  view;
    }

    @RequestMapping("save")
    public String save(User user){
        userService.save(user);
        return "redirect:findall";
    }

    @RequestMapping("findall")
    public ModelAndView findall(ModelAndView modelAndView){
        List<User> list = userService.findall();
        modelAndView.addObject("user",list);
        modelAndView.setViewName("user_list");
        return  modelAndView;
    }
}
