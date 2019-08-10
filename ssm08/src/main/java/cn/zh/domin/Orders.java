package cn.zh.domin;

import cn.zh.uitls.DataChange;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Component
public class Orders implements Serializable {
    private String oid;//主键id，uuid
    private String id;//产品编号
    private String onum;//订单id
    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date odate;//时间

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public String getOnum() {
        return onum;
    }

    public void setOnum(String onum) {
        this.onum = onum;
    }

    public Date getOdate() {
        return odate;
    }

    public void setOdate(Date odate) {
        this.odate = odate;
    }

    public String getDate() {
        if (odate!=null){
            date = DataChange.datetoString(odate,"yyyy-mm-dd");
        }
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getPaytype() {
        return paytype;
    }

    public void setPaytype(String paytype) {
        this.paytype = paytype;
    }

    public Integer getPeoplecount() {
        return peoplecount;
    }

    public void setPeoplecount(Integer peoplecount) {
        this.peoplecount = peoplecount;
    }

    public String getOdesc() {
        return odesc;
    }

    public void setOdesc(String odesc) {
        this.odesc = odesc;
    }

    public String getStatus() {
        if (ostatus==0){
            status = "已完成";
        }else {
            status = "正在进行";
        }
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getOstatus() {
        return ostatus;
    }

    public void setOstatus(Integer ostatus) {
        this.ostatus = ostatus;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    private String date;//显示在页面的时间
    private String paytype;//支付类型
    private Integer peoplecount;//人数
    private String odesc;//订单描述
    private String status;//显示在浏览器上的状态
    private Integer ostatus;//订单状态
    private Product product;

    public List<Traveller> getTlist() {
        return tlist;
    }

    public void setTlist(List<Traveller> tlist) {
        this.tlist = tlist;
    }

    private List<Traveller> tlist;



    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
