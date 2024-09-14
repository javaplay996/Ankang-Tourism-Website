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


import com.dao.TechanDao;
import com.entity.TechanEntity;
import com.service.TechanService;
import com.entity.vo.TechanVO;
import com.entity.view.TechanView;

@Service("techanService")
public class TechanServiceImpl extends ServiceImpl<TechanDao, TechanEntity> implements TechanService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<TechanEntity> page = this.selectPage(
                new Query<TechanEntity>(params).getPage(),
                new EntityWrapper<TechanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<TechanEntity> wrapper) {
		  Page<TechanView> page =new Query<TechanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<TechanVO> selectListVO(Wrapper<TechanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public TechanVO selectVO(Wrapper<TechanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<TechanView> selectListView(Wrapper<TechanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public TechanView selectView(Wrapper<TechanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
