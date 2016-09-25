package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class recherche_jsp extends org.apache.jasper.runtime.HttpJspBase
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

try{
String[] role=request.getParameterValues("role");
ResultSet res=null;
if ((role.length==0) || (role.length==3)) { 
      out.write(' ');
      if (true) {
        _jspx_page_context.forward("accueil_admin.jsp");
        return;
      }
      out.write(' ');
 }
if (role.length==1) { 
    PreparedStatement pr=cn.prepareStatement("select * from admin where role=?");
    pr.setString(1,role[0]);
    res=pr.executeQuery(); }
if(role.length==2)  { 
    PreparedStatement pr=cn.prepareStatement("select * from admin where role IN (?,?)");
    pr.setString(1,role[0]);
    pr.setString(2,role[1]);
    res=pr.executeQuery(); }

      out.write("  <h3><em>Resultat de recherche :<br></em></h3>\n");
      out.write("  <table width=\"100%\" border=\"2\"> \n");
      out.write("           <tr><th>Id :</th><th>Login :</th><th>Password :</th><th>Rôle :</th><th colspan=\"2\"><center>Gerer vos utilisateurs</center></th></tr>\n");
      out.write("           ");
 if(! res.next()) { 
      out.write(" <tr><td colspan=\"5\"><center>La liste est vide </center></td></tr> ");
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
      out.write("                   <a href=\"supp.jsp?i=");
      out.print(res.getInt("id"));
      out.write("\"><center><input type=\"button\" value=\"Supprimer\"></center></a>\n");
      out.write("               </td>\n");
      out.write("                <td>\n");
      out.write("                    <a href=\"modifier.jsp?i=");
      out.print(res.getInt("id"));
      out.write("\"><center><input type=\"button\" value=\"Modifier\"></center></a>\n");
      out.write("               </td>\n");
      out.write("           </tr>\n");
      out.write("           ");
   
           } } } catch(Exception e) { out.println(e.getMessage()); } 
      out.write(" </table> \n");
      out.write("    \n");
      out.write("\n");
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
