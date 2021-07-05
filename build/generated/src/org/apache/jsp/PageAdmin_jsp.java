package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class PageAdmin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_if_test.release();
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"vi\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" >\n");
      out.write("        <title>AeShopVN</title>\n");
      out.write("        <!--<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i\">-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"libs/bootstrap/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"libs/font-awesome/css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/main.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-xs-12 col-sm-12 col-md-6 col-lg-6\">\n");
      out.write("                    <h1>ADMIN PAGE</h1>\n");
      out.write("                    <form action=\"LogOutSVL\" method=\"Get\">\n");
      out.write("                        <button class=\"alert-danger\" type=\"submit\">Đăng Xuất</button>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <table class=\"table table-dark\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th scope=\"col\"><h3>LIST - ACCOUNT</h3></th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th scope=\"col\">Username</th>\n");
      out.write("                    <th scope=\"col\">PassWord</th>\n");
      out.write("                    <th scope=\"col\">Phone</th>\n");
      out.write("                    <th scope=\"col\">Email</th>\n");
      out.write("                    <th scope=\"col\">Type</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("\n");
      out.write("            <tbody>\n");
      out.write("                ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    </tbody>\n");
      out.write("</table>\n");
      out.write("<!-- LIST ORDERS -->\n");
      out.write("<table class=\"table table-active\">\n");
      out.write("    <tr>\n");
      out.write("        <th>\n");
      out.write("            <h3 style=\"color: #0069d9\"><strong>LIST - ORDERS</strong></h3><button id=\"listorder\" onclick=\"showlist()\" class=\"btn btn-info\">Show List</button>\n");
      out.write("        </th>\n");
      out.write("    </tr>\n");
      out.write("</table>\n");
      out.write("<table class=\"table table-bordered\"  id=\"bodyOrder\" style=\"display: none; \" >\n");
      out.write("    <thead >\n");
      out.write("        <tr>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">MÃ ĐƠN HÀNG</h6></th>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">MAIL</h6></th>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">TÊN</h6></th>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">SỐ ĐIỆN THOẠI</h6></th>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">ĐỊA CHỈ</h6></th>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">NGÀY ĐẶT HÀNG</h6></th>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">GHI CHÚ</h6></th>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">TỒNG TIỀN ĐƠN HÀNG</h6></th>\n");
      out.write("        </tr>\n");
      out.write("    </thead>\n");
      out.write("    <tbody>\n");
      out.write("\n");
      out.write("        ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("</tbody>\n");
      out.write("</table>\n");
      out.write("<!-- ADD PRODUCT -->\n");
      out.write("<table class=\"table table-active\" >\n");
      out.write("    <thead>\n");
      out.write("        <tr>\n");
      out.write("            <th scope=\"col\"><button id=\"value\" onclick=\"addProduct()\" class=\"btn btn-info\">Add more product</button></th>\n");
      out.write("            <th></th>\n");
      out.write("            <th></th>\n");
      out.write("            <th></th>\n");
      out.write("            <th></th>\n");
      out.write("            <th></th>\n");
      out.write("        </tr>\n");
      out.write("    </thead>\n");
      out.write("    <form action=\"InsertProductSVL\" method=\"get\">\n");
      out.write("        <thead id=\"addProduct\" style=\"display: none\">\n");
      out.write("            <tr>\n");
      out.write("                <th scope=\"row\">ProductName:</th>\n");
      out.write("                <td><input type=\"text\" name=\"prdName\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <th scope=\"row\">Type: </th>\n");
      out.write("                <td><select name=\"prdCategoryid\">\n");
      out.write("                        <option value=\"1\">1 - Điện thoại</option>\n");
      out.write("                        <option value=\"2\">2 - Máy Tính</option>\n");
      out.write("                        <option value=\"3\">3 - Khác</option>\n");
      out.write("                    </select>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <th scope=\"row\">UnitPrice:</th>\n");
      out.write("                <td><input type=\"number\" name=\"prdPrice\" min=\"0\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <th scope=\"row\">UnitsInStock:</th>\n");
      out.write("                <td><input type=\"number\" name=\"prdStock\"  min=\"0\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <th scope=\"row\">Imange (must choose image in this Project):</th>\n");
      out.write("                <td><input type=\"file\" accept=\"image/*\" name=\"prdImageurl\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr><th></th><th style=\"color: blue\">DESCRIPTION ABOUT PRODUCT BELOW: </th></tr>\n");
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <th scope=\"row\">Screen:</th>\n");
      out.write("                <td><input type=\"text\" name=\"desScreen\"></td>\n");
      out.write("            </tr><tr>\n");
      out.write("                <th scope=\"row\">Rear camera: :</th>\n");
      out.write("                <td><input type=\"text\" name=\"desCamerasau\"></td>\n");
      out.write("            </tr><tr>\n");
      out.write("                <th scope=\"row\">Front camera::</th>\n");
      out.write("                <td><input type=\"text\" name=\"desCameratruoc\"></td>\n");
      out.write("            </tr><tr>\n");
      out.write("                <th scope=\"row\">Cpu:</th>\n");
      out.write("                <td><input type=\"text\" name=\"desCpu\"></td>\n");
      out.write("            </tr><tr>\n");
      out.write("                <th scope=\"row\">Ram:</th>\n");
      out.write("                <td><input type=\"text\" name=\"desRam\"></td>\n");
      out.write("            </tr><tr>\n");
      out.write("                <th scope=\"row\">Memory:</th>\n");
      out.write("                <td><input type=\"text\" name=\"desMemory\"></td>\n");
      out.write("            </tr><tr>\n");
      out.write("                <th scope=\"row\">Sim:</th>\n");
      out.write("                <td><input type=\"text\" name=\"desSim\"></td>\n");
      out.write("            </tr><tr>\n");
      out.write("                <th scope=\"row\">Made in:</th>\n");
      out.write("                <td><input type=\"text\" name=\"desMadein\"></td>\n");
      out.write("            </tr><tr>\n");
      out.write("                <th scope=\"row\">Operating system:</th>\n");
      out.write("                <td><input type=\"text\" name=\"desOs\"></td>\n");
      out.write("            </tr><tr>\n");
      out.write("                <th scope=\"row\">Waterproof:</th>\n");
      out.write("                <td><input type=\"text\" name=\"desWaterproof\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <th></th>\n");
      out.write("                <th><input type=\"submit\" value=\"ADD\" class=\"btn btn-danger\"> </th>\n");
      out.write("            </tr>\n");
      out.write("        </thead>\n");
      out.write("    </form>\n");
      out.write("</table>\n");
      out.write("<!-- Product -->\n");
      out.write("<h3 style=\"color: red; margin-left: 600px\" ><strong>LIST - PRODUCT</strong></h3>\n");
      out.write("<!-- Dien thoai -->\n");
      out.write("<h4 style=\"color: #0069d9; margin-left: 20px\">Điện Thoại: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lstDt.size()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" Sản phẩm</h4>\n");
      out.write("<table class=\"table table-bordered\">\n");
      out.write("    <tr>\n");
      out.write("        <th style=\"color: red\">Mã Sản Phẩm</th>\n");
      out.write("        <th style=\"color: red\">Tên Sản Phẩm</th>\n");
      out.write("        <th style=\"color: red\">Giá</th>\n");
      out.write("        <th style=\"color: red\">Số Lượng</th>\n");
      out.write("        <th style=\"color: red\">Đã Bán</th>\n");
      out.write("    </tr>\n");
      out.write("    ");
      if (_jspx_meth_c_forEach_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("</table>\n");
      out.write("<!-- May tinh -->\n");
      out.write("<h4 style=\"color: #0069d9;margin-left: 20px\">Máy Tính: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lstMt.size()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" Sản phẩm</h4>\n");
      out.write("<table class=\"table table-bordered\">\n");
      out.write("    <tr>\n");
      out.write("        <th style=\"color: red\">Mã Sản Phẩm</th>\n");
      out.write("        <th style=\"color: red\">Tên Sản Phẩm</th>\n");
      out.write("        <th style=\"color: red\">Giá</th>\n");
      out.write("        <th style=\"color: red\">Số Lượng</th>\n");
      out.write("        <th style=\"color: red\">Đã Bán</th>\n");
      out.write("    </tr>\n");
      out.write("    ");
      if (_jspx_meth_c_forEach_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("<!-- San Pham Khac -->\n");
      out.write("<h4 style=\"color: #0069d9;margin-left: 20px\">Các Thiết Bị Khác: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lstTbdt.size()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" Sản phẩm</h4>\n");
      out.write("<table class=\"table table-bordered\">\n");
      out.write("    <tr>\n");
      out.write("        <th style=\"color: red\">Mã Sản Phẩm</th>\n");
      out.write("        <th style=\"color: red\">Tên Sản Phẩm</th>\n");
      out.write("        <th style=\"color: red\">Giá</th>\n");
      out.write("        <th style=\"color: red\">Số Lượng</th>\n");
      out.write("        <th style=\"color: red\">Đã Bán</th>\n");
      out.write("    </tr>\n");
      out.write("     ");
      if (_jspx_meth_c_forEach_4(_jspx_page_context))
        return;
      out.write("\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("<table class=\"table table-bordered\">\n");
      out.write("    <thead>\n");
      out.write("        <tr>\n");
      out.write("            <th scope=\"col\"><h5 style=\"color: tomato\">FEEDBACK SHOP</h5><button id=\"innerValue\" onclick=\"Feedbackad()\" class=\"btn btn-danger\">SHOW FEEDBACK</button></th>\n");
      out.write("        </tr>\n");
      out.write("    </thead>\n");
      out.write("    <tbody id=\"fb\" style=\"display: none\"><tr>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">TITLE </h6></th>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">CONTENT</h6></th>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">SENDER</h6></th>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">EMAIL</h6></th>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">PHONE</h6></th>\n");
      out.write("        </tr>\n");
      out.write("        ");
      if (_jspx_meth_c_forEach_5(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    </tbody>\n");
      out.write("    <thead><tr>\n");
      out.write("            <th scope=\"col\"><h5 style=\"color: tomato\">FEEDBACK OF PRODUCT</h5><button id=\"innerValue2\" onclick=\"Feedback2ad()\" class=\"btn btn-danger\">SHOW FEEDBACK</button></th>\n");
      out.write("        </tr>\n");
      out.write("    </thead>\n");
      out.write("    <tbody id=\"fb2\" style=\"display: none\">\n");
      out.write("        <tr>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">TITLE </h6></th>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">ID PRODUCT </h6></th>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">CONTENT</h6></th>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">SENDER</h6></th>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">EMAIL</h6></th>\n");
      out.write("            <th scope=\"col\"><h6 style=\"color: blue\">PHONE</h6></th>\n");
      out.write("        </tr>\n");
      out.write("        ");
      if (_jspx_meth_c_forEach_6(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    </tbody>\n");
      out.write("</table>\n");
      out.write("<script>\n");
      out.write("    function showlist() {\n");
      out.write("        if (document.getElementById(\"listorder\").innerHTML !== \"Hide\") {\n");
      out.write("            document.getElementById(\"listorder\").innerHTML = \"Hide\";\n");
      out.write("            document.getElementById(\"bodyOrder\").style.display = \"block\";\n");
      out.write("        } else {\n");
      out.write("            document.getElementById(\"listorder\").innerHTML = \"Show List\";\n");
      out.write("            document.getElementById(\"bodyOrder\").style.display = \"none\";\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("<script src=\"js/newjs.js\"></script>\n");
      out.write("<script src=\"libs/jquery-3.4.1.min.js\"></script>\n");
      out.write("<script src=\"libs/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"js/main.js\"></script>\n");
      out.write("<div id=\"fb-root\"></div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lstAc}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("a");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                    <tr>\n");
          out.write("                        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.password}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.phone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                        <td>");
          if (_jspx_meth_c_if_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("                            ");
          if (_jspx_meth_c_if_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("                        </td>\n");
          out.write("                        ");
          if (_jspx_meth_c_if_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("            </tr>\n");
          out.write("        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.authority == 1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                Admin\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_if_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.authority != 1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                Customer\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_c_if_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_2.setPageContext(_jspx_page_context);
    _jspx_th_c_if_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getAuthority() != 1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_2 = _jspx_th_c_if_2.doStartTag();
    if (_jspx_eval_c_if_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                    <form action=\"DeleteandUpdateUserSVL\" method=\"post\">\n");
        out.write("                        <input name=\"email\" value=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getEmail()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" type=\"hidden\">\n");
        out.write("                        <td><select name=\"change\">\n");
        out.write("                                <option value=\"0\">Change Type</option>\n");
        out.write("                                <option value=\"1\" >Admin</option>\n");
        out.write("                                <option value=\"2\">Customer</option>\n");
        out.write("                            </select>\n");
        out.write("                            <button type=\"submit\">Save</button>\n");
        out.write("                            <button><a href=\"DeleteandUpdateUserSVL?email=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getEmail()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" style=\"color: red\">Delete</a></button>\n");
        out.write("                        </td>\n");
        out.write("                    </form>\n");
        out.write("                ");
        int evalDoAfterBody = _jspx_th_c_if_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lstOrderModel}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("a");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("\n");
          out.write("            <tr>\n");
          out.write("                <th style=\"color: red\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getOrder().getOrderID()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                <th style=\"color: red\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getOrder().getMail()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                <th style=\"color: red\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getOrder().getNameReceiver()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                <th style=\"color: red\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getOrder().getPhone()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                <th style=\"color: red\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getOrder().getAddress()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                <th style=\"color: red\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getOrder().getOrderDate()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                <th style=\"color: red\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getOrder().getNote()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                <!--<th style=\"color: tomato\">TOTAL:</th>-->\n");
          out.write("                <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getOrder().getTotalMoney()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("\n");
          out.write("                <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getOrder().getStatus()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                    ");
          if (_jspx_meth_c_if_3((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("\n");
          out.write("\n");
          out.write("\n");
          out.write("                </th>\n");
          out.write("            </tr>\n");
          out.write("        <th scope=\"col\"><h6 style=\"color: blue\"></h6></th>\n");
          out.write("        <th scope=\"col\"><h6 style=\"color: blue\"></h6></th>\n");
          out.write("        <th scope=\"col\"><h7 style=\"color: blue\">Mã sản phẩm</h7></th>\n");
          out.write("    <th scope=\"col\"><h7 style=\"color: blue\">Sản phẩm</h7></th>\n");
          out.write("<th scope=\"col\"><h7 style=\"color: blue\">Số lượng</h7></th>\n");
          out.write("<th scope=\"col\"><h7 style=\"color: blue\">Tổng tiền sản phẩm</h7></th>\n");
          out.write("\n");
          out.write("\n");
          out.write("<tr>\n");
          out.write("    <th></th>\n");
          out.write("    <th></th>\n");
          out.write("    <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getOrderDetails().getProductID()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("    <th><img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getOrderDetails().getUrlPRD()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" width=\"50rem\" height=\"50rem\"></th>\n");
          out.write("    <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getOrderDetails().getQuantity()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("    <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getOrderDetails().getAmount()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("</tr>\n");
          out.write("<tr>\n");
          out.write("    <th></th>\n");
          out.write("    <th></th>\n");
          out.write("    <th></th>\n");
          out.write("\n");
          out.write("</tr>    \n");
          out.write("\n");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_3(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_3 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_3.setPageContext(_jspx_page_context);
    _jspx_th_c_if_3.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_if_3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getOrder().getStatus() ne 'Đặt hàng thành công' && a.getOrder().getStatus() ne 'Đơn Hàng Bị Hủy'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_3 = _jspx_th_c_if_3.doStartTag();
    if (_jspx_eval_c_if_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                        <a href=\"OrderConfirmSVL?orderID=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getOrder().getOrderID()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("&ac=confirm\">\n");
        out.write("                            <button class=\"btn-danger\">CONFIRM</button></a>\n");
        out.write("                        <a href=\"OrderConfirmSVL?orderID=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.getOrder().getOrderID()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("&ac=delete\">\n");
        out.write("                            <button class=\"btn-danger\">Delete</button></a>\n");
        out.write("\n");
        out.write("                    ");
        int evalDoAfterBody = _jspx_th_c_if_3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent(null);
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lstDt}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_2.setVar("d");
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("        <tr>\n");
          out.write("        <input type=\"hidden\" name=\"url\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${d.getUrl()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">\n");
          out.write("        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${d.getProductID()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${d.getProductName()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${d.getUnitPrice()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${d.getUnitsinStock()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${d.getUnitsOnOrder()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("        <th><a href=\"EditProduct.jsp?pid=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${d.getProductID()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"</a>EDIT</th>\n");
          out.write("        <th><a href=\"DeleteProductSVL?productid=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${d.getProductID()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">DELETE</a></th>\n");
          out.write("    </tr>\n");
          int evalDoAfterBody = _jspx_th_c_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_2.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_3 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_3.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_3.setParent(null);
    _jspx_th_c_forEach_3.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lstMt}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_3.setVar("m");
    int[] _jspx_push_body_count_c_forEach_3 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_3 = _jspx_th_c_forEach_3.doStartTag();
      if (_jspx_eval_c_forEach_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("        <tr>\n");
          out.write("        <input type=\"hidden\" name=\"url\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${m.getUrl()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">\n");
          out.write("        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${m.getProductID()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${m.getProductName()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${m.getUnitPrice()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${m.getUnitsinStock()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${m.getUnitsOnOrder()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("        <th><a href=\"EditProduct.jsp?pid=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${m.getProductID()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"</a>EDIT</th>\n");
          out.write("        <th><a href=\"DeleteProductSVL?productid=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${m.getProductID()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">DELETE</a></th>\n");
          out.write("    </tr>\n");
          int evalDoAfterBody = _jspx_th_c_forEach_3.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_3[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_3.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_3.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_3);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_4 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_4.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_4.setParent(null);
    _jspx_th_c_forEach_4.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lstTbdt}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_4.setVar("t");
    int[] _jspx_push_body_count_c_forEach_4 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_4 = _jspx_th_c_forEach_4.doStartTag();
      if (_jspx_eval_c_forEach_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("    <tr>\n");
          out.write("    <input type=\"hidden\" name=\"url\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${t.getUrl()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">\n");
          out.write("    <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${t.getProductID()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("    <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${t.getProductName()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("    <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${t.getUnitPrice()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("    <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${t.getUnitsinStock()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("    <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${t.getUnitsOnOrder()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("    <th><a href=\"EditProduct.jsp?pid=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${t.getProductID()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"</a>EDIT</th>\n");
          out.write("    <th><a href=\"DeleteProductSVL?productid=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${t.getProductID()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">DELETE</a></th>\n");
          out.write("</tr>\n");
          int evalDoAfterBody = _jspx_th_c_forEach_4.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_4[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_4.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_4.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_4);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_5 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_5.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_5.setParent(null);
    _jspx_th_c_forEach_5.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lstFeedback}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_5.setVar("f");
    int[] _jspx_push_body_count_c_forEach_5 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_5 = _jspx_th_c_forEach_5.doStartTag();
      if (_jspx_eval_c_forEach_5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("        <tr>\n");
          out.write("            <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${f.getTitle()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("            <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${f.getContent()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("            <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${f.getName()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("            <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${f.getEmail()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("            <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${f.getPhone()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("\n");
          out.write("        </tr>\n");
          out.write("        ");
          int evalDoAfterBody = _jspx_th_c_forEach_5.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_5[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_5.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_5.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_5);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_6(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_6 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_6.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_6.setParent(null);
    _jspx_th_c_forEach_6.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lstFeedbackProduct}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_6.setVar("p");
    int[] _jspx_push_body_count_c_forEach_6 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_6 = _jspx_th_c_forEach_6.doStartTag();
      if (_jspx_eval_c_forEach_6 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("        <tr>\n");
          out.write("            <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getTitle()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("            <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getProductID()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("            <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getContent()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("            <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getName()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("            <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getEmail()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("            <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getPhone()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("        </tr>\n");
          out.write("        ");
          int evalDoAfterBody = _jspx_th_c_forEach_6.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_6[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_6.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_6.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_6);
    }
    return false;
  }
}
