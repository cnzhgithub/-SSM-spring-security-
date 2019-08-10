package cn.zh.Dao.iml;

import cn.zh.Dao.RoleDao;
import cn.zh.Service.RoleService;
import cn.zh.domin.Permission;
import cn.zh.domin.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Roleiml implements RoleService {
    @Autowired
    private RoleDao roleDao;

    @Override
    public List<Permission> findper(String rid) {
        return roleDao.findper(rid);
    }

    @Override
    public Role findonerole(String rid) {
        return roleDao.findonerole(rid);
    }

    @Override
    public void save(Role role) {
        roleDao.save(role);
    }

    /*查询所有角色*/
    @Override
    public List<Role> findall() {
        return roleDao.findall();
    }

    @Override
    public void insertper(String rid, String pid) {
        roleDao.insertper(rid,pid);
    }
}
