package cn.zh.Dao.iml;

import cn.zh.Dao.UserDao;
import cn.zh.Service.IuserService;
import cn.zh.domin.Role;
import cn.zh.domin.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service("IuserService")
@Transactional
public class Iuseriml implements IuserService {
    @Autowired
    private UserDao userDao;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user1 = userDao.findbyname(username);
        for(Role role:user1.getList()){
            System.out.println(role.getRname());
        }
        org.springframework.security.core.userdetails.User user = new org.springframework.security.core.userdetails.User(user1.getUsername(),user1.getPassword(),user1.getStatus() == 0?false:true,true,true,true,getAuthority(user1.getList()));
        return user;
    }
  public List<SimpleGrantedAuthority> getAuthority(List<Role> list1){
        List<SimpleGrantedAuthority> list = new ArrayList<>();
        for (Role role:list1) {
            list.add(new SimpleGrantedAuthority("ROLE_"+role.getRname()));
        }
        return list;
  }

}
