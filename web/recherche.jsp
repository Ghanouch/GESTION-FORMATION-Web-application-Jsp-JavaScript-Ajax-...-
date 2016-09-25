<%@ include file="connexion.jsp" %>
<html><head>
        <style>
           
            table {
                background: khaki;
                border: solid;
                border-color: red;
                
            }
        </style>
  
    </head></html>
<%
try {
String[] role=request.getParameterValues("role");
ResultSet res=null;
if ((role==null) || (role.length==3)) { %> <jsp:forward page="accueil_admin.jsp" /> <% }
if (role.length==1) { 
    PreparedStatement pr=cn.prepareStatement("select * from admin where role=?");
    pr.setString(1,role[0]);
    res=pr.executeQuery(); }
if(role.length==2)  { 
    PreparedStatement pr=cn.prepareStatement("select * from admin where role IN (?,?)");
    pr.setString(1,role[0]);
    pr.setString(2,role[1]);
    res=pr.executeQuery(); }
%>  <h3><em><center>Resultat de recherche :</center><br></em></h3>
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
                   <a href="supp.jsp?i=<%=res.getInt("id")%>"><center><input type="button" value="Supprimer"></center></a>
               </td>
                <td>
                    <a href="modifier.jsp?i=<%=res.getInt("id")%>"><center><input type="button" value="Modifier"></center></a>
               </td>
           </tr>
           <%   
          } } } catch(Exception e) { out.println(e.getMessage()); } %> </table> <br>
<footer><center><a href="accueil_admin.jsp"><input type="button" value="Page D'accueil"></a></center></footer>
        
        
        
        


    

