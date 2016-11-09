/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author greatwmc
 */
public class RegistrationAction extends ActionSupport{
            
            private String name;
            private String student_id;
            private String email;
            private Integer age;
            private String phone;
            private Boolean over18;
            private String organization;
            
            
  public void validate() {
      if(null == getName() || getName().length()==0) 
          addFieldError("name", "The name field cannot be blank");
      if(null == getStudent_id() || getStudent_id().length()==0) 
          addFieldError("student_id", "The student id field cannot be blank");
      if(null == getEmail() || getEmail().length()==0) 
          addFieldError("email", "The email field cannot be blank");
      else if(!getEmail().contains("@"))
          addFieldError("email", "Must be a valid email example@google.com");
      if(null == getAge() || getAge()< 18) 
          addFieldError("age", "You must be at least 18");
      if(null == getPhone() || getPhone().length() < 7) 
          addFieldError("phone", "You must enter a valid phone number of at least 7 digits");
      if(null == getOver18() || !getOver18()) 
          addFieldError("over18", "You must be at least 18");
  }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }
  public String execute() {
    return SUCCESS;
  }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStudent_id() {
        return student_id;
    }

    public void setStudent_id(String student_id) {
        this.student_id = student_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Boolean getOver18() {
        return over18;
    }

    public void setOver18(Boolean over18) {
        this.over18 = over18;
    }
    
}
