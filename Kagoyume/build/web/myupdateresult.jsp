<%-- 
    Document   : myupdateresult
    Created on : 2016/07/04, 21:56:20
    Author     : 1999itukinao
--%>
<%@page import="Kagoyume.KagoyumeHelper"%>
<%@page import="Kagoyume.UserData"%>
<%
    HttpSession hs = request.getSession();
    KagoyumeHelper kh = KagoyumeHelper.getInstance();
    UserData ud = (UserData)hs.getAttribute("userdata");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kagoyumeユーザー更新完了ページ</title>
    </head>
    <body>
        <h1>更新結果</h1>
        名前:<%= ud.getName()%><br>
        パスワード: <%= ud.getPassword()%><br>
        メールアドレス: <%= ud.getMail()%><br>
        住所: <%= ud.getAddress()%><br><br>
        以上の内容で変更しました。<br>
        <HR>
        <%--トップページ--%>
        <%= kh.top()%>
    </body>
</html>
