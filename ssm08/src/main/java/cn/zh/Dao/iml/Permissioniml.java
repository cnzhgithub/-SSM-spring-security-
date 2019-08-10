package cn.zh.Dao.iml;

import cn.zh.Dao.PermissionDao;
import cn.zh.Service.PermissionService;
import cn.zh.domin.Permission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class Permissioniml implements PermissionService {
    @Autowired
    private PermissionDao permissionDao;

    @Override
    public void save(Permission permission) {
        permissionDao.save(permission);
    }

    /*查询所有资源*/
    @Override
    public List<Permission> findall() {
        return permissionDao.findall();
    }
}
