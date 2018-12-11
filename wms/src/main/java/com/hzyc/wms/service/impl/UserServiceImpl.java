package com.hzyc.wms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hzyc.wms.dao.UserMapper;
import com.hzyc.wms.entity.UserPo;
import com.hzyc.wms.entity.UserVo;
import com.hzyc.wms.service.IUserService;

@Service
public class UserServiceImpl implements IUserService {

	@Resource
	private UserMapper userMapper;

	public int add(UserPo user) {
		return userMapper.add(user);
	}

	public List<UserPo> query(UserVo u, String orderStr){
		return userMapper.query(u, orderStr);
	}

	@Override
	public UserPo get(int id) {
		return userMapper.get(id);
	}

	@Override
	public int update(UserPo u) {
		return userMapper.update(u);
	}
}
