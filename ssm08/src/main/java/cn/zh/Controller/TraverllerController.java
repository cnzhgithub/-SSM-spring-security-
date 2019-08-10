package cn.zh.Controller;

import cn.zh.Service.TraverllerService;
import cn.zh.domin.Traveller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("traverller")
public class TraverllerController {
    @Autowired
    private TraverllerService traverllerService;
    @RequestMapping("findbyid")
    public List<Traveller> findbyid(String oid){
        List<Traveller> tlist = traverllerService.findbyid(oid);
        return tlist;
    }
}
