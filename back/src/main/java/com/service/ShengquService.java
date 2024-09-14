package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShengquEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShengquVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShengquView;


/**
 * 省区
 *
 * @author 
 * @email 
 * @date 2021-04-30 11:47:10
 */
public interface ShengquService extends IService<ShengquEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShengquVO> selectListVO(Wrapper<ShengquEntity> wrapper);
   	
   	ShengquVO selectVO(@Param("ew") Wrapper<ShengquEntity> wrapper);
   	
   	List<ShengquView> selectListView(Wrapper<ShengquEntity> wrapper);
   	
   	ShengquView selectView(@Param("ew") Wrapper<ShengquEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShengquEntity> wrapper);
   	
}

