<%@include file="connexion.jsp" %>
 <script src="rida.js" type="text/javascript" ></script>
        <script src="jquery-1.8.2.js" type="text/javascript" ></script>
                   <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<fieldset>    <%  
                                try { PreparedStatement pr=cn.prepareStatement("select * from admin where id=?");  
                                   pr.setString(1,request.getParameter("id"));
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
                        <td>   <a href="accueil_admin.jsp"><imput type="button" value="Page D'accueil"/></a></td>
                        <td colspan="3"><center><input  class="dd" type="submit" id="ll" name="extraire" value="Supprimer"></center></td>
                     
                    </tr>
                    <tr><td colspan="3">   <a href="accueil_admin.jsp"><imput type="button" value="Page D'accueil"/></a></td></tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr><br><br>
                           
                            </table> </center> 
                         <%  } catch(Exception e) { out.println(e.getMessage()); } %> </form>
             </center>
                        <br>
        </fieldset>  