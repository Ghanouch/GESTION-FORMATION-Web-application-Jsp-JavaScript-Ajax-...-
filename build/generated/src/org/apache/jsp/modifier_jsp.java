package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class modifier_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write('\n');
      out.write('\n');

ResultSet res=null;
try{
  String id_l=request.getParameter("i");
  PreparedStatement pr=cn.prepareStatement("select * from admin where id=?");
  pr.setString(1,id_l);
  res=pr.executeQuery();
  res.next();
  }
catch( Exception e) { out.println(e.getMessage()); }
  
      out.write("\n");
      out.write("  <html>\n");
      out.write("      <head>\n");
      out.write("      </head>\n");
      out.write("      <title>Modification !</title>\n");
      out.write("      <body>\n");
      out.write("            <fieldset>\n");
      out.write("             <legend>\n");
      out.write("                 <strong>Modification</strong>\n");
      out.write("             </legend>\n");
      out.write("            <center>\n");
      out.write("            <table>\n");
      out.write("                <form method=\"post\" action=\"ajout_succes.jsp?i=");
      out.print(res.getInt("id"));
      out.write("\">\n");
      out.write("                <tr><td><label for=\"log\">Login :</label></td><td colspan=\"2\"><center><input type=\"text\" id=\"log\" name=\"login\" value=\"");
      out.print(res.getString("login"));
      out.write("\"</center></td><br><br>\n");
      out.write("                <tr><td></td><td></td></tr>\n");
      out.write("                <tr><td></td><td></td></tr>\n");
      out.write("                <tr><td></td><td></td></tr>\n");
      out.write("                <tr><td><label for=\"lo\">Passe : </label></td><td colspan=\"2\"><input type=\"text\" id=\"lo\" name=\"password\" value=\"");
      out.print(res.getString("password"));
      out.write("\"></td><br><br>\n");
      out.write("                <tr><td></td><td></td></tr>\n");
      out.write("                <tr><td></td><td></td></tr>\n");
      out.write("                <tr><td></td><td></td></tr>\n");
      out.write("                <tr><td rowsspan=\"2\">Admin   :<br>Etudiant :<br>Enseignant :</td><td><center><input type=\"radio\" name=\"role\" value=\"admin\" id=\"ka\"><br><input type=\"radio\" name=\"role\" value=\"etudiant\" checked ><br><input type=\"radio\" name=\"role\" value=\"enseignant\" ></center></td><br><br>\n");
      out.write("               <tr><td></td><td></td></tr>\n");
      out.write("               <tr><td></td><td></td></tr>\n");
      out.write("               <tr><td></td><td></td></tr>\n");
      out.write("               <tr><td> <input type=\"submit\" value=\"Modifier\" > </td><td colspan=\"2\"><center><input  type=\"reset\" value=\"Retour\"></center></td><td><center><a href=\"accueil_admin.jsp\"><input type=\"button\" value=\"Page D'accueil\"></a></center></td>\n");
      out.write("            </form>\n");
      out.write("            </table>\n");
      out.write("             </center>  </td><br><br></td><br><br>\n");
      out.write("         \n");
      out.write("        </fieldset>\n");
      out.write("          \n");
      out.write("          \n");
      out.write("      </body>\n");
      out.write("  </html>\n");
      out.write("\n");
      out.write("\n");
      out.write("  ");
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
