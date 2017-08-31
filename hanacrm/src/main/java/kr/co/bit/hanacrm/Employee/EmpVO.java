package kr.co.bit.hanacrm.Employee;

public class EmpVO {
	private Integer no;

    private String id;

    private String password;

    private String name;

    private String email;

    private String phone;

    private String sns;

    private String fax;

    private Integer deptNo;

    //  활동지역
    private String regionNo;

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSns() {
        return sns;
    }

    public void setSns(String sns) {
        this.sns = sns;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public Integer getDeptNo() {
        return deptNo;
    }

    public void setDeptNo(Integer deptNo) {
        this.deptNo = deptNo;
    }

    public String getRegionNo() {
        return regionNo;
    }

    public void setRegionNo(String regionNo) {
        this.regionNo = regionNo;
    }

    // Employee 모델 복사
    public void CopyData(EmpVO param)
    {
        this.no = param.getNo();
        this.id = param.getId();
        this.password = param.getPassword();
        this.name = param.getName();
        this.email = param.getEmail();
        this.phone = param.getPhone();
        this.sns = param.getSns();
        this.fax = param.getFax();
        this.deptNo = param.getDeptNo();
        this.regionNo = param.getRegionNo();
    }
    
	public EmpVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public EmpVO(Integer no, String id, String password, String name, String email, String phone, String sns,
			String fax, Integer deptNo, String regionNo) {
		super();
		this.no = no;
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.sns = sns;
		this.fax = fax;
		this.deptNo = deptNo;
		this.regionNo = regionNo;
	}
    
}
