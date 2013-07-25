// JavaScript Document

$(document).ready(function(){


$(".upSelect").click(function(){
		
		
        for(var i=0;i<$(".upSelect").length;i++)
		{
			var temp=$(".upSelect").get(i);
		
		//window.alert($(this).css("background-image"));

			temp.style.backgroundImage = 'url(../../Content/picture/BackControl/select.jpg)';
			
			
			}


$(this).css("background-image", 'url("../../Content/picture/BackControl/Beselect.jpg")');
       // $(this).css("color",'red');
           //  this.style.backgroudColor="red";


							  
						   });
	   
});