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
    private String company;
    private String work;
    private String email;
    private String nationality;
    private String civilStatus;
    private int yearGraduated;
    private String program;
    private String major;
    private String username;
    private String password;
    private Image image;

    public AlumniProfile(int alumniID, String firstName, String middleName, String lastName, String birthdate, String gender, String address, String postalCode, String contactNumber, String company, String work, String email, String nationality, String civilStatus, int yearGraduated, String program, String major, String username, String password, Image image) {
        this.alumniID = alumniID;
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.birthdate = birthdate;
        this.gender = gender;
        this.address = address;
        this.postalCode = postalCode;
        this.contactNumber = contactNumber;
        this.company = company;
        this.work = work;
        this.email = email;
        this.nationality = nationality;
        this.civilStatus = civilStatus;
        this.yearGraduated = yearGraduated;
        this.program = program;
        this.major = major;
        this.username = username;
        this.password = password;
        this.image = image;
    }

    public AlumniProfile(String firstName, String middleName, String lastName, String birthdate, String gender, String address, String postalCode, String contactNumber, String company, String work, String email, String nationality, String civilStatus, int yearGraduated, String program, String major, String username, String password, Image image) {
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.birthdate = birthdate;
        this.gender = gender;
        this.address = address;
        this.postalCode = postalCode;
        this.contactNumber = contactNumber;
        this.company = company;
        this.work = work;
        this.email = email;
        this.nationality = nationality;
        this.civilStatus = civilStatus;
        this.yearGraduated = yearGraduated;
        this.program = program;
        this.major = major;
        this.username = username;
        this.password = password;
        this.image = image;
    }

    public AlumniProfile(int alumniID, String firstName, String middleName, String lastName, String birthdate, String gender, String address, String postalCode, String contactNumber, String company, String work, String email, String nationality, String civilStatus, int yearGraduated, String program, String major, Image image) {
        this.alumniID = alumniID;
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.birthdate = birthdate;
        this.gender = gender;
        this.address = address;
        this.postalCode = postalCode;
        this.contactNumber = contactNumber;
        this.company = company;
        this.work = work;
        this.email = email;
        this.nationality = nationality;
        this.civilStatus = civilStatus;
        this.yearGraduated = yearGraduated;
        this.program = program;
        this.major = major;
        this.image = image;
    }

    public AlumniProfile(int alumniID, String firstName, String middleName, String lastName, String birthdate, String gender, String address, String postalCode, String contactNumber, String company, String work, String email, String nationality, String civilStatus, int yearGraduated, String program, String major) {
        this.alumniID = alumniID;
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.birthdate = birthdate;
        this.gender = gender;
        this.address = address;
        this.postalCode = postalCode;
        this.contactNumber = contactNumber;
        this.company = company;
        this.work = work;
        this.email = email;
        this.nationality = nationality;
        this.civilStatus = civilStatus;
        this.yearGraduated = yearGraduated;
        this.program = program;
        this.major = major;
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
        this.company=rs.getString("company");
        this.work=rs.getString("work");
        this.email=rs.getString("email");
        this.nationality=rs.getString("nationality");
        this.civilStatus=rs.getString("civil_status");
        this.yearGraduated=rs.getInt("year_graduated");
        this.program=rs.getString("program");
        this.major=rs.getString("major");
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
        json.addData("company", company);
        json.addData("work",work);
        json.addData("email", email);
        json.addData("nationality", nationality);
        json.addData("civilStatus",civilStatus);
        json.addData("yearGraduated", yearGraduated);
        json.addData("program", program);
        json.addData("major",major);
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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
