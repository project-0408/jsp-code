package db;

import java.util.ArrayList;

import db.notifyBoardBeans.NotifyBean;

public class NotifyPostDAO {
	private ArrayList<NotifyBean> notify_board_list;
	
	public NotifyPostDAO() {}
	public NotifyPostDAO(ArrayList<NotifyBean> nbl) {
		this.notify_board_list = nbl;
	}
	
	public void add(NotifyBean np) {
		this.notify_board_list.add(np);
	}
	
	public ArrayList<NotifyBean> getList(){
		return this.notify_board_list;
	}
	
	public NotifyBean get(int index) {
		return this.notify_board_list.get(index);
	}
}
