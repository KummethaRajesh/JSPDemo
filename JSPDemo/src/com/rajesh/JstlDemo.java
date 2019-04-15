package com.rajesh;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/home")
public class JstlDemo extends HttpServlet{
	
	public void service(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		
		
		java.util.List<Student> students=new java.util.ArrayList<>();
		
		Student s1=new Student("Rajesh",1);
		Student s2=new Student("Balu",2);
		Student s3=new Student("Ankita",3);
		
		students.add(s1);
		students.add(s2);
		students.add(s3);
		
		request.setAttribute("students", students);
		RequestDispatcher rd=request.getRequestDispatcher("display.jsp");
		rd.forward(request, response);
	}

}
