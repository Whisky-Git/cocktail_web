<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="../resources/css/forum/enroll.css">
<h1>게시판 등록</h1>
<form action="/forum/enroll" method="post">
    <div class="input_wrap">
        <label>제목</label>
        <input name="forum_title">
    </div>
    <div class="input_wrap">
        <label>내용</label>
        <input name="forum_content">
    </div>
    <div class="form_section">
        <div class="form_section_title">
        <label>상품 이미지</label>
        </div>
        <div class="form_section_content">
			<input type="file" id ="fileItem" name='uploadFile' style="height: 30px;">	
			<div id="uploadResult">
			<!--
				<div id="result_card">
					<div class="imgDeleteBtn">x</div>
					<img src="display?fileName=test.png">
				</div>
				-->
			</div>	
        </div>                  		
    </div>  
	<div class="input_wrap">
        <label>작성자</label>
        <input name="forum_memberID">
    </div>
    
    
    <button class = "btn">등록</button>
<script>

/* 이미지 업로드 */
$("input[type='file']").on("change", function(e){
	
	/* 이미지 존재시 삭제 */
	if($(".imgDeleteBtn").length > 0){
		deleteFile();
	}
	
	let fileInput = $('input[name="uploadFile"]');
	let formData = new FormData();
	let fileList = fileInput[0].files;
	let fileObj = fileList[0];
	
	console.log("fileList : " + fileList);
	console.log("fileObj : " + fileObj);
	console.log("fileName : " + fileObj.name);
	console.log("fileSize : " + fileObj.size);
	console.log("fileType(MimeType) : " + fileObj.type);
	
	if(!fileCheck(fileObj.name, fileObj.size)){
		return false;
	}
	
	formData.append("uploadFile", fileObj);
	
	$.ajax({
		url: '/forum/ImageAction',
    	processData : false,
    	contentType : false,
    	data : formData,
    	type : 'POST',
      	dataType : 'json',
    	success : function(result){
    		console.log(result);
    		showUploadImage(result);
    	},
    	error : function(result){
    		alert("이미지 파일이 아닙니다.");
    	}
	});		
	
});

/* 파일 체크 */
let regex = new RegExp("(.*?)\.(jpg|png)$");
let maxSize = 1048576; //1MB	

function fileCheck(fileName, fileSize){

	if(fileSize >= maxSize){
		alert("파일 사이즈 초과");
		return false;
	}
		  
	if(!regex.test(fileName)){
		alert("해당 종류의 파일은 업로드할 수 없습니다.");
		return false;
	}
	
	return true;		
	
}


/* 이미지 출력 */
function showUploadImage(uploadResultArr){
	
	/* 전달받은 데이터 검증 */
	if(!uploadResultArr || uploadResultArr.length == 0)
	{
		return;
		}
	
	
	let uploadResult = $("#uploadResult");
	
	let obj = uploadResultArr[0];
	
	let str = "";
	
	let fileCallPath = encodeURIComponent(obj.forum_uploadPath.replace(/\\/g, '/') + "/s_" + obj.forum_uuid + "_" + obj.forum_fileName);
	
	str += "<div id='result_card'>";
	str += "<img src='display?fileName=" + fileCallPath +"'>";
	str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
	str += "<input type='hidden' name='imageList[0].forum_fileName' value='"+ obj.forum_fileName +"'>";
	str += "<input type='hidden' name='imageList[0].forum_uuid' value='"+ obj.forum_uuid +"'>";
	str += "<input type='hidden' name='imageList[0].forum_uploadPath' value='"+ obj.forum_uploadPath +"'>";		
	str += "</div>";		
	
		uploadResult.append(str);     
    
}


/* 파일 삭제 메서드 */
function deleteFile(){
	
	let targetFile = $(".imgDeleteBtn").data("file");
	
	let targetDiv = $("#result_card");
	
	$.ajax({
		url: '/forum/deleteFile',
		data : {fileName : targetFile},
		dataType : 'text',
		type : 'POST',
		success : function(result){
			console.log(result);
			
			targetDiv.remove();
			$("input[type='file']").val("");
			
		},
		error : function(result){
			console.log(result);
			
			alert("파일을 삭제하지 못하였습니다.")
		}
	});
}
 
/* 이미지 삭제 버튼 동작 */
$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
	
	deleteFile();
	
});

</script>
</form>

</body>
</html>