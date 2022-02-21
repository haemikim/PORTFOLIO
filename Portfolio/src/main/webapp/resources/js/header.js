/**
 * 
 */

$(document).ready(function(){
	var login=$("#login").val();
	console.log(login);
	// cart를 클릭했을 때 로그인 되어 있지 않으면 alert창을 띄워라
	$(".cart a").on("click",function(){
		if(login==""){
			alert("로그인이 필요한 서비스입니다.");			
		}
		

	})
	

	
	
	
})