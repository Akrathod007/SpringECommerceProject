package com.dao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.EUserBean;

@Repository
public class EUserDao {

	@Autowired // create instane object
	JdbcTemplate stmt;
	
	public  void insertUser(EUserBean userBean) {
		
		stmt.update("insert into users(firstname,email,password) values (?,?,?) ",
				userBean.getFirstname(),userBean.getEmail(),userBean.getPassword());
		
		
	}
}

