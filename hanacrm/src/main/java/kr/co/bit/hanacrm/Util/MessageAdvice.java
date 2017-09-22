package kr.co.bit.hanacrm.Util;

import java.util.Arrays;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Component
@Aspect
public class MessageAdvice {
	protected Log log = LogFactory.getLog(MessageAdvice.class);
    static String name = "";
    static String type = "";
    static String params = "";
    static String url = "";
     
    @Around("execution(* kr.co.bit.hanacrm..*Controller.*(..))")
    public Object logPrint(ProceedingJoinPoint joinPoint) throws Throwable {
        type = joinPoint.getSignature().getDeclaringTypeName();
        if (type.indexOf("Controller") > -1) {
            name = "Controller  \t:  ";
        }
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
        url =  request.getMethod()+" "+request.getRequestURI();
        params = Arrays.toString(joinPoint.getArgs());
        log.debug(name + type + "." + joinPoint.getSignature().getName() + "()");
        System.out.println(name + type + "." + joinPoint.getSignature().getName() + "()");
        System.out.println("매개변수 : "+params);
        System.out.println("요청 URL : "+url);
        return joinPoint.proceed();
    }
}
