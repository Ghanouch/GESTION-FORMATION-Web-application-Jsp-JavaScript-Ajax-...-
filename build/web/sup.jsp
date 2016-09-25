<%@page import="java.sql.PreparedStatement"%>
<%@ include file="connexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
try {

    PreparedStatement pr=cn.prepareStatement("delete from admin where id=?");
    pr.setString(1,request.getParameter("id"));
    pr.executeUpdate(); 
    Statement st=cn.createStatement();
        ResultSet res=st.executeQuery("select * from admin");
        %>
    <div id="dive">
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
           </table> </div> <% } } } catch(Exception e) { out.println(e.getMessage()); } %>