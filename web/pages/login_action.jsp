<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<%
  String username = request.getParameter("username");
  String passwd = request.getParameter("password");
  System.out.println(username);
  System.out.println(passwd);
  try {
    if(check(username, passwd) != null) {
      response.sendRedirect("welcome.jsp");
    } else {
      response.sendRedirect("login_failed.jsp");
    }
  } catch (ClassNotFoundException e) {
    throw new RuntimeException(e);
  }
//  if(username == null) {
//    response.sendRedirect("login_failed.jsp");
//  }
%>

<%!

  static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
  static final String DB_URL = "jdbc:mysql://localhost:3306/zhanghao" +
          "?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
  static final String User = "root";
  static final String pwd = "password";
  public String check(String userName, String passwd) throws ClassNotFoundException {
    Connection connection = null;
    Statement statement = null;
    System.out.println("ok1");
    try {
      Class.forName(JDBC_DRIVER);
      System.out.println("正在连接数据库...");

      connection = DriverManager.getConnection(DB_URL, User, pwd);

      System.out.println("实例化Statement对象...");
      statement = connection.createStatement();
      String sql = "SELECT username, passwd, mail FROM user";
      ResultSet res = statement.executeQuery(sql);

      boolean find = false;
      String string = null;
      while(res.next()) {
        String _name = res.getString("username");
        String _password = res.getString("passwd");
        String _mail = res.getString("mail");

        if(_name.equals(userName) && _password.equals(passwd)) {
          find = true;
          string = _mail;
          break;
        }
      }

      res.close();
      statement.close();
      connection.close();
      if(find) {
        System.out.println("找到目标");
        return string;
      }

      return null;

    } catch (SQLException e) {
      throw new RuntimeException(e);
    }

  }
%>
