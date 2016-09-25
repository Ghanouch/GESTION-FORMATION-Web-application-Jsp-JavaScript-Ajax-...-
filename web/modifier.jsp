<%@ include file="connexion.jsp" %>

<%
ResultSet res=null;
try{
  String id_l=request.getParameter("i");
  PreparedStatement pr=cn.prepareStatement("select * from admin where id=?");
  pr.setString(1,id_l);
  res=pr.executeQuery();
  res.next();
  }
catch( Exception e) { out.println(e.getMessage()); }
  %>
  <html>
      <head>
      </head>
      <title>Modification !</title>
      <body>
            <fieldset>
             <legend>
                 <strong>Modification</strong>
             </legend>
            <center>
            <table>
                <form method="post" action="ajout_succes.jsp?i=<%=res.getInt("id")%>">
                <tr><td><label for="log">Login :</label></td><td colspan="2"><center><input type="text" id="log" name="login" value="<%=res.getString("login")%>"</center></td><br><br>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr><td><label for="lo">Passe : </label></td><td colspan="2"><input type="text" id="lo" name="password" value="<%=res.getString("password")%>"></td><br><br>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr><td rowsspan="2">Admin   :<br>Etudiant :<br>Enseignant :</td><td><center><input type="radio" name="role" value="admin" id="ka"><br><input type="radio" name="role" value="etudiant" checked ><br><input type="radio" name="role" value="enseignant" ></center></td><br><br>
               <tr><td></td><td></td></tr>
               <tr><td></td><td></td></tr>
               <tr><td></td><td></td></tr>
               <tr><td> <input type="submit" value="Modifier" > </td><td colspan="2"><center><input  type="reset" value="Retour"></center></td><td><center><a href="accueil_admin.jsp"><input type="button" value="Page D'accueil"></a></center></td>
            </form>
            </table>
             </center>  </td><br><br></td><br><br>
         
        </fieldset>
          
          
      </body>
  </html>


  