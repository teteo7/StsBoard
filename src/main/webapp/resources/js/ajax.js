// 작성한 메소드를 선언해줘야 한다.



// 테스트 테스트 함수
// $.ajax의 url: 데이터를 처리할 controller
// method: 전송방식
// contentType: 보내는 데이터 타입
// data: 서버에서 받을 데이터 타입.

// url 경로 같게
   
function ajax(url=""){
$("#"+url).on('click', function() {
	
	var id = $("input:text[name='id1']").val();
	var pw = $("input:text[name='pw1']").val();
	var box = {userId:id, userPw:pw};
	

	console.log(pw);
	console.log(url);
	
	$.ajax({
		url:url,
		method:"post",
		contentType:"application/json;charset=utf-8",
		data: JSON.stringify(box),
		success:function(data){
			if(data=="1"){
				alert("잘됐어요");
				console.log("잘됬어요");
				console.log(data);
			}
		}, error:function(request,status,error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
});
}