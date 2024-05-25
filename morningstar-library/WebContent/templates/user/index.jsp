<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>

<%
    RequestDispatcher dispatcher = request.getRequestDispatcher("ViewBook");
    dispatcher.forward(request, response);
%>
