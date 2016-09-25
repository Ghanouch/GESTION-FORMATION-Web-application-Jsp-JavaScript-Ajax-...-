package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <title>BienVenue Chez Nous !</title>\n");
      out.write("        \n");
      out.write("        <!-- Our CSS stylesheet file -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"a/assets/css/styles.css\" />\n");
      out.write("        \n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("          <script src=\"http://html5shiv.googlecode.com/svn/trunk/html5.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\t\t<div id=\"formContainer\">\n");
      out.write("\t\t\t<form id=\"login\" method=\"post\" action=\"auth.jsp\">\n");
      out.write("\t\t\t\t<a href=\"#\" id=\"flipToRecover\" class=\"flipLink\">ISSAM</a>\n");
      out.write("                                <input type=\"text\" name=\"login\" id=\"loginEmail\" placeholder=\"LoGin\" />\n");
      out.write("\t\t\t\t<input type=\"password\" name=\"password\" id=\"loginPass\" placeholder=\"Pass\" />\n");
      out.write("                               \n");
      out.write("\t\t\t\t<input type=\"submit\" name=\"submit\" value=\"OK\" />\n");
      out.write("\t\t\t</form>\n");
      out.write("        <form id=\"recover\" method=\"post\" action=\"./\">\n");
      out.write("\t\t\t\t<a href=\"#\" id=\"flipToLogin\" class=\"flipLink\">GHANOUCH</a>\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"recoverEmail\" id=\"recoverEmail\" value=\"Email\" />\n");
      out.write("\t\t\t\t<input type=\"submit\" name=\"submit\" value=\"Recover\" />\n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("        <footer>\n");
      out.write("\t        <h2><i>Vous Pouvez nous </i>Contacter !</h2>\n");
      out.write("            <a class=\"tzine\" href=\"www.gmail.com\">GHANOUCH <i>STAIM<b>.</b>LUCK@</i>GMAIL.COM</a>\n");
      out.write("        </footer>\n");
      out.write("        \n");
      out.write("        <!-- JavaScript includes -->\n");
      out.write("\t\t<script src=\"a/assets/js/jquery-1.7.1.min.js\"></script>\n");
      out.write("\t\t<script src=\"a/assets/js/script.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
