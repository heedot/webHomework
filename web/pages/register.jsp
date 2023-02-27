<%--
  Created by IntelliJ IDEA.
  User: bwm
  Date: 2023/2/26
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册界面</title>
</head>
<body>
<form name="input" action="register_action.jsp" method="post">
    <table>
        <tr>
            <td colspan="10" align="center">注册窗口</td>
        </tr>
        <tr>
            <td colspan="10" align="center">
                <input checked type="radio" name="choose" value="customer"> 用户
                <input type="radio" name="choose" value="shop"> 商家
            </td>
        </tr>
        <tr>
            <td>邮箱:</td>
            <td><input type="email" name="mail"></td>
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
            <td colspan="10" align="center"><input type="submit" value="注册" /></td>
        </tr>
    </table>
</form>
</body>
</html>
