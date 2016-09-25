<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <Meta charset="utf-8">
        <title>
            ajouter un noveau utilisateur !
        </title>
    </head>
    <body>
        <script>
            function hunder() {

      /*        var log1=document.getElementById('log1').value;
              var lo1=document.getElementById('lo1').value;
              var ka1=document.getElementById('ka1').value;
              var log2=document.getElementById('log2').value;
              var lo2=document.getElementById('lo2').value;
              var ka2=document.getElementById('ka2').value;
              
            
              document.getElementById('area').value="form 1 :"+log1+" "+lo1+" "+ka1+ " form 2 :"+log2+" "+lo2+" "+ka2;*/
           
         ref=document.form2;
	result=false;

		for (i=0; i<ref.elements.length; i++)
	{
		if (ref.elements[i].checked) { result=true; break; } } 
              if(result) 
                
                  return true;
              else { alert("chose one "); return false; }
              
          }
           
            
        </script>
        <fieldset>
        <fieldset>
             <legend>
                 <strong>Ajout</strong>
             </legend>
           
            <form method="post" action="ajouter.jsp" name="form1" id="form1">
               
            <center><label for="log">Login :</label><input type="text" id="log1" name="login" placeholder="entrez login ici"><br><br>
                <label for="lo">Passe : </label><input type="text" id="lo1" name="password" placeholder="entrez mot de pass ici"><br><br>
                <label for="ka">Rôle : </label><select name="role" id="ka1"><option value="admin">Admin</option><optgroup label="simple user"><option value="etudiant">Etudiant</option><option value="enseignant">Enseignant</option></optgroup></select><br><br>
                <input type="submit" value="Ajouter" onclick="if(window.confirm(' voulez vous vraiment ajouter cet  utilisateur ?')) return true; else return false;" > <input type="reset" value="Vider"> <a href="accueil_admin.jsp"><input type="button" value="Page D'accueil"></a></center>
            
            </form>
        </fieldset>
           
            </fieldset>
           
    
    </body>
</html>

