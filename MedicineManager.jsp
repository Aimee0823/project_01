<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javaee.po.ClassicFormula" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
         body{
            font-size: 20px;
         
         }

        .top{
            width: 100%;
            height: 60px;
            text-align:center;
        }
        .top2{
            width: 70%;
            height: 60px;
            text-align:right;
            float:left;
        }
        .tr1{
            height: 50px;
            text-align: center;
            
        }
        .tab1{
            border-collapse:collapse;
            text-align:center;
            margin-left:auto;
            margin-right:auto;
            width: 65%;
        }
        .td1{
            border:0.5px solid black;
            text-align:center;
        }
        .insert{
            text-align:center;
        }
        a {
            color:#556e46;
            list-style-type: none;
            text-decoration: none;
        }
         .h8{
            text-align:center;
        }
        .h9{
           height:25px;
           width:400px;
        }
        .h11{
           font-size: 17px;
           height: 35px;
        }
</style>
</head>
<body>
<jsp:useBean id="classicFormula" class="javaee.po.ClassicFormula"/>
<%
ArrayList<ClassicFormula> list1 = (ArrayList<ClassicFormula>)request.getAttribute("list1");
ArrayList<ClassicFormula> list3 = (ArrayList<ClassicFormula>)session.getAttribute("list3");
%>
<div class="top">中药处方查询</div>
<div class="top2">
<form name="form1" method="post" action="MedicineServlet">
<input type="hidden" name="action" value="search">  
经方名称：
<input type="text" name="name" class="search">
经方别名：
<input type="text" name="alias" class="search">
用法：
<input type="text" name="usage1" class="search">
<input type="submit" class="h11" name="b5" value="查询" onclick="sel()">
</form>
 </div>
<div>
<form name="form3" action="MedicineServlet">
<input type="hidden" name="action" value="add"> 
<input type="submit" name="tj" value="添加" class="h11">
</form>
</div>
<%if(list1!=null){ %>

<table class="tab1">
    <tr class="tr1">
        <td class="td1">编号</td>
        <td class="td1">经方名称 </td>
        <td class="td1">经方别名</td>
        <td class="td1">用法</td>
        <td class="td1">解释</td>
        <td class="td1">操作</td>
    </tr>
    <%
    for(int i=0;i<list1.size();i++){
    	
    	
    	classicFormula=list1.get(i);

    %>
    <tr class="tr1">
        <td class="td1">
            <%=classicFormula.getId()%>
        </td>
        <td class="td1">
            <%=classicFormula.getName()%>
        </td>
        <td class="td1">
            <%=classicFormula.getAlias()%>
        </td>
        <td class="td1">
            <%=classicFormula.getUsage1()%>
        </td>
        <td class="td1">
            <%=classicFormula.getComment()%>
        </td>
        <td class="td1">
            <a class="href" href="MedicineServlet?id=<%=classicFormula.getId()%>&action=detail">查看详情</a>
             <a class="href" href="MedicineServlet?id=<%=classicFormula.getId()%>&action=updata">编辑</a>
              <a class="href" href="MedicineServlet?id=<%=classicFormula.getId()%>&action=delete">删除</a>
        </td>
    </tr>
    <%
    }
    %>
</table>
<%} %>
<br>
<table class="tab1">
    <tr class="tr1">
        <td class="td1">编号</td>
        <td class="td1">经方名称 </td>
        <td class="td1">经方别名</td>
        <td class="td1">用法</td>
        <td class="td1">解释</td>
        <td class="td1">操作</td>
    </tr>
    <%
    if(list3.size()>0){
    for(int i=0;i<list3.size();i++){
    	classicFormula=list3.get(i);

    %>
    <tr class="tr1">
        <td class="td1">
            <%=classicFormula.getId()%>
        </td>
        <td class="td1">
            <%=classicFormula.getName()%>
        </td>
        <td class="td1">
            <%=classicFormula.getAlias()%>
        </td>
        <td class="td1">
            <%=classicFormula.getUsage1()%>
        </td>
        <td class="td1">
            <%=classicFormula.getComment()%>
        </td>
        <td class="td1">
            <a class="href" href="MedicineServlet?id=<%=classicFormula.getId()%>&action=detail">查看详情</a>
             <a class="href" href="MedicineServlet?id=<%=classicFormula.getId()%>&action=updata">编辑</a>
              <a class="href" href="MedicineServlet?id=<%=classicFormula.getId()%>&action=delete">删除</a>
        </td>
    </tr>
    <%
    }
        }
    %>
</table>

</body>
</html>