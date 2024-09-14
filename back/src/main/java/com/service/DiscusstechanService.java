package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusstechanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusstechanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusstechanView;


/**
 * 特产评论表
 *
 * @author 
 * @email 
 * @date 2021-04-30 11:47:11
 */
public interface DiscusstechanService extends IService<DiscusstechanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusstechanVO> selectListVO(Wrapper<DiscusstechanEntity> wrapper);
   	
   	DiscusstechanVO selectVO(@Param("ew") Wrapper<DiscusstechanEntity> wrapper);
   	
   	List<DiscusstechanView> selectListView(Wrapper<DiscusstechanEntity> wrapper);
   	
   	DiscusstechanView selectView(@Param("ew") Wrapper<DiscusstechanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusstechanEntity> wrapper);
   	
}

