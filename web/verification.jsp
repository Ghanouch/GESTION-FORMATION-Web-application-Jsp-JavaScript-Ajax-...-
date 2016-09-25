<%-- 
    Document   : form_supp
    Created on : 16 févr. 2015, 17:14:17
    Author     : Issam
--%>
<%@ include file="connexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        #ll { background-color: red; }
    </style>
    <head>
       
        <title>Gestion user</title>
    </head>
    <body>
        <fieldset>
            <legend>
                [_.The.-|-.ID._]
            </legend>
                <br><br><br>
                <center> <table>
                    <tr>
                        <td> ID : </td>
                       
                        <td colspan="2"><center><label><%=request.getParameter("option")%></label></center>
                        </td>
                    </tr>
                    
                    </table></center> <br> </fieldset>
                   <fieldset>    <%  
                                try { PreparedStatement pr=cn.prepareStatement("select * from admin where id=?");  
                                   pr.setString(1,request.getParameter("option"));
                          ResultSet res=pr.executeQuery();   
                          res.next(); %> <legend>
                [_.Modification.-|-.Suppression._]
                                </legend>
                            <center> <form class="papa" action="verify.jsp"><center><table> 
                    <tr>
                        <td>Login :</td>
                        
                        <td colspan="2"><input type="text" name="login" value="<%=res.getString("login")%>"></td>
                    </tr><br><br>
                    <tr><td><input type="text" name="idk"  style="display: none" value="<%=res.getString("id")%>"></td>
                    <tr>
                         <td>Pass :</td>
                         <td colspan="2"><input type="text" name="password" value="<%=res.getString("password")%>"></td>
                    </tr> 
                       <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                    <tr>
                        <td></td>
                        <td colspan="3"><center><input  class="dd" type="submit" id="ll" name="extraire" value="Supprimer"></center></td>
                     
                    </tr>
                    <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr><br><br>
                           
                            </table> </center> 
                         <%  } catch(Exception e) { out.println(e.getMessage()); } %> </form>
             </center>
                        <br>
        </fieldset>  
                             
            
    </body>
</html>
