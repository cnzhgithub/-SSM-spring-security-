package cn.zh.Dao;

import cn.zh.domin.Permission;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PermissionDao {

    /*保存资源*/
    void save(Permission permission);
    /*查询所有资源*/
    List<Permission> findall();
    /*通过中间表查询一个资源*/
    Permission findbyid(String rid);
}
