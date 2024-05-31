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
 * 员工薪酬
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-04-19 17:11:35
 */
@TableName("yuangongxinchou")
public class YuangongxinchouEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public YuangongxinchouEntity() {
		
	}
	
	public YuangongxinchouEntity(T t) {
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
	 * 员工账号
	 */
					
	private String yuangongzhanghao;
	
	/**
	 * 姓名
	 */
					
	private String xingming;
	
	/**
	 * 部门
	 */
					
	private String bumen;
	
	/**
	 * 基本工资
	 */
					
	private Integer jibengongzi;
	
	/**
	 * 全勤奖
	 */
					
	private Integer quanqinjiang;
	
	/**
	 * 提成
	 */
					
	private Float ticheng;
	
	/**
	 * 加班工资
	 */
					
	private Float jiabangongzi;
	
	/**
	 * 请假
	 */
					
	private Float qingjia;
	
	/**
	 * 迟到
	 */
					
	private Float chidao;
	
	/**
	 * 薪酬
	 */
					
	private Float xinchou;
	
	/**
	 * 薪酬年月
	 */
					
	private String xinchounianyue;
	
	/**
	 * 备注
	 */
					
	private String beizhu;
	
	/**
	 * 是否支付
	 */
					
	private String ispay;
	
	
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
	 * 设置：员工账号
	 */
	public void setYuangongzhanghao(String yuangongzhanghao) {
		this.yuangongzhanghao = yuangongzhanghao;
	}
	/**
	 * 获取：员工账号
	 */
	public String getYuangongzhanghao() {
		return yuangongzhanghao;
	}
	/**
	 * 设置：姓名
	 */
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
	/**
	 * 设置：部门
	 */
	public void setBumen(String bumen) {
		this.bumen = bumen;
	}
	/**
	 * 获取：部门
	 */
	public String getBumen() {
		return bumen;
	}
	/**
	 * 设置：基本工资
	 */
	public void setJibengongzi(Integer jibengongzi) {
		this.jibengongzi = jibengongzi;
	}
	/**
	 * 获取：基本工资
	 */
	public Integer getJibengongzi() {
		return jibengongzi;
	}
	/**
	 * 设置：全勤奖
	 */
	public void setQuanqinjiang(Integer quanqinjiang) {
		this.quanqinjiang = quanqinjiang;
	}
	/**
	 * 获取：全勤奖
	 */
	public Integer getQuanqinjiang() {
		return quanqinjiang;
	}
	/**
	 * 设置：提成
	 */
	public void setTicheng(Float ticheng) {
		this.ticheng = ticheng;
	}
	/**
	 * 获取：提成
	 */
	public Float getTicheng() {
		return ticheng;
	}
	/**
	 * 设置：加班工资
	 */
	public void setJiabangongzi(Float jiabangongzi) {
		this.jiabangongzi = jiabangongzi;
	}
	/**
	 * 获取：加班工资
	 */
	public Float getJiabangongzi() {
		return jiabangongzi;
	}
	/**
	 * 设置：请假
	 */
	public void setQingjia(Float qingjia) {
		this.qingjia = qingjia;
	}
	/**
	 * 获取：请假
	 */
	public Float getQingjia() {
		return qingjia;
	}
	/**
	 * 设置：迟到
	 */
	public void setChidao(Float chidao) {
		this.chidao = chidao;
	}
	/**
	 * 获取：迟到
	 */
	public Float getChidao() {
		return chidao;
	}
	/**
	 * 设置：薪酬
	 */
	public void setXinchou(Float xinchou) {
		this.xinchou = xinchou;
	}
	/**
	 * 获取：薪酬
	 */
	public Float getXinchou() {
		return xinchou;
	}
	/**
	 * 设置：薪酬年月
	 */
	public void setXinchounianyue(String xinchounianyue) {
		this.xinchounianyue = xinchounianyue;
	}
	/**
	 * 获取：薪酬年月
	 */
	public String getXinchounianyue() {
		return xinchounianyue;
	}
	/**
	 * 设置：备注
	 */
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	/**
	 * 获取：备注
	 */
	public String getBeizhu() {
		return beizhu;
	}
	/**
	 * 设置：是否支付
	 */
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}

}
