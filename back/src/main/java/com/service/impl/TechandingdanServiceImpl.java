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


import com.dao.TechandingdanDao;
import com.entity.TechandingdanEntity;
import com.service.TechandingdanService;
import com.entity.vo.TechandingdanVO;
import com.entity.view.TechandingdanView;

@Service("techandingdanService")
public class TechandingdanServiceImpl extends ServiceImpl<TechandingdanDao, TechandingdanEntity> implements TechandingdanService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<TechandingdanEntity> page = this.selectPage(
                new Query<TechandingdanEntity>(params).getPage(),
                new EntityWrapper<TechandingdanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<TechandingdanEntity> wrapper) {
		  Page<TechandingdanView> page =new Query<TechandingdanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<TechandingdanVO> selectListVO(Wrapper<TechandingdanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public TechandingdanVO selectVO(Wrapper<TechandingdanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<TechandingdanView> selectListView(Wrapper<TechandingdanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public TechandingdanView selectView(Wrapper<TechandingdanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
