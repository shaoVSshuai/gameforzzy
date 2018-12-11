package com.hzyc.wms.service;

import java.util.List;

import com.hzyc.wms.entity.DictEntity;

public interface IDictService {

	/**
	 * 根据字段类型获取字典数据
	 * 
	 * @param codeType
	 * @return
	 */
	public List<DictEntity> getDictByType(String dictType, String whiteList, String blackList);

	/**
	 * 字典数据初始化
	 */
	public void init();
}
