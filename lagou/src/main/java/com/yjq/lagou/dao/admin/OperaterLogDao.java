package com.yjq.lagou.dao.admin;

import com.yjq.lagou.entity.admin.OperaterLog;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
/**
 * 公共日志dao
 * @author 82320
 *
 */
@Repository
public interface OperaterLogDao extends JpaRepository<OperaterLog, Long> {


	/**
	 * 分页获取日志列表
	 * @param offset
	 * @param pageSize
	 * @return
	 */
	@Query(value="select * from operater_log order by create_time desc limit :offset,:pageSize",nativeQuery=true)
	public List<OperaterLog> findOperaterLogList(@Param("offset")int offset, @Param("pageSize")int pageSize);



}
