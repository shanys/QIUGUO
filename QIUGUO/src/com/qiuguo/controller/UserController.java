package com.qiuguo.controller;


import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.qiuguo.model.User;
import com.qiuguo.model.UserDetail;
import com.qiuguo.service.UserService;
@Controller
@RequestMapping("/user.do")
@SessionAttributes({"user","users","uds","userPage","userTotalPages"})
public class UserController {

	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	@Resource
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	@RequestMapping(params="method=reg")
	public String reg(String username,String password,String tele){
		User u =new User();
		if(username!=null&&password!=null&&tele!=null){
			u.setUsername(username);
			u.setPassword(password);
			u.setTele(tele);
			u.setRole("normal");
		}else
			return "index-register.html";
		userService.add(u);
		//System.out.println(u);
		return "index-login.html";
	}
	
	@RequestMapping(params="method=login")
	public String login(String username , String password , ModelMap map){
		User u = null;
		UserDetail ud = new UserDetail();
		if(username!=null){
			u = userService.findByUsername(username);
			if(u==null){
				map.put("userError", "用户不存在");
				return "index-login.jsp";
			}
			
			
		}else{
			//添加错误信息
			return "redirect:index-login.jsp";
		}
		if(password.equals(u.getPassword())){
			//添加用户历史登录信息
			String loginTime = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date());
			ud.setUserId(u.getId());
			ud.setLoginTime(loginTime);
			ud.setRole(u.getRole());
			userService.addUserDetail(ud);
			//将用户的登录信息放入到session中
			if(u.getRole().equals("administrator"))
				map.put("user", u);
			return "index.jsp";
		}			
		else{
			map.put("passwordError", "密码错误");
			return "index-login.jsp";
		}
		
	}
	@RequestMapping(params="method=logout")
	public String logout(ModelMap map){
		User u = new User();
		map.put("user", u);
		return "redirect:index.jsp";
	}
	@RequestMapping(params="method=add")
	public String addUser(String username,String password,String role,ModelMap map){
		System.out.println(role);
		User u = new User();
		if(username!=null&&password!=null&&role!=null){
			u.setUsername(username);
			u.setPassword(password);
			u.setRole(role);
			userService.add(u);
			
			return "user.do?method=list&page=1";
		}else
			return "add-user.html";
			
	}
	
	@RequestMapping(params="method=delete")
	public String deleteUser(int id,int userPage){
		if(id!=0)
			userService.delete(id);
		return "user.do?method=list&page="+userPage;
	}
	
	
	@RequestMapping(params="method=list")
	public String userList(ModelMap map,int userPage){
		map.put("users", userService.findByPages(5, userPage));
		map.put("userTotalPages", userService.getTotalPages(5));
		map.put("userPage", userPage);
		
		return "redirect:index-person.jsp";
	}
	
	@RequestMapping(params="method=detail")
	public String getUserDetail(ModelMap map,int userId,int page){
		System.out.println(userId);
		map.put("uds", userService.getUserDetailByPages(5, page, userId));
		map.put("page", page);
		map.put("totalPages", userService.getUserDetailTotalPages(5));
		map.put("userId", userId);
//System.out.println("hello");
		return "user-detail.jsp";
	}
}
