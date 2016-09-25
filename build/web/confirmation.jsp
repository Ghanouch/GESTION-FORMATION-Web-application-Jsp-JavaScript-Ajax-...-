<%-- 
    Document   : confirmation
    Created on : 16 févr. 2015, 20:09:48
    Author     : Issam
--%>
<%@ include file="connexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
try {
    if(request.getParameter("conf").equalsIgnoreCase("non")) { %> <jsp:forward page="form_supp_1.jsp" /> <% }
    else { 
    PreparedStatement pr=cn.prepareStatement("delete from admin where id=?");
    pr.setString(1,request.getParameter("ide"));
    pr.executeUpdate(); 
    %> <jsp:forward page="accueil_admin.jsp" /> <% }
    
    
    
    
    
    
    }

catch(Exception e) { out.println(e.getMessage()); }

%>