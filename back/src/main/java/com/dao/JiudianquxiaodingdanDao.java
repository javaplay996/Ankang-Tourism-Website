package com.dao;

import com.entity.JiudianquxiaodingdanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiudianquxiaodingdanVO;
import com.entity.view.JiudianquxiaodingdanView;


/**
 * 酒店取消订单
 * 
 * @author 
 * @email 
 * @date 2021-04-30 11:47:11
 */
public interface JiudianquxiaodingdanDao extends BaseMapper<JiudianquxiaodingdanEntity> {
	
	List<JiudianquxiaodingdanVO> selectListVO(@Param("ew") Wrapper<JiudianquxiaodingdanEntity> wrapper);
	
	JiudianquxiaodingdanVO selectVO(@Param("ew") Wrapper<JiudianquxiaodingdanEntity> wrapper);
	
	List<JiudianquxiaodingdanView> selectListView(@Param("ew") Wrapper<JiudianquxiaodingdanEntity> wrapper);

	List<JiudianquxiaodingdanView> selectListView(Pagination page,@Param("ew") Wrapper<JiudianquxiaodingdanEntity> wrapper);
	
	JiudianquxiaodingdanView selectView(@Param("ew") Wrapper<JiudianquxiaodingdanEntity> wrapper);
	
}
