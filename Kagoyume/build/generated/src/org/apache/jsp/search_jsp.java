package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class search_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write(" <meta charset=\"UTF-8\">\n");
      out.write(" <title>爆速JSONP</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write(" \n");
      out.write("<script src=\"http://i.yimg.jp/images/yjdn/js/bakusoku-jsonp-v1.js\"\n");
      out.write("  data-url=\"http://setsuden.yahooapis.jp/v1/Setsuden/latestPowerUsage\"\n");
      out.write("  data-p-appid=\"dj0zaiZpPWY4VHh5anF5ME1NYSZzPWNvbnN1bWVyc2VjcmV0Jng9NTM-\"\n");
      out.write("  data-p-output=\"json\"\n");
      out.write("  >\n");
      out.write("現在の電力消費量は{{ElectricPowerUsage.Usage.$}}kWです。\n");
      out.write("</script>\n");
      out.write("{\n");
      out.write("  \"ElectricPowerUsage\": {\n");
      out.write("    \"Area\": \"tokyo\",\n");
      out.write("    \"Usage\": {\n");
      out.write("      \"@unit\": \"kW\",\n");
      out.write("      \"$\": 45580000\n");
      out.write("    },\n");
      out.write("    \"Capacity\": {\n");
      out.write("      \"@unit\": \"kW\",\n");
      out.write("      \"$\": 53410000\n");
      out.write("    },\n");
      out.write("    \"Date\": \"2012-07-25\",\n");
      out.write("    \"Hour\": 14\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("</body>\n");
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
