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


import com.dao.GoupiaoquxiaodingdanDao;
import com.entity.GoupiaoquxiaodingdanEntity;
import com.service.GoupiaoquxiaodingdanService;
import com.entity.vo.GoupiaoquxiaodingdanVO;
import com.entity.view.GoupiaoquxiaodingdanView;

@Service("goupiaoquxiaodingdanService")
public class GoupiaoquxiaodingdanServiceImpl extends ServiceImpl<GoupiaoquxiaodingdanDao, GoupiaoquxiaodingdanEntity> implements GoupiaoquxiaodingdanService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<GoupiaoquxiaodingdanEntity> page = this.selectPage(
                new Query<GoupiaoquxiaodingdanEntity>(params).getPage(),
                new EntityWrapper<GoupiaoquxiaodingdanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<GoupiaoquxiaodingdanEntity> wrapper) {
		  Page<GoupiaoquxiaodingdanView> page =new Query<GoupiaoquxiaodingdanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<GoupiaoquxiaodingdanVO> selectListVO(Wrapper<GoupiaoquxiaodingdanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public GoupiaoquxiaodingdanVO selectVO(Wrapper<GoupiaoquxiaodingdanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<GoupiaoquxiaodingdanView> selectListView(Wrapper<GoupiaoquxiaodingdanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public GoupiaoquxiaodingdanView selectView(Wrapper<GoupiaoquxiaodingdanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
