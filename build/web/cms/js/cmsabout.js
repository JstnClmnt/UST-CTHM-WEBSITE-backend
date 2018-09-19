/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function helloWorld(x){
    desc="";
    id=0;
    if(x==1){
        desc=document.getElementById("missiondesc").value;
        id=1;
    }
    else if(x==2){
        desc=document.getElementById("visiondesc").value;
        id=2;
    }
    $.ajax({
            url: 'editabout',
            cache: false,
            data: {
                post_id:id,
                description: desc
            },
            success: function (responseText) {
                alert(responseText);
            }
    });
    
    
}

