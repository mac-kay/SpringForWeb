package com.myspring.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

@Component("productsdao")
public class ProductsDao {
	
	NamedParameterJdbcTemplate jdbc;
	
	public ProductsDao() {
		System.out.println("Successfully loaded the DAO");
	}

	public NamedParameterJdbcTemplate getJdbc() {
		return jdbc;
	}

	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}
	
	public List<Products> getProducts(){
		
		return jdbc.query("select * from products", new RowMapper<Products>() {

			public Products mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Products products = new Products();
				products.setId(rs.getInt("id"));
				products.setName(rs.getString("name"));
				products.setPrice(rs.getDouble("price"));
				products.setQuantity(rs.getInt("quantity"));
				
				return products;
				
			}
			
		});

	}
	
	
	public Products getProduct(int id){
		MapSqlParameterSource params = new MapSqlParameterSource("id", id);
		return jdbc.queryForObject("select * from products where id=:id", params, new RowMapper<Products>() {

			public Products mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Products products = new Products();
				products.setId(rs.getInt("id"));
				products.setName(rs.getString("name"));
				products.setPrice(rs.getDouble("price"));
				products.setQuantity(rs.getInt("quantity"));
				
				return products;
				
			}
			
		});
	}
	
	//For inserting into database
	public boolean insertProduct(Products product) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("name", product.getName());
		params.addValue("price", product.getPrice());
		params.addValue("quantity", product.getQuantity());
		params.addValue("picture", product.getPicture());
															 
		
		System.out.println("About to Insert: ");
		return jdbc.update("insert into products (name, price, quantity, picture) values(:name, :price, :quantity, :picture)", params) == 1;
	}
	
	//For Deleting from database
	public boolean deleteProduct(int num) {
		MapSqlParameterSource params = new MapSqlParameterSource("id", num);
		
		return jdbc.update("delete from products where id=:id", params) == 1;
	}
	
	//For Updating
	public boolean updateProduct(Products product) {
		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(product);
		
		return jdbc.update("update products set name=:name, price=:price, quantity=:quantity where id=:id", params) == 1;
	}

}
