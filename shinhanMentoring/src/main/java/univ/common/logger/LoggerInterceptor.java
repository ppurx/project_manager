package univ.common.logger;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import univ.shinhan.mentoring.HomeController;

public class LoggerInterceptor extends HandlerInterceptorAdapter {
	Logger logger = LoggerFactory.getLogger(HomeController.class);
    
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
        System.out.println("--------------------------------------------------");
        System.out.println("SessionInterceptor INIT");
        logger.info("uri = "+request.getRequestURI());
        return true;    
    }
}