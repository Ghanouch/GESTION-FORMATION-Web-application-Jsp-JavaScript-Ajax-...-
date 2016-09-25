<%@page import="java.sql.PreparedStatement"%>
<%@ include file="connexion.jsp" %>
<%
try {
  
    if ((request.getParameter("1").length()<2) || (request.getParameter("2").length()<2)) { %> <jsp:forward page="erreur.jsp" /> <% } else {
PreparedStatement pr=cn.prepareStatement("INSERT INTO `enseignant`(`cin`, `ppr`, `nom`, `prenom`, `Email`, `Tel`, `filiere`) VALUES(?,?,?,?,?,?,?)");
pr.setString(1,request.getParameter("1"));
pr.setString(2,request.getParameter("2"));
pr.setString(3,request.getParameter("3"));
pr.setString(4,request.getParameter("4"));
pr.setString(5,request.getParameter("5"));
pr.setString(6,request.getParameter("6"));
pr.setString(7,request.getParameter("role"));

pr.executeUpdate(); } }
catch(Exception e ) { out.println(e.getMessage()); }
%> 
 <jsp:forward page="accueil_admin.jsp" />







    