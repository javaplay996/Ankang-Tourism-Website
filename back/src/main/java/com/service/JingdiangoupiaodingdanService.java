package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JingdiangoupiaodingdanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JingdiangoupiaodingdanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JingdiangoupiaodingdanView;


/**
 * 景点购票订单
 *
 * @author 
 * @email 
 * @date 2021-04-30 11:47:11
 */
public interface JingdiangoupiaodingdanService extends IService<JingdiangoupiaodingdanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JingdiangoupiaodingdanVO> selectListVO(Wrapper<JingdiangoupiaodingdanEntity> wrapper);
   	
   	JingdiangoupiaodingdanVO selectVO(@Param("ew") Wrapper<JingdiangoupiaodingdanEntity> wrapper);
   	
   	List<JingdiangoupiaodingdanView> selectListView(Wrapper<JingdiangoupiaodingdanEntity> wrapper);
   	
   	JingdiangoupiaodingdanView selectView(@Param("ew") Wrapper<JingdiangoupiaodingdanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JingdiangoupiaodingdanEntity> wrapper);
   	
}

