<%@ include file="connexion.jsp" %>
<html>
    <head>
        <style>
            table {
                background: bottom;
                border: darkorange;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ACCUEIL_USER</title>
    </head>
    <body>
        <h1><em><center> Voila la liste des utilisateurs  :</center></em></h1><br>
   
       <% Statement st=cn.createStatement();
        ResultSet res=st.executeQuery("select * from admin ");
        %>
       <table width="100%" border="2"> 
           <tr><th>Id :</th><th>Login :</th><th>Rôle :</th></tr>
           <% if(! res.next()) { %> <tr><td colspan="3"><center>La liste est vide </center></td></tr> <%  } else {
          res.beforeFirst();
          while(res.next()) {
           %><tr><td><center><% out.print(res.getInt("id")); %> </center></td>
               <td><center><% out.print(res.getString("login")); %> </center></td>
      
       <td><center><%=res.getString("role")%> </center></td>
   
           </tr>
           <%   
           } %> </table> <%

           }

          
       %>
    </body>
    <footer><center> Rechercher Par   : <form action="recherche_user.jsp" method="post">|__<input type="checkbox" name="role" value="admin">Admin  __||__<input type="checkbox" name="role" value="etudiant">Etudiant __||__<input type="checkbox" name="role" value="enseignant">Enseignant__| <br>
                <center><input type="submit" value="_.Efféctué._" ></center></form></center>
    </footer>
</html>