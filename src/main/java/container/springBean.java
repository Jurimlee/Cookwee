package container;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import community.communityDAO;
import community.communityDBBean;
import csc.cscDAO;
import csc.cscDBBean;
import login.loginDAO;
import login.loginDBBean;
import recipe.recipeDAO;
import recipe.recipeDBBean;


@Configuration
public class springBean {
	@Bean
	public loginDAO loginDao() {
		return new loginDBBean();
	}
	@Bean
	public recipeDAO recipeDao() {
		return new recipeDBBean();
	}
	@Bean
	public communityDAO communityDao() {
		return new communityDBBean();
	}
	@Bean
	public cscDAO cscDao() {
		return new cscDBBean();
	}
	
	@Bean
	public ViewResolver viewResolver() {
		UrlBasedViewResolver viewResolver = new UrlBasedViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}
}
