/**
 * 
 * 
 */
// list부분 추가하기!!!!!!!!
$(document).ready(function(){		
	
	
	
   // 게시물 번호 가져오기
   let bno = $("#bno").val();
   
   showList();
  
   
   // showList 함수 선언
	function showList(){
			BoardService.getRlist({bno:bno},function(Rlist){
         var str="";
            str+="<div class='replyList' data-bno='"+Rlist.bno+"'>";
            str+="<div><p><b>"+Rlist.replyer+"</b></p>" + "<p>"+Rlist.reply+"</p></div>";
            str+="<div><button class='modBtn' data-bno='"+Rlist.bno+"'>수정</button><button class='removeBtn' data-bno='"+Rlist.bno+"'>삭제</button></div>"
            str+="</div><br>";
            

            console.log(str);
         $("#relist").html(str);
         
   
        const sessionId = $("#session").val();
         
        console.log(sessionId);
        
        if(sessionId != "administrator1"){
	       	 $(".modBtn").hide();
	       	 $(".removeBtn").hide();
        }
        console.log(Rlist.reply)
        
        if(Rlist.reply == null){
    		$("#reply-area").show();
    		$("#relist").hide();
    	}else {
    		$("#reply-area").hide();
    		$("#relist").show();
    	}
        
      });
			
   }
   // showList 함수 선언 끝
   
      // 댓글 작성 버튼을 클릭하면
      $(".board__reply #addReply").on("click",function() {
         if($("#reply").val() != "" && $("#replyer").val() != ""){
            //사용자가 입력한 댓글 내용을 저장
            let reply = $("#reply").val();
            //사용자가 입력한 댓글 작성자를 저장
            let replyer = $("#replyer").val();
            
            BoardService.Update({reply:reply, replyer:replyer, bno:bno},
                  function(result){
               alert("댓글 작성 : " + result);
               console.log(reply);
               showList();
            }
            );
            
            $("#reply").val("");
            $("#replyer").val("");
         } else {
            alert("댓글 내용을 입력해주세요!");
            $("#reply").val("");
            $("#replyer").val("");
         }
         

      })   
      // 댓글 작성 버튼 클릭 끝
   
   
   
   
   // modal창 관련 js작성
   
   
      // 댓글 목록에서 수정 버튼을 클릭하면
      $("#relist").on("click", ".modBtn", function(){
         $(".modal").css("display", "block");
         $("body").css("overflow", "hidden");
         
         // bno값 가져오기 
         const bno = $(this).data("bno");
         
         BoardService.reDetail(bno,function(detail){
            $("input[name='bno']").val(detail.bno);
            $("input[name='replyer']").val(detail.replyer);
            $("input[name='reply']").val(detail.reply);
         })
      })
      // 댓글 수정 버튼 클릭 이벤트 끝
   
      
      // 댓글 update
      $("#insideModBtn").on("click", function(){
         const reply = {bno:$("input[name='bno']").val(), reply:$("input[name='reply']").val()};
         
         BoardService.reUpdate(reply, function(result) {
            alert("댓글 수정 : " + result);
            $(".modal").css("display", "none");
            showList();
         })
         
         $("body").css("overflow", "auto");

      })
      // 댓글 update 끝
      
      
   $("#insideModBtn").on("click", function(){
   })
   
   $("#insideCloseBtn").on("click", function(){
      $(".modal").css("display", "none");
      $("body").css("overflow", "auto");
   })
   // modal창 관련 js작성 끝
   
   
   // 댓글 삭제 버튼을 클릭하면
   $("#relist").on("click", ".removeBtn", function(){
      // reply랑 값 가져오기

      const reply = {bno:$(this).data("bno")};
      console.log(reply);
      
      BoardService.reRemove(reply, function(result) {
         alert("댓글 삭제 : " + result);
         showList();         
      })
     
   })

   
   
   
   
   
   
   
})   // documet.ready 끝




//-----------------------------------------함수 선언부----------------------------------------



var BoardService=(function(){
   // 댓글 쓰기 함수 선언
   function Update(reply,callback) {
	   console.log(reply)
      $.ajax({
         url:"/new",
         type:"put",
         data:JSON.stringify(reply),
         contentType : "application/json; charset=UTF-8",
         success: function(result){
            if(callback)
               callback(result);
         },
         error: function(){
         }
      })
   }
   
   // 댓글 목록 리스트를 보기 위한 함수 선언
   function getRlist(param, callback) {
      var bno = param.bno;
      
      $.getJSON(
            "/Rlist/"+bno+".json",
            function(data){

               if (callback)
                  callback(data);
            }
      )
   }

   
   // 댓글을 수정하기 위해 데이터를 받아오는 함수 선언
   function reDetail(bno, callback) {
      var bno=bno;
      $.getJSON(
    		"/Rlist/"+ bno+".json",

            function(data) {
               if(callback)
                  callback(data);
            }
      )
   }
   
   // 댓글 update를 위한 함수 선언
   function reUpdate(reply, callback) {
      $.ajax({
         url: "/Rupdate",
         type: "put",
         data: JSON.stringify(reply),
         contentType:"application/json; charset=utf-8",
         success: function(result){
            if(callback)
               callback(result);
         },
         error: function(){
         }
      })
   }
   
   // 댓글 삭제를 위한 함수 선언
   function reRemove(reply, callback) {
      $.ajax({
         url: "/Rremove",
         type: "put",
         data: JSON.stringify(reply),
         contentType:"application/json; charset=utf-8",
         success: function(result) {
            if(callback)
               callback(result);
         },
         error: function(){
         }
      })
   }
   
   
   
   
   return {
	   Update:Update,
      getRlist:getRlist,
      reDetail:reDetail,
      reUpdate:reUpdate,
      reRemove:reRemove
   };
})()