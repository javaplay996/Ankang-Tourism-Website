package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.GoupiaoquxiaodingdanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.GoupiaoquxiaodingdanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.GoupiaoquxiaodingdanView;


/**
 * 购票取消订单
 *
 * @author 
 * @email 
 * @date 2021-04-30 11:47:11
 */
public interface GoupiaoquxiaodingdanService extends IService<GoupiaoquxiaodingdanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<GoupiaoquxiaodingdanVO> selectListVO(Wrapper<GoupiaoquxiaodingdanEntity> wrapper);
   	
   	GoupiaoquxiaodingdanVO selectVO(@Param("ew") Wrapper<GoupiaoquxiaodingdanEntity> wrapper);
   	
   	List<GoupiaoquxiaodingdanView> selectListView(Wrapper<GoupiaoquxiaodingdanEntity> wrapper);
   	
   	GoupiaoquxiaodingdanView selectView(@Param("ew") Wrapper<GoupiaoquxiaodingdanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<GoupiaoquxiaodingdanEntity> wrapper);
   	
}

