$(function(){
	$(".bullet>li:nth-child(1)").click(function(){
		$("#picture div div:nth-child(1) img").css("height","100%");
		$("#picture div div:nth-child(2) img").css("height","0");
		$("#picture div div:nth-child(3) img").css("height","0");
	});
	$(".bullet>li:nth-child(2)").click(function(){
		$("#picture div div:nth-child(1) img").css("height","0");
		$("#picture div div:nth-child(2) img").css("height","100%");
		$("#picture div div:nth-child(3) img").css("height","0");
	});
	$(".bullet>li:nth-child(3)").click(function(){
		$("#picture div div:nth-child(1) img").css("height","0");
		$("#picture div div:nth-child(2) img").css("height","0");
		$("#picture div div:nth-child(3) img").css("height","100%");
	});
});

function login(num){
	if(num == 1){
	document.getElementById("login_form").style.visibility='visible';
	document.getElementById("join_form").style.visibility='hidden';
	}
	else{
		document.getElementById("login_form").style.visibility='hidden';
		document.getElementById("join_form").style.visibility='visible';
	}
}
function intro(num){
	if(num == 1){
		document.getElementById("greeting").style.visibility='visible';
		document.getElementById("teacher").style.visibility='hidden';
	}
	else{
		document.getElementById("greeting").style.visibility='hidden';
		document.getElementById("teacher").style.visibility='visible';
	}
}
function edu(num){
	if(num == 1){
		document.getElementById("edu_curriculum").style.visibility='visible';
		document.getElementById("edu_application").style.visibility='hidden';
	}
	else{
		document.getElementById("edu_curriculum").style.visibility='hidden';
		document.getElementById("edu_application").style.visibility='visible';
	}
}
function post(){
	document.getElementById("post_list").style.visibility='hidden';
	document.getElementById("post_application").style.visibility='visible';
}
function goods(num){
	if(num == 1){
		document.getElementById("goods_list").style.visibility='visible';
		document.getElementById("goods_application").style.visibility='hidden';
		document.getElementById("goods_etc").style.visibility='hidden';
	}
	else{
		document.getElementById("goods_list").style.visibility='hidden';
		document.getElementById("goods_application").style.visibility='hidden';
		document.getElementById("goods_etc").style.visibility='visible';
	}
}
function goods_write(){
		document.getElementById("goods_list").style.visibility='hidden';
		document.getElementById("goods_application").style.visibility='visible';
		document.getElementById("goods_etc").style.visibility='hidden';
}
function community(num){
	if(num == 1){
		document.getElementById("community_list").style.visibility='visible';
		document.getElementById("community_application").style.visibility='hidden';
		document.getElementById("community_detail").style.visibility='hidden';
		document.getElementById("community_board").style.visibility='hidden';
		document.getElementById("community_upload").style.visibility='hidden';
	}
	else{
		document.getElementById("community_list").style.visibility='hidden';
		document.getElementById("community_application").style.visibility='hidden';
		document.getElementById("community_detail").style.visibility='hidden';
		document.getElementById("community_board").style.visibility='visible';
		document.getElementById("community_upload").style.visibility='hidden';
	}
}
function community_write(){
		document.getElementById("community_list").style.visibility='hidden';
		document.getElementById("community_application").style.visibility='visible';
		document.getElementById("community_detail").style.visibility='hidden';
		document.getElementById("community_board").style.visibility='hidden';
		document.getElementById("community_upload").style.visibility='hidden';
}
function community_upload(){
		document.getElementById("community_list").style.visibility='hidden';
		document.getElementById("community_application").style.visibility='hidden';
		document.getElementById("community_detail").style.visibility='hidden';
		document.getElementById("community_board").style.visibility='hidden';
		document.getElementById("community_upload").style.visibility='visible';
}
function loginCheck(){
		if (document.getElementsByName("frm")[0].userid1.value.length == 0){
			alert("아이디를 입력하세요");
			document.getElementsByName("frm")[0].userid1.focus();
			return false;
		}
		if (document.getElementsByName("frm")[0].pwd1.value.length == 0){
			alert("비밀번호를 입력하세요");
			document.getElementsByName("frm")[0].pwd1.focus();
			return false;
		}
		return true;
}
function joinCheck(){
		if (document.getElementsByName("frm")[1].userid2.value.length == 0){
			alert("아이디를 입력하세요");
			document.getElementsByName("frm")[1].userid2.focus();
			return false;
		}
		if (document.getElementsByName("frm")[1].pwd2.value.length == 0){
			alert("비밀번호를 입력하세요");
			document.getElementsByName("frm")[1].pwd2.focus();
			return false;
		}
		if (document.getElementsByName("frm")[1].name.value.length == 0){
			alert("이름을 입력하세요");
			document.getElementsByName("frm")[1].name.focus();
			return false;
		}
		return true;
}
