<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/trave/validation.jsp"%>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
td{
text-align:center;
}
th{text-align:center;}

tr.clientRow:hover,
tr.clientRow.selected,
button.dateBtn:hover,
button.dateBtn.selected{
background-color:skyblue;
}

button.dateBtn,
table#clientTable{
cursor:pointer;
}

</style>
<title>여행 일정 관리</title>
<script>

$j(()=>{

	var g_time = {
			el=null
			,type="오전"
			,h=0
			,m=0
			,val=''
			,
			
			
	}	
	
})

</script>
</head>
<body> 
<table align="center" >
<tr>
<td align="center">
<input name="traveTime" type="text" value="오후 12:00 🕓"/>

</td>
</tr>
</table>
</body>
</html>