package cn.zh.Dao;

import cn.zh.domin.Traveller;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TraverllerDao {

    /*通过订单id去中间表进行查询*/
    List<Traveller> findbyid(String oid);
}
