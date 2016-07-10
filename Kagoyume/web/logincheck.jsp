
<%@page import="jums.UserDataBeans"%>
<%@page import="jums.JumsHelper"%>
<%
    HttpSession hs = request.getSession();
    JumsHelper jh = JumsHelper.getInstance();
    UserDataBeans udb = (UserDataBeans)hs.getAttribute("userdata");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>かごゆめログインチェック画面</title>
    </head>
    <body>
        <h1>ログイン完了</h1>
        ようこそ <%= udb.getName()%> さん。<br>
        お買い物を楽しんでください。<br><br>
    <form action="SearchResult" method="GET">
        キーワードから探す：<input type="text" name="name">
        <br><br>
        <%--アクセスルートチェック--%>
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
        <input type="submit" name="btnSubmit" value="商品検索">
    </form><br>
        <%--トップページに戻る--%>
        <%=jh.home()%>
    </body>
</html>
