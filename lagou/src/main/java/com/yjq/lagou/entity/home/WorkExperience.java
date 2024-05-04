package com.yjq.lagou.entity.home;

import com.yjq.lagou.annotion.ValidateEntity;
import com.yjq.lagou.entity.common.BaseEntity;
import com.yjq.lagou.entity.common.User;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
/**
 * 工作经历实体类（每个用户只能添加一个工作经历）
 * @author 82320
 *
 */
@Entity
@Table(name="work_experience")
@EntityListeners(AuditingEntityListener.class)  //是用于监听实体类添加或者删除操作的。
public class WorkExperience extends BaseEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@ManyToOne
	@JoinColumn(name="user_id")
	private User user;//工作经历所属用户
	
	@ValidateEntity(required=true,errorRequiredMsg="The company name cannot be empty!")
	@Column(name="name",nullable=false)
	private String name;  //公司名称
	
	@ValidateEntity(required=true,errorRequiredMsg="The job title cannot be empty!")
	@Column(name="position",nullable=false)
	private String position;  //所在公司职位
	
	@ValidateEntity(required=true,errorRequiredMsg="The start year cannot be empty!")
	@Column(name="start_year",nullable=false)
	private String startYear;  //工作开始年份
	
	@ValidateEntity(required=true,errorRequiredMsg="End year cannot be empty!")
	@Column(name="end_year",nullable=false)
	private String endYear;  //工作结束年份
	
	@ValidateEntity(required=true,errorRequiredMsg="The start month cannot be empty!")
	@Column(name="start_month",nullable=false)
	private String startMonth;  //工作开始月份
	
	@ValidateEntity(required=true,errorRequiredMsg="End month cannot be empty!")
	@Column(name="end_month",nullable=false)
	private String endMonth;  //工作结束月份

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getStartYear() {
		return startYear;
	}

	public void setStartYear(String startYear) {
		this.startYear = startYear;
	}

	public String getEndYear() {
		return endYear;
	}

	public void setEndYear(String endYear) {
		this.endYear = endYear;
	}

	public String getStartMonth() {
		return startMonth;
	}

	public void setStartMonth(String startMonth) {
		this.startMonth = startMonth;
	}

	public String getEndMonth() {
		return endMonth;
	}

	public void setEndMonth(String endMonth) {
		this.endMonth = endMonth;
	}
	
	
	
	

}
