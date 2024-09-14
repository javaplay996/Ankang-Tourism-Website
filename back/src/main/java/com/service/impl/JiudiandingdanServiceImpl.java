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


import com.dao.JiudiandingdanDao;
import com.entity.JiudiandingdanEntity;
import com.service.JiudiandingdanService;
import com.entity.vo.JiudiandingdanVO;
import com.entity.view.JiudiandingdanView;

@Service("jiudiandingdanService")
public class JiudiandingdanServiceImpl extends ServiceImpl<JiudiandingdanDao, JiudiandingdanEntity> implements JiudiandingdanService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiudiandingdanEntity> page = this.selectPage(
                new Query<JiudiandingdanEntity>(params).getPage(),
                new EntityWrapper<JiudiandingdanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiudiandingdanEntity> wrapper) {
		  Page<JiudiandingdanView> page =new Query<JiudiandingdanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiudiandingdanVO> selectListVO(Wrapper<JiudiandingdanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiudiandingdanVO selectVO(Wrapper<JiudiandingdanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiudiandingdanView> selectListView(Wrapper<JiudiandingdanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiudiandingdanView selectView(Wrapper<JiudiandingdanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
