package magic;

import java.sql.Timestamp;

public class MemberBean {
		private  String mem_uid;       
		 private  String mem_pw;       
		 private  String mem_name;       
		 private  String mem_email;     
		 private  Timestamp mem_regdate; 
		 private  String mem_adress;
		 
		 public String getMem_uid() {
			return mem_uid;
		}
		public void setMem_uid(String mem_uid) {
			this.mem_uid = mem_uid;
		}
		public String getMem_pw() {
			return mem_pw;
		}
		public void setMem_pw(String mem_pw) {
			this.mem_pw = mem_pw;
		}
		public String getMem_name() {
			return mem_name;
		}
		public void setMem_name(String mem_name) {
			this.mem_name = mem_name;
		}
		public String getMem_email() {
			return mem_email;
		}
		public void setMem_email(String mem_email) {
			this.mem_email = mem_email;
		}
		public Timestamp getMem_regdate() {
			return mem_regdate;
		}
		public void setMem_regdate(Timestamp mem_regdate) {
			this.mem_regdate = mem_regdate;
		}
		public String getMem_adress() {
			return mem_adress;
		}
		public void setMem_adress(String mem_adress) {
			this.mem_adress= mem_adress;
		}
}

