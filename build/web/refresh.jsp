
          <%-- 
    Document   : e
    Created on : 25 févr. 2015, 00:48:49
    Author     : Issam
--%>
<%@ include file="connexion.jsp" %>
<script type="text/javascript" src="controle.js" ></script>
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
       PreparedStatement pr=cn.prepareStatement("update enseignant set ppr=?, nom=?,prenom=?, email=?,tel=?, filiere=? where cin=?;");
          
       pr.setString(7,request.getParameter("cin"));
         pr.setString(1,request.getParameter("ppr"));
           pr.setString(2,request.getParameter("nom"));
              pr.setString(3,request.getParameter("prenom"));
               pr.setString(4,request.getParameter("email"));
                pr.setString(5,request.getParameter("tel"));
                 pr.setString(6,request.getParameter("filiere"));
              pr.executeUpdate();  
    Statement st=cn.createStatement();
    res=st.executeQuery("select * from enseignant ;"); 
    
%> 
    <table width="100%"  border="2"> 
        <tr><th>cin :</th><th>ppr :</th><th>nom :</th><th>prenom :</th><th>email :</th><th>tel :</th><th>filiere :</th><th colspan="2"><center>Gerer vos utilisateurs</center></th></tr>
           <% if(! res.next()) { %> <tr><td colspan="9"><center>La liste est vide </center></td></tr> <%  } else {
          res.beforeFirst(); 
          while(res.next()) {
           %><tr><td><center><% out.print(res.getString("cin")); %> </center></td>
               <td><center><% out.print(res.getString("ppr")); %> </center></td>
       <td><center><% out.print(res.getString("nom")); %> </center></td>
       <td><center><%=res.getString("prenom")%> </center></td>
     <td><center><%=res.getString("email")%> </center></td>
     <td><center><%=res.getString("tel")%> </center></td>
     <td><center><%=res.getString("filiere")%> </center></td>
               <td>
               <center>  <a href="#" class="suppa" id="<%=res.getString("cin")%>" ><input  onclick="if(window.confirm(' voulez vous vraiment supprimer cet  utilisateur ?')) return true; else return false;"  type="button"  value="Supprimer" id="sup"></a>
               </center>  </td>
                <td>
                  <a href="#" class="modif" id="<%=res.getString("cin")%>"> <center><input type="button" id="mod" value="Modifier"></center></a>
               </td>
           </tr>
           <%   
          } %> </table>  <% } } catch(Exception e) { out.println(e.getMessage()); }  %>
    </body>
</html>
 