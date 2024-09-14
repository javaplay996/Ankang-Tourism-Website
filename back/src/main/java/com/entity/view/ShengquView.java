package com.entity.view;

import com.entity.ShengquEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 省区
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-30 11:47:10
 */
@TableName("shengqu")
public class ShengquView  extends ShengquEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShengquView(){
	}
 
 	public ShengquView(ShengquEntity shengquEntity){
 	try {
			BeanUtils.copyProperties(this, shengquEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
