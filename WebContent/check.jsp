<%@page import="java.sql.*" %>
<html>
<body>
<%
String usid = request.getParameter("uid");
String passw = request.getParameter("pass");

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/library","root","admin");
    PreparedStatement ps = cn.prepareStatement("select * from login where userid=? and password=?");
    ps.setString(1,usid);
    ps.setString(2,passw);
    ResultSet rst = ps.executeQuery();
    if(rst.next())
    {
    	%>
    	<jsp:include page="book.jsp"></jsp:include>
    	<h1>WELCOME:<%=rst.getString(1) %></h1>
    	
    	<%
    	
    }
    else
    {
    	%>
    	<jsp:include page="index.jsp"></jsp:include>
    	<h2>WRONG ID OR PASSWORD</h2>
    	
    	<%
    	
    }
    
       	
}
catch(Exception ec)
{
	System.out.println(ec);
}
%>
</body>
</html>