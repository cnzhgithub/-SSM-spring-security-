package cn.zh.domin;

import cn.zh.uitls.DataChange;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
public class SysLog{
    private String id;
    private Date visittime;//数据库时间
    private String username;
    private String ip;
    private String url;
    private Long executiontime;
    private String method;
    private String time;//浏览器显示时间

    public String getTime() {
        if (visittime!=null){
            time = DataChange.datetoString(visittime,"yyyy-mm-dd");
        }
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getVisttime() {
        return visittime;
    }

    public void setVisttime(Date visttime) {
        this.visittime = visttime;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Long getExecutiontime() {
        return executiontime;
    }

    public void setExecution(Long executiontime) {
        this.executiontime = executiontime;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }
}
