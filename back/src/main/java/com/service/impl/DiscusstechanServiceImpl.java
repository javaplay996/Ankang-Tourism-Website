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


import com.dao.DiscusstechanDao;
import com.entity.DiscusstechanEntity;
import com.service.DiscusstechanService;
import com.entity.vo.DiscusstechanVO;
import com.entity.view.DiscusstechanView;

@Service("discusstechanService")
public class DiscusstechanServiceImpl extends ServiceImpl<DiscusstechanDao, DiscusstechanEntity> implements DiscusstechanService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusstechanEntity> page = this.selectPage(
                new Query<DiscusstechanEntity>(params).getPage(),
                new EntityWrapper<DiscusstechanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusstechanEntity> wrapper) {
		  Page<DiscusstechanView> page =new Query<DiscusstechanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusstechanVO> selectListVO(Wrapper<DiscusstechanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusstechanVO selectVO(Wrapper<DiscusstechanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusstechanView> selectListView(Wrapper<DiscusstechanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusstechanView selectView(Wrapper<DiscusstechanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
