$(document).ready(function(){
	
	// 파일 크기와 확장자 검사
	const maxSize = 5242880;
	const regex = new RegExp("\\.(bmp|gif|jpg|jpeg|png)$");

	// form 태그 선택
	const formObj = $("form[role='form']");
	
	function checkExtenstion(fileSize, fileName) {
		// 사용자가 선택한 파일의 크기가 서버에서 설정한 파일보다 크거나 같다면
		if(fileSize >= maxSize) {
			alert("파일 사이즈 초과");
			return false;
		}
		if(!regex.test(fileName)){
			alert("이미지 파일만 업로드 할 수 있습니다");
			return false;
		}
		return true;
	}
	
	// 파일의 내용이 변경되면
	$("input[type='file']").on("change", function() {
		alert("파일 첨부 완료");
		
		const formData = new FormData();
		const inputFile = $("input[name='uploadFile']");
		const files = inputFile[0].files;
		
		for(let i=0; i<files.length; i++) {
			// 파일 유효성 검사
			if(!checkExtenstion(files[i].size, files[i].name)) {
				inputFile.val("");
				return false;
			}
			formData.append("uploadFile",files[i]);
		}
		
		$.ajax({
			url:"/uploadAjaxAction",
			type:"post",
			data:formData,
			processData:false,
			contentType:false,
			success:function(result){
				showUploadFile(result);
			}
		})
	})

	// 파일 첨부 후 미리보기
	function showUploadFile(uploadresultArr) {
		let str="";
		$(uploadresultArr).each(function(i,obj){
			console.log(obj);
			let fileCallPath = encodeURIComponent(obj.uploadPath+"/s_"+obj.uuid+"_"+obj.fileName);
			
			//img 태그를 사용하여 웹브라우저에 출력
			str+="<li data-path='"+obj.uploadPath+"'";
			str+=" data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"'>";
			str+="<img src='/display?fileName="+fileCallPath+"'></li>";
		})
		$("#uploadResult ul").html(str);
	}
	
	
	
	
	// 등록 버튼을 클릭하면
	$("button").on("click", function(e) {
		/*e.preventDefault();*/
		let str="";
		$("#uploadResult ul li").each(function(i,obj){
			str+="<input type='hidden' name='fileName' value='"+$(obj).data("filename")+"'>"
	        str+="<input type='hidden' name='uuid' value='"+$(obj).data("uuid")+"'>"
	        str+="<input type='hidden' name='uploadPath' value='"+$(obj).data("path")+"'>"
		})
		/*console.log(str);*/
		formObj.append(str).submit();
	})
	
	
	
	
}) // document.ready 끝