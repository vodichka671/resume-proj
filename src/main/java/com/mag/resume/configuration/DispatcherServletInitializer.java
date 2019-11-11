//package com.mag.resume.configuration;
//
//import javax.servlet.Filter;
//import javax.servlet.ServletContext;
//
//import org.sitemesh.builder.SiteMeshFilterBuilder;
//import org.sitemesh.config.ConfigurableSiteMeshFilter;
//import org.springframework.web.context.WebApplicationContext;
//import org.springframework.web.filter.CharacterEncodingFilter;
//import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
//
//
//import com.mag.resume.filter.ApplicationFilter;
//import com.mag.resume.listener.ApplicationListener;
//
//public class DispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
//
//	 @Override
//     protected Class<?>[] getRootConfigClasses() {
//          return null;
//     }
//
//     @Override
//     protected Class<?>[] getServletConfigClasses() {
//         return new Class<?>[] { MVCConfig.class,ServiceConfig.class };
//     }
//
//     @Override
//     protected String[] getServletMappings() {
//          return new String[] { "/" };
//     }
//
//     @Override
//     protected Filter[] getServletFilters() {
//         return new Filter[]{buildConfigurableSiteMeshFilter(),new ApplicationFilter(),new CharacterEncodingFilter("UTF-8", true)};
//     } 
//     
//     @Override
//    protected void registerContextLoaderListener(ServletContext servletContext) {
//    	super.registerContextLoaderListener(servletContext);
//    }
//     
//     @Override
//     protected void registerDispatcherServlet(ServletContext servletContext) {
//         super.registerDispatcherServlet(servletContext);
//
//         servletContext.addListener(new ApplicationListener());
//
//     }
//     
//     
//     private ConfigurableSiteMeshFilter buildConfigurableSiteMeshFilter() {
// 		return new ConfigurableSiteMeshFilter() {
// 			@Override
// 			protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
// 				builder
// 					.addDecoratorPath("/*", "/WEB-INF/template/page-template.jsp");
// 			}
// 		};
// 	}
//
//}
