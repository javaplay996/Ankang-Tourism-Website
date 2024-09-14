package com.dao;

import com.entity.ShengquEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShengquVO;
import com.entity.view.ShengquView;


/**
 * 省区
 * 
 * @author 
 * @email 
 * @date 2021-04-30 11:47:10
 */
public interface ShengquDao extends BaseMapper<ShengquEntity> {
	
	List<ShengquVO> selectListVO(@Param("ew") Wrapper<ShengquEntity> wrapper);
	
	ShengquVO selectVO(@Param("ew") Wrapper<ShengquEntity> wrapper);
	
	List<ShengquView> selectListView(@Param("ew") Wrapper<ShengquEntity> wrapper);

	List<ShengquView> selectListView(Pagination page,@Param("ew") Wrapper<ShengquEntity> wrapper);
	
	ShengquView selectView(@Param("ew") Wrapper<ShengquEntity> wrapper);
	
}
