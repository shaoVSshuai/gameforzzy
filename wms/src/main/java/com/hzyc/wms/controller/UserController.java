package com.hzyc.wms.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hzyc.wms.entity.PageEntity;
import com.hzyc.wms.entity.Result;
import com.hzyc.wms.entity.UserPo;
import com.hzyc.wms.entity.UserVo;
import com.hzyc.wms.service.UserServiceImpl;

@Controller
public class UserController {

	@Resource
	private UserServiceImpl userService;
	
	@RequestMapping("/add")
	@ResponseBody
	public ModelAndView adduser(UserPo u){
		int i = userService.add(u);
		ModelAndView mav = new ModelAndView();
		if(i >= 1)
		{
			//注册成功
			mav.setViewName("login.jsp");
		}else {
			mav.setViewName("fail.jsp");
		}
		return mav;
	}
	
	@RequestMapping("/query")
	@ResponseBody
	public Result<UserPo> query(UserVo u, PageEntity pageEntity){
		PageHelper.startPage(pageEntity.getPage(), pageEntity.getRows());
		List<UserPo> list = userService.query(u, pageEntity.getOrderStr());
		PageInfo<UserPo> pageInfo = new PageInfo<>(list);
		
		Result<UserPo> res = new Result<UserPo>();
		res.setRows(list);
		res.setTotal(pageInfo.getTotal());
		return res;
	}
	
	@RequestMapping("/get")
	@ResponseBody
	public Result<UserPo> get(int id){
		Result<UserPo> res = new Result<UserPo>();
		UserPo user = userService.get(id);
		res.setData(user);
		return res;
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public Result<Integer> update(UserPo u){
		Result<Integer> res = new Result<Integer>();
		int rows = userService.update(u);
		res.setData(rows);
		return res;
	}
}
