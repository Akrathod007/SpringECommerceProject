package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.EProductBean;

@Repository
public class EProductDao {
	
	@Autowired
	JdbcTemplate stmt;
	
	public void addProduct(EProductBean productBean) {
		
		stmt.update("insert into productlist(productName,Category,qty,price) values (?,?,?,?)",productBean.getProductName(),
				productBean.getCategory(),productBean.getQty(),productBean.getPrice()
			);
	}
	
	public List<EProductBean> getAllProducts() {
		List<EProductBean> list = stmt.query("select * from productlist", new BeanPropertyRowMapper<>(EProductBean.class));
		return list;
	}
}
