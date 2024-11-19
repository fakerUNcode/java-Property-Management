package com.room.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.room.bean.Admin;
import com.room.bean.CustomAccount;
import com.room.service.IAdminService;
import com.room.service.ICustomAccountService;
import com.room.service.impl.AdminServiceImpl;
import com.room.service.impl.CustomAccountServiceImpl;
import com.room.util.MD5Util;

@Controller
@RequestMapping("/user")
public class UserController extends HttpServlet{
	
	@RequestMapping("/login")
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		IAdminService as = new AdminServiceImpl();
		ICustomAccountService cs = new CustomAccountServiceImpl();
		HttpSession session = request.getSession();

			String name = request.getParameter("username");
			String password = MD5Util.encode(request.getParameter("password"));
			String usertype = request.getParameter("usertype");
			Admin a = as.findBynp(name, password);
			CustomAccount c = cs.findBynp(name, password);
			
			if("admin".equals(usertype) && a != null) {
				String n = a.getName();
				String p = a.getPassword();
				if(n.equals(name) && p.equals(password)) {
					session.setAttribute("admin", a);
					response.sendRedirect("../index.jsp");
				}else {
					response.getWriter().write("<script charset='UTF-8'>alert(\"用户名或密码错误\");" +
	                        "location.href='../login.jsp';</script>");
				}
			}else if("user".equals(usertype) && c != null) {
				String n = c.getUsername();
				String p = c.getPassword();
				if(n.equals(name) && p.equals(password)) {
					session.setAttribute("customAccount", c);
					response.sendRedirect("../indexUser.jsp");
				}else {
					response.getWriter().write("<script charset='UTF-8'>alert(\"用户名或密码错误\");" +
	                        "location.href='../login.jsp';</script>");
				}
			}else{
				response.getWriter().write("<script charset='UTF-8'>alert(\"用户名或密码错误\");" +
                        "location.href='../login.jsp';</script>");
			}
			
			
	}
	
	@RequestMapping("/logout")
	public void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session = request.getSession();
				session.invalidate();
				response.sendRedirect("../login.jsp");
		}
	@RequestMapping("/relogin")
	public void relogin(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
			HttpSession session = request.getSession();
				session.invalidate();
				response.sendRedirect("../login.jsp");
		}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	 public void register(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html;charset=UTF-8");

	    String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    String confirmPassword = request.getParameter("confirmPassword");
	    String usertype = request.getParameter("usertype");

	    // 验证用户类型是否为业主
	    if (!"user".equals(usertype)) {
	        response.getWriter().write("<script>alert('非法请求！管理员无法注册');location.href='../register.jsp';</script>");
	        return;
	    }

	    // 验证两次输入的密码是否一致
	    if (!password.equals(confirmPassword)) {
	        response.getWriter().write("<script>alert('两次密码输入不一致，请重新输入！');location.href='../register.jsp';</script>");
	        return;
	    }

	    // 加密密码
	    String encryptedPassword = MD5Util.encode(password);

	    // 注册业主逻辑
	    ICustomAccountService customAccountService = new CustomAccountServiceImpl();
	    CustomAccount existingAccount = customAccountService.findBynp(username, encryptedPassword);
	    if (existingAccount != null) {
	        response.getWriter().write("<script>alert('用户名已存在！');location.href='../register.jsp';</script>");
	        return;
	    }

	    CustomAccount account = new CustomAccount();
	    account.setUsername(username);
	    account.setPassword(encryptedPassword);
	    customAccountService.save(account); // 调用 save 方法来保存用户
	    response.getWriter().write("<script>alert('业主注册成功！');location.href='../login.jsp';</script>");
	}



	
}

		
