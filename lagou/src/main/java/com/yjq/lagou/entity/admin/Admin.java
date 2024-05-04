package com.yjq.lagou.entity.admin;

import com.yjq.lagou.annotion.ValidateEntity;
import com.yjq.lagou.entity.common.BaseEntity;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Table;


/**
 * 后台管理员实体类
 * @author 82320
 *
 */
@Entity
@Table(name="admin")
@EntityListeners(AuditingEntityListener.class)  //是用于监听实体类添加或者删除操作的。
public class Admin extends BaseEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private static final int USER_SEX_MAN = 1;//性别男
	
	private static final int USER_SEX_WOMAN = 2;//性别女
	
	private static final int USER_SEX_UNKONW = 0;//性别未知
	
	
	private static final String DEFAULT_HEAD_IMAGE = "common/default_img.jpg";  //默认用户头像
	
	
	@ValidateEntity(required=true,requiredMaxLength=true,requiredMinLength=true,minLength=2,maxLength=10,errorRequiredMsg="The username cannot be empty!",errorMinLengthMsg="The user name must be longer than 1",errorMaxLengthMsg="The length of the user name cannot be greater than 10!")
	@Column(name="admin_name",nullable=false,length=10,unique=true)  //unique=true:重复出现的记录仅保留一条
	private String adminName;//用户名
	
	@ValidateEntity(required=true,requiredMaxLength=true,requiredMinLength=true,minLength=4,maxLength=16,errorRequiredMsg="The password cannot be empty!",errorMinLengthMsg="Password length must be greater than 4!",errorMaxLengthMsg="The password cannot be longer than 16!")
	@Column(name="password",nullable=false,length=16)
	private String password;//密码

	@ValidateEntity(required=false)
	@Column(name="head_pic",length=128)
	private String headPic = DEFAULT_HEAD_IMAGE;//用户头像
	
	@ValidateEntity(required=false)
	@Column(name="sex",length=1)
	private int sex = USER_SEX_UNKONW;//用户性别
	
	@ValidateEntity(required=true,requiredMaxLength=true,requiredMinLength=true,minLength=11,maxLength=11,errorMinLengthMsg="Please enter the correct 11-digit length of the phone number!",errorMaxLengthMsg="Please enter the correct 11-digit length of the phone number!")
	@Column(name="mobile",length=12)
	private String mobile;//用户手机号
	
	@ValidateEntity(required=false)
	@Column(name="email",length=32)
	private String email;//用户邮箱

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getHeadPic() {
		return headPic;
	}

	public void setHeadPic(String headPic) {
		this.headPic = headPic;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Admin [adminName=" + adminName + ", password=" + password + ", headPic=" + headPic + ", sex=" + sex
				+ ", mobile=" + mobile + ", email=" + email + "]";
	}
	
	
}
