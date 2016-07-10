<%-- 
    Document   : search
    Created on : 2016/07/04, 10:36:34
    Author     : 1999itukinao
--%>
<%@page import="Kagoyume.KagoyumeHelper"%>
<%@page import="Kagoyume.UserData"%>
<%
    HttpSession hs = request.getSession();
    KagoyumeHelper kh = KagoyumeHelper.getInstance();
    UserData ud = (UserData)hs.getAttribute("userdata");
    
    //検索キーワードの入力チェック
    boolean keyword = false;
    if(request.getAttribute("empty") != null) {
        keyword = true;
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Kagoyumeトップページ</title>
</head>
<body>
    <h1>かごいっぱいのゆめ</h1>
    <h3>金銭取引が絶対に発生しない<br>
        いくらでも、どんなものでも購入できる(気分になれる)ECサイトです</h3>
    <%if(hs.getAttribute("userdata") == null) {%>
        <%--ログインページ・新規登録--%>
        <%=kh.login()%><br>
        <%=kh.register()%>
    <% }else { %>
    <%--ユーザー情報・ログアウト・カート--%>
        <p>ようこそ <a href="MyData"><%=ud.getName()%></a> さん！</p>
        <%=kh.logout()%><br>
        <%=kh.cart()%>
    <% } %>
    <HR>
    <br>
    <form action="Search" method="GET">
        キーワード検索：<input type="text" name="query">
        <input type="submit" name="btnSubmit" value="検索">
    </form>
</body>
</html>