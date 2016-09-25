<%-- 
    Document   : form_supp
    Created on : 16 févr. 2015, 17:14:17
    Author     : Issam
--%>
<%@ include file="connexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .papa {  display : inline-block; }
            .issam {
                font-size: 80%; background-color: chartreuse;
            } #ll { background-color: orangered;}
             #oo { font-size: 100%; width: 150px;
            }
        </style>
           
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion user</title>
    </head>
    <body>
       
        <fieldset>
            <legend>
                [_.Choisir.-|-.ID._]
            </legend>
               <%
                          try {
                          PreparedStatement pr=cn.prepareStatement("select * from admin");  
                          ResultSet res=pr.executeQuery();
                          %> 
            <center> <form id="form"  class="papa" action="verification.jsp" method="post"> <br><br>
                <table>
                    <tr>
                        <td></td>
                        <td colspan="2"><center>
                        <select  name="option" id="oo"> <%
                          while(res.next()) { %> <option value="<%=res.getInt("id")%>" > <%=res.getString("id")%> </option> 
                          <%
                          }
                          } 
                          catch(Exception e ) { out.println(e.getMessage()); } 
                          %>  </select> </center>
                        </td>
                    </tr>
                    <tr><td>   <td colspan="2"><center>
                            <input type="submit" name="extraire" class="issam" value="Appliquer"><br><br>
                        </center> </tr>
                </table> </form></center> </fieldset>
                        <fieldset>  <legend>
                [_.Modification.-|-.Suppression._]
                                </legend>
                            <center> <form class="papa" action="verify.jsp"><center><table> 
                    <tr>
                        <td>Login :</td>
                        <td colspan="2"><input type="text" name="login" value=""></td>
                    </tr><br><br>
                   
                    <tr>
                         <td>Pass :</td>
                         <td colspan="2"><input type="text" name="password" value=""></td>
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
                          </form>
             </center>
                        <br>
        </fieldset>
    </body>
</html>
