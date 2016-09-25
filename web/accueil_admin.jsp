<%@ include file="connexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         
        <style> fieldset {  background: moccasin; border: solid;  } 
        #ge { background-color: bisque;} #gu { background-color: bisque;}
        
        
        </style>
        <script type="text/javascript" src="controle.js" ></script>
        <script type="text/javascript" src="jquery-1.8.2.js" ></script>
        
     
        <script>
                $(document).ready(function()  { r(); rech_ens();  mod(); maf();
             } ); 
             function maf() {
$(".suppa").click(function() {  var a=$(this).attr("id");  g_s(a);  });
}
function g_s(x) {
    $.ajax({
        url: 'Fsupp.jsp',
        Type: 'POST',
        dataType: 'html',
        data:"i="+x,
        success: function(reponse) { $("#r").html(reponse); },
        error: function() { alert("decnxion"); } 
    });
}
function mod() { $(".modif").click(function() {   fairMod($(this).attr("id"));   }); }
function fairMod(x)  {
      $("#tel").show();
    $.ajax({ 
  url:'modif.jsp',
  type: 'POST',
  dataType: 'html',
  data:'id='+x,
  success:function(reponse) {    $("#tel").hide(); $("#modification").html(reponse); }, 
  error: function() { alert("deconnexion"); } 
    });   
}

   function rech_ens() {
               $("#cherche_ens").keyup(function() {  gens($("#cherche_ens").val()); } );
               $("#cherche_role_ens").keyup(function() { kens($("#cherche_role_ens").val()); } );
    }
            function gens(s)  {
             $.ajax({
                   url: 'ens1.jsp' ,
                   type: "POST",
                   dataType: 'html',
                   data: "id="+s,
       
                    error:function () { alert("deconexion"); },
                    success: function (reponse) {  $("#r").html(reponse);  } } ); } 
            function kens(s)  {
             $.ajax({
                   url: 'ens2.jsp' ,
                   type: "POST",
                   dataType: 'html',
                   data: "id="+s,
       
                    error:function () { alert("deconexion"); },
                    success: function (reponse) {  $("#r").html(reponse);  } } ); } 
                function r() {
               $("#cherche").keyup(function() {  g($("#cherche").val()); } );
               $("#cherche_role").keyup(function() { k($("#cherche_role").val()); } );
    }
            function g(s)  {
             $.ajax({
                   url: 'e.jsp' ,
                   type: "POST",
                   dataType: 'html',
                   data: "id="+s,
       
                    error:function () { alert("deconexion"); },
                    success: function (reponse) {  $("#rbi").html(reponse);  } } ); } 
            function k(s)  {
             $.ajax({
                   url: 'a.jsp' ,
                   type: "POST",
                   dataType: 'html',
                   data: "id="+s,
       
                    error:function () { alert("deconexion"); },
                    success: function (reponse) {  $("#rbi").html(reponse);  } } ); } 
        </script>
        <style>
            #dec { background: coral;}  #sup { background: coral;}  #mod { background: chartreuse;}  #jaja { background: chartreuse;}
            #eff { background: chartreuse; }
            span { color: brown;}
            table {
                background: bottom;
                border: darkorange;  }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ACCUEIL_ADMIN</title>
    </head>
    <body>
        <fieldset id="ge"><legend>Gestion Des Enseignant</legend>
               <center><form action="form_ajout_ens.jsp"><label for="jaja"><strong><em>Vous Pouvez <span>Ajouter</span> un noveau Enseignant en click :  </em></strong></label><input type="submit" id="jaja" value="=> .IcI. <="></form></center><br><br>
    <center><fieldset><br>|.________<label for="rech_par_login_ens">Recherche par nom :</label><input type="text" id="cherche_ens" placeholder="recherche ici"  /> <label for="cherche_filiere_ens"> .....|_|..... Recherche par Filiere :</label><input type="text" id="cherche_role_ens" placeholder="recherche ici"  />________.| <br> <br></fieldset> </center></<br><br><br>
       <% Statement st=cn.createStatement();
     ResultSet      res=st.executeQuery("select * from enseignant");
        %>
    <div id="r">
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
          } %> </table> </div>  <div id="tel" style="display: none;"><center><img src="2.gif"></center></div>
     <div id="modification"></div>
    <%

           }

          
       %>
   
    <br></fieldset>
       <br><br><br><br>
       <fieldset id="gu"><legend>Gestion Des Utilisateurs</legend>
       
    <center><form action="form_ajout.jsp"><label for="jaja"><strong><em>Vous Pouvez <span>Ajouter</span> un noveau utilisateur en click :  </em></strong></label><input type="submit" id="jaja" value="=> .IcI. <="></form></center><br><br>
    <center><form action="form_supp_1.jsp"><label for="jaja"><strong><em>Vous Pouvez <span>Rechercher</span> un utilisateur par Id et le supprimer en click :  </em></strong></label><input type="submit" id="jaja" value="=> .IcI. <="></form></center><br><br>
    <center><fieldset><br>|.________<label for="rech_par_login">Recherche par Login :</label><input type="text" id="cherche" placeholder="recherche ici"  /> <label for="cherche_role"> .....|_|..... Recherche par Role :</label><input type="text" id="cherche_role" placeholder="recherche ici"  />________.| <br> <br></fieldset> </center></<br><br><br>
       <% st=cn.createStatement();
      res=st.executeQuery("select * from admin");
        %>
    <div id="rbi">
    <table width="100%"  border="2"> 
           <tr><th>Id :</th><th>Login :</th><th>Password :</th><th>Rôle :</th><th colspan="2"><center>Gerer vos utilisateurs</center></th></tr>
           <% if(! res.next()) { %> <tr><td colspan="6"><center>La liste est vide </center></td></tr> <%  } else {
          res.beforeFirst(); 
          while(res.next()) {
           %><tr><td><center><% out.print(res.getInt("id")); %> </center></td>
               <td><center><% out.print(res.getString("login")); %> </center></td>
       <td><center><% out.print(res.getString("password")); %> </center></td>
       <td><center><%=res.getString("role")%> </center></td>
               <td>
                   <a href="verify1.jsp?i=<%=res.getInt("id")%>"><center><input  onclick="if(window.confirm(' voulez vous vraiment supprimer cet  utilisateur ?')) return true; else return false;"  type="button" id="sup" value="Supprimer"></center></a>
               </td>
                <td>
                    <a href="modifier.jsp?i=<%=res.getInt("id")%>"><center><input type="button" id="mod" value="Modifier"></center></a>
               </td>
           </tr>
           <%   
          } %> </table> </div><%

           }

          
       %>
    
    <center><form action="recherche.jsp" method="post"> Rechercher Par   : |__<input type="checkbox" id="role" name="role" value="admin">Admin  __||__<input type="checkbox" id="role" name="role" value="etudiant">Etudiant __||__<input type="checkbox" id="role" name="role" value="enseignant">Enseignant__| <br>
            <center><input type="submit" id="eff" value="_.Efféctué._" ></center></form></center><br>
            
              
        <center><a href="index.jsp" title="se deconnecter"><input type="button" value="Se Deconecter" id="dec"></a></center>
        </fieldset></body>
</html>
