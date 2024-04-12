package dto;

import java.sql.Date;
import java.time.LocalDateTime;

public class Recipe {
	private Long recpId;
	private String userId;
	private String recpTitle;
	private String recpImg;
	private String recpIntro;
	private String cateType;
	private String cateHow;
	private String cateTime;
	private String cateIngredient;
	private String recpIngredient;
	private String recpCont;
	private LocalDateTime recpAt;
	private Long likeCount;
	private Long recpViews;
	
	// 생성자
	public Recipe() {}
	
	public Recipe(Long recpId, String userId, String recpTitle, String recpImg, String recpIntro, String cateType,
			String cateHow, String cateTime, String cateIngredient, String recpIngredient, String recpCont,
			LocalDateTime recpAt, Long likeCount, Long recpViews) {
		super();
		this.recpId = recpId;
		this.userId = userId;
		this.recpTitle = recpTitle;
		this.recpImg = recpImg;
		this.recpIntro = recpIntro;
		this.cateType = cateType;
		this.cateHow = cateHow;
		this.cateTime = cateTime;
		this.cateIngredient = cateIngredient;
		this.recpIngredient = recpIngredient;
		this.recpCont = recpCont;
		this.recpAt = recpAt;
		this.likeCount = likeCount;
		this.recpViews = recpViews;
	}
	
	// 작성용 생성자 만들어줌
//	public Recipe(String recpTitle, String recpImg, String recpIntro, String cateType, String cateHow, String cateTime,
//			String cateIngredient, String recpIngredient, String recpCont) {
//		super();
//		this.recpTitle = recpTitle;
//		this.recpImg = recpImg;
//		this.recpIntro = recpIntro;
//		this.cateType = cateType;
//		this.cateHow = cateHow;
//		this.cateTime = cateTime;
//		this.cateIngredient = cateIngredient;
//		this.recpIngredient = recpIngredient;
//		this.recpCont = recpCont;
//	}
	

	// set / get
	public Long getRecpId() {
		return recpId;
	}

	public void setRecpId(Long recpId) {
		this.recpId = recpId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getRecpTitle() {
		return recpTitle;
	}

	public void setRecpTitle(String recpTitle) {
		this.recpTitle = recpTitle;
	}

	public String getRecpImg() {
		return recpImg;
	}

	public void setRecpImg(String recpImg) {
		this.recpImg = recpImg;
	}

	public String getRecpIntro() {
		return recpIntro;
	}

	public void setRecpIntro(String recpIntro) {
		this.recpIntro = recpIntro;
	}

	public String getCateType() {
		return cateType;
	}

	public void setCateType(String cateType) {
		this.cateType = cateType;
	}

	public String getCateHow() {
		return cateHow;
	}

	public void setCateHow(String cateHow) {
		this.cateHow = cateHow;
	}

	public String getCateTime() {
		return cateTime;
	}

	public void setCateTime(String cateTime) {
		this.cateTime = cateTime;
	}

	public String getCateIngredient() {
		return cateIngredient;
	}

	public void setCateIngredient(String cateIngredient) {
		this.cateIngredient = cateIngredient;
	}

	public String getRecpIngredient() {
		return recpIngredient;
	}

	public void setRecpIngredient(String recpIngredient) {
		this.recpIngredient = recpIngredient;
	}

	public String getRecpCont() {
		return recpCont;
	}

	public void setRecpCont(String recpCont) {
		this.recpCont = recpCont;
	}

	public LocalDateTime getRecpAt() {
		return recpAt;
	}

	public void setRecpAt(LocalDateTime recpAt) {
		this.recpAt = recpAt;
	}

	public Long getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(Long likeCount) {
		this.likeCount = likeCount;
	}

	public Long getRecpViews() {
		return recpViews;
	}

	public void setRecpViews(Long recpViews) {
		this.recpViews = recpViews;
	}

	@Override
	public String toString() {
		return "Recipe [recpId=" + recpId + ", userId=" + userId + ", recpTitle=" + recpTitle + ", recpImg=" + recpImg
				+ ", recpIntro=" + recpIntro + ", cateType=" + cateType + ", cateHow=" + cateHow + ", cateTime="
				+ cateTime + ", cateIngredient=" + cateIngredient + ", recpIngredient=" + recpIngredient + ", recpCont="
				+ recpCont + ", recpAt=" + recpAt + ", likeCount=" + likeCount + ", recpViews=" + recpViews + "]";
	}
	
}
// 14
