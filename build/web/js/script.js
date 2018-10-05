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
                document.getElementById("alumniID").value=x.alumniID;
                document.getElementById("editfirstname").value=x.firstName;
                document.getElementById("editlastname").value=x.lastName;
                document.getElementById("editmiddlename").value=x.middleName;
                document.getElementById("editbirthdate").value=x.birthdate;
                if(x.gender=="F"){
                    document.getElementById('editgender').selectedIndex = 0;
                    document.getElementById("editgender").value=x.gender;
                    
                }
                else{
                    document.getElementById('editgender').selectedIndex = 1;
                    document.getElementById("editgender").value=x.gender;
                }
                document.getElementById("editaddress").value=x.address;
                document.getElementById("editpostalcode").value=x.postalCode;
                document.getElementById("editnumber").value=x.contactNumber;
                document.getElementById("editcompany").value=x.company;
                document.getElementById("editwork").value=x.work;
                document.getElementById("editemail").value=x.email;
                document.getElementById("editnationality").value=x.nationality;
                if(x.civilStatus=="Single"){
                    document.getElementById('editstatus').selectedIndex = 0;
                    document.getElementById("editstatus").value=x.civilStatus;
                    
                }
                else{
                    document.getElementById('editstatus').selectedIndex = 1;
                    document.getElementById("editstatus").value=x.civilStatus;
                }
                document.getElementById("edityear").value=x.yearGraduated;
                document.getElementById("editprogram").value=x.program;
                document.getElementById("editmajor").value=x.major;
                document.getElementById("editimg").src="ImageServlet?imgId="+x.imageID;
            }
        });
    
}