/**
 * 
 */
$(document).ready(function(){
	var actionForm =$("#actionForm")

//	페이지 클릭한곳으로 이동
	$(".paginate_button a").on("click",function(e){
		e.preventDefault();
		actionForm.find("input[name='pageNum']").val($(this).attr("href"))
		
		actionForm.submit();
	})
// 검색한 내용물이  첫번째 페이지에  나오게
	$("button[type='submit']").on("click",function(e){
		e.preventDefault();

		actionForm.find("input[name='pageNum']").val("1") 
		actionForm.submit();
	})

	
})