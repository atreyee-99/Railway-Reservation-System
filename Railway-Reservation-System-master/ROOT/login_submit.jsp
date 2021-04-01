<%@ page import ="java.sql.*" %>
<%
    String user_id = request.getParameter("user_id");   
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    String 
    Connection con = DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/74zzj5rKFS", "74zzj5rKFS", "Q6utbgFYZv");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("SELECT * from user where user_id='" + user_id + "' and password='" + password + "'");
    if (rs.next()) 
    {
        session.setAttribute("user_id", rs.getString("user_id"));
        response.sendRedirect("home.jsp");
    } 
    else 
    {
        out.println("Invalid password <a href='index.jsp'>Try again</a>");
    }
%>
