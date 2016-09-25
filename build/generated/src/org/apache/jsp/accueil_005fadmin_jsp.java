package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class accueil_005fadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style> fieldset {  background: moccasin; border: solid;  } \n");
      out.write("        #ge { background-color: bisque;} #gu { background-color: bisque;}\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        <script type=\"text/javascript\" src=\"jquery-1.8.2.js\" ></script>\n");
      out.write("      \n");
      out.write("     \n");
      out.write("        <script>\n");
      out.write("                $(document).ready(function()  { r(); } );\n");
      out.write("                function r() {\n");
      out.write("               $(\"#cherche\").keyup(function() {  g($(\"#cherche\").val()); } );\n");
      out.write("               $(\"#cherche_role\").keyup(function() { k($(\"#cherche_role\").val()); } );\n");
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
      out.write("        <fieldset id=\"ge\"><legend>Gestion Des Enseignant</legend>\n");
      out.write("               <center><form action=\"form_ajout_ens.jsp\"><label for=\"jaja\"><strong><em>Vous Pouvez <span>Ajouter</span> un noveau Enseignant en click :  </em></strong></label><input type=\"submit\" id=\"jaja\" value=\"=> .IcI. <=\"></form></center><br><br>\n");
      out.write("    <center><fieldset><br>|.________<label for=\"rech_par_login_ens\">Recherche par nom :</label><input type=\"text\" id=\"cherche\" placeholder=\"recherche ici\"  /> <label for=\"cherche_filiere\"> .....|_|..... Recherche par Filiere :</label><input type=\"text\" id=\"cherche_role\" placeholder=\"recherche ici\"  />________.| <br> <br></fieldset> </center></<br><br><br>\n");
      out.write("       ");
 Statement st=cn.createStatement();
     ResultSet      res=st.executeQuery("select * from enseignant");
        
      out.write("\n");
      out.write("    <div id=\"r\">\n");
      out.write("    <table width=\"100%\"  border=\"2\"> \n");
      out.write("        <tr><th>cin :</th><th>ppr :</th><th>nom :</th><th>prenom :</th><th>email :</th><th>tel :</th><th>filiere :</th><th colspan=\"2\"><center>Gerer vos utilisateurs</center></th></tr>\n");
      out.write("           ");
 if(! res.next()) { 
      out.write(" <tr><td colspan=\"6\"><center>La liste est vide </center></td></tr> ");
  } else {
          res.beforeFirst(); 
          while(res.next()) {
           
      out.write("<tr><td><center>");
 out.print(res.getString("cin")); 
      out.write(" </center></td>\n");
      out.write("               <td><center>");
 out.print(res.getString("ppr")); 
      out.write(" </center></td>\n");
      out.write("       <td><center>");
 out.print(res.getString("nom")); 
      out.write(" </center></td>\n");
      out.write("       <td><center>");
      out.print(res.getString("prenom"));
      out.write(" </center></td>\n");
      out.write("     <td><center>");
      out.print(res.getString("email"));
      out.write(" </center></td>\n");
      out.write("     <td><center>");
      out.print(res.getString("tel"));
      out.write(" </center></td>\n");
      out.write("     <td><center>");
      out.print(res.getString("filiere"));
      out.write(" </center></td>\n");
      out.write("               <td>\n");
      out.write("                   <a href=\"verify_ens.jsp?i=");
      out.print(res.getString("cin"));
      out.write("\"><center><input  onclick=\"if(window.confirm(' voulez vous vraiment supprimer cet  utilisateur ?')) return true; else return false;\"  type=\"button\" id=\"sup\" value=\"Supprimer\"></center></a>\n");
      out.write("               </td>\n");
      out.write("                <td>\n");
      out.write("                    <a href=\"modifier_ens.jsp?i=");
      out.print(res.getString("cin"));
      out.write("\"><center><input type=\"button\" id=\"mod\" value=\"Modifier\"></center></a>\n");
      out.write("               </td>\n");
      out.write("           </tr>\n");
      out.write("           ");
   
          } 
      out.write(" </table> </div>");


           }

          
       
      out.write("\n");
      out.write("   \n");
      out.write("    <br></fieldset>\n");
      out.write("       <br><br><br><br>\n");
      out.write("       <fieldset id=\"gu\"><legend>Gestion Des Utilisateurs</legend>\n");
      out.write("       \n");
      out.write("    <center><form action=\"form_ajout.jsp\"><label for=\"jaja\"><strong><em>Vous Pouvez <span>Ajouter</span> un noveau utilisateur en click :  </em></strong></label><input type=\"submit\" id=\"jaja\" value=\"=> .IcI. <=\"></form></center><br><br>\n");
      out.write("    <center><form action=\"form_supp_1.jsp\"><label for=\"jaja\"><strong><em>Vous Pouvez <span>Rechercher</span> un utilisateur par Id et le supprimer en click :  </em></strong></label><input type=\"submit\" id=\"jaja\" value=\"=> .IcI. <=\"></form></center><br><br>\n");
      out.write("    <center><fieldset><br>|.________<label for=\"rech_par_login\">Recherche par Login :</label><input type=\"text\" id=\"cherche\" placeholder=\"recherche ici\"  /> <label for=\"cherche_role\"> .....|_|..... Recherche par Role :</label><input type=\"text\" id=\"cherche_role\" placeholder=\"recherche ici\"  />________.| <br> <br></fieldset> </center></<br><br><br>\n");
      out.write("       ");
 st=cn.createStatement();
      res=st.executeQuery("select * from admin");
        
      out.write("\n");
      out.write("    <div id=\"rbi\">\n");
      out.write("    <table width=\"100%\"  border=\"2\"> \n");
      out.write("           <tr><th>Id :</th><th>Login :</th><th>Password :</th><th>Rôle :</th><th colspan=\"2\"><center>Gerer vos utilisateurs</center></th></tr>\n");
      out.write("           ");
 if(! res.next()) { 
      out.write(" <tr><td colspan=\"6\"><center>La liste est vide </center></td></tr> ");
  } else {
          res.beforeFirst(); 
          while(res.next()) {
           
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
      out.write("                   <a href=\"verify1.jsp?i=");
      out.print(res.getInt("id"));
      out.write("\"><center><input  onclick=\"if(window.confirm(' voulez vous vraiment supprimer cet  utilisateur ?')) return true; else return false;\"  type=\"button\" id=\"sup\" value=\"Supprimer\"></center></a>\n");
      out.write("               </td>\n");
      out.write("                <td>\n");
      out.write("                    <a href=\"modifier.jsp?i=");
      out.print(res.getInt("id"));
      out.write("\"><center><input type=\"button\" id=\"mod\" value=\"Modifier\"></center></a>\n");
      out.write("               </td>\n");
      out.write("           </tr>\n");
      out.write("           ");
   
          } 
      out.write(" </table> </div>");


           }

          
       
      out.write("\n");
      out.write("    \n");
      out.write("    <center><form action=\"recherche.jsp\" method=\"post\"> Rechercher Par   : |__<input type=\"checkbox\" id=\"role\" name=\"role\" value=\"admin\">Admin  __||__<input type=\"checkbox\" id=\"role\" name=\"role\" value=\"etudiant\">Etudiant __||__<input type=\"checkbox\" id=\"role\" name=\"role\" value=\"enseignant\">Enseignant__| <br>\n");
      out.write("            <center><input type=\"submit\" id=\"eff\" value=\"_.Efféctué._\" ></center></form></center><br>\n");
      out.write("            \n");
      out.write("              \n");
      out.write("        <center><a href=\"index.jsp\" title=\"se deconnecter\"><input type=\"button\" value=\"Se Deconecter\" id=\"dec\"></a></center>\n");
      out.write("        </fieldset></body>\n");
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
