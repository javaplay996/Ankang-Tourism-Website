package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.TechanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.TechanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.TechanView;


/**
 * 特产
 *
 * @author 
 * @email 
 * @date 2021-04-30 11:47:10
 */
public interface TechanService extends IService<TechanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<TechanVO> selectListVO(Wrapper<TechanEntity> wrapper);
   	
   	TechanVO selectVO(@Param("ew") Wrapper<TechanEntity> wrapper);
   	
   	List<TechanView> selectListView(Wrapper<TechanEntity> wrapper);
   	
   	TechanView selectView(@Param("ew") Wrapper<TechanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<TechanEntity> wrapper);
   	
}

