package cn.zh.Controller;

import cn.zh.Service.AoplogService;
import cn.zh.domin.SysLog;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.UUID;


@Component
@Aspect
/*配置前面内来封装日志bean*/
public class Syslog {
    private Date date;
    private Class clazz;
    private Method method;
    private String url;
    private Long execution;
    private String ip;
    private String username;
    @Autowired
    private HttpServletRequest request;
    @Autowired
    private AoplogService aoplogService;



    /*获取时间，类名，方法名*/
    @Before("execution(* cn.zh.Controller.*.*(..))")
    public void doBefore(JoinPoint js) throws Exception {
        System.out.println("1");
        date = new Date();
        clazz = js.getTarget().getClass();
        String s = js.getSignature().getName();//获得方法名
        Object[] args = js.getArgs();
        if (args == null || args.length == 0) {
            method = clazz.getMethod(s);
        } else {
            Class[] classesargs = new Class[args.length];
            for (int i = 0; i < classesargs.length; i++) {
                classesargs[i] = args[i].getClass();
            }
            method = clazz.getMethod(s, classesargs);
        }
    }

    @After("execution(* cn.zh.Controller.*.*(..))")
    public void doAfter(JoinPoint js) {
        execution = new Date().getTime() - date.getTime();//获取执行时间

        if (clazz != null && method != null && clazz != Syslog.class) {
            RequestMapping classname = (RequestMapping)clazz.getAnnotation(RequestMapping.class);
            if (classname!=null){
                String[] s1 = classname.value();
                if (method!=null){
                    RequestMapping methodname = (RequestMapping) clazz.getAnnotation(RequestMapping.class);
                    String[] s2 = methodname.value();
                    url = s1[0]+s2[0];
                }
            }
            /*获取ip*/
            ip = request.getRemoteAddr();

            /*通过spring-security获取用户名*/
            SecurityContext context = SecurityContextHolder.getContext();
            User user = (User) context.getAuthentication().getPrincipal();
            username = user.getUsername();

            /*封装bean*/
            SysLog sl = new SysLog();
            sl.setId(UUID.randomUUID().toString());
            sl.setVisttime(date);
            sl.setUsername(username);
            sl.setIp(ip);
            sl.setUrl(url);
            sl.setExecution(execution);
            sl.setMethod("类名"+clazz.getName()+"方法名"+method.getName());
            System.out.println(sl);
            /*调用service层方法*/
            aoplogService.insertlog(sl);
        }

    }
}
