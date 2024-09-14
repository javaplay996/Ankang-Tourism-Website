package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.TechanquxiaodingdanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.TechanquxiaodingdanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.TechanquxiaodingdanView;


/**
 * 特产取消订单
 *
 * @author 
 * @email 
 * @date 2021-04-30 11:47:11
 */
public interface TechanquxiaodingdanService extends IService<TechanquxiaodingdanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<TechanquxiaodingdanVO> selectListVO(Wrapper<TechanquxiaodingdanEntity> wrapper);
   	
   	TechanquxiaodingdanVO selectVO(@Param("ew") Wrapper<TechanquxiaodingdanEntity> wrapper);
   	
   	List<TechanquxiaodingdanView> selectListView(Wrapper<TechanquxiaodingdanEntity> wrapper);
   	
   	TechanquxiaodingdanView selectView(@Param("ew") Wrapper<TechanquxiaodingdanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<TechanquxiaodingdanEntity> wrapper);
   	
}

