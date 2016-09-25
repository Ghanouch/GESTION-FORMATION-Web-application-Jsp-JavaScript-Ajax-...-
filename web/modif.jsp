<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ include file="connexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <script type="text/javascript" src="jquery-1.8.2.js" ></script>
        <% 
        PreparedStatement pr=cn.prepareStatement("select * from enseignant where cin=?;");
        pr.setString(1,request.getParameter("id"));
        ResultSet res=pr.executeQuery();
        res.next();

        %>
        <script> $("document").ready(function(){
           Valider(); });

        function Valider() { 
    $("#vapp").click(function() { 
             var a=document.getElementById("1").value;
            var b=document.getElementById("2").value;
            var c=document.getElementById("3").value;
            var d=document.getElementById("4").value;
            var e=document.getElementById("5").value;
            var f=document.getElementById("6").value;
            var g=document.getElementById("role").value;
             if((a.length===0) || (b.length===0)) { alert("vous devez remplir tous les champs");  }
             else {passer(a,b,c,d,e,f,g);  $(".hide").hide();   } 
            
               

    } );
}
   function passer(a,b,c,d,e,f,g) {
    $.ajax({
        url:'refresh.jsp',
        Type: 'POST',
        dataType: 'html',
        data:"cin="+a+"&ppr="+b+"&nom="+c+"&prenom="+d+"&email="+e+"&tel="+f+"&filiere="+g,
        success: function(a) { $("#r").html(a); },
        error: function() { alert("Deconnexion"); }  
    });
  
    
}             
        
    </script>
        <fieldset class="hide" >
             <legend>
                 <strong>Modifier un Enseignant</strong>
             </legend>
           
            
              <center> <table> 
                      <tr><td><label>CIN :</label></td><td><input type="text" id="1" name="1" value="<%=res.getString("cin")%>" ></td></tr><br>
                    <tr><td><label>PPR :</label></td><td><input type="text" id="2" name="2" value="<%=res.getString("ppr")%>"></td></tr>
                    <tr><td> <label>NOM :</label></td><td><input type="text" id="3" name="3" value="<%=res.getString("nom")%>"></td></tr>
                    <tr><td>  <label>PRENOM :</label></td><td><input type="text" id="4" name="4" value="<%=res.getString("prenom")%>"></td></tr>
                    <tr><td>  <label>EMAIL :</label></td><td><input type="email" id="5" name="5" value="<%=res.getString("email")%>"></td></tr>
                    <tr><td> <label>Tel :</label></td><td><input type="tel" id="6" name="6" value="<%=res.getString("tel")%>"></td></tr>
                    <tr><td> <label for="ka">filiere : </label></td><td><center><select name="role" id="role"><option value="GI">GI</option><option value="IGI">IGI</option><option value="MEM">MEM</option></select><br><br></center></td></tr>
                    <tr>  <td colspan="3"><center> <input type="button" value="Modifier" id="vapp" class="vl" onclick="if(window.confirm(' voulez vous vraiment modifier cet  utilisateur ?'))  return true; else return false;" ></center></td></tr>
            
                </table></center>
        </fieldset>

