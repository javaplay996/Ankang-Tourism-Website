package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.TechandingdanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.TechandingdanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.TechandingdanView;


/**
 * 特产订单
 *
 * @author 
 * @email 
 * @date 2021-04-30 11:47:11
 */
public interface TechandingdanService extends IService<TechandingdanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<TechandingdanVO> selectListVO(Wrapper<TechandingdanEntity> wrapper);
   	
   	TechandingdanVO selectVO(@Param("ew") Wrapper<TechandingdanEntity> wrapper);
   	
   	List<TechandingdanView> selectListView(Wrapper<TechandingdanEntity> wrapper);
   	
   	TechandingdanView selectView(@Param("ew") Wrapper<TechandingdanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<TechandingdanEntity> wrapper);
   	
}

