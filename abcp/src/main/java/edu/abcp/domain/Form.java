package edu.abcp.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="PRODUCTS")
public class Form 
{
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	private int categoryId;
	
	private String name;
	
	private String shortDescription;
	
	private String description;
	
	private double price;
	
	private String city;
	
	private String image;
	
	private String imageOne;
	
	private String imageTwo;
	
	private String imageThree;

//	@ManyToOne
//    @JoinColumn(name="SubCategoryID")
//    private ProductSubCategory subCategory;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getImageOne() {
		return imageOne;
	}

	public void setImageOne(String imageOne) {
		this.imageOne = imageOne;
	}

	public String getImageTwo() {
		return imageTwo;
	}

	public void setImageTwo(String imageTwo) {
		this.imageTwo = imageTwo;
	}

	public String getImageThree() {
		return imageThree;
	}

	public void setImageThree(String imageThree) {
		this.imageThree = imageThree;
	}

	@Override
	public String toString() {
		return "ProductDetails [id=" + id + ", categoryID=" + categoryId
				+ ", name=" + name + ", shortDescription="
				+ shortDescription + ", description=" + description
				+ ", price=" + price + ", city=" + city + ", image=" + image
				+ ", imageOne=" + imageOne + ", imageTwo=" + imageTwo
				+ ", imageThree=" + imageThree + "]";
	}
	
	

}
