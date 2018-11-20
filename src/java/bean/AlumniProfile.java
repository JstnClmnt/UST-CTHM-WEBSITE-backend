/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import helper.JsonObject;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author Justine Clemente
 */
public class AlumniProfile {
    private int alumniID;
    private String firstName;
    private String middleName;
    private String lastName;
    private String birthdate;
    private String gender;
    private String address;
    private String postalCode;
    private String contactNumber;
    private String nationality;
    private String civilStatus;
    private int yearGraduated;
    private String program;
    private int studentNumber;
    private String major;
    private String emailPrimary;
    private String emailSecondary;
    private String company;
    private String workAddress;
    private int yearStarted;
    private String companyNumber;
    private String companyEmail;
    private String work;
    private String username;
    private String password;
    private Image image;

    @Override
    public String toString(){
        address=address.replaceAll(",", "-");
        return firstName+","+middleName+","+lastName+","+stringToTimeStamp(birthdate)+","+gender+","+address+","+postalCode+","+contactNumber+","+nationality+","+civilStatus+","+yearGraduated+","+studentNumber+","+program+","+major+","+emailPrimary+","+emailSecondary+","+company+","+workAddress+","+yearStarted+","+companyNumber+","+companyEmail+","+work;
    }

    public AlumniProfile(int alumniID, String firstName, String middleName, String lastName, String birthdate, String gender, String address, String postalCode, String contactNumber, String nationality, String civilStatus, int yearGraduated, String program, int studentNumber, String major, String emailPrimary, String emailSecondary, String company, String workAddress, int yearStarted, String companyNumber, String companyEmail, String work, String username, String password, Image image) {
        this.alumniID = alumniID;
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.birthdate = birthdate;
        this.gender = gender;
        this.address = address;
        this.postalCode = postalCode;
        this.contactNumber = contactNumber;
        this.nationality = nationality;
        this.civilStatus = civilStatus;
        this.yearGraduated = yearGraduated;
        this.program = program;
        this.studentNumber = studentNumber;
        this.major = major;
        this.emailPrimary = emailPrimary;
        this.emailSecondary = emailSecondary;
        this.company = company;
        this.workAddress = workAddress;
        this.yearStarted = yearStarted;
        this.companyNumber = companyNumber;
        this.companyEmail = companyEmail;
        this.work = work;
        this.username = username;
        this.password = password;
        this.image = image;
    }

    public AlumniProfile(String firstName, String middleName, String lastName, String birthdate, String gender, String address, String postalCode, String contactNumber, String nationality, String civilStatus, int yearGraduated, String program, int studentNumber, String major, String emailPrimary, String emailSecondary, String company, String workAddress, int yearStarted, String companyNumber, String companyEmail, String work, String username, String password, Image image) {
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.birthdate = birthdate;
        this.gender = gender;
        this.address = address;
        this.postalCode = postalCode;
        this.contactNumber = contactNumber;
        this.nationality = nationality;
        this.civilStatus = civilStatus;
        this.yearGraduated = yearGraduated;
        this.program = program;
        this.studentNumber = studentNumber;
        this.major = major;
        this.emailPrimary = emailPrimary;
        this.emailSecondary = emailSecondary;
        this.company = company;
        this.workAddress = workAddress;
        this.yearStarted = yearStarted;
        this.companyNumber = companyNumber;
        this.companyEmail = companyEmail;
        this.work = work;
        this.username = username;
        this.password = password;
        this.image = image;
    }

    public AlumniProfile(int alumniID, String lastName, String address, String contactNumber, String nationality, String civilStatus, String emailPrimary, String emailSecondary, String company, String workAddress, int yearStarted, String companyNumber, String work, Image image) {
        this.alumniID = alumniID;
        this.lastName = lastName;
        this.address = address;
        this.contactNumber = contactNumber;
        this.nationality = nationality;
        this.civilStatus = civilStatus;
        this.emailPrimary = emailPrimary;
        this.emailSecondary = emailSecondary;
        this.company = company;
        this.workAddress = workAddress;
        this.yearStarted = yearStarted;
        this.companyNumber = companyNumber;
        this.work = work;
        this.image = image;
    }
        
    
    public AlumniProfile(ResultSet rs) throws SQLException{
        this.alumniID=rs.getInt("alumni_id");
        this.firstName=rs.getString("first_name");
        this.middleName=rs.getString("middle_name");
        this.lastName=rs.getString("last_name");
        this.birthdate=timestamptoString(rs.getTimestamp("birthdate"));
        this.gender=rs.getString("gender");
        this.address=rs.getString("address");
        this.postalCode=rs.getString("postal_code");
        this.contactNumber=rs.getString("contact_number");
        this.nationality=rs.getString("nationality");
        this.civilStatus=rs.getString("civil_status");
        this.yearGraduated=rs.getInt("year_graduated");
        this.program=rs.getString("program");
        this.studentNumber=rs.getInt("student_number");
        this.major=rs.getString("major");
        this.emailPrimary=rs.getString("email_primary");
        this.emailSecondary=rs.getString("email_secondary");
        this.company=rs.getString("company");
        this.workAddress=rs.getString("work_address");
        this.yearStarted=rs.getInt("year_started");
        this.companyNumber=rs.getString("company_number");
        this.companyEmail=rs.getString("company_email");
        this.work=rs.getString("work");
        this.username=rs.getString("username");
        this.password=rs.getString("password");
        this.image=new Image(rs);
    }
    public JsonObject getJSON() {
        JsonObject json = new JsonObject();
        json.addData("alumniID", alumniID);
        json.addData("firstName", firstName);
        json.addData("middleName", middleName);
        json.addData("lastName",lastName);
        json.addData("birthdate", stringToTimeStamp(birthdate));
        json.addData("gender", gender);
        json.addData("address",address);
        json.addData("postalCode", postalCode);
        json.addData("contactNumber", contactNumber);
        json.addData("nationality", nationality);
        json.addData("civilStatus",civilStatus);
        json.addData("yearGraduated", yearGraduated);
        json.addData("program", program);
        json.addData("studentNumber",studentNumber);
        json.addData("major",major);
        json.addData("primaryEmail",emailPrimary);
        json.addData("secondaryEmail",emailSecondary);
        json.addData("company",company);
        json.addData("workAddress",workAddress);
        json.addData("yearStarted",yearStarted);
        json.addData("companyNumber",companyNumber);
        json.addData("companyEmail",companyEmail);
        json.addData("work",work);
        json.addData("username", username);
        json.addData("password",password);
        json.addData("imageID",image.getImageId());
        json.addData("imageName",image.getDescription());
        return json;
    }
    
    public AlumniProfile() {
    }
    public int getAlumniID() {
        return alumniID;
    }

    public void setAlumniID(int alumniID) {
        this.alumniID = alumniID;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getWork() {
        return work;
    }

    public void setWork(String work) {
        this.work = work;
    }


    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getCivilStatus() {
        return civilStatus;
    }

    public void setCivilStatus(String civilStatus) {
        this.civilStatus = civilStatus;
    }

    public int getYearGraduated() {
        return yearGraduated;
    }

    public void setYearGraduated(int yearGraduated) {
        this.yearGraduated = yearGraduated;
    }

    public String getProgram() {
        return program;
    }

    public void setProgram(String program) {
        this.program = program;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }

    public int getStudentNumber() {
        return studentNumber;
    }

    public void setStudentNumber(int studentNumber) {
        this.studentNumber = studentNumber;
    }

    public String getEmailPrimary() {
        return emailPrimary;
    }

    public void setEmailPrimary(String emailPrimary) {
        this.emailPrimary = emailPrimary;
    }

    public String getEmailSecondary() {
        return emailSecondary;
    }

    public void setEmailSecondary(String emailSecondary) {
        this.emailSecondary = emailSecondary;
    }

    public String getWorkAddress() {
        return workAddress;
    }

    public void setWorkAddress(String workAddress) {
        this.workAddress = workAddress;
    }

    public int getYearStarted() {
        return yearStarted;
    }

    public void setYearStarted(int yearStarted) {
        this.yearStarted = yearStarted;
    }

    public String getCompanyNumber() {
        return companyNumber;
    }

    public void setCompanyNumber(String companyNumber) {
        this.companyNumber = companyNumber;
    }

    public String getCompanyEmail() {
        return companyEmail;
    }

    public void setCompanyEmail(String companyEmail) {
        this.companyEmail = companyEmail;
    }
    
    
    
    private String timestamptoString(Timestamp ts){
        String datePublished="";
        String s[]=ts.toString().split(" ");
        String date[]=s[0].split("-");
        String time[]=s[1].split(":");
        int month=Integer.parseInt(date[1]);
        switch(month){
            case 1: datePublished+="January"; break;
            case 2: datePublished+="February"; break;
            case 3: datePublished+="March"; break;
            case 4: datePublished+="April"; break;
            case 5: datePublished+="May"; break;
            case 6: datePublished+="June"; break;
            case 7: datePublished+="July"; break;
            case 8: datePublished+="August"; break;
            case 9: datePublished+="September"; break;
            case 10: datePublished+="October"; break;
            case 11: datePublished+="November"; break;
            case 12: datePublished+="December"; break;
        }
        String datetime="am";
        int h=Integer.parseInt(time[0]);
        if(h-12>0){
           if(h-12==0){
               time[0]="12";
           }
           datetime="pm";
        }
        
        datePublished+=" "+date[2]+","+date[0];
        
        return datePublished;
        
    }
    private String stringToTimeStamp(String timestampstring){
        String datePublished="";
        String s[]=timestampstring.split(" ");
        String dayyear[]=s[1].split(",");
        String month=s[0];
        datePublished+=dayyear[1]+"-";
        switch(month){
            case "January":datePublished+="01"; break;
            case "February": datePublished+="02"; break;
            case "March": datePublished+="03"; break;
            case "April": datePublished+="04"; break;
            case "May": datePublished+="05"; break;
            case "June": datePublished+="06"; break;
            case "July": datePublished+="07"; break;
            case "August": datePublished+="08"; break;
            case "September": datePublished+="09"; break;
            case "October": datePublished+="10"; break;
            case "November": datePublished+="11"; break;
            case "December": datePublished+="12"; break;
        }
        
        datePublished+="-"+dayyear[0];
        
        return datePublished;
        
    }
    
}
