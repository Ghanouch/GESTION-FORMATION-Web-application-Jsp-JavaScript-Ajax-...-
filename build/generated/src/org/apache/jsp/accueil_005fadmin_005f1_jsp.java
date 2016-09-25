package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class accueil_005fadmin_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/connexion.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
     
    Connection cn=null;
try {
Class.forName("com.mysql.jdbc.Driver");
cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/gestionformation","root",""); 
    
}

catch(Exception e) { out.println(e.getMessage());
 }






      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style> fieldset {  background: moccasin; border: solid;  } </style>\n");
      out.write("        <script type=\"text/javascript\" src=\"jquery-1.8.2.js\" ></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function() { supprimer(); });\n");
      out.write("            function supprimer() {\n");
      out.write("            $(\".supprimere\").click(function() {   var l=$(this).attr(\"id\"); voila(l); } ); }\n");
      out.write("            function voila(s) {\n");
      out.write("                $.ajax({\n");
      out.write("                    data: \"id=\"+s,\n");
      out.write("                    datatype: 'html',\n");
      out.write("                    url: 'sup_ajax.jsp',\n");
      out.write("                    success: function(reponse) {   $(\"#dive1\").html(reponse);    }\n");
      out.write("                    error: function() { alert(\"Vous avez un erreur\"); }\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                });\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    }\n");
      out.write("        </script>\n");
      out.write("     \n");
      out.write("        <script>\n");
      out.write("                $(document).ready(function()  { r(); } );\n");
      out.write("                function r() {\n");
      out.write("               $(\"#cherche\").keyup(function() {  g(document.getElementById('cherche').value); } );\n");
      out.write("               $(\"#cherche_role\").keyup(function() { k(document.getElementById('cherche_role').value); } );\n");
      out.write("    }\n");
      out.write("            function g(s)  {\n");
      out.write("             $.ajax({\n");
      out.write("                   url: 'e.jsp' ,\n");
      out.write("                   type: \"POST\",\n");
      out.write("                   dataType: 'html',\n");
      out.write("                   data: \"id=\"+s,\n");
      out.write("       \n");
      out.write("                    error:function () { alert(\"deconexion\"); },\n");
      out.write("                    success: function (reponse) {  $(\"#rbi\").html(reponse);  } } ); } \n");
      out.write("            function k(s)  {\n");
      out.write("             $.ajax({\n");
      out.write("                   url: 'a.jsp' ,\n");
      out.write("                   type: \"POST\",\n");
      out.write("                   dataType: 'html',\n");
      out.write("                   data: \"id=\"+s,\n");
      out.write("       \n");
      out.write("                    error:function () { alert(\"deconexion\"); },\n");
      out.write("                    success: function (reponse) {  $(\"#rbi\").html(reponse);  } } ); } \n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("            #dec { background: coral;}  #sup { background: coral;}  #mod { background: chartreuse;}  #jaja { background: chartreuse;}\n");
      out.write("            #eff { background: chartreuse; }\n");
      out.write("            span { color: brown;}\n");
      out.write("            table {\n");
      out.write("                background: bottom;\n");
      out.write("                border: darkorange;  }\n");
      out.write("        </style>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>ACCUEIL_ADMIN</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1><em><center> Voila la liste des utilisateurs  :</center></em></h1><br>\n");
      out.write("    <center><form action=\"form_ajout.jsp\"><label for=\"jaja\"><strong><em>Vous Pouvez <span>Ajouter</span> un noveau utilisateur en click :  </em></strong></label><input type=\"submit\" id=\"jaja\" value=\"=> .IcI. <=\"></form></center><br><br>\n");
      out.write("    <center><form action=\"form_supp.jsp\"><label for=\"jaja\"><strong><em>Vous Pouvez <span>Supprimer</span> un noveau utilisateur en click :  </em></strong></label><input type=\"submit\" id=\"jaja\" value=\"=> .IcI. <=\"></form></center><br><br>\n");
      out.write("    <center><fieldset><br>|.________<label for=\"rech_par_login\">Recherche par Login :</label><input type=\"text\" id=\"cherche\" placeholder=\"recherche ici\"  /> <label for=\"cherche_role\"> .....|_|..... Recherche par Role :</label><input type=\"text\" id=\"cherche_role\" placeholder=\"recherche ici\"  />________.| <br> <br></fieldset> </center></<br><br><br>\n");
      out.write("       ");
 Statement st=cn.createStatement();
        ResultSet res=st.executeQuery("select * from admin");
        
      out.write("\n");
      out.write("   \n");
      out.write("    <table width=\"100%\"  border=\"2\"> \n");
      out.write("           <tr><th>Id :</th><th>Login :</th><th>Password :</th><th>Rôle :</th><th colspan=\"2\"><center>Gerer vos utilisateurs</center></th></tr>\n");
      out.write("           ");
 if(! res.next()) { 
      out.write(" <tr><td colspan=\"6\"><center>La liste est vide </center></td></tr> ");
  } else {
          res.beforeFirst(); 
          while(res.next()) {  int k=res.getInt("id");
           
      out.write("<tr><td><center>");
 out.print(res.getInt("id")); 
      out.write(" </center></td>\n");
      out.write("               <td><center>");
 out.print(res.getString("login")); 
      out.write(" </center></td>\n");
      out.write("       <td><center>");
 out.print(res.getString("password")); 
      out.write(" </center></td>\n");
      out.write("       <td><center>");
      out.print(res.getString("role"));
      out.write(" </center></td>\n");
      out.write("               <td>\n");
      out.write("                   <a href=\"#\" class=\"supprimere\" id=\"");
      out.print(res.getInt("id"));
      out.write("\">supp</a>\n");
      out.write("               </td>\n");
      out.write("                <td>\n");
      out.write("                    <a href=\"modifier.jsp?i=");
      out.print(res.getInt("id"));
      out.write("\"><center><input type=\"button\" id=\"mod\" value=\"Modifier\"></center></a>\n");
      out.write("               </td>\n");
      out.write("           </tr>\n");
      out.write("           ");
   
          } 
      out.write(" </table> <div id=\"dive1\" > </div>");


           }

          
       
      out.write("\n");
      out.write("    </body>\n");
      out.write("   <center> <form action=\"recherche.jsp\" method=\"post\"> Rechercher Par   : |__<input type=\"checkbox\" id=\"role\" name=\"role\" value=\"admin\">Admin  __||__<input type=\"checkbox\" id=\"role\" name=\"role\" value=\"etudiant\">Etudiant __||__<input type=\"checkbox\" id=\"role\" name=\"role\" value=\"enseignant\">Enseignant__| <br>\n");
      out.write("           <center><input type=\"submit\" id=\"eff\" value=\"_.Efféctué._\" ></center></form></center>\n");
      out.write("        <center><a href=\"index.jsp\" title=\"se deconnecter\"><input type=\"button\" value=\"Se Deconecter\" id=\"dec\"></a></center>\n");
      out.write("   \n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
