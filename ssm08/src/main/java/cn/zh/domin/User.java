package cn.zh.domin;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.List;

@Component
public class User implements Serializable {

    private String id;//用户id
    private String username;//用户姓名
    private String password;//用户密码
    private String email;//用户邮箱
    private String uphonenum;//电话号码
    private Integer status;//数据库状态 0:开启 1:关闭
    private String ustatus;//在浏览器显示的状态
    private List<Role> list;

    public List<Role> getList() {
        return list;
    }

    public void setList(List<Role> list) {
        this.list = list;
    }

    public String getUstatus() {
        if(status==0){
            ustatus = "关闭";
        }else{
            ustatus = "开启";
        }
        return ustatus;
    }

    public void setUstatus(String ustatus) {
        this.ustatus = ustatus;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUphonenum() {
        return uphonenum;
    }

    public void setUphonenum(String uphonenum) {
        this.uphonenum = uphonenum;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
