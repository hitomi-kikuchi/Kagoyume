<%-- 
    Document   : add
    Created on : 2016/07/04, 10:50:05
    Author     : 1999itukinao
--%>
<%@page import="Kagoyume.UserData"%>
<%@page import="Kagoyume.KagoyumeHelper"%>
<%
    KagoyumeHelper kh = KagoyumeHelper.getInstance();
    
     //ログインのチェック
    boolean loginChk = false;
    HttpSession hs = request.getSession();
    UserData ud = (UserData)hs.getAttribute("userdata");
    if(ud != null) {
        loginChk =true;
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kagoyumeカート追加ページ</title>
    </head>
    <body>
        <%if(loginChk) {%>
        <%--ユーザー情報・ログアウト・カート--%>
        <p>ようこそ <a href="MyData"><%=ud.getName()%></a> さん！</p>
        <%=kh.logout()%><br>
        <%=kh.cart()%><br>
    <% }else { %>
        <%--ログインページ・新規登録--%>
        <%=kh.login()%><br>
        <%=kh.register()%><br>
    <% } %>
    <HR>
        <h1>カート追加</h1>
        <h3>カートに追加しました</h3> 
    </body>
</html>
