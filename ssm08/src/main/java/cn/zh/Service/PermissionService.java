package cn.zh.Service;

import cn.zh.domin.Permission;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PermissionService {

    /*保存资源*/
    void save(Permission permission);
    /*查询所有资源*/
    List<Permission> findall();

}
