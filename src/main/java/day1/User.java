package day1;

public class User {
	
	private int rollNo;
	
	private String name;
	
	private String gender;
	
	private boolean premium;
	
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	

	public User(int rollNo, String name, String gender, boolean premium) {
		super();
		this.rollNo = rollNo;
		this.name = name;
		this.gender = gender;
		this.premium = premium;
	}



	public int getRollNo() {
		return rollNo;
	}

	public void setRollNo(int rollNo) {
		this.rollNo = rollNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public boolean isPremium() {
		return premium;
	}

	public void setPremium(boolean premium) {
		this.premium = premium;
	}
	
	

}
