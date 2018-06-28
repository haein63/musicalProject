package com.guksi.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
@Component
public class SesssionInterceptor implements HandlerInterceptor{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String id=(String)request.getSession().getAttribute("id");
		if(id==null||id=="") {
			response.sendRedirect("/Main2");
			return false;
		}
		return HandlerInterceptor.super.preHandle(request, response, handler);
	}
	
	
}
