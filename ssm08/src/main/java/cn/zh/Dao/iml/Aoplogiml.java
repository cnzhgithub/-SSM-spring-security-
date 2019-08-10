package cn.zh.Dao.iml;

import cn.zh.Dao.AoplogDao;
import cn.zh.Service.AoplogService;
import cn.zh.domin.SysLog;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class Aoplogiml implements AoplogService {
    @Autowired
    private AoplogDao dao;
    @Override
    public void insertlog(SysLog log) {
        dao.insertlog(log);
    }

    @Override
    public List<SysLog> findall(Integer page,Integer pagesize) {
        PageHelper.startPage(page,pagesize);
        return dao.findall();
    }
}
