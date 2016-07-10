<%-- 
    Document   : search
    Created on : 2016/07/04, 10:46:54
    Author     : 1999itukinao
--%>
<%@page import="Kagoyume.ShoppingData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Kagoyume.UserData"%>
<%@page import="Kagoyume.KagoyumeHelper"%>
<%
    HttpSession hs = request.getSession();
    KagoyumeHelper kh = KagoyumeHelper.getInstance();
    ShoppingData sd = (ShoppingData)request.getAttribute("sd");
    List<ShoppingData> sdList = (ArrayList) request.getAttribute("searchResult");
    
    //ログインのチェック
    boolean loginChk = false;   
    UserData ud = (UserData)hs.getAttribute("userdata");
    if(ud != null) {
        loginChk =true;
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
        <title>Kagoyume検索結果ページ</title>
    </head>
    <body>
    <%if(loginChk) {%>
        <%--ユーザー情報へ--%>
        <p>ようこそ <a href="MyData"><%=ud.getName()%></a> さん！</p>
        <%--ログアウトへ--%>
        <%=kh.logout()%><br>
        <%--買い物かごへ--%>
        <%=kh.cart()%>
    <% }else { %>
        <%--ログインページへ--%>
        <%=kh.login()%>
    <% } %>
    <HR>
        <h1>検索結果</h1>
        検索キーワード： <%= sd.getQuery() %><br>
        検索件数： <%= sd.getTotalResult() %><br>
        <br><br>
        <table border="1" class="list">
            <tr>
                <th>サムネイル</th>
                <th>商品名</th>
                <th>価格</th>
            </tr>
            <% for (int i = 0; i < 20; i++) { %>
            <tr>
                <th><img src=<%= sdList.get(i).getImage() %>/></th>
                <th><a href="Item?code=<%= sdList.get(i).getCode() %>"><%=sdList.get(i).getItemName() %></a></th>
                <th><%= sdList.get(i).getPrice() %> 円</th>
            </tr>
            <% } %>
        </table>
</body>
</html>
