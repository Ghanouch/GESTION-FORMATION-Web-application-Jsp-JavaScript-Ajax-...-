<%@ include file="connexion.jsp" %>
<%
try {
  String login=request.getParameter("login");
String password=request.getParameter("password");
String role=request.getParameter("role");
if ((login.length()<2) || (password.length()<2)) { %> <jsp:forward page="erreur.jsp" /> <% } else {
PreparedStatement pr=cn.prepareStatement("insert into admin values (null,?,?,?)");
pr.setString(1,login);
pr.setString(2,password);
pr.setString(3,role);
pr.executeUpdate(); } }
catch(Exception e ) { out.println(e.getMessage()); }
%> <jsp:forward page="accueil_admin.jsp" />








    