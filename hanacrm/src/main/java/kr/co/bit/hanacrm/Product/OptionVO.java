package kr.co.bit.hanacrm.Product;

import org.springframework.stereotype.Component;
//예금, 적금 옵션VO
@Component
public class OptionVO {
	
	private Integer no;

    //  공시 제출월 YYYYMM
    private String dclsMonth;

    //  금융회사 코드
    private Integer finCoNo;

    //  금융회사명
    private String korCoNm;

//  저축 금리 유형(s:단리 m:복리)
    private String intrRateType;

    //  저축 금리 유형명
    private String intrRateTypeNm;

    //  저축 기간 단위: 개월
    private Integer saveTrm;

    //  저축 금리 소수점 2자리
    private Integer intrRate;

    //  최고 우대금리 소수점 2자리
    private Integer intrRate2;

    //  적립 유형
    private String rsrvType;

    //  적립 유형명
    private String rsrvTypeNm;

	public OptionVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OptionVO(Integer no, String dclsMonth, Integer finCoNo, String korCoNm, String intrRateType,
			String intrRateTypeNm, Integer saveTrm, Integer intrRate, Integer intrRate2, String rsrvType,
			String rsrvTypeNm) {
		super();
		this.no = no;
		this.dclsMonth = dclsMonth;
		this.finCoNo = finCoNo;
		this.korCoNm = korCoNm;
		this.intrRateType = intrRateType;
		this.intrRateTypeNm = intrRateTypeNm;
		this.saveTrm = saveTrm;
		this.intrRate = intrRate;
		this.intrRate2 = intrRate2;
		this.rsrvType = rsrvType;
		this.rsrvTypeNm = rsrvTypeNm;
	}

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public String getDclsMonth() {
		return dclsMonth;
	}

	public void setDclsMonth(String dclsMonth) {
		this.dclsMonth = dclsMonth;
	}

	public Integer getFinCoNo() {
		return finCoNo;
	}

	public void setFinCoNo(Integer finCoNo) {
		this.finCoNo = finCoNo;
	}

	public String getKorCoNm() {
		return korCoNm;
	}

	public void setKorCoNm(String korCoNm) {
		this.korCoNm = korCoNm;
	}

	public String getIntrRateType() {
		return intrRateType;
	}

	public void setIntrRateType(String intrRateType) {
		this.intrRateType = intrRateType;
	}

	public String getIntrRateTypeNm() {
		return intrRateTypeNm;
	}

	public void setIntrRateTypeNm(String intrRateTypeNm) {
		this.intrRateTypeNm = intrRateTypeNm;
	}

	public Integer getSaveTrm() {
		return saveTrm;
	}

	public void setSaveTrm(Integer saveTrm) {
		this.saveTrm = saveTrm;
	}

	public Integer getIntrRate() {
		return intrRate;
	}

	public void setIntrRate(Integer intrRate) {
		this.intrRate = intrRate;
	}

	public Integer getIntrRate2() {
		return intrRate2;
	}

	public void setIntrRate2(Integer intrRate2) {
		this.intrRate2 = intrRate2;
	}

	public String getRsrvType() {
		return rsrvType;
	}

	public void setRsrvType(String rsrvType) {
		this.rsrvType = rsrvType;
	}

	public String getRsrvTypeNm() {
		return rsrvTypeNm;
	}

	public void setRsrvTypeNm(String rsrvTypeNm) {
		this.rsrvTypeNm = rsrvTypeNm;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("OptionVO [no=").append(no).append(", dclsMonth=").append(dclsMonth).append(", finCoNo=")
				.append(finCoNo).append(", korCoNm=").append(korCoNm).append(", intrRateType=").append(intrRateType)
				.append(", intrRateTypeNm=").append(intrRateTypeNm).append(", saveTrm=").append(saveTrm)
				.append(", intrRate=").append(intrRate).append(", intrRate2=").append(intrRate2).append(", rsrvType=")
				.append(rsrvType).append(", rsrvTypeNm=").append(rsrvTypeNm).append("]");
		return builder.toString();
	}
    
}
