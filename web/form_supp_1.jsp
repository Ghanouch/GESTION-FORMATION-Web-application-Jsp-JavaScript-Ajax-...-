<%-- 
    Document   : form_supp
    Created on : 16 févr. 2015, 17:14:17
    Author     : Issam
--%>
<%@ include file="connexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        
          <script type="text/javascript" src="jquery-1.8.2.js"></script>
     <script type="text/javascript" src="rida.js" ></script>
      
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
            <center>
               
                  
                ID :  <select  name="option"  id="oo"  Onchange="Okey()" class="identifiant" > <%
                          while(res.next()) { %> <option  id="<%=res.getInt("id")%>" > <%=res.getString("id")%> </option> 
                          <%
                          }
                          } 
                          catch(Exception e ) { out.println(e.getMessage()); } 
                          %>  </select> </center>
                     
                 
                       
       </fieldset>
                          <div id="nv_form"></div>
                     
    </body>
</html>
