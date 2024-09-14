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


import com.dao.JingdiangoupiaodingdanDao;
import com.entity.JingdiangoupiaodingdanEntity;
import com.service.JingdiangoupiaodingdanService;
import com.entity.vo.JingdiangoupiaodingdanVO;
import com.entity.view.JingdiangoupiaodingdanView;

@Service("jingdiangoupiaodingdanService")
public class JingdiangoupiaodingdanServiceImpl extends ServiceImpl<JingdiangoupiaodingdanDao, JingdiangoupiaodingdanEntity> implements JingdiangoupiaodingdanService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JingdiangoupiaodingdanEntity> page = this.selectPage(
                new Query<JingdiangoupiaodingdanEntity>(params).getPage(),
                new EntityWrapper<JingdiangoupiaodingdanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JingdiangoupiaodingdanEntity> wrapper) {
		  Page<JingdiangoupiaodingdanView> page =new Query<JingdiangoupiaodingdanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JingdiangoupiaodingdanVO> selectListVO(Wrapper<JingdiangoupiaodingdanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JingdiangoupiaodingdanVO selectVO(Wrapper<JingdiangoupiaodingdanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JingdiangoupiaodingdanView> selectListView(Wrapper<JingdiangoupiaodingdanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JingdiangoupiaodingdanView selectView(Wrapper<JingdiangoupiaodingdanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
