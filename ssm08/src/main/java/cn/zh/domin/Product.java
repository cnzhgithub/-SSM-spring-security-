package cn.zh.domin;

import cn.zh.uitls.DataChange;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;
@Component
public class Product implements Serializable {
    private String id;//主键id，uuid
    private String pnum;//产品id
    private String pname;//产品名
    private String cityname;//城市名
    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date pdate;//时间
    private String date;//显示在页面的时间

    public String getDate() {
        if (pdate!=null){
            date = DataChange.datetoString(pdate,"yyyy-mm-dd");
        }
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    private Integer price;//价格
    private String pdesc;//描述
    private Integer pstatus;//数据库商品状态

    public Integer getPstatus() {
        return pstatus;
    }

    public void setPstatus(Integer pstatus) {
        this.pstatus = pstatus;
    }

    private String status;//呈现在页面上的状态状态

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPnum() {
        return pnum;
    }

    public void setPnum(String pnum) {
        this.pnum = pnum;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }

    public Date getPdate() {
        return pdate;
    }

    public void setPdate(Date pdate) {
        this.pdate = pdate;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getPdesc() {
        return pdesc;
    }

    public void setPdesc(String pdesc) {
        this.pdesc = pdesc;
    }

    public String getStatus() {

        if (pstatus==0){
            status = "关闭";
        }else{
            status= "开启";
        }
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
