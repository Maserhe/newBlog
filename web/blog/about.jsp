<%@ page import="service.PhotoService" %>
<%@ page import="service.impl.PhotoServiceImpl" %>
<%@ page import="service.DescriptionService" %>
<%@ page import="service.impl.DescriptionServiceImpl" %>
<%@ page import="service.impl.CommentServiceImpl" %>
<%@ page import="service.CommentService" %>
<%@ page import="service.RightService" %>
<%@ page import="service.impl.RightServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: Maserhe
  Date: 2020/12/25
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>}">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="zh-CN" data-theme="light">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>关于 | Maserheのblog</title>
    <meta property="og:image" content="https://todcsw.github.io/img/post.jpg">
    <link rel="stylesheet" href="blog/css/index.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@latest/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@latest/dist/jquery.fancybox.min.css">
    <link rel="canonical" href="https://todcsw.github.io/about/">
    <meta name="generator" content="Hexo 4.2.0">
</head>
<body>
<%
    RightService rightService=new RightServiceImpl();
    CommentService commentService=new CommentServiceImpl();
    PhotoService photoService=new PhotoServiceImpl();
    DescriptionService descriptionService=new DescriptionServiceImpl();
    request.setAttribute("ShowComment",commentService.selComment());
    request.setAttribute("showDescription",descriptionService.selDescription());
    request.setAttribute("HeaderPhoto",photoService.selPhoto(1));
    request.setAttribute("right",rightService.selRight());
%>
<div id="body-wrap">
    <jsp:include page="header.jsp" />
    <main class="layout_page" id="content-inner">
        <div id="page">
            <div id="article-container">
                <h2>个人简历</h2>
                <ul>
                    <%--<li>java开发路上的小敢敢</li>
                    <li>名字:${requestScope.showDescription.name}</li>
                    <li>星座:${requestScope.showDescription.constellation}</li>
                    <li>&nbsp;<span style="color:red">${requestScope.showDescription.experience}</span> </li>
                    <li>最喜欢的一句话:${requestScope.showDescription.sentence}</li>
                    <li>偶像:<span style="color:red">${requestScope.showDescription.idol}</span></li>
                    <li>性格:${requestScope.showDescription.character}</li>blog_db@localhost
                    <li>联系方式:${requestScope.showDescription.contact}</li>--%>

                    <li>本科/沈阳工业大学/计算机科学与技术系/在读大三/2018-至今</li>
                    <li>Github: <a href="https://github.com/Maserhe" target="_blank" rel="noopener">https://github.com/Maserhe</a></li>
                    <li>Email: <a href="mailto:maserhelinux@gmail.com">maserhelinux@gmail.com</a></li>
                    <li>BLog: <a href="https://maserhe.top">https://maserhe.top</a></li>
                    <li>QQ:982289931<h1 id="技能清单"><a href="#技能清单" class="headerlink" title="技能清单"></a>技能清单</h1></li>
                </ul>
                <hr>
                <ul>
                    <li>语言: Java / C++</li>
                    <li>Cache：Redis / memcache</li>
                    <li>数据库相关：MySQL</li>
                    <li>前端：html / css / JavaScript</li>
                    <li>框架：SSM</li>
                    <li>版本管理：Git / SVN</li>
                    <li>其他：Ajax / XML / OOP / WebSocket / Python / 敏捷项目开发 / 设计模式 / 正则表达式 / 性能优化及安全常识 / 内部标准编程风格</li>
                    <li>以Linux为日常操作系统</li>
                    <li>擅长独立或者合作快速完成整个项目，并保持高提前上线率、低BUG率、低事故率<h1 id="工作经历"><a href="#工作经历" class="headerlink" title="工作经历"></a>工作经历</h1></li>
                </ul>
                <hr>
                <ul>
                    <li>有待完善 <span class="github-emoji" style="color: transparent;background:no-repeat url(https://github.githubassets.com/images/icons/emoji/unicode/1f604.png?v8) center/contain" data-src="https://github.githubassets.com/images/icons/emoji/unicode/1f604.png?v8">😄</span></li>
                </ul>
                <h1 id="曾获荣誉"><a href="#曾获荣誉" class="headerlink" title="曾获荣誉"></a>曾获荣誉</h1><h3 id="专业技能"><a href="#专业技能" class="headerlink" title="专业技能"></a>专业技能</h3><ul>
                <li>有待完善<span class="github-emoji" style="color: transparent;background:no-repeat url(https://github.githubassets.com/images/icons/emoji/unicode/1f604.png?v8) center/contain" data-src="https://github.githubassets.com/images/icons/emoji/unicode/1f604.png?v8">😄</span></li>
            </ul>
                <h3 id="综合素质"><a href="#综合素质" class="headerlink" title="综合素质"></a>综合素质</h3><ul>
                <li>2020.11 “辽宁省程序设计大赛(ACM) 三等奖”</li>
                <li>2020.11 “优秀团员”</li>
                <li>2020.11 “校二等奖学金”</li>
                <li>2019.11 “三好学生”</li>
                <li>2019.11 “校二等奖学金”</li>
                </ul>
                <h2>想对大家说的话:</h2>
                <ul>
                    <li>${requestScope.showDescription.information}</li>
                </ul>
            </div>
            <hr>

            <div id="post-comment">
                <div class="comment_headling"><i class="fa fa-comments fa-fw" aria-hidden="true"></i><span> 评论</span></div>
                <div class="vcomment" id="vcomment"></div>

                <script src="https://cdn.jsdelivr.net/npm/valine/dist/Valine.min.js"></script>
                <script>var GUEST_INFO = ['nick','mail','link'];
                var guest_info = 'nick,mail,link'.split(',').filter(function(item){
                    return GUEST_INFO.indexOf(item) > -1
                });
                guest_info = guest_info.length == 0 ? GUEST_INFO :guest_info;
                window.valine = new Valine({
                    el:'#vcomment',
                    notify: false,
                    verify: false,
                    appId: '${requestScope.ShowComment.appId}',
                    appKey: '${requestScope.ShowComment.appKey}',
                    placeholder: '${requestScope.ShowComment.placeholder}',
                    avatar: 'monsterid',
                    meta: guest_info,
                    pageSize: '10',
                    lang: 'zh-cn',
                    recordIP: false,
                    serverURLs: ''
                });
                </script>
            </div>

        </div>

        <jsp:include page="right.jsp" />

    </main>
    <jsp:include page="foot.jsp" />
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@latest/dist/jquery.min.js"></script>
<script src="blog/js/utils.js"></script>
<!-- <script src="js/main.js"></script> -->
<!-- <script src="js/tw_cn.js"></script> -->
<script src="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@latest/dist/jquery.fancybox.min.js"></script>
<script defer id="ribbon" src="blog/js/third-party/canvas-ribbon.js" size="150" alpha="0.6" zIndex="-1" mobile="true"
        data-click="false"></script>
<script id="canvas_nest" color="0,0,255" opacity="0.7" zIndex="-1" count="99" mobile="true" src="blog/js/third-party/canvas-nest.js"></script>
<script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>

<script src="https://cdn.jsdelivr.net/npm/instant.page@latest/instantpage.min.js" type="module"></script>
<script src="https://cdn.jsdelivr.net/npm/lazysizes@latest/lazysizes.min.js" async=""></script>
<script id="ribbon_piao" mobile="true" src="https://cdn.jsdelivr.net/gh/jerryc127/butterfly_cdn@2.1.0/js/piao.js"></script>
<script src="blog/js/refuseF12.js"></script>
<%--<script src="blog/js/jquery-3.4.1.js"></script>--%>
<script src="blog/js/third-party/click_heart.js"></script>
<script>
    $(function () {
        $("#veditor").css("backgroundImage","url("+"${requestScope.ShowComment.placePhoto}"+")");
        if("${requestScope.ShowComment.flag}"!="true"){
            $("#post-comment").css("display","none");
        }
        $(".not-index-bg").css("background-image","url("+"${requestScope.HeaderPhoto.aboutPhoto}"+")");

    })
</script>

</body>
</html>
