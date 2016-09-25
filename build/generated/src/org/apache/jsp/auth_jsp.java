package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class auth_jsp extends org.apache.jasper.runtime.HttpJspBase
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
 
String login=request.getParameter("login");
String password=request.getParameter("password");
//String role=request.getParameter("role");
PreparedStatement pr=cn.prepareStatement("select * from admin where login=? and password=?");
pr.setString(1,login);
pr.setString(2,password);
//pr.setString(3,role);
ResultSet res=pr.executeQuery();


if(res.next()) { 
    if(res.getString("role").equals("admin")) {  
    
      out.write(' ');
      if (true) {
        _jspx_page_context.forward("accueil_admin.jsp");
        return;
      }
 }
else {  
      out.write(' ');
      if (true) {
        _jspx_page_context.forward("accueil_user.jsp");
        return;
      }
 } }
    else { 
        
        
      out.write(' ');
      out.write(' ');
      if (true) {
        _jspx_page_context.forward("erreur1.jsp");
        return;
      }
 }



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
