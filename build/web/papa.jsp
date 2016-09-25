<%-- 
    Document   : index
    Created on : 13 févr. 2015, 22:40:13
    Author     : Issam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <Meta charset="utf-8">
        <title>
            BienVenue Chez Nous !
        </title>
        
        <style>
            body {
                background-color: burlywood;
                
            }
        </style>
    </head>
    <body>
        <fieldset>
             <legend>
                 <strong>Connexion</strong>
             </legend>
            <center>
            <table>
            <form method="post" action="auth.jsp">
                <tr><td><label for="log">Login :</label></td><td><input type="text" id="log" name="login" placeholder="entrez login ici"></td><br><br>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr><td><label for="lo">Passe : </label></td><td><input type="password" id="lo" name="password" placeholder="entrez mot de pass ici"></td><br><br>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr><td rowsspan="2"><label for="ka">Rôle : </label></td><td><select name="role" id="ka"><option value="admin">Admin</option><optgroup label="simple user"><option value="etudiant">Etudiant</option><option value="enseignant">Enseignant</option></optgroup></select></td></td><br><br>
               <tr><td></td><td></td></tr>
               <tr><td></td><td></td></tr>
               <tr><td></td><td></td></tr>
               <tr><td> <input type="submit" value="Connecter" > </td><td><center><input  type="reset" value="Vider"></center></td>
            </form>
            </table>
             </center>  </td><br><br></td><br><br>
        </fieldset>
            
    
    </body>
</html>
