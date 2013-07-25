// JavaScript Document
$(document).ready(
	function(){
		$(".t1").click(
		 
			function(){
			    window.alert($(this).css("background-image")); 

			    $(".t1").css("background-image", 'url("../Content/picture/back/leftselect.jpg")');
			    $(this).css("background-image", 'url("../Content/picture/back/leftselect.jpg")');
				var myid="apDi"+this.id;
				window.alert(myid);
				for(var i=4;i<9;i++)
				{
					var tempid="apDiv"+i;
					var temp=document.getElementById(tempid);
			        if(tempid==myid)
					{
						temp.style.display="block"
						}
						else{
					temp.style.display="none";
						}
					}
			
			}
			);
				
		}
				  
				  );