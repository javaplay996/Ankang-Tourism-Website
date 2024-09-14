package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.LvyouxianluEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.LvyouxianluVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.LvyouxianluView;


/**
 * 旅游线路
 *
 * @author 
 * @email 
 * @date 2021-04-30 11:47:10
 */
public interface LvyouxianluService extends IService<LvyouxianluEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<LvyouxianluVO> selectListVO(Wrapper<LvyouxianluEntity> wrapper);
   	
   	LvyouxianluVO selectVO(@Param("ew") Wrapper<LvyouxianluEntity> wrapper);
   	
   	List<LvyouxianluView> selectListView(Wrapper<LvyouxianluEntity> wrapper);
   	
   	LvyouxianluView selectView(@Param("ew") Wrapper<LvyouxianluEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<LvyouxianluEntity> wrapper);
   	
}

