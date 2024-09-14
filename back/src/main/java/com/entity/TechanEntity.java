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
 * 特产
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-04-30 11:47:10
 */
@TableName("techan")
public class TechanEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public TechanEntity() {
		
	}
	
	public TechanEntity(T t) {
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
	 * 特产名称
	 */
					
	private String techanmingcheng;
	
	/**
	 * 特产介绍
	 */
					
	private String techanjieshao;
	
	/**
	 * 价格
	 */
					
	private Integer jiage;
	
	/**
	 * 数目
	 */
					
	private Integer shumu;
	
	/**
	 * 所在省区
	 */
					
	private String suozaishengqu;
	
	/**
	 * 所在城市
	 */
					
	private String suozaichengshi;
	
	/**
	 * 所在地区
	 */
					
	private String suozaidiqu;
	
	/**
	 * 图片
	 */
					
	private String tupian;
	
	/**
	 * 赞
	 */
					
	private Integer thumbsupnum;
	
	/**
	 * 踩
	 */
					
	private Integer crazilynum;
	
	/**
	 * 最近点击时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date clicktime;
	
	/**
	 * 点击次数
	 */
					
	private Integer clicknum;
	
	
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
	 * 设置：特产名称
	 */
	public void setTechanmingcheng(String techanmingcheng) {
		this.techanmingcheng = techanmingcheng;
	}
	/**
	 * 获取：特产名称
	 */
	public String getTechanmingcheng() {
		return techanmingcheng;
	}
	/**
	 * 设置：特产介绍
	 */
	public void setTechanjieshao(String techanjieshao) {
		this.techanjieshao = techanjieshao;
	}
	/**
	 * 获取：特产介绍
	 */
	public String getTechanjieshao() {
		return techanjieshao;
	}
	/**
	 * 设置：价格
	 */
	public void setJiage(Integer jiage) {
		this.jiage = jiage;
	}
	/**
	 * 获取：价格
	 */
	public Integer getJiage() {
		return jiage;
	}
	/**
	 * 设置：数目
	 */
	public void setShumu(Integer shumu) {
		this.shumu = shumu;
	}
	/**
	 * 获取：数目
	 */
	public Integer getShumu() {
		return shumu;
	}
	/**
	 * 设置：所在省区
	 */
	public void setSuozaishengqu(String suozaishengqu) {
		this.suozaishengqu = suozaishengqu;
	}
	/**
	 * 获取：所在省区
	 */
	public String getSuozaishengqu() {
		return suozaishengqu;
	}
	/**
	 * 设置：所在城市
	 */
	public void setSuozaichengshi(String suozaichengshi) {
		this.suozaichengshi = suozaichengshi;
	}
	/**
	 * 获取：所在城市
	 */
	public String getSuozaichengshi() {
		return suozaichengshi;
	}
	/**
	 * 设置：所在地区
	 */
	public void setSuozaidiqu(String suozaidiqu) {
		this.suozaidiqu = suozaidiqu;
	}
	/**
	 * 获取：所在地区
	 */
	public String getSuozaidiqu() {
		return suozaidiqu;
	}
	/**
	 * 设置：图片
	 */
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
	/**
	 * 设置：赞
	 */
	public void setThumbsupnum(Integer thumbsupnum) {
		this.thumbsupnum = thumbsupnum;
	}
	/**
	 * 获取：赞
	 */
	public Integer getThumbsupnum() {
		return thumbsupnum;
	}
	/**
	 * 设置：踩
	 */
	public void setCrazilynum(Integer crazilynum) {
		this.crazilynum = crazilynum;
	}
	/**
	 * 获取：踩
	 */
	public Integer getCrazilynum() {
		return crazilynum;
	}
	/**
	 * 设置：最近点击时间
	 */
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
	/**
	 * 设置：点击次数
	 */
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}

}
