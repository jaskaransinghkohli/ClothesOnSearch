package com.T4a.ClothesOnSearch.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import com.T4a.ClothesOnSearch.config.DBConfig;
import com.T4a.ClothesOnSearch.config.SpringConfig;

public class WebAppInitializer
	extends AbstractAnnotationConfigDispatcherServletInitializer {

		   @Override
		   protected Class<?>[] getRootConfigClasses() {
		      return new Class[] { DBConfig.class };
		   }

		   @Override
		   protected Class<?>[] getServletConfigClasses() {
		      return new Class[] { SpringConfig.class };
		   }

		   @Override
		   protected String[] getServletMappings() {
		      return new String[] { "/" };
		   }
		
	
}
