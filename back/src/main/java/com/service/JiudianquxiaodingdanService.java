package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiudianquxiaodingdanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiudianquxiaodingdanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiudianquxiaodingdanView;


/**
 * 酒店取消订单
 *
 * @author 
 * @email 
 * @date 2021-04-30 11:47:11
 */
public interface JiudianquxiaodingdanService extends IService<JiudianquxiaodingdanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiudianquxiaodingdanVO> selectListVO(Wrapper<JiudianquxiaodingdanEntity> wrapper);
   	
   	JiudianquxiaodingdanVO selectVO(@Param("ew") Wrapper<JiudianquxiaodingdanEntity> wrapper);
   	
   	List<JiudianquxiaodingdanView> selectListView(Wrapper<JiudianquxiaodingdanEntity> wrapper);
   	
   	JiudianquxiaodingdanView selectView(@Param("ew") Wrapper<JiudianquxiaodingdanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiudianquxiaodingdanEntity> wrapper);
   	
}

