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


import com.dao.TechanquxiaodingdanDao;
import com.entity.TechanquxiaodingdanEntity;
import com.service.TechanquxiaodingdanService;
import com.entity.vo.TechanquxiaodingdanVO;
import com.entity.view.TechanquxiaodingdanView;

@Service("techanquxiaodingdanService")
public class TechanquxiaodingdanServiceImpl extends ServiceImpl<TechanquxiaodingdanDao, TechanquxiaodingdanEntity> implements TechanquxiaodingdanService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<TechanquxiaodingdanEntity> page = this.selectPage(
                new Query<TechanquxiaodingdanEntity>(params).getPage(),
                new EntityWrapper<TechanquxiaodingdanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<TechanquxiaodingdanEntity> wrapper) {
		  Page<TechanquxiaodingdanView> page =new Query<TechanquxiaodingdanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<TechanquxiaodingdanVO> selectListVO(Wrapper<TechanquxiaodingdanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public TechanquxiaodingdanVO selectVO(Wrapper<TechanquxiaodingdanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<TechanquxiaodingdanView> selectListView(Wrapper<TechanquxiaodingdanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public TechanquxiaodingdanView selectView(Wrapper<TechanquxiaodingdanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
