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


import com.dao.ShengquDao;
import com.entity.ShengquEntity;
import com.service.ShengquService;
import com.entity.vo.ShengquVO;
import com.entity.view.ShengquView;

@Service("shengquService")
public class ShengquServiceImpl extends ServiceImpl<ShengquDao, ShengquEntity> implements ShengquService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShengquEntity> page = this.selectPage(
                new Query<ShengquEntity>(params).getPage(),
                new EntityWrapper<ShengquEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShengquEntity> wrapper) {
		  Page<ShengquView> page =new Query<ShengquView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShengquVO> selectListVO(Wrapper<ShengquEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShengquVO selectVO(Wrapper<ShengquEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShengquView> selectListView(Wrapper<ShengquEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShengquView selectView(Wrapper<ShengquEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
