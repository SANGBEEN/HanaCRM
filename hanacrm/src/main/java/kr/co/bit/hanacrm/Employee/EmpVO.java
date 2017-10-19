package kr.co.bit.hanacrm.Employee;

import org.springframework.stereotype.Component;

//  영업사원
@Component
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
    private Integer regionNo;

    //  명함용
    private String code;

    private String position;
    
    private String deptName;
    
    private String regionName;

    public Integer getNo() {
        return no;
    }

    public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getRegionName() {
		return regionName;
	}

	public void setRegionName(String regionName) {
		this.regionName = regionName;
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

    public Integer getRegionNo() {
        return regionNo;
    }

    public void setRegionNo(Integer regionNo) {
        this.regionNo = regionNo;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

	public EmpVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public EmpVO(Integer no, String id, String password, String name, String email, String phone, String sns,
			String fax, Integer deptNo, Integer regionNo, String code, String position, String deptName,
			String regionName) {
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
		this.code = code;
		this.position = position;
		this.deptName = deptName;
		this.regionName = regionName;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("EmpVO [no=").append(no).append(", id=").append(id).append(", password=").append(password)
				.append(", name=").append(name).append(", email=").append(email).append(", phone=").append(phone)
				.append(", sns=").append(sns).append(", fax=").append(fax).append(", deptNo=").append(deptNo)
				.append(", regionNo=").append(regionNo).append(", code=").append(code).append(", position=")
				.append(position).append(", deptName=").append(deptName).append(", regionName=").append(regionName)
				.append("]");
		return builder.toString();
	}

	
    
}