package com.example.demo.tags;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;

import org.springframework.web.servlet.tags.RequestContextAwareTag;

public class HomeTag extends RequestContextAwareTag {

	@Override
	protected int doStartTagInternal() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void doFinally() {
		JspWriter out = pageContext.getOut();
		try {
			String jspPage = "../tags/home/index.jsp";
			HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();			
			request.getRequestDispatcher(jspPage);
			pageContext.include(jspPage);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
