<%-- 
    Document   : registrationcomplete
    Created on : 2016/07/04, 10:48:58
    Author     : 1999itukinao
--%>
<%@page import="Kagoyume.KagoyumeHelper"%>
<%@page import="Kagoyume.UserData"%>
<%
    UserData ud = (UserData)request.getAttribute("ud");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kagoyume登録結果画面ページ</title>
    </head>
    <body>
        <a href="top.jsp">トップページへ戻る</a>
        <HR>
        <h1>登録結果</h1>
        名前:<%= ud.getName()%><br>        
        パスワード: <%= ud.getPassword()%><br>
        メールアドレス: <%= ud.getMail()%><br>
        住所: <%= ud.getAddress()%><br><br>
        以上の内容で登録しました。
    </body>
</html>

