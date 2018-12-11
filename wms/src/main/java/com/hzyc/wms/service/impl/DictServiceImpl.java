package com.hzyc.wms.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hzyc.wms.dao.DictMapper;
import com.hzyc.wms.entity.DictEntity;
import com.hzyc.wms.service.IDictService;
import com.hzyc.wms.tags.AbstractTag;

@Service
public class DictServiceImpl implements IDictService {

	@Resource
	private DictMapper dictMapper;

	private Map<String, List<DictEntity>> dictData = new HashMap<String, List<DictEntity>>();

	@Override
	public List<DictEntity> getDictByType(String dictType, String whiteList, String blackList) {
		List<DictEntity> data = dictData.get(dictType);
		return AbstractTag.codeFilter(data, blackList, whiteList);
	}

	//@PostConstruct
	public void init() {
		List<String> codeTypes = dictMapper.getCodeType();
		for (String codeType : codeTypes) {
			dictData.put(codeType, dictMapper.getCodeByType(codeType));
		}
	}

}
