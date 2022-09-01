<%@ include file="book.jsp" %>
<%@page import="java.sql.*" %>
<html>
<body>
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/library","root","admin");
	Statement st = cn.createStatement();
	ResultSet rst=st.executeQuery("select * from employee");
	%>
	<table border="2px">
	<thead>
	<th>EMPLOYEE ID:</th>
	<th>EMPLOYEE NAME:</th>
	<th>EMPLOYEE SALARY:</th>
	</thead>
	<tbody>
	
	<%while(rst.next() )
	{
		%>
		<tr>
		<td><%= rst.getString(1) %></td>
		<td><%=rst.getString(2) %></td>
		<td><%=rst.getString(3) %></td>
		
		</tr>
	    <%
	}
	%>
	
	</tbody>
	
	</table>
	
	<%
	
	
	 
}
catch(Exception ec)
{
	System.out.println(ec);
}
%>

</body>
</html>