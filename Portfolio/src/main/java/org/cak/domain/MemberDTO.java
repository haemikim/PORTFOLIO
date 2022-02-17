package org.cak.domain;

public class MemberDTO {
    private String name;
    private String id;
    private String password;
    private String email;
    private String phone;

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

	@Override
	public String toString() {
		return "MemberDTO [name=" + name + ", id=" + id + ", password=" + password + ", email=" + email + ", phone=" + phone + "]";
	}


}
