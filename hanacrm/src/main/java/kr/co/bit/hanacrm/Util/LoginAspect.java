package kr.co.bit.hanacrm.Util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import kr.co.bit.hanacrm.Employee.EmpVO;

@Aspect
public class LoginAspect {

	@Around("execution(* kr.co.bit.hanacrm..*Controller.*(..))")
	public Object trace(ProceedingJoinPoint joinPoint) throws Throwable {
		System.out.println("로그인");
		HttpServletRequest request = null;
//		for (Object o : joinPoint.getArgs()) {
//			if (o instanceof HttpServletRequest) {
//				request = (HttpServletRequest) o;
//			}
//		}
        request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();

		// 로그인을 체크해야 하는 페이지
		if (request != null) {
			String strUrl = request.getRequestURL().toString();
			// 로그인 페이지 제외
			if (!strUrl.endsWith("/index.jsp")) {
				// 세션체킹
				HttpSession session = request.getSession();
				EmpVO emp = (EmpVO) session.getAttribute("emp");
				
				if (emp == null || "".equals(emp.getId())) {
					return "redirect:/";
				}
			}else{
				System.out.println("로그인페이지접속");
			}
		} // request가 null이 아니라면
			// controller에서 httprequest가 없거나 /login페이지라면
		Object result = joinPoint.proceed();
		return result;
	}
}
