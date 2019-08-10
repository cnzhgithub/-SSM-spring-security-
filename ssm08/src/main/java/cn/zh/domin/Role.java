package cn.zh.domin;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.List;

@Component
public class Role implements Serializable {
    private String rid;
    private String rname;
    private String rdesc;
    private List<Permission> list;

    public List<Permission> getList() {
        return list;
    }

    public void setList(List<Permission> list) {
        this.list = list;
    }

    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public String getRdesc() {
        return rdesc;
    }

    public void setRdesc(String rdesc) {
        this.rdesc = rdesc;
    }
}
