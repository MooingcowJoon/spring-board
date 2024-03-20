<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<script src="/resources/js/jquery-1.10.2.js"></script>
<script type="text/javascript">
	var $j = jQuery.noConflict();
	var idFind =(elementId)=>document.getElementById(elementId)
	var seriForm= function(form){
	    var formDataArray = {};
	    
	    // 폼 내의 모든 입력 요소를 순회하며 이름과 값을 배열에 추가
	    form.find('input[type="text"], select, textarea').each(function() {
	        var name = $j(this).attr('name');
	        var value = $j(this).val();
	       	formDataArray[name]=value
	    });
	    
	    return formDataArray;
	}
</script>
<body>

</body>
</html>