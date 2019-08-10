package cn.zh.domin;

import org.springframework.stereotype.Component;

import java.io.Serializable;

@Component
public class Traveller implements Serializable {
    private String tid;//主键tid，uuid
    private String tname;//游客信息
    private String tsex;//游客性别
    private String tphonenum;//游客电话号码
    private Integer travellertype;//数据库游客类型
    private String ttype;//显示在浏览器上的游客类型
    private Integer cardtype;//数据库证件类型
    private String  ctype;//显示在浏览器上的证件类型
    private Integer cardnum;//证件号码

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getTsex() {
        return tsex;
    }

    public void setTsex(String tsex) {
        this.tsex = tsex;
    }

    public String getTphonenum() {
        return tphonenum;
    }

    public void setTphonenum(String tphonenum) {
        this.tphonenum = tphonenum;
    }

    public Integer getTravellertype() {
        return travellertype;
    }

    public void setTravellertype(Integer travellertype) {
        this.travellertype = travellertype;
    }

    public String getTtype() {
        if (travellertype==0){
            ttype = "成年人";
        }else {
            ttype = "小孩";
        }
        return ttype;
    }

    public void setTtype(String ttype) {
        this.ttype = ttype;
    }

    public Integer getCardtype() {
        return cardtype;
    }

    public void setCardtype(Integer cardtype) {
        this.cardtype = cardtype;
    }

    public String getCtype() {
        if(cardtype==0){
            ctype = "军官";
        }else if (cardtype==1){
            ctype = "身份证";
        }else {
            ctype = "港澳证";
        }
        return ctype;
    }

    public void setCtype(String ctype) {
        this.ctype = ctype;
    }

    public Integer getCardnum() {
        return cardnum;
    }

    public void setCardnum(Integer cardnum) {
        this.cardnum = cardnum;
    }
}
