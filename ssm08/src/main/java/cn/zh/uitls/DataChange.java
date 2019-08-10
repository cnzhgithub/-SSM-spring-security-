package cn.zh.uitls;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DataChange {
    /*日期转换为字符串*/
    public static String datetoString(Date date,String s){
        SimpleDateFormat formatter = new SimpleDateFormat(s);
        String str = formatter.format(date);
        return str;
    }
    /*字符串转换为日期*/
    public static Date stringtodate(String str,String s) throws Exception{
        SimpleDateFormat formatter = new SimpleDateFormat(s);
        Date da = formatter.parse(str);
        return da;
    }
}
