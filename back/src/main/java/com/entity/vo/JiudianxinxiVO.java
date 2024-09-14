package com.entity.vo;

import com.entity.JiudianxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 酒店信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-04-30 11:47:10
 */
public class JiudianxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 酒店介绍
	 */
	
	private String jiudianjieshao;
		
	/**
	 * 房间数
	 */
	
	private Integer fangjianshu;
		
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
	 * 酒店价格
	 */
	
	private Integer jiudianjiage;
		
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
				
	
	/**
	 * 设置：酒店介绍
	 */
	 
	public void setJiudianjieshao(String jiudianjieshao) {
		this.jiudianjieshao = jiudianjieshao;
	}
	
	/**
	 * 获取：酒店介绍
	 */
	public String getJiudianjieshao() {
		return jiudianjieshao;
	}
				
	
	/**
	 * 设置：房间数
	 */
	 
	public void setFangjianshu(Integer fangjianshu) {
		this.fangjianshu = fangjianshu;
	}
	
	/**
	 * 获取：房间数
	 */
	public Integer getFangjianshu() {
		return fangjianshu;
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
	 * 设置：酒店价格
	 */
	 
	public void setJiudianjiage(Integer jiudianjiage) {
		this.jiudianjiage = jiudianjiage;
	}
	
	/**
	 * 获取：酒店价格
	 */
	public Integer getJiudianjiage() {
		return jiudianjiage;
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
