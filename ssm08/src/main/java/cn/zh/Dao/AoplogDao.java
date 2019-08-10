package cn.zh.Dao;

import cn.zh.domin.SysLog;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AoplogDao {

    /*插入一条日志*/
    void insertlog(SysLog log);
    /*查询所有日志*/
    List<SysLog> findall();
}
