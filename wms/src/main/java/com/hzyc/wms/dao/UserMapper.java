package com.hzyc.wms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hzyc.wms.entity.UserPo;
import com.hzyc.wms.entity.UserVo;

public interface UserMapper {

	public int add(UserPo user);
	
	public List<UserPo> query(@Param("u")UserVo u, @Param("orderStr")String orderStr);
	
	public UserPo get(int id);
	
	public int update(UserPo u);
}
