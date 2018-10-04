$(function(){
    $('[data-toggle="tooltip"]').tooltip();
    $(".side-nav .collapse").on("hide.bs.collapse", function() {                   
        $(this).prev().find(".fa").eq(1).removeClass("fa-angle-right").addClass("fa-angle-down");
    });
    $('.side-nav .collapse').on("show.bs.collapse", function() {                        
        $(this).prev().find(".fa").eq(1).removeClass("fa-angle-down").addClass("fa-angle-right");        
    });
})  


$(document).ready(function(){
    $(".nav-tabs a").click(function(){
        $(this).tab('show');
    });
});

function editAnnouncement(announcementID){
        $.ajax({
            url: 'editannouncement',
            type: "post",
            cache: false,
            data: {
                announcement_id: announcementID
            },
            success: function (responseText) {
                var x=JSON.parse(responseText.replace(/\uFFFD/g, ''));
                document.getElementById("edittitle").value=x.title;
                document.getElementById("editdate").value=x.publishedDate;
                document.getElementById("editdescription").value=x.description;
                document.getElementById("buttonshit").value=x.announcementID;
            }
        });
    
}

function deleteAnnouncement(announcementID){
    document.getElementById("deleteannouncement").value=announcementID;
}

function editStudentOrg(studentorgID){
        $.ajax({
            url: 'editstudentorg',
            type: "post",
            cache: false,
            data: {
                studentorgID: studentorgID
            },
            success: function (responseText) {
                var x=JSON.parse(responseText.replace(/\uFFFD/g, ''));
                document.getElementById("orgid").value=x.orgID;
                document.getElementById("editname").value=x.orgName;
                document.getElementById("editabout").value=x.orgAbout;
                document.getElementById("editobj").value=x.orgObjectives;
                document.getElementById("editoffices").value=x.orgOffices;
                document.getElementById("editphone").value=x.orgPhone;
                document.getElementById("editactivities").value=x.orgActivities;
                document.getElementById("editimg").src="../ImageServlet?imgId="+x.imageID;
            }
        });
    
}

function deleteStudentOrg(studentOrgID){
    document.getElementById("deleteorg").value=studentOrgID;
}

function editNews(newsID){
        $.ajax({
            url: 'editnews',
            type: "post",
            cache: false,
            data: {
                news_id: newsID
            },
            success: function (responseText) {
                var x=JSON.parse(responseText.replace(/\uFFFD/g, ''));
                document.getElementById("edittitle").value=x.newsTitle;
                document.getElementById("editauthor").value=x.newsAuthor;
                document.getElementById("editcontent").value=x.newsDescription;
                document.getElementById("editdate").value=x.publishedDate;
                document.getElementById("editimg").src="../ImageServlet?imgId="+x.imageID;
                document.getElementById("newsid").value=x.newsID;
            }
        });
    
}

function deleteNews(newsID){
    document.getElementById("deletenews").value=newsID;
    
}
function editAdmin(adminID){
        $.ajax({
            url: 'editadmin',
            type: "post",
            cache: false,
            data: {
                admin_id: adminID
            },
            success: function (responseText) {
                var x=JSON.parse(responseText.replace(/\uFFFD/g, ''));
                document.getElementById("editname").value=x.fullName;
                document.getElementById("editpos").value=x.position;
                document.getElementById("editimg").src="../ImageServlet?imgId="+x.imageID;
                document.getElementById("adminid").value=x.adminID;
                
            }
       });
    
}

function deleteAdmin(adminID){
    document.getElementById("deleteadmin").value=adminID;
}


    