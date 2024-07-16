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
	
	public void deleteProduct(Integer productId) {
		stmt.update("delete from productlist where productId=?",productId);
	}
	
	public void deleteProductByName(String productName) {
		stmt.update("delete from productlist where productName=?",productName);
	}
	
	public EProductBean getProductDetails(Integer productId) {
		EProductBean bean = stmt.queryForObject("select * from productlist where productId = ?", 
				new BeanPropertyRowMapper<>(EProductBean.class),new Object[] {productId} );
		return bean;
	}
}
