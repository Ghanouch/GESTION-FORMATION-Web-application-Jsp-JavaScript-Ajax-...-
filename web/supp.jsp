<%@ include file="connexion.jsp" %>
            
<%
try {
String res=request.getParameter("ide");
if(request.getParameter("conf").equalsIgnoreCase("non")) { %> <jsp:forward page="accueil_admin.jsp" /> <% }
    else { 
    PreparedStatement pr=cn.prepareStatement("delete from admin where id=?");
    pr.setString(1,request.getParameter("ide"));
    pr.executeUpdate(); 
    %> <jsp:forward page="accueil_admin.jsp" /> <% }
}
catch(Exception e) { out.print(e.getMessage()); }
    %>   <jsp:forward page="accueil_admin.jsp" /> 


    
                
