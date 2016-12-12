package com.camerashop.handler;


import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.h2.jdbc.JdbcSQLException;
import org.hibernate.exception.ConstraintViolationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class CamerashopExceptionHandler {
	
	private static final Logger logger =  LoggerFactory.getLogger(CamerashopExceptionHandler.class);
	
	@ExceptionHandler(SQLException.class)
	public ModelAndView handleSQLException(HttpServletRequest request, Exception e){
		logger.error("SQLException Occured:: URL="+request.getRequestURL());
		logger.error("SQLException Occured:: Exception="+e.getMessage());
		ModelAndView mv  = new ModelAndView("403");
		mv.addObject("message", "One of the table not exist");
		mv.addObject("errorMessage",e.getMessage());
		return mv;
		
	}
	
	@ExceptionHandler(ConstraintViolationException.class)
	public ModelAndView handleConstraintViolationException(HttpServletRequest request, Exception e){
		logger.error("SQLException Occured:: URL="+request.getRequestURL());
		logger.error("SQLException Occured:: Exception="+e.getMessage());
		ModelAndView mv  = new ModelAndView("403");
		mv.addObject("message", "You cannot delete this record");
		mv.addObject("errorMessage",e.getMessage());
		return mv;
		
	}
	
	@ExceptionHandler(JdbcSQLException.class)
	public ModelAndView handleJdbcSQLException(HttpServletRequest request, Exception e){
		logger.error("SQLException Occured:: URL="+request.getRequestURL());
		logger.error("SQLException Occured:: Exception="+e.getMessage());
		ModelAndView mv  = new ModelAndView("403");
		mv.addObject("message", "You cannot delete this record");
		mv.addObject("errorMessage",e.getMessage());
		return mv;
		
	}
}
