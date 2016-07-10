<%-- 
    Document   : item
    Created on : 2016/07/04, 10:37:20
    Author     : 1999itukinao
--%>
<%@page import="Kagoyume.ShoppingData"%>
<%@page import="Kagoyume.UserData"%>
<%@page import="Kagoyume.KagoyumeHelper"%>
<%
    KagoyumeHelper kh = KagoyumeHelper.getInstance();
    ShoppingData sd = (ShoppingData) request.getAttribute("sd");
    
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
        <title>Kagoyume商品詳細ページ</title>
    </head>
    <body>
        <%if(loginChk) {%>
        <%--ユーザー情報・ログアウト・カート--%>
        <p>ようこそ <a href="MyData"><%=ud.getName()%></a> さん！</p>
        <%=kh.logout()%><br>
        <%=kh.cart()%>
    <% }else { %>
        <%--ログインページ・新規登録--%>
        <%=kh.login()%><br>
        <%=kh.register()%>
    <% } %>
        <HR>
        <h1>商品詳細</h1>
        <form action="Add" method="GET">
            <h3><%= sd.getItemName() %></h3>
            <img src=<%= sd.getImage() %>/><br>            
            <h3>価格： <%= sd.getPrice() %>円</h3>
            <h3>評価値： <%= sd.getReview() %></h3>
            <h3>概要：</h3><%= sd.getDescription() %>
            <br><br>
            <input type="hidden" name="code"  value="<%= sd.getCode() %>">
            <input type="submit" name="submit" value="カートに追加する">
        </form>
    </body>
</html>
