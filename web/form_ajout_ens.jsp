<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Enseignant</title>
        <fieldset>
             <legend>
                 <strong>Ajouter un Enseignant</strong>
             </legend>
           
            <form method="post" action="ajouter_ens.jsp" name="form1" id="form1">
              <center> <table> 
                      <tr><td><label>CIN :</label></td><td><input type="text" id="1" name="1" ></td></tr><br>
                    <tr><td><label>PPR :</label></td><td><input type="text" id="2" name="2" ></td></tr>
                    <tr><td> <label>NOM :</label></td><td><input type="text" id="3" name="3" ></td></tr>
                    <tr><td>  <label>PRENOM :</label></td><td><input type="text" id="4" name="4" ></td></tr>
                    <tr><td>  <label>EMAIL :</label></td><td><input type="email" id="5" name="5" ></td></tr>
                    <tr><td> <label>Tel :</label></td><td><input type="tel" id="6" name="6" ></td></tr>
                    <tr><td> <label for="ka">filiere : </label></td><td><center><select name="role" id="role"><option value="GI">GI</option><option value="IGI">IGI</option><option value="MEM">MEM</option></select><br><br></center></td></tr>
                    <tr>  <td><center> <input type="submit" value="Ajouter" onclick="if(window.confirm(' voulez vous vraiment ajouter cet  utilisateur ?')) return true; else return false;" ></center></td><td> <input type="reset" value="Vider"></td><td colspan="10"><a href="accueil_admin.jsp"><input type="button" value="Page D'accueil"></a></td></tr></center>
            
                </table></center></form>
        </fieldset>
           
   
           
    
    </body>
</html>

