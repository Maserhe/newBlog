<%@ page import="service.FooterService" %>
<%@ page import="service.impl.FooterServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: Maserhe
  Date: 2020/12/25
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //    页脚
    FooterService footerService=new FooterServiceImpl();
    request.setAttribute("footer",footerService.selFooter());
%>
<footer id="footer" data-type="color">
    <div id="footer-wrap">
        <div class="copyright">${requestScope.footer.copyright}&nbsp;&nbsp;${requestScope.footer.powerby}</div>
        <div class="framework-info"><a href="${requestScope.footer.byurl}" target="_blank" rel="noopener"><span>${requestScope.footer.about}</span></a><span
                class="footer-separator">|</span><span>主题 </span><a href="https://github.com/jerryc127/hexo-theme-butterfly"
                                                                    target="_blank" rel="noopener"><span>Butterfly</span></a></div>
        <div>${requestScope.footer.number}</div>
    </div>
</footer>