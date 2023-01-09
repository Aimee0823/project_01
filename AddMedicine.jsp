<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
         body{
            font-size: 20px;
         
         }
        .tr1{
            height: 70px;
            text-align: center;
            
        }
        .tab1{
            border-collapse:collapse;
            text-align:center;
            margin-left:auto;
            margin-right:auto;
            width: 35%;
        }
        .td1{
            text-align:center;
        }
        .h8{
            text-align:center;
        }
        .h9{
           height:25px;
           width:400px;
           font-size: 17px;
        }
        .h11{
           font-size: 17px;
           height: 35px;
        }
</style>
<script>
        function chongzhi() {
            document.form3.reset();
        }
        function checkform(){
        	if(document.form3.name.value==""){
        		alert("经方名称不能为空！");
        		return false;
        	}else{
        		return true;
        	}
        }
        function checkName(){
        	alert("用户名已存在！");
        }
    </script>
</head>
<body>
 <%
    String msg = (String)request.getAttribute("msg");
    if(msg!=null){
    %>
    <%=msg %>
    <%} %>
<div class="d1">
    <div class="h8">
       添加经方信息
    </div>
    <form name="form3" method="get" action="MedicineServlet" onsubmit="return checkform()">
    <input type="hidden" name="action" value="addProc"> 
        <table class="tab1">
            <tr class="tr1">
                <td class="td1">
                    经方名称：
                </td>
                <td class="td2">
                    <input type="text" class="h9" name="name" size="50" >
                </td>
            </tr>
            <tr class="tr1">
                <td class="td1">
                    经方别名：
                </td>
                <td class="td2">
                    <input type="text" class="h9" name="alias" size="50" >
                </td>
            </tr>
            <tr class="tr1">
                <td class="td1">
                    用法：
                </td>
                <td class="td2">
                    <input type="text" class="h9" name="usage1" size="50" >
                </td>
            </tr>
            <tr class="tr1">
                <td class="td1">
                    经方解释：
                </td>
                <td class="td2">
                    <input type="text" class="h9" name="comment" size="50"  >
                </td>
            </tr>
            <tr class="tr1">
                <td class="td2">
                    <input type="submit" class="h11" name="bc" value="保存">
                    <input type="reset" class="h11" name="cz" value="重置" onclick="chongzhi()">
                </td>
                <td></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>