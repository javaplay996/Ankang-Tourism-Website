package com.dao;

import com.entity.JingdiangoupiaodingdanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JingdiangoupiaodingdanVO;
import com.entity.view.JingdiangoupiaodingdanView;


/**
 * 景点购票订单
 * 
 * @author 
 * @email 
 * @date 2021-04-30 11:47:11
 */
public interface JingdiangoupiaodingdanDao extends BaseMapper<JingdiangoupiaodingdanEntity> {
	
	List<JingdiangoupiaodingdanVO> selectListVO(@Param("ew") Wrapper<JingdiangoupiaodingdanEntity> wrapper);
	
	JingdiangoupiaodingdanVO selectVO(@Param("ew") Wrapper<JingdiangoupiaodingdanEntity> wrapper);
	
	List<JingdiangoupiaodingdanView> selectListView(@Param("ew") Wrapper<JingdiangoupiaodingdanEntity> wrapper);

	List<JingdiangoupiaodingdanView> selectListView(Pagination page,@Param("ew") Wrapper<JingdiangoupiaodingdanEntity> wrapper);
	
	JingdiangoupiaodingdanView selectView(@Param("ew") Wrapper<JingdiangoupiaodingdanEntity> wrapper);
	
}
