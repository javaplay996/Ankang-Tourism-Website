package com.dao;

import com.entity.GoupiaoquxiaodingdanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.GoupiaoquxiaodingdanVO;
import com.entity.view.GoupiaoquxiaodingdanView;


/**
 * 购票取消订单
 * 
 * @author 
 * @email 
 * @date 2021-04-30 11:47:11
 */
public interface GoupiaoquxiaodingdanDao extends BaseMapper<GoupiaoquxiaodingdanEntity> {
	
	List<GoupiaoquxiaodingdanVO> selectListVO(@Param("ew") Wrapper<GoupiaoquxiaodingdanEntity> wrapper);
	
	GoupiaoquxiaodingdanVO selectVO(@Param("ew") Wrapper<GoupiaoquxiaodingdanEntity> wrapper);
	
	List<GoupiaoquxiaodingdanView> selectListView(@Param("ew") Wrapper<GoupiaoquxiaodingdanEntity> wrapper);

	List<GoupiaoquxiaodingdanView> selectListView(Pagination page,@Param("ew") Wrapper<GoupiaoquxiaodingdanEntity> wrapper);
	
	GoupiaoquxiaodingdanView selectView(@Param("ew") Wrapper<GoupiaoquxiaodingdanEntity> wrapper);
	
}
