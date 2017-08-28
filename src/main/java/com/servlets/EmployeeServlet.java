package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daoImpl.DepartmentDaoImpl;
import com.entities.Employee;

public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DepartmentDaoImpl util = new DepartmentDaoImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int empId = Integer.parseInt(request.getParameter("eId"));

		Employee emp = util.getEmployee(empId);

		request.setAttribute("empObject", emp);
		RequestDispatcher dispatcher = request.getRequestDispatcher("displayemployee.jsp");
		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int deptId = Integer.parseInt(request.getParameter("deptId"));

		List<Employee> empList = util.getEmployeesByDeptId(deptId);

		request.setAttribute("empObject", empList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("displayemployeebydeptid.jsp");
		dispatcher.forward(request, response);

		// System.out.println(empList.toString());

	}

}
