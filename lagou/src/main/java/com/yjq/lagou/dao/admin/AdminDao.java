package com.yjq.lagou.dao.admin;
import com.yjq.lagou.entity.admin.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
/**
 * 管理员管理dao
 * @author 82320
 *
 */
@Repository
public interface AdminDao extends JpaRepository<Admin, Long> {

	/**
	 * 按照用户名查找用户信息
	 * @param admin_name
	 * @return
	 */
	public Admin findByAdminName(@Param("admin_name")String admin_name);

	/**
	 * 获取某个管理员的所有信息
	 * @param id
	 * @param offset
	 * @param size
	 * @return
	 */
	@Query(value="select * from admin where id = :id limit :offset,:pageSize",nativeQuery=true)
	public List<Admin> findAdminList(@Param("id")Long id,@Param("offset")int offset,@Param("pageSize")int size);


	/**
	 * 根据管理员id查询
	 * @param id
	 * @return
	 */
	@Query("select a from Admin a where id = :id")
	public Admin find(@Param("id")Long id);


}
