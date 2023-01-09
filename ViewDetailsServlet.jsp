<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.ArrayList" %>
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
        }
        .h11{
           font-size: 17px;
           height: 35px;
        }
</style>
</head>
<body>
<%ArrayList<String> list2 = (ArrayList<String>)request.getAttribute("list2");
%>
<div class="d1">
    <div class="h8">
       查看详细信息
    </div>
    <%if(list2.size()>0){ %>
    <form name="form3" method="get" action="MedicineServlet">
    <input type="hidden" name="action" value="list"> 
        <table class="tab1">
            <tr class="tr1">
                <td class="td1">
                    编号：
                </td>
                <td class="td2">
                <%=list2.get(0)%>
                </td>
            </tr>
            <tr class="tr1">
                <td class="td1">
                    中药处方名称：
                </td>
                <td class="td2">
                   <%=list2.get(1)%> 
                </td>
            </tr>
            <tr class="tr1">
                <td class="td1">
                    中草药名称：
                </td>
                <td class="td2">
                   <%=list2.get(2)%>
                </td>
            </tr>
            <tr class="tr1">
                <td class="td1">
                    用量：
                </td>
                <td class="td2">
                    <%=list2.get(3)%>
                </td>
            </tr>
            <tr class="tr1">
                <td class="td1">
                    用法：
                </td>
                <td class="td2">
                    <%=list2.get(4)%>
                </td>
            </tr>
            <tr class="tr1">
                <td class="td2">
                    <input type="submit" class="h11" name="bc" value="返回">
                </td>
                <td></td>
            </tr>
        </table>
    </form>
    <%} %>
</div>
</body>
</html>