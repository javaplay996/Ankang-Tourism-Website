package com.entity.model;

import com.entity.LvyouxianluEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 旅游线路
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-04-30 11:47:10
 */
public class LvyouxianluModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 游客姓名
	 */
	
	private String youkexingming;
		
	/**
	 * 线路规划
	 */
	
	private String xianluguihua;
		
	/**
	 * 线路图片
	 */
	
	private String xianlutupian;
				
	
	/**
	 * 设置：游客姓名
	 */
	 
	public void setYoukexingming(String youkexingming) {
		this.youkexingming = youkexingming;
	}
	
	/**
	 * 获取：游客姓名
	 */
	public String getYoukexingming() {
		return youkexingming;
	}
				
	
	/**
	 * 设置：线路规划
	 */
	 
	public void setXianluguihua(String xianluguihua) {
		this.xianluguihua = xianluguihua;
	}
	
	/**
	 * 获取：线路规划
	 */
	public String getXianluguihua() {
		return xianluguihua;
	}
				
	
	/**
	 * 设置：线路图片
	 */
	 
	public void setXianlutupian(String xianlutupian) {
		this.xianlutupian = xianlutupian;
	}
	
	/**
	 * 获取：线路图片
	 */
	public String getXianlutupian() {
		return xianlutupian;
	}
			
}
