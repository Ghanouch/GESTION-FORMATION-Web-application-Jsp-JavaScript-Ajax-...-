<%-- 
    Document   : e
    Created on : 25 févr. 2015, 00:48:49
    Author     : Issam
--%>
<%@ include file="connexion.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <style>
            #dec { background: coral;}  #sup { background: coral;}  #mod { background: chartreuse;}  #jaja { background: chartreuse;}
            #eff { background: chartreuse; }
            span { color: brown;}
            table {
                background: bottom;
                border: darkorange;  }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%  ResultSet res=null;
        try {
    String role=request.getParameter("id");
    Statement st=cn.createStatement();
    
    res=st.executeQuery("select * from admin where role like '%"+role+"%';"); 
    
%> 
  <table width="100%" border="2"> 
           <tr><th>Id :</th><th>Login :</th><th>Password :</th><th>Rôle :</th><th colspan="2"><center>Gerer vos utilisateurs</center></th></tr>
           <% if(! res.next()) { %> <tr><td colspan="5"><center>La liste est vide </center></td></tr> <%  } else {
          res.beforeFirst();
          while(res.next()) {
           %><tr><td><center><% out.print(res.getInt("id")); %> </center></td>
               <td><center><% out.print(res.getString("login")); %> </center></td>
       <td><center><% out.print(res.getString("password")); %> </center></td>
       <td><center><%=res.getString("role")%> </center></td>
               <td>
                   <a href="verify1.jsp?i=<%=res.getInt("id")%>"><center><input type="button" value="Supprimer"  onclick="if(window.confirm(' voulez vous vraiment supprimer cet  utilisateur ?')) return true; else return false;"  id="sup"></center></a>
               </td>
                <td>
                    <a href="modifier.jsp?i=<%=res.getInt("id")%>"><center><input type="button" value="Modifier" id="mod"></center></a>
               </td>
           </tr>
           <%   
          } }   %> </table> <% } catch(Exception e) { out.println(e.getMessage()); }  %>
    </body>
</html>
