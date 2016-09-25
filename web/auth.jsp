<%@ include file="connexion.jsp" %>
<%@page import="java.sql.*"%>
<% 
String login=request.getParameter("login");
String password=request.getParameter("password");
//String role=request.getParameter("role");
PreparedStatement pr=cn.prepareStatement("select * from admin where login=? and password=?");
pr.setString(1,login);
pr.setString(2,password);
//pr.setString(3,role);
ResultSet res=pr.executeQuery();


if(res.next()) { 
    if(res.getString("role").equals("admin")) {  
    %> <jsp:forward page="accueil_admin.jsp"/><% }
else {  %> <jsp:forward page="accueil_user.jsp"/><% } }
    else { 
        
        %>  <jsp:forward page="erreur1.jsp" /><% }


%>