<%@page import="java.util.Collections"%>
<%@page import="com.akhilesh.webapp.dao.impl.CustomerDAOImpl"%>
<%@page import="com.akhilesh.webapp.dao.CustomerDAO"%>
<%@page import="com.akhilesh.webapp.entity.Customer"%>
<%@include file="shared/header.jsp" %>
<%
    CustomerDAO customerDAO = new CustomerDAOImpl();
   
%>
<div>
    <a href="addCustomer.jsp" class="button">Add Customer</a>
</div>
<table border="1px solid black" width="100%">
    <tr>
        <th>Id</th>
        <th>First name</th>
        <th>Last Name</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    <%
        for (Customer c : customerDAO.getAll()) {
    %>
    <tr>
        <td style="text-align: left"><%=c.getId()%></td>
        <td><%=c.getFirstName()%></td>
        <td><%=c.getLastName()%></td>
        <td><%=c.isStatus()%></td>
        <td><a href="editCustomer.jsp?id=<%=c.getId()%>">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp; 
            <a href="deleteCustomer.jsp?id=<%=c.getId()%>">Delete</a>&nbsp;&nbsp;&nbsp;&nbsp; 
    </tr>
    <%
        }
    %>
</table>
<%@include file="shared/footer.jsp" %>

