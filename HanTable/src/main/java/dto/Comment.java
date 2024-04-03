package dto;

public class Comment {
	private Long comId;
	private String userId;
	private Long recpId;
	private String comCont;
	private String comTime;
	
	// 생성자
	public Comment() {}
	
	public Comment(Long comId, String userId, Long recpId, String comCont, String comTime) {
		super();
		this.comId = comId;
		this.userId = userId;
		this.recpId = recpId;
		this.comCont = comCont;
		this.comTime = comTime;
	}

	// set / get
	public Long getComId() {
		return comId;
	}

	public void setComId(Long comId) {
		this.comId = comId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Long getRecpId() {
		return recpId;
	}

	public void setRecpId(Long recpId) {
		this.recpId = recpId;
	}

	public String getComCont() {
		return comCont;
	}

	public void setComCont(String comCont) {
		this.comCont = comCont;
	}

	public String getComTime() {
		return comTime;
	}

	public void setComTime(String comTime) {
		this.comTime = comTime;
	}
}
// 5