<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
      .first{
      text-align:center;
      height:100px;
      } 
      .manage{
      height:40px;
      font-size:20px;
      }  
      .top{
      text-align:center;
      margin-left:auto;
      margin-right:auto;
      }
</style>
</head>
<body>
<br><br><br><br><br><br>
<div class="top">
<div class="first">
<form name="formone" action="MedicineServlet">
        <input type="hidden" name="action" value="list">  
        <input type="submit" name="zy" value="中草药管理模块" class="manage">
</form>
</div>
<br>
<div class="first">
<form name="formtwo" action="MedicineServlet">
        <input type="hidden" name="action" value="list">  
        <input type="submit" name="jf" value="经方管理模块" class="manage">
</form>
</div>
<br>
<div class="first">
<form name="formthree" action="MedicineServlet">
        <input type="hidden" name="action" value="list">  
        <input type="submit" name="tb" value="条辩管理模块" class="manage">
</form>
</div>
</div>
</body>
</html>