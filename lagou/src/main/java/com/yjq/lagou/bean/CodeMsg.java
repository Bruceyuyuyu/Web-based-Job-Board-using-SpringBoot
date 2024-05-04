package com.yjq.lagou.bean;
/**
 * 错误码统一处理类，所有的错误码统一定义在这里
 * @author 82320
 *
 */
public class CodeMsg {

	private int code;//错误码
	
	private String msg;//错误信息
	
	/**
	 * 构造函数私有化即单例模式
	 * 该类负责创建自己的对象，同时确保只有单个对象被创建。这个类提供了一种访问其唯一的对象的方式，可以直接访问，不需要实例化该类的对象。
	 * @param code
	 * @param msg
	 */
	public CodeMsg(int code,String msg){
		this.code = code;
		this.msg = msg;
	}
	
	public int getCode() {
		return code;
	}



	public void setCode(int code) {
		this.code = code;
	}



	public String getMsg() {
		return msg;
	}



	public void setMsg(String msg) {
		this.msg = msg;
	}

	// Generic error code definition
    // Processing success message code
	public static CodeMsg SUCCESS = new CodeMsg(0, "success");
	//Public illegal data error code
	public static CodeMsg DATA_ERROR = new CodeMsg(-1, "Invalid data!");
	public static CodeMsg VALIDATE_ENTITY_ERROR = new CodeMsg(-2, "Validation error!");
	public static CodeMsg CPACHA_EMPTY = new CodeMsg(-3, "Captcha cannot be empty!");
	public static CodeMsg CPACHA_ERROR = new CodeMsg(-4, "Incorrect captcha entered!");
	public static CodeMsg SESSION_EXPIRED = new CodeMsg(-5, "Not logged in or session expired, please refresh the page or log in again!");
	public static CodeMsg UPLOAD_PHOTO_SUFFIX_ERROR = new CodeMsg(-6, "Incorrect image format!");
	public static CodeMsg UPLOAD_PHOTO_ERROR = new CodeMsg(-7, "Image upload error!");
	public static CodeMsg SYSTEM_CPACHA_EMPTY = new CodeMsg(-8, "Please click to send email verification code first!");
	public static CodeMsg FOREIGN_KEY_RESTRAIN = new CodeMsg(-9, "The user still has foreign key constraints and cannot be deleted!");
	//User data error code
	public static CodeMsg USER_NAME_EMPTY = new CodeMsg(-1000, "Username cannot be empty");
	public static CodeMsg USER_PASSWORD_EMPTY = new CodeMsg(-1001, "Password cannot be empty!");
	public static CodeMsg USER_NO_EXIST = new CodeMsg(-1002, "User does not exist!");
	public static CodeMsg USER_PASSWORD_ERROR = new CodeMsg(-1003, "Incorrect user password!");
	public static CodeMsg USER_EDIT_ID_EMPTY = new CodeMsg(-1004, "User to be edited does not exist! Please contact the administrator!");
	public static CodeMsg USER_EDIT_ERROR = new CodeMsg(-1005, "Editing failed! Please contact the administrator!");
	public static CodeMsg USER_EMAIL_EMPTY = new CodeMsg(-1006, "Email address cannot be empty!");
	public static CodeMsg USER_EMAIL_TYPE_EMPTY = new CodeMsg(-1007, "Email category cannot be empty! Please contact the administrator!");
	public static CodeMsg USER_EMAIL_SEND_ERROR = new CodeMsg(-1008, "Email sending failed! Please contact the administrator!");
	public static CodeMsg USER_EMAIL_TYPE_ERROR = new CodeMsg(-1009, "Failed to get email category! Please contact the administrator!");
	public static CodeMsg USER_REGISTER_TYPE_EMPTY = new CodeMsg(-1010, "Registration purpose for Lagou cannot be empty!");
	public static CodeMsg USER_REGISTER_ERROR = new CodeMsg(-1011, "Registration error for Lagou! Purpose cannot be empty!"); // Note: This message might need clarification based on context
	public static CodeMsg USER_EMAIL_ALREADY_EXIST = new CodeMsg(-1012, "This email is already registered!");
	public static CodeMsg USER_NAME_ALREADY_EXIST = new CodeMsg(-1013, "This username is already registered!");
	public static CodeMsg USER_EMAIL_NOT_EXIST = new CodeMsg(-1014, "This email address does not exist!"); // Changed the code to -1014 to avoid duplication
	public static CodeMsg USER_MOBILE_EMPTY = new CodeMsg(-1015, "Mobile number cannot be empty!");
	public static CodeMsg USER_SAVE_ERROR = new CodeMsg(-1016, "Failed to save user information! Please contact the administrator.");
	public static CodeMsg USER_UPDATE_TIME_ERROR = new CodeMsg(-1017, "Failed to update the last modified time! Please contact the administrator.");
	public static CodeMsg USER_SAVE_SELF_DESCRIPTION_ERROR = new CodeMsg(-1018, "Failed to save self-description information! Please contact the administrator.");
	public static CodeMsg USER_MOBILE_NOT_CORRECT = new CodeMsg(-1019, "Please enter a valid mobile number of correct length!");
	public static CodeMsg USER_OLD_PASSWORD_NOT_CORRECT = new CodeMsg(-1020, "The old password entered by the user is incorrect!");
	public static CodeMsg USER_NEW_PASSWORD_NOT_CORRECT = new CodeMsg(-1021, "The new password entered by the user should be between 6-16 characters long!");
	public static CodeMsg USER_CONFIRM_PASSWORD_NOT_CORRECT = new CodeMsg(-1022, "The confirm password entered by the user does not match the new password!");
	public static CodeMsg USER_NEW_PASSWORD_SAVE_ERROR = new CodeMsg(-1023, "Failed to save the new password information! Please contact the administrator!"); // Changed the code to -1023 to avoid duplication
	//职业管理和职位保存错误码
	public static CodeMsg POSITION_CATEGORY_PARENT_EMPTY = new CodeMsg(-2000, "Job category parent cannot be empty, please contact the administrator!");
	public static CodeMsg POSITION_CATEGORY_ADD_ERROR = new CodeMsg(-2001, "Failed to add job category, please contact the administrator!");
	public static CodeMsg POSITION_CATEGORY_EDIT_ID_EMPTY = new CodeMsg(-2002, "Failed to obtain job category edit id, please contact the administrator!");
	public static CodeMsg POSITION_CATEGORY_EDIT_ERROR = new CodeMsg(-2003, "Failed to edit job category, please contact the administrator!");
	public static CodeMsg POSITION_CATEGORY_DELETE_ID_EMPTY = new CodeMsg(-2004, "Failed to obtain job category delete id, please contact the administrator!");
	public static CodeMsg POSITION_CATEGORY_DELETE_ERROR = new CodeMsg(-2005, "Failed to delete job category, please contact the administrator!");
	public static CodeMsg POSITION_CATEGORY_PARENT_DELETE_ERROR = new CodeMsg(-2006, "This job category has subcategories, please delete them first!");
	public static CodeMsg POSITION_SAVE_ERROR = new CodeMsg(-2007, "Failed to save job position, please contact the administrator!");
	public static CodeMsg POSITION_MONEY_NOT_CORRECT = new CodeMsg(-2008, "The minimum salary for the job position cannot be higher than the maximum salary!");
	public static CodeMsg POSITION_DELETE_ERROR = new CodeMsg(-2009, "Failed to delete job position! Please contact the administrator!");
	public static CodeMsg POSITION_CHANGE_STATE_TO_OUT_ERROR = new CodeMsg(-2010, "Failed to take the job position offline! Please contact the administrator!");
	public static CodeMsg POSITION_CHANGE_STATE_TO_WAIT_ERROR = new CodeMsg(-2012, "Failed to bring the job position online! Please contact the administrator!");
	public static CodeMsg POSITION_CHANGE_STATE_ERROR = new CodeMsg(-2011, "Failed to change job position state! Please contact the administrator!");
	//操作日志数据错误码
	public static CodeMsg OPERATERLOG_DELETE_ID_EMPTY = new CodeMsg(-3000, "Failed to obtain the ID for deleting the operation log, please contact the administrator!");
	public static CodeMsg OPERATERLOG_DELETE_ERROR = new CodeMsg(-3001, "Failed to delete the operation log, please contact the administrator!");
	//简历管理数据错误码
	public static CodeMsg RESUME_EXPECT_WORK_ERROR = new CodeMsg(-4000, "Failed to save expected work information, please contact the administrator!");
	public static CodeMsg RESUME_WORK_EXPERIENCE_ERROR = new CodeMsg(-4001, "Failed to save work experience information, please contact the administrator!");
	public static CodeMsg RESUME_WORK_EXPERIENCE_COMPANY_NAME_EMPTY = new CodeMsg(-4002, "Company name for work experience cannot be empty!");
	public static CodeMsg RESUME_WORK_EXPERIENCE_POSITION_NAME_EMPTY = new CodeMsg(-4003, "Position name for work experience cannot be empty!");
	public static CodeMsg RESUME_WORK_EXPERIENCE_START_TIME_EMPTY = new CodeMsg(-4004, "Start time for work experience cannot be empty!");
	public static CodeMsg RESUME_WORK_EXPERIENCE_END_TIME_EMPTY = new CodeMsg(-4005, "End time for work experience cannot be empty!");
	public static CodeMsg RESUME_WORK_EXPERIENCE_TIME_NOT_CORRECT = new CodeMsg(-4006, "Start time for work experience cannot be later than end time!");
	public static CodeMsg RESUME_PROJECT_EXPERIENCE_START_TIME_EMPTY = new CodeMsg(-4007, "Start time for project experience cannot be empty!");
	public static CodeMsg RESUME_PROJECT_EXPERIENCE_END_TIME_EMPTY = new CodeMsg(-4008, "End time for project experience cannot be empty!");
	public static CodeMsg RESUME_PROJECT_EXPERIENCE_TIME_NOT_CORRECT = new CodeMsg(-4009, "Start time for project experience cannot be later than end time!");
	public static CodeMsg RESUME_PROJECT_EXPERIENCE_PROJECT_NAME_EMPTY = new CodeMsg(-4010, "Project name for project experience cannot be empty!");
	public static CodeMsg RESUME_PROJECT_EXPERIENCE_POSITION_NAME_EMPTY = new CodeMsg(-4011, "Position name for project experience cannot be empty!");
	public static CodeMsg RESUME_PROJECT_EXPERIENCE_ERROR = new CodeMsg(-4012, "Failed to save project experience information, please contact the administrator!");
	public static CodeMsg RESUME_EDUCATION_BACKGROUND_START_TIME_EMPTY = new CodeMsg(-4013, "Start year for educational background cannot be empty!");
	public static CodeMsg RESUME_EDUCATION_BACKGROUND_END_TIME_EMPTY = new CodeMsg(-4014, "End year for educational background cannot be empty!");
	public static CodeMsg RESUME_EDUCATION_BACKGROUND_SCHOOL_NAME_EMPTY = new CodeMsg(-4015, "School name for educational background cannot be empty!");
	public static CodeMsg RESUME_EDUCATION_BACKGROUND_MAJOR_EMPTY = new CodeMsg(-4016, "Major name for educational background cannot be empty!");
	public static CodeMsg RESUME_EDUCATION_BACKGROUND_ERROR = new CodeMsg(-4017, "Failed to save educational background information, please contact the administrator!");
	public static CodeMsg RESUME_EDUCATION_BACKGROUND_TIME_NOT_CORRECT = new CodeMsg(-4018, "Start year for educational background cannot be later than end year!");
	public static CodeMsg RESUME_WORK_SHOW_SAVE_ERROR = new CodeMsg(-4019, "Failed to save work showcase information! Please contact the administrator!");
	public static CodeMsg RESUME_ALREADY_SUBMIT = new CodeMsg(-4020, "A resume has already been submitted for this position, please choose a different position!");
	public static CodeMsg RESUME_STATE_SAVE_ERROR = new CodeMsg(-4021, "Failed to save resume status information! Please contact the administrator!");
	public static CodeMsg RESUME_DELETE_ERROR = new CodeMsg(-4022, "Failed to delete resume! Please contact the administrator!");
	public static CodeMsg RESUME_WRITE_NOT_COMPLETE = new CodeMsg(-4023, "The resume is not completely filled out, please complete it first!");
	//公司管理类错误码
	public static CodeMsg COMPANY_NAME_EMPTY = new CodeMsg(-5000, "Company name cannot be empty!");
	public static CodeMsg COMPANY_VALUE_EMPTY = new CodeMsg(-5001, "Company values cannot be empty!");
	public static CodeMsg COMPANY_NAME_WORD_OVER = new CodeMsg(-5002, "The company name cannot exceed 30 characters!");
	public static CodeMsg COMPANY_VALUE_WORD_OVER = new CodeMsg(-5003, "The company values cannot exceed 50 characters!");
	public static CodeMsg COMPANY_NAME_ALREADY_EXIST = new CodeMsg(-5004, "The company name already exists, please choose another one!");
	public static CodeMsg COMPANY_NAME_AND_VALUE_SAVE_ERROR = new CodeMsg(-5005, "Failed to save company name and values, please contact the administrator!");
	public static CodeMsg COMPANY_TAGS_SAVE_ERROR = new CodeMsg(-5006, "Failed to save company tags, please contact the administrator!");
	public static CodeMsg COMPANY_TAGS_WORD_OVER = new CodeMsg(-5007, "Company tags cannot exceed 30 characters!");
	public static CodeMsg COMPANY_NAME_AND_VALUE_PRIORITY = new CodeMsg(-5008, "Please fill in the company name and values first!");
	public static CodeMsg COMPANY_PRODUCT_NAME_WORD_OVER = new CodeMsg(-5009, "The company product title cannot exceed 11 characters!");
	public static CodeMsg COMPANY_PRODUCT_SAVE_ERROR = new CodeMsg(-5010, "Failed to save company product information! Please contact management!");
	public static CodeMsg COMPANY_INTRODUCTION_SAVE_ERROR = new CodeMsg(-5011, "Failed to save company introduction information! Please contact management!");
	public static CodeMsg COMPANY_LOCALE_EMPTY = new CodeMsg(-5012, "Company location cannot be empty!");
	public static CodeMsg COMPANY_TERRITORY_EMPTY = new CodeMsg(-5013, "Company field cannot be empty!");
	public static CodeMsg COMPANY_URL_EMPTY = new CodeMsg(-5014, "Company URL cannot be empty!");
	public static CodeMsg COMPANY_BASIC_SAVE_ERROR = new CodeMsg(-5015, "Failed to save company location, field, scale, and website information! Please contact management!");
	public static CodeMsg COMPANY_SCALE_EMPTY = new CodeMsg(-5016, "Company scale cannot be empty!");
	public static CodeMsg COMPANY_FINANCE_SAVE_ERROR = new CodeMsg(-5017, "Failed to save company financing stage information! Please contact the administrator!");
	public static CodeMsg COMPANY_FOUNDER_SAVE_ERROR = new CodeMsg(-5018, "Failed to save company founder information! Please contact the administrator!");
	public static CodeMsg COMPANY_FOUNDER_NAME_EMPTY = new CodeMsg(-5019, "Company founder's name cannot be empty!");
	public static CodeMsg COMPANY_FOUNDER_POSITION_EMPTY = new CodeMsg(-5020, "Company founder's position cannot be empty!");
	public static CodeMsg COMPANY_FOUNDER_NAME_WORD_OVER = new CodeMsg(-5021, "Company founder's name cannot exceed 10 characters!");
	public static CodeMsg COMPANY_FOUNDER_POSITION_WORD_OVER = new CodeMsg(-5022, "Company founder's position cannot exceed 15 characters!");
	public static CodeMsg COMPANY_APPLY_SAVE_ERROR = new CodeMsg(-5023, "Failed to save company certification information, please contact the administrator!");
	public static CodeMsg COMPANY_CHANGE_STATE_ERROR = new CodeMsg(-5024, "Failed to change company status! Please contact the administrator!");
}
