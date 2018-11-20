function editProfile(alumniID){
        $.ajax({
            url: 'editalumniprofile',
            type: "post",
            cache: false,
            data: {
                alumniID: alumniID
            },
            success: function (responseText) {
                var x=JSON.parse(responseText.replace(/\uFFFD/g, ''));
                document.getElementById("alumniid").value=x.alumniID;
                document.getElementById("lname").value=x.lastName;
                document.getElementById("address").value=x.address;
                document.getElementById("contactnum").value=x.contactNumber;
                document.getElementById("company").value=x.company;
                document.getElementById("inputEmail3").value=x.primaryEmail;
                document.getElementById("Email2").value=x.secondaryEmail;
                document.getElementById("nationality").value=x.nationality;
                document.getElementById("company").value=x.company;
                document.getElementById("companyAddress").value=x.workAddress;
                document.getElementById("companyNum").value=x.companyNumber;
                document.getElementById("yrstart").value=x.yearStarted;
                document.getElementById("position").value=x.work;
                if(x.civilStatus=="Single"){
                    document.getElementById("civstatus").selectedIndex = 1;
                    //document.getElementById("civstatus").value=x.civilStatus;
                    
                }
                else if(x.civilStatus=="Married"){
                    document.getElementById("civstatus").selectedIndex = 2;
                    //document.getElementById("civstatus").value=x.civilStatus;
                }
                else{
                    document.getElementById("civstatus").selectedIndex = 3;
                    //document.getElementById("civstatus").value=x.civilStatus;
                }
                //document.getElementById("editimg").src="ImageServlet?imgId="+x.imageID;
            }
        });
    
}