package cn.zh.Dao.iml;

import cn.zh.Dao.UserDao;
import cn.zh.Service.UserService;
import cn.zh.domin.Role;
import cn.zh.domin.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Useriml implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public List<User> findall() {
        return userDao.findall();
    }

    @Override
    public void save(User user) {
        userDao.save(user);
    }

    @Override
    public User findbyid(String id) {
        return userDao.findbyid(id);
    }

    @Override
    public List<Role> findrole(String id) {
        return userDao.findrole(id);
    }

    @Override
    public User findoneuser(String id) {
        return userDao.findoneuser(id);
    }

    @Override
    public void insertrole(String id, String rid) {
        userDao.insertrole(id,rid);
    }
}
