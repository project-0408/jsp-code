package db;

import java.util.ArrayList;

import db.shopBeans.PurchaseBean;

public class PurchasesList {
	private ArrayList<PurchaseBean> purchases_list;
	
	
	public PurchasesList() {}
	public PurchasesList(ArrayList<PurchaseBean> pl) {
		this.purchases_list = pl;
	}
	
	public void add(PurchaseBean p) {
		this.purchases_list.add(p);
	}
	
	public ArrayList<PurchaseBean> getList(){
		return this.purchases_list;
	}
	
	public PurchaseBean get(int index) {
		return this.purchases_list.get(index);
	}
}
