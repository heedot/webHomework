<%--
  Created by IntelliJ IDEA.
  User: bwm
  Date: 2023/2/22
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>网站登录/注册</title>
</head>
<body>
<form name="input" action="login_action.jsp" method="get">
    <table>
        <tr>
            <td colspan="10" align="center">登录窗口</td>
        </tr>
        <tr>
            <td colspan="10" align="center">
                <input checked type="radio" name="choose" value="用户"> 用户
                <input type="radio" name="choose" value="商家"> 商家
            </td>
        </tr>
        <tr>
            <td>用户名:</td>
            <td><input type="text" name="username" /></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input type="password" name="password" /></td>
        </tr>
        <tr>
            <td colspan="10" align="center"><input type="submit" value="登录" />  <a href="register.jsp" target="_blank">注册</a></td>
        </tr>
    </table>
</form>

</body>
</html>

