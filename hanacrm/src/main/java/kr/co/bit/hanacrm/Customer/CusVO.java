package kr.co.bit.hanacrm.Customer;


public class CusVO {
	private Integer no;

    private String name;

    private String birthDate;

    private String phone;

    private Integer employeeNo;

    private String comments;

    //  잠재,일반,우수?
    private String grade;


    //  우편
    private String post;

    private String address;


    private String regDate;

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

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
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

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
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


    public String getRegDate() {
        return regDate;
    }

    public void setRegDate(String regDate) {
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
        this.comments = param.getComments();
        this.grade = param.getGrade();
        this.post = param.getPost();
        this.address = param.getAddress();
        this.regDate = param.getRegDate();
    }

	public CusVO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public CusVO(Integer no, String name, String birthDate, String phone, Integer employeeNo, String comments,
			String grade,String post, String address,String regDate) {
		super();
		this.no = no;
		this.name = name;
		this.birthDate = birthDate;
		this.phone = phone;
		this.employeeNo = employeeNo;
		this.comments = comments;
		this.grade = grade;
		this.post = post;
		this.address = address;
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CusVO [no=").append(no).append(", name=").append(name).append(", birthDate=").append(birthDate)
				.append(", phone=").append(phone).append(", employeeNo=").append(employeeNo).append(", comments=")
				.append(comments).append(", grade=").append(grade).append(", post=").append(post).append(", address=")
				.append(address).append(", regDate=").append(regDate).append("]");
		return builder.toString();
	}

	
    
}
