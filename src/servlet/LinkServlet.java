package servlet;

import cn.hutool.core.date.DateTime;
import cn.hutool.core.text.StrSpliter;
import entity.Link;
import service.LinkService;
import service.impl.LinkServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/6/10 11:18 星期三
 * @Description: ${PACKAGE_NAME}
 * @version: 1.0
 */
@WebServlet("/LinkServlet")
public class LinkServlet extends HttpServlet {

    LinkService linkService=new LinkServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      try {

          response.setContentType("text/html;charset=UTF-8");
          request.setCharacterEncoding("UTF-8");
          boolean flag=true;
          request.setAttribute("linkList",linkService.selAllLink());
          HttpSession hs=request.getSession();

          String op = request.getParameter("op");
          if(op!=null&&!"null".equals(op)){
              flag=false;
              switch (op) {
                  // 增加link信息
                  case "insLink":
                      insLink(request,response);
                      break;
                  // 更新tag信息
                  case "updLink":
                      updLink(request,response,hs);
                      break;
                  case "delLink":
                      delLink(request,response,hs);
                      break;
                  case "selLink":
                      selLink(request,response,hs);
                      break;
                  default:
                      PrintWriter  out = response.getWriter();
                      out.print("无效的指令");
                      out.close();
              }
          }
          if(flag) {
              request.getRequestDispatcher("link.jsp").forward(request, response);
          }
      }catch (Exception e){
          e.printStackTrace();
      }
    }

    protected void insLink(HttpServletRequest request, HttpServletResponse response)
            throws Exception {


        String linkName=request.getParameter("linkName");
        String linkIntroduce=request.getParameter("linkIntroduce");
        String linkUrl=request.getParameter("linkUrl");
        String linkHphoto=request.getParameter("linkHphoto");
        DateTime createTime= DateTime.now();
        HttpSession hs=request.getSession();
        Link link=new Link(1,linkHphoto,linkUrl,linkName,linkIntroduce,createTime);

        int i = linkService.insLink(link);
        if(i==1){
            hs.setAttribute("MSG",200);
            response.sendRedirect("LinkServlet");
        }else{
            hs.setAttribute("MSG",201);
            response.sendRedirect("LinkServlet");
        }


    }

    protected void updLink(HttpServletRequest request, HttpServletResponse response,HttpSession hs)
            throws Exception {

        String linkName=request.getParameter("linkName");
        String linkIntroduce=request.getParameter("linkIntroduce");
        String linkUrl=request.getParameter("linkUrl");
        String linkHphoto=request.getParameter("linkHphoto");
        String linkId = (String) hs.getAttribute("linkId");
        Link link=new Link(Integer.parseInt(linkId),linkHphoto,linkUrl,linkName,linkIntroduce, DateTime.now());
        int i = linkService.updLink(link);
        if(i==1){
            hs.setAttribute("MSG",200);
            response.sendRedirect("LinkServlet");
        }else{
            hs.setAttribute("MSG",201);
            response.sendRedirect("LinkServlet");
        }


    }

    protected void selLink(HttpServletRequest request, HttpServletResponse response,HttpSession hs)
            throws Exception {

        String linkId = request.getParameter("linkId");
        Link link = linkService.selLinkById(Integer.parseInt(linkId));
        hs.setAttribute("link",link);
        hs.setAttribute("show","true");
        hs.setAttribute("linkId",linkId);
        response.sendRedirect("LinkServlet");

    }


    protected void delLink(HttpServletRequest request, HttpServletResponse response,HttpSession hs)
            throws Exception {
        String linkId = request.getParameter("linkId");
        List<String> list = StrSpliter.splitTrim(linkId, ',', true);
        for(String a:list){
            int i = linkService.delLink(Integer.parseInt(a));
            if(i!=1){
                hs.setAttribute("MSG","201");
                break;
            }
        }
        response.sendRedirect("LinkServlet");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TagServlet.isIllegalLogin(request,response);
        HttpSession session=request.getSession();
        String placeLogin =(String) session.getAttribute("illegalLogin");
        if(placeLogin.equals("请登录")){
            return;
        }
        doPost(request,response);
    }
}
