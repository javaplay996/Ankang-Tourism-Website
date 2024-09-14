package com.dao;

import com.entity.TechanquxiaodingdanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.TechanquxiaodingdanVO;
import com.entity.view.TechanquxiaodingdanView;


/**
 * 特产取消订单
 * 
 * @author 
 * @email 
 * @date 2021-04-30 11:47:11
 */
public interface TechanquxiaodingdanDao extends BaseMapper<TechanquxiaodingdanEntity> {
	
	List<TechanquxiaodingdanVO> selectListVO(@Param("ew") Wrapper<TechanquxiaodingdanEntity> wrapper);
	
	TechanquxiaodingdanVO selectVO(@Param("ew") Wrapper<TechanquxiaodingdanEntity> wrapper);
	
	List<TechanquxiaodingdanView> selectListView(@Param("ew") Wrapper<TechanquxiaodingdanEntity> wrapper);

	List<TechanquxiaodingdanView> selectListView(Pagination page,@Param("ew") Wrapper<TechanquxiaodingdanEntity> wrapper);
	
	TechanquxiaodingdanView selectView(@Param("ew") Wrapper<TechanquxiaodingdanEntity> wrapper);
	
}
