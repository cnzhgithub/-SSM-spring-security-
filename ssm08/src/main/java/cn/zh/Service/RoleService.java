package cn.zh.Service;

import cn.zh.domin.Permission;
import cn.zh.domin.Role;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface RoleService {

    /*通过用户id查找权限集合*/
    List<Permission> findper(String rid);

    /*通过id得到一个角色基本信息*/
    Role findonerole(String rid);

    /*保存角色*/
    void save(Role role);
    /*查询所有角色*/
    List<Role> findall();
    /*给用户添加一个或多个角色*/
    void insertper(String rid,String pid);
}
