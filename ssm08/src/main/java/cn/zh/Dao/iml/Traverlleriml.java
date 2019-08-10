package cn.zh.Dao.iml;

import cn.zh.Dao.TraverllerDao;
import cn.zh.Service.TraverllerService;
import cn.zh.domin.Traveller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Traverlleriml implements TraverllerService {
    @Autowired
    private TraverllerDao traverllerDao;


    @Override
    public List<Traveller> findbyid(String oid) {
        return traverllerDao.findbyid(oid);
    }
}
