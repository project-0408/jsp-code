package db;

import java.util.ArrayList;

import db.volunteerBeans.VolunteerBean;

public class VolunteersDAO {
	private ArrayList<VolunteerBean> volunteers_list;
	
	
	public VolunteersDAO() {}
	public VolunteersDAO(ArrayList<VolunteerBean> vl) {
		this.volunteers_list = vl;
	}
	
	public void add(VolunteerBean v) {
		this.volunteers_list.add(v);
	}
	
	public ArrayList<VolunteerBean> getList(){
		return this.volunteers_list;
	}
	
	public VolunteerBean get(int index) {
		return this.volunteers_list.get(index);
	}
}
