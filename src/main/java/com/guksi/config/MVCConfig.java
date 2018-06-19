package com.guksi.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.guksi.interceptor.EncodingInterceptor;
import com.guksi.interceptor.SesssionInterceptor;

@Configuration
@ComponentScan({ "com.guksi.controller" , "com.guksi.interceptor" })
@EnableWebMvc
public class MVCConfig implements WebMvcConfigurer {

	@Bean
	public ViewResolver internalResourceViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/view/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		// TODO Auto-generated method stub
		registry.addViewController("/home").setViewName("home"); 
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/img/**").addResourceLocations("/WEB-INF/img/");
		registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/css/");
		registry.addResourceHandler("/upload/**").addResourceLocations("/WEB-INF/upload/");
		registry.addResourceHandler("/resource/**").addResourceLocations("/WEB-INF/resoucrce/");
	}
	@Autowired
	EncodingInterceptor ei;
	
	@Autowired
	SesssionInterceptor si;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(ei);
		registry.addInterceptor(si).addPathPatterns("/session/**"); 
	}
	
	@Bean
	public MultipartResolver multipartResolver() {
		CommonsMultipartResolver cmr = new CommonsMultipartResolver();
		cmr.setDefaultEncoding("utf-8");
		return cmr;
	}
}
