package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import jums.JumsHelper;

public final class insert_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');

    HttpSession hs = request.getSession();
    JumsHelper jh = JumsHelper.getInstance();

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>かごゆめ新規登録画面</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        <h1>会員新規登録</h1>\n");
      out.write("        <form action=\"Insert\" method=\"POST\">\n");
      out.write("            <p>メールアドレス/ユーザーID/パスワード</p>\n");
      out.write("            <table border=1>\n");
      out.write("                <tr>\n");
      out.write("                    <th>メールアドレス</th>\n");
      out.write("                    <td><input type=\"text\" name=\"mail\" style=\"width: 180px;\" placeholder=\"ユーザーIDになります\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th>ユーザー名</th>\n");
      out.write("                    <td><input type=\"text\" name=\"userName\" style=\"width: 180px;\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th>パスワード</th>\n");
      out.write("                    <td><input type=\"text\" name=\"pass\" style=\"width: 180px;\" placeholder=\"英数字4桁\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            <p>お客様の基本情報</p>\n");
      out.write("            <table border=1>\n");
      out.write("                <tr>\n");
      out.write("                    <th>氏名</th>\n");
      out.write("                    <td><input type=\"text\" name=\"name\" style=\"width: 250px;\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>");
 for(int i = 1; i <= 2; i++) { 
      out.write("\n");
      out.write("                    <th>性別</th>\n");
      out.write("                    <td><input type=\"radio\" name=\"gender\" value=\"");
      out.print(i);
      out.write('"');
      out.write('>');
      out.print(jh.exTypenum(i));
      out.write("</td>\n");
      out.write("                    ");
 } 
      out.write("\n");
      out.write("                </tr>\n");
      out.write("            </table><br><br>\n");
      out.write("            ");
      out.write("\n");
      out.write("            <input type=\"hidden\" name=\"ac\"  value=\"");
      out.print( hs.getAttribute("ac"));
      out.write("\">\n");
      out.write("            <input type=\"submit\" name=\"btnSubmit\" value=\"入力内容を確認\">\n");
      out.write("        </form><br>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.print(jh.home());
      out.write("\n");
      out.write("    </center>\n");
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
