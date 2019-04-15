package com.rajesh;
import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class RajeshTag extends SimpleTagSupport {
	StringWriter sw=new StringWriter();
	public void doTag() throws IOException, JspException {
		getJspBody().invoke(sw);
		JspWriter out=getJspContext().getOut();
		out.print(sw.toString());
	}
}
