<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add User</title>
</head>
<body>
<form:form method="post" action="/addUser" modelAttribute="user">
    <div>Регистрация</div>
    <span>nickName</span>
    <input type="text" name="nickName" placeholder="NickName">
    <span>Email</span>
    <input type="text" name="email" placeholder="Email">
    <span>Password</span>
    <input type="text" name="password" placeholder="Password">

    <input type="submit" value="Добавить пользователя">
</form:form>
</body>
</html>
