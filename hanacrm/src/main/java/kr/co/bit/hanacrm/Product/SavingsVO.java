package kr.co.bit.hanacrm.Product;

import java.util.List;

import org.springframework.stereotype.Component;

//  상품정보(적금)
@Component
public class SavingsVO implements ProductVO {

    private Integer no;

    //  공시 제출월 YYYYMM
    private String dclsMonth;

    //  금융회사 코드
    private String finCoNo;

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

    //  join_member IS 가입대상  comment☆on☆column savings_info
    private Integer joinDeny;

    //  가입대상
    private String joinMember;

    //  기타 유의사항
    private String etcNote;

    //  최고한도
    private Integer maxLimit;

    //  공시 시작일
    private String dclsStrtDay;

    //  공시 종료일
    private String dclsEndDay;

    //  금융회사 제출일 YYYYMMDDHH24MI
    private String finCoSubmDay;
    
    // 옵션내용
    private List<OptionVO> optionList;

	public SavingsVO() {
	}	

	public SavingsVO(Integer no, String dclsMonth, String finCoNo, String korCoNm, String finPrdtCd, String finPrdtNm,
			String joinWay, String mtrtInt, String spclCnd, Integer joinDeny, String joinMember, String etcNote,
			Integer maxLimit, String dclsStrtDay, String dclsEndDay, String finCoSubmDay) {
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

	public String getFinCoNo() {
		return finCoNo;
	}

	public void setFinCoNo(String finCoNo) {
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

	public String getDclsStrtDay() {
		return dclsStrtDay;
	}

	public void setDclsStrtDay(String dclsStrtDay) {
		this.dclsStrtDay = dclsStrtDay;
	}

	public String getDclsEndDay() {
		return dclsEndDay;
	}

	public void setDclsEndDay(String dclsEndDay) {
		this.dclsEndDay = dclsEndDay;
	}

	public String getFinCoSubmDay() {
		return finCoSubmDay;
	}

	public void setFinCoSubmDay(String finCoSubmDay) {
		this.finCoSubmDay = finCoSubmDay;
	}
	
	public List<OptionVO> getOptionList() {
		return optionList;
	}

	public void setOptionList(List<OptionVO> optionList) {
		this.optionList = optionList;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("SavingsVO [no=").append(no).append(", dclsMonth=").append(dclsMonth).append(", finCoNo=")
				.append(finCoNo).append(", korCoNm=").append(korCoNm).append(", finPrdtCd=").append(finPrdtCd)
				.append(", finPrdtNm=").append(finPrdtNm).append(", joinWay=").append(joinWay).append(", mtrtInt=")
				.append(mtrtInt).append(", spclCnd=").append(spclCnd).append(", joinDeny=").append(joinDeny)
				.append(", joinMember=").append(joinMember).append(", etcNote=").append(etcNote).append(", maxLimit=")
				.append(maxLimit).append(", dclsStrtDay=").append(dclsStrtDay).append(", dclsEndDay=")
				.append(dclsEndDay).append(", finCoSubmDay=").append(finCoSubmDay).append("]");
		return builder.toString();
	}
	
}
