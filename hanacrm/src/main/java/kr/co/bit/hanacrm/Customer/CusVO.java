package kr.co.bit.hanacrm.Customer;

import java.sql.Date;

public class CusVO {
	private Integer no;

    private String name;

    private Date birthDate;

    private String phone;

    private Integer employeeNo;

    private String comment;

    //  잠재,일반,우수?
    private Integer grade;

    //  ??
    private Integer type;

    //  우편
    private String post;

    private String address;

    private Integer importance;

    private Date regDate;

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getEmployeeNo() {
        return employeeNo;
    }

    public void setEmployeeNo(Integer employeeNo) {
        this.employeeNo = employeeNo;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getImportance() {
        return importance;
    }

    public void setImportance(Integer importance) {
        this.importance = importance;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    // Customer 모델 복사
    public void CopyData(CusVO param)
    {
        this.no = param.getNo();
        this.name = param.getName();
        this.birthDate = param.getBirthDate();
        this.phone = param.getPhone();
        this.employeeNo = param.getEmployeeNo();
        this.comment = param.getComment();
        this.grade = param.getGrade();
        this.type = param.getType();
        this.post = param.getPost();
        this.address = param.getAddress();
        this.importance = param.getImportance();
        this.regDate = param.getRegDate();
    }

	public CusVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CusVO(Integer no, String name, Date birthDate, String phone, Integer employeeNo, String comment,
			Integer grade, Integer type, String post, String address, Integer importance, Date regDate) {
		super();
		this.no = no;
		this.name = name;
		this.birthDate = birthDate;
		this.phone = phone;
		this.employeeNo = employeeNo;
		this.comment = comment;
		this.grade = grade;
		this.type = type;
		this.post = post;
		this.address = address;
		this.importance = importance;
		this.regDate = regDate;
	}
    
}
