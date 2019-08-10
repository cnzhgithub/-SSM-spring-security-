package cn.zh.Dao;

import cn.zh.domin.Permission;
import cn.zh.domin.Role;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoleDao {

    /*给角色添加一个或多个权限*/
    void insertper(@Param("rid") String rid, @Param("pid") String pid);
    /*通过用户id查找权限集合*/
    List<Permission> findper(String rid);

    /*通过id得到一个角色基本信息*/
    Role findonerole(String rid);

    /*保存角色*/
    void save(Role role);
    /*查询所有角色*/
    List<Role> findall();

    /*查询一个用户的所有信息*/
    Role findbyid(String id);
}
