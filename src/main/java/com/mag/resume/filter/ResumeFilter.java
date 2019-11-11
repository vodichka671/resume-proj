package com.mag.resume.filter;

import java.io.IOException;


import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class ResumeFilter extends AbstractFilter {
	
	@Value("${application.production}")
	private boolean production;

	@Override
	public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		String requestURL = req.getRequestURI();
		req.setAttribute("REQUEST_URL", requestURL);
		try {
			chain.doFilter(req, resp);
		} catch (Exception e) {
			LOGGER.error("Process request failed: " + requestURL, e);
			handleException(e, requestURL, resp);
			
		}
	}
	
	private void handleException(Throwable e, String requestURL, HttpServletResponse resp) throws ServletException, IOException{
		if (production) {
			if ("/error".equals(requestURL)) {
				throw new ServletException(e);
			} else {
				resp.sendRedirect("/error");
			}
		} else {
			throw new ServletException(e);
		}
	}

}
