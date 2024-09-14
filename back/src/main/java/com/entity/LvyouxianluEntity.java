package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 旅游线路
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-04-30 11:47:10
 */
@TableName("lvyouxianlu")
public class LvyouxianluEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public LvyouxianluEntity() {
		
	}
	
	public LvyouxianluEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 游客账号
	 */
					
	private String youkezhanghao;
	
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：游客账号
	 */
	public void setYoukezhanghao(String youkezhanghao) {
		this.youkezhanghao = youkezhanghao;
	}
	/**
	 * 获取：游客账号
	 */
	public String getYoukezhanghao() {
		return youkezhanghao;
	}
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
