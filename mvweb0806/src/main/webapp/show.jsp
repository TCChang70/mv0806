<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %> 
<%@page import="model.*" %>       
<!DOCTYPE html>
<jsp:useBean id="catalog"  scope="request"  class="java.util.ArrayList" />
<%! Iterator itr = null; %>
<%        
    itr = catalog.iterator();
   %>
<html>
    <head></head>
    <body>
	<h1>Listener & Beans</h1></br>
	<span>DukeStore MVC-version</span>
	<table border="1">
	    <tr>
		<th>Code</th><th>Price</th>
		<th>Description</th><th>Quantity</th>
	    </tr>
	    <% while (itr.hasNext()) { 
		Product prod = (Product)itr.next(); %>
		<tr>
		    <td><%=prod.getCode()%></td>
		    <td><%=prod.getPrice()%></td>
		    <td><%=prod.getDescription()%></td>
		    <td><%=prod.getQuantity()%></td>
		</tr>
	    <% } %>
	</table>
    </body>
</html>
