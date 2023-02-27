<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<%
  String username = request.getParameter("username");
  String passwd = request.getParameter("password");
  String email = request.getParameter("email");
  String choose = request.getParameter("choose");
  System.out.println(username);
  System.out.println(passwd);
  System.out.println(choose);
  try {
    if(tryAdd(username, passwd, email, choose)) {
      response.sendRedirect("register_success.jsp");
    } else {
      response.sendRedirect("register_failed.jsp");
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

  public boolean tryAdd(String userName, String passwd, String email, String choose) throws ClassNotFoundException {
    Connection connection = null;
    Statement statement = null;
    System.out.println("ok1");
    try {
      Class.forName(JDBC_DRIVER);
      System.out.println("正在连接数据库...");

      connection = DriverManager.getConnection(DB_URL, User, pwd);

      System.out.println("实例化Statement对象...");
      statement = connection.createStatement();
      String sql = "insert into user(username, mail, passwd, leixing);\n" +
              "values (\"" + userName + "\", \"" +
              email + "\", \" " + passwd + "\", '" + choose +"');";
      statement.executeUpdate(sql);
      statement.close();
      connection.close();
      return true;

    } catch (SQLException e) {
      throw new RuntimeException(e);
    }
  }
%>
