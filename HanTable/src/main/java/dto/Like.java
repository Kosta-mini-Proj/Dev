package dto;

public class Like {
	private Long likeId;
	private String userId;
	private Long recpId;
	
	// 생성자
	public Like() {}
	
	public Like(Long likeId, String userId, Long recpId) {
		super();
		this.likeId = likeId;
		this.userId = userId;
		this.recpId = recpId;
	}

	// set / get 
	public Long getLikeId() {
		return likeId;
	}

	public void setLikeId(Long likeId) {
		this.likeId = likeId;
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
}
