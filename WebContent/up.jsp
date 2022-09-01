<%@page import="java.sql.*" %>
<html>
<body>
<%
String id = request.getParameter("idd");
String n = request.getParameter("nam");
String q = request.getParameter("quan");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/library","root","12345");
    PreparedStatement ps = cn.prepareStatement("update  employee set bookname=? , quantity=? where id=?");
    ps.setString(1,n);
    ps.setString(2,q);
    ps.setString(3,id);
    ps.executeUpdate();
    
    
      	
}
catch(Exception ec)
{
	System.out.println(ec);
}
%>

		<jsp:include page="book.jsp"></jsp:include>
		<h4>RECORD UPDATED SUCCESSFULLY</h4>
		



</body>
</html>