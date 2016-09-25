package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class form_005fsupp_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("          <script type=\"text/javascript\" src=\"jquery-1.8.2.js\"></script>\n");
      out.write("     <script type=\"text/javascript\" src=\"rida.js\" ></script>\n");
      out.write("      \n");
      out.write("        <style>\n");
      out.write("            .papa {  display : inline-block; }\n");
      out.write("            .issam {\n");
      out.write("                font-size: 80%; background-color: chartreuse;\n");
      out.write("            } #ll { background-color: orangered;}\n");
      out.write("             #oo { font-size: 100%; width: 150px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("           \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Gestion user</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("        <fieldset>\n");
      out.write("            <legend>\n");
      out.write("                [_.Choisir.-|-.ID._]\n");
      out.write("            </legend>\n");
      out.write("               ");

                          try {
                          PreparedStatement pr=cn.prepareStatement("select * from admin");  
                          ResultSet res=pr.executeQuery();
                          
      out.write(" \n");
      out.write("            <center>\n");
      out.write("               \n");
      out.write("                  \n");
      out.write("                ID :  <select  name=\"option\"  id=\"oo\" onChange=\"alert('hhh');\" class=\"identifiant\" > ");

                          while(res.next()) { 
      out.write(" <option  id=\"");
      out.print(res.getInt("id"));
      out.write("\" > ");
      out.print(res.getString("id"));
      out.write(" </option> \n");
      out.write("                          ");

                          }
                          } 
                          catch(Exception e ) { out.println(e.getMessage()); } 
                          
      out.write("  </select> </center>\n");
      out.write("                     \n");
      out.write("                 <center>\n");
      out.write("                     <a href=\"#\" id=\"val_id\" ><input type=\"button\" value=\"Ok\"   style=\"color: red;\"></a><br><br>\n");
      out.write("                        </center> \n");
      out.write("       </fieldset>\n");
      out.write("                          <div id=\"nv_form\"></div>\n");
      out.write("                     \n");
      out.write("    </body>\n");
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
