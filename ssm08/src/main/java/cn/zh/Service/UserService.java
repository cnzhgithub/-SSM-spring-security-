package cn.zh.Service;

import cn.zh.domin.Role;
import cn.zh.domin.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {

    /*查询所有用户*/
    List<User> findall();

    /*保存用户*/
    void save(User user);

    /*查询一个用户的所有信息*/
    User findbyid(String id);

    /*通过用户id查找角色集合*/
    List<Role> findrole(String id);

    /*通过id得到一个用户基本信息*/
    User findoneuser(String id);

    /*给用户添加一个或多个角色*/
    void insertrole(String id,String rid);
}
