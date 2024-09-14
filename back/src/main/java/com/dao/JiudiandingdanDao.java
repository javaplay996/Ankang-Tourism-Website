package com.dao;

import com.entity.JiudiandingdanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiudiandingdanVO;
import com.entity.view.JiudiandingdanView;


/**
 * 酒店订单
 * 
 * @author 
 * @email 
 * @date 2021-04-30 11:47:11
 */
public interface JiudiandingdanDao extends BaseMapper<JiudiandingdanEntity> {
	
	List<JiudiandingdanVO> selectListVO(@Param("ew") Wrapper<JiudiandingdanEntity> wrapper);
	
	JiudiandingdanVO selectVO(@Param("ew") Wrapper<JiudiandingdanEntity> wrapper);
	
	List<JiudiandingdanView> selectListView(@Param("ew") Wrapper<JiudiandingdanEntity> wrapper);

	List<JiudiandingdanView> selectListView(Pagination page,@Param("ew") Wrapper<JiudiandingdanEntity> wrapper);
	
	JiudiandingdanView selectView(@Param("ew") Wrapper<JiudiandingdanEntity> wrapper);
	
}
