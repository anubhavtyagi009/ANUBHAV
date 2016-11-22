package com.niit.catsuppro.model;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.atomic.AtomicInteger;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@SuppressWarnings("serial")
@Entity
@Table
@Component
public class Product implements Serializable{
	
	@Id
	private String pro_id;
	private String pro_name;
	/*private String size;*/
	private int price;
	private String pro_desc;
	/*private String stock;*/
	private String category_id;
	private String supplier_id;
	private String pro_date;
	
	//private static final AtomicInteger count = new AtomicInteger(0);
	
	
	public Product()
	{
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
		Date date = new Date();
		
		pro_date = dateFormat.format(date);
		
	}
	
	
	
	public String getPro_date() {
		return pro_date;
	}
	public void setPro_date(String pro_date) {
		this.pro_date = pro_date;
	}
	@ManyToOne
	@JoinColumn(name="category_id", nullable=false, updatable=false, insertable=false)
	private Category category;
	
	@ManyToOne
	@JoinColumn(name="supplier_id", nullable=false, updatable=false, insertable=false)
	private Supplier supplier;
	
	
	
	@Transient
	private MultipartFile image;
		
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	
	
	
	//Many To One	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	
	
	
	public String getPro_id() {
		return pro_id;
	}
	public void setPro_id(String pro_id) {
		this.pro_id = pro_id;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	/*public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}*/
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPro_desc() {
		return pro_desc;
	}
	public void setPro_desc(String pro_desc) {
		this.pro_desc = pro_desc;
	}
/*	public String getStock() {
		return stock;
	}
	public void setStock(String stock) {
		this.stock = stock;
	}*/
	
	
	
	//Foreign Key 
	public String getCategory_id() {
		return category_id;
	}
	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}
	public String getSupplier_id() {
		return supplier_id;
	}
	public void setSupplier_id(String supplier_id) {
		this.supplier_id = supplier_id;
	}
	
	
	

}
