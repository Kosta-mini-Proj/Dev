package dto;

public class User {
	private String userId;
	private String password;
	private String name;
	private String email;
	private String birthday;
	private String latestLike;
	private String profileImg;
	
	// 생성자
	public User() {}
	
	public User(String userId, String password, String name, String email, String birthday, String latestLike,
			String profileImg) {
		super();
		this.userId = userId;
		this.password = password;
		this.name = name;
		this.email = email;
		this.birthday = birthday;
		this.latestLike = latestLike;
		this.profileImg = profileImg;
	}

	// set / get
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getLatestLike() {
		return latestLike;
	}

	public void setLatestLike(String latestLike) {
		this.latestLike = latestLike;
	}

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}
	
	

	@Override
	public String toString() {
		return "User [userId=" + userId + ", password=" + password + ", name=" + name + ", email=" + email
				+ ", birthday=" + birthday + ", latestLike=" + latestLike + ", profileImg=" + profileImg + "]";
	}
	
	
}
// 8