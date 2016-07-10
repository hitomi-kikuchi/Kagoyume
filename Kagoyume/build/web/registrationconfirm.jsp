<%-- 
    Document   : registrationconfirm
    Created on : 2016/07/04, 10:49:42
    Author     : 1999itukinao
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="Kagoyume.UserData"%>
<%@page import="Kagoyume.KagoyumeHelper"%>
<%
    KagoyumeHelper kh = KagoyumeHelper.getInstance();
    HttpSession hs = request.getSession();
    UserData ud = (UserData)hs.getAttribute("ud");
    ArrayList<String> chkList = ud.chkproperties();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kagoyumeユーザー登録確認画面ページ</title>
    </head>
    <body>
        <% if(chkList.size() == 0) { %>
            <h1>登録確認</h1>
            氏名: <%= ud.getName() %><br>
            パスワード: <%= ud.getPassword() %><br>
            メールアドレス: <%= ud.getMail() %><br>
            住所: <%= ud.getAddress() %><br>
            上記の内容で登録します。よろしいですか？
            <form action="RegistrationComplete" method="POST">
                <input type="hidden" name="ac" value="<%= hs.getAttribute("ac")%>">
                <input type="submit" name="yes" value="はい">
            </form>
        <% }else {%>
            <h1>入力が不完全です</h1>
            <%=kh.chkinput(chkList) %>
        <% } %>
            <form action="Registration" method="POST">
            <input type="submit" name="no" value="いいえ">
            <input type="hidden" name="mode" value="REINPUT">
        </form>  
    </body>
</html>