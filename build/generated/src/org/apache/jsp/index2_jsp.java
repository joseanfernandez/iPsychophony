package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index2_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("  <!-- Latest compiled and minified CSS -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("  <!-- jQuery library -->\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("  <!-- Popper JS -->\n");
      out.write("  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\"></script>\n");
      out.write("\n");
      out.write("  <!-- Latest compiled JavaScript -->\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\n");
      out.write("   \n");
      out.write("  <title>iPsychophony</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"col-lg-10 offset-1\">\n");
      out.write("            <div class=\"jumbotron\">\n");
      out.write("            <h1>iPsychophony</h1>\n");
      out.write("        \n");
      out.write("            <p class=\"lead\">Para empezar a grabar la psicofonía, pulse en <span class=\"cursiva\">Grabar.</span></p>\n");
      out.write("            <form action=\"rec2.jsp\" method=\"get\">\n");
      out.write("                <span class=\"lead\">Elija la duración de la grabación</span>\n");
      out.write("                <select id=\"duracion\" name=\"duracion\">\n");
      out.write("                    <option value=\"50\"> - </option>\n");
      out.write("                    <option value=\"10\">10\"</option>\n");
      out.write("                    <option value=\"15\">15\"</option>\n");
      out.write("                    <option value=\"20\">20\"</option>\n");
      out.write("                    <option value=\"30\">30\"</option>\n");
      out.write("                    <option value=\"50\">50\"</option>\n");
      out.write("                    <option value=\"90\">1' 30\"</option>\n");
      out.write("                    <option value=\"120\">2'</option>\n");
      out.write("                </select>\n");
      out.write("                <br/><br/>\n");
      out.write("                <input type=\"submit\" class=\"btn btn-warning\" value=\"Grabar\"/>\n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("            <hr/>\n");
      out.write("            <p class=\"lead\">Cuando tengas la grabación, pulsa en <span class=\"cursiva\">Analizar.</span></p>\n");
      out.write("            <p class=\"lead\">A continuación se le mostrará la transcripción en texto, si encontramos\n");
      out.write("            alguna palabra, se la resaltaremos.</p>\n");
      out.write("            <p class=\"lead\">Se le mostrará el mensaje en claro y podrá decidir si guardarlo\n");
      out.write("            o descartarlo.</p>\n");
      out.write("            <a class=\"btn btn-success\" href=\"analyzer.jsp\">Analizar</a>\n");
      out.write("            \n");
      out.write("            <hr/>\n");
      out.write("            <p class=\"lead\">Para ver las grabaciones guardadas, pulse en <span class=\"cursiva\">Ver grabaciones.</span></p>\n");
      out.write("            <a class=\"btn btn-info\" href=\"listen.jsp\">Ver grabaciones</a>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
