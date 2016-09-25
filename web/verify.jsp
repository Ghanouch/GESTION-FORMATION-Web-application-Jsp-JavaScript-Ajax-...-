<%-- 
    Document   : verify
    Created on : 16 févr. 2015, 20:01:03
    Author     : Issam
--%>
<%@ include file="connexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
if(request.getParameter("login").length()==0) { %> <jsp:forward page="form_supp.jsp" /> <% } %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CONFIRMATION</title>
        <style>
            .pa {
                font-size : 190%;
            }
        </style>
    </head>
    <body>
      
    <center><h1><strong>Voulez Vous Vraiment Supprimer ?</strong></h1></center>
    <br><br><br><br><br>
    <form method="post" action="confirmation.jsp">
            <center> <table>
                <tr>
                    <td><input name="conf" class="pa" type="submit" value="Oui"></td>
                    <td>___________</td><td>___________</td><td>___________</td>
                    <td><input name="conf" class="pa"  type="submit" value="Non"></td>
                    
                </tr>
                <tr><td>
                   <input type="text" name="ide"  style="display: none"  value="<%=request.getParameter("idk")%>"> 
                    </td></tr>
                </table></center>
        </form>
        
            
    </body>
</html>
