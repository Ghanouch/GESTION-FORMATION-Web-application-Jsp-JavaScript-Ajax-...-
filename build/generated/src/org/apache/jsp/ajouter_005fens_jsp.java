package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.*;

public final class ajouter_005fens_jsp extends org.apache.jasper.runtime.HttpJspBase
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

try {
  
    if ((request.getParameter("1").length()<2) || (request.getParameter("2").length()<2)) { 
      out.write(' ');
      if (true) {
        _jspx_page_context.forward("erreur.jsp");
        return;
      }
      out.write(' ');
 } else {
PreparedStatement pr=cn.prepareStatement("INSERT INTO `enseignant`(`cin`, `ppr`, `nom`, `prenom`, `Email`, `Tel`, `filiere`) VALUES(?,?,?,?,?,?,?)");
pr.setString(1,request.getParameter("1"));
pr.setString(2,request.getParameter("2"));
pr.setString(3,request.getParameter("3"));
pr.setString(4,request.getParameter("4"));
pr.setString(5,request.getParameter("5"));
pr.setString(6,request.getParameter("6"));
pr.setString(7,request.getParameter("role"));

pr.executeUpdate(); } }
catch(Exception e ) { out.println(e.getMessage()); }

      out.write(" \n");
      out.write(" ");
      if (true) {
        _jspx_page_context.forward("accueil_admin.jsp");
        return;
      }
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    ");
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
