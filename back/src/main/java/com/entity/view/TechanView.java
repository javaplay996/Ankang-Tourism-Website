package com.entity.view;

import com.entity.TechanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 特产
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-30 11:47:10
 */
@TableName("techan")
public class TechanView  extends TechanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public TechanView(){
	}
 
 	public TechanView(TechanEntity techanEntity){
 	try {
			BeanUtils.copyProperties(this, techanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
