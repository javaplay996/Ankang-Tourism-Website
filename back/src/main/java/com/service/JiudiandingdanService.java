package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiudiandingdanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiudiandingdanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiudiandingdanView;


/**
 * 酒店订单
 *
 * @author 
 * @email 
 * @date 2021-04-30 11:47:11
 */
public interface JiudiandingdanService extends IService<JiudiandingdanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiudiandingdanVO> selectListVO(Wrapper<JiudiandingdanEntity> wrapper);
   	
   	JiudiandingdanVO selectVO(@Param("ew") Wrapper<JiudiandingdanEntity> wrapper);
   	
   	List<JiudiandingdanView> selectListView(Wrapper<JiudiandingdanEntity> wrapper);
   	
   	JiudiandingdanView selectView(@Param("ew") Wrapper<JiudiandingdanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiudiandingdanEntity> wrapper);
   	
}

