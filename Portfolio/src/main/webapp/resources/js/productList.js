/**
 * 
 */
$(document).ready(function(){
	var actionForm3 =$("#actionForm3")


//	페이지 클릭한곳으로 이동
	$(".paginate_button a").on("click",function(e){
		e.preventDefault();
		actionForm3.find("input[name='pageNum']").val($(this).attr("href"))
		actionForm3.submit();
	})
// 검색한 내용물이  첫번째 페이지에  나오게
	$("button[type='submit']").on("click",function(e){
		e.preventDefault();
		actionForm3.find("input[name='pageNum']").val("1") 
		actionForm3.submit();
	})
// 옵션 클릭시 물품 정렬
	$("#array").on("change",function(){
		$(this).val(); 
		// 상품정렬 OPTION선택시 상품정렬을 선택해달라고 모달창띄우기		
		if($(this).val() == 'NO'){ 
			alert("상품 정렬방식을 선택해주세요.");
			return "/cake";
		}
		actionForm3.find("input[name='order']").val($(this).val())
		actionForm3.submit();
	})
	
	
// 옵션 변경시 첫번째 페이지에 나오게
	$("#array").on("change",function(e){
		e.preventDefault();

		actionForm3.find("input[name='pageNum']").val("1") 
		actionForm3.submit();
	})

})