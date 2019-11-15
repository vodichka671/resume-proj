package com.mag.resume.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

@Configuration
@PropertySource("classpath:application.properties")
@ComponentScan({"com.mag.resume.service",
				"com.mag.resume.controller",
				"com.mag.resume.filter",
				"com.mag.resume.listener"})

public class ServiceConfig {
	
	@Bean
	public static PropertySourcesPlaceholderConfigurer placeholderConfigurer(){
		PropertySourcesPlaceholderConfigurer configurer = new PropertySourcesPlaceholderConfigurer();
		configurer.setLocations(getResources());
		
		return configurer;}

	public static Resource[] getResources() {
		return new Resource[] {new ClassPathResource("application.properties")};
	}
	
}
