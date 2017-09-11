package kr.co.bit.hanacrm.Product;

import java.sql.Date;

import org.springframework.stereotype.Component;

//  상품정보(예금)
@Component
public class DepositVO {

    private Integer no;

    //  공시 제출월 YYYYMM
    private Date dclsMonth;

    //  금융회사 코드
    private Integer finCoNo;

    //  금융회사명
    private String korCoNm;

    //  금융상품 코드
    private String finPrdtCd;

    //  금융 상품명
    private String finPrdtNm;

    //  가입 방법
    private String joinWay;

    //  만기 후 이자율
    private String mtrtInt;

    //  우대조건
    private String spclCnd;

    //  join_member IS 가입대상  comment☆on☆column deposit_info
    private Integer joinDeny;

    //  가입대상
    private String joinMember;

    //  기타 유의사항
    private String etcNote;

    //  최고한도
    private Integer maxLimit;

    //  공시 시작일
    private Date dclsStrtDay;

    //  공시 종료일
    private Date dclsEndDay;

    //  금융회사 제출일 YYYYMMDDHH24MI
    private Date finCoSubmDay;

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

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public Date getDclsMonth() {
        return dclsMonth;
    }

    public void setDclsMonth(Date dclsMonth) {
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

    public String getFinPrdtCd() {
        return finPrdtCd;
    }

    public void setFinPrdtCd(String finPrdtCd) {
        this.finPrdtCd = finPrdtCd;
    }

    public String getFinPrdtNm() {
        return finPrdtNm;
    }

    public void setFinPrdtNm(String finPrdtNm) {
        this.finPrdtNm = finPrdtNm;
    }

    public String getJoinWay() {
        return joinWay;
    }

    public void setJoinWay(String joinWay) {
        this.joinWay = joinWay;
    }

    public String getMtrtInt() {
        return mtrtInt;
    }

    public void setMtrtInt(String mtrtInt) {
        this.mtrtInt = mtrtInt;
    }

    public String getSpclCnd() {
        return spclCnd;
    }

    public void setSpclCnd(String spclCnd) {
        this.spclCnd = spclCnd;
    }

    public Integer getJoinDeny() {
        return joinDeny;
    }

    public void setJoinDeny(Integer joinDeny) {
        this.joinDeny = joinDeny;
    }

    public String getJoinMember() {
        return joinMember;
    }

    public void setJoinMember(String joinMember) {
        this.joinMember = joinMember;
    }

    public String getEtcNote() {
        return etcNote;
    }

    public void setEtcNote(String etcNote) {
        this.etcNote = etcNote;
    }

    public Integer getMaxLimit() {
        return maxLimit;
    }

    public void setMaxLimit(Integer maxLimit) {
        this.maxLimit = maxLimit;
    }

    public Date getDclsStrtDay() {
        return dclsStrtDay;
    }

    public void setDclsStrtDay(Date dclsStrtDay) {
        this.dclsStrtDay = dclsStrtDay;
    }

    public Date getDclsEndDay() {
        return dclsEndDay;
    }

    public void setDclsEndDay(Date dclsEndDay) {
        this.dclsEndDay = dclsEndDay;
    }

    public Date getFinCoSubmDay() {
        return finCoSubmDay;
    }

    public void setFinCoSubmDay(Date finCoSubmDay) {
        this.finCoSubmDay = finCoSubmDay;
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

	public DepositVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DepositVO(Integer no, Date dclsMonth, Integer finCoNo, String korCoNm, String finPrdtCd, String finPrdtNm,
			String joinWay, String mtrtInt, String spclCnd, Integer joinDeny, String joinMember, String etcNote,
			Integer maxLimit, Date dclsStrtDay, Date dclsEndDay, Date finCoSubmDay, String intrRateType,
			String intrRateTypeNm, Integer saveTrm, Integer intrRate, Integer intrRate2) {
		super();
		this.no = no;
		this.dclsMonth = dclsMonth;
		this.finCoNo = finCoNo;
		this.korCoNm = korCoNm;
		this.finPrdtCd = finPrdtCd;
		this.finPrdtNm = finPrdtNm;
		this.joinWay = joinWay;
		this.mtrtInt = mtrtInt;
		this.spclCnd = spclCnd;
		this.joinDeny = joinDeny;
		this.joinMember = joinMember;
		this.etcNote = etcNote;
		this.maxLimit = maxLimit;
		this.dclsStrtDay = dclsStrtDay;
		this.dclsEndDay = dclsEndDay;
		this.finCoSubmDay = finCoSubmDay;
		this.intrRateType = intrRateType;
		this.intrRateTypeNm = intrRateTypeNm;
		this.saveTrm = saveTrm;
		this.intrRate = intrRate;
		this.intrRate2 = intrRate2;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("DepositVO [no=").append(no).append(", dclsMonth=").append(dclsMonth).append(", finCoNo=")
				.append(finCoNo).append(", korCoNm=").append(korCoNm).append(", finPrdtCd=").append(finPrdtCd)
				.append(", finPrdtNm=").append(finPrdtNm).append(", joinWay=").append(joinWay).append(", mtrtInt=")
				.append(mtrtInt).append(", spclCnd=").append(spclCnd).append(", joinDeny=").append(joinDeny)
				.append(", joinMember=").append(joinMember).append(", etcNote=").append(etcNote).append(", maxLimit=")
				.append(maxLimit).append(", dclsStrtDay=").append(dclsStrtDay).append(", dclsEndDay=")
				.append(dclsEndDay).append(", finCoSubmDay=").append(finCoSubmDay).append(", intrRateType=")
				.append(intrRateType).append(", intrRateTypeNm=").append(intrRateTypeNm).append(", saveTrm=")
				.append(saveTrm).append(", intrRate=").append(intrRate).append(", intrRate2=").append(intrRate2)
				.append("]");
		return builder.toString();
	}

    

}
