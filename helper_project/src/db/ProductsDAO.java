package db;

import java.util.ArrayList;

import db.shopBeans.ProductBean;

public class ProductsDAO {
	private ArrayList<ProductBean> products_list;
	
	public ProductsDAO() {}
	public ProductsDAO(ArrayList<ProductBean> pl) {
		this.products_list = pl;
	}
	
	public void add(ProductBean jp) {
		this.products_list.add(jp);
	}
	
	public ArrayList<ProductBean> getList(){
		return this.products_list;
	}
	
	public ProductBean get(int index) {
		return this.products_list.get(index);
	} 	
}
