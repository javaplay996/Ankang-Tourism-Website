package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.DiquDao;
import com.entity.DiquEntity;
import com.service.DiquService;
import com.entity.vo.DiquVO;
import com.entity.view.DiquView;

@Service("diquService")
public class DiquServiceImpl extends ServiceImpl<DiquDao, DiquEntity> implements DiquService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiquEntity> page = this.selectPage(
                new Query<DiquEntity>(params).getPage(),
                new EntityWrapper<DiquEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiquEntity> wrapper) {
		  Page<DiquView> page =new Query<DiquView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiquVO> selectListVO(Wrapper<DiquEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiquVO selectVO(Wrapper<DiquEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiquView> selectListView(Wrapper<DiquEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiquView selectView(Wrapper<DiquEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
