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


import com.dao.JiudianquxiaodingdanDao;
import com.entity.JiudianquxiaodingdanEntity;
import com.service.JiudianquxiaodingdanService;
import com.entity.vo.JiudianquxiaodingdanVO;
import com.entity.view.JiudianquxiaodingdanView;

@Service("jiudianquxiaodingdanService")
public class JiudianquxiaodingdanServiceImpl extends ServiceImpl<JiudianquxiaodingdanDao, JiudianquxiaodingdanEntity> implements JiudianquxiaodingdanService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiudianquxiaodingdanEntity> page = this.selectPage(
                new Query<JiudianquxiaodingdanEntity>(params).getPage(),
                new EntityWrapper<JiudianquxiaodingdanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiudianquxiaodingdanEntity> wrapper) {
		  Page<JiudianquxiaodingdanView> page =new Query<JiudianquxiaodingdanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiudianquxiaodingdanVO> selectListVO(Wrapper<JiudianquxiaodingdanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiudianquxiaodingdanVO selectVO(Wrapper<JiudianquxiaodingdanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiudianquxiaodingdanView> selectListView(Wrapper<JiudianquxiaodingdanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiudianquxiaodingdanView selectView(Wrapper<JiudianquxiaodingdanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
