<%@page import="java.sql.*" %>
<html>
<body>
<%
String id = request.getParameter("usname");
String nam = request.getParameter("uspass");

try
    {
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/library","root","12345");
        PreparedStatement ps = cn.prepareStatement("insert into login values(?,?)");
        ps.setString(1,id);
        ps.setString(2,nam);
        
        ps.executeUpdate();
        
        
          	
    }
    catch(Exception ec)
    {
    	System.out.println(ec);
    }
    %>
    <jsp:include page="index.jsp"></jsp:include>
    <h4>REGISTERED SUCCESSFULLY</h4>

</body>
</html>