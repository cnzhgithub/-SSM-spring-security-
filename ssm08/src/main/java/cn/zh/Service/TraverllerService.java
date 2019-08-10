package cn.zh.Service;

import cn.zh.domin.Traveller;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface TraverllerService {

    /*通过订单id去中间表进行查询*/
    List<Traveller> findbyid(String oid);
}
