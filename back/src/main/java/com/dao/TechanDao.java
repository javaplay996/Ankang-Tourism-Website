package com.dao;

import com.entity.TechanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.TechanVO;
import com.entity.view.TechanView;


/**
 * 特产
 * 
 * @author 
 * @email 
 * @date 2021-04-30 11:47:10
 */
public interface TechanDao extends BaseMapper<TechanEntity> {
	
	List<TechanVO> selectListVO(@Param("ew") Wrapper<TechanEntity> wrapper);
	
	TechanVO selectVO(@Param("ew") Wrapper<TechanEntity> wrapper);
	
	List<TechanView> selectListView(@Param("ew") Wrapper<TechanEntity> wrapper);

	List<TechanView> selectListView(Pagination page,@Param("ew") Wrapper<TechanEntity> wrapper);
	
	TechanView selectView(@Param("ew") Wrapper<TechanEntity> wrapper);
	
}
