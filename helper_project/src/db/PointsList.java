package db;

import java.util.ArrayList;

import db.userBeans.PointBean;

public class PointsList {
	private ArrayList<PointBean> points_list;
	
	
	public PointsList() {}
	public PointsList(ArrayList<PointBean> pl) {
		this.points_list = pl;
	}
	
	public void add(PointBean p) {
		this.points_list.add(p);
	}
	
	public ArrayList<PointBean> getList(){
		return this.points_list;
	}
	
	public PointBean get(int index) {
		return this.points_list.get(index);
	}
}
