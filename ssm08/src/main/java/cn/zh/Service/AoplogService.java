package cn.zh.Service;

import cn.zh.domin.SysLog;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface AoplogService {

    /*插入一条日志*/
    void insertlog(SysLog log);

    /*查询所有日志*/
    List<SysLog> findall(Integer page,Integer pagesize);
}
