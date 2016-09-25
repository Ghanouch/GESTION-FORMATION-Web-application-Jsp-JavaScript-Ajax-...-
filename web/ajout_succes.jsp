<%@ include file="connexion.jsp" %>
<% 
try {
String login=request.getParameter("login");
String passe=request.getParameter("password");
String role=request.getParameter("role");
String id=request.getParameter("i");
PreparedStatement pr=cn.prepareStatement("Update admin set login=?,password=?, role=? where id=?");
pr.setString(1,login);
pr.setString(2,passe);
pr.setString(3,role);
pr.setString(4,id);
pr.executeUpdate();
%> <jsp:forward page="accueil_admin.jsp" /> <%
} catch( Exception e) { out.println(e.getMessage()); }

%>