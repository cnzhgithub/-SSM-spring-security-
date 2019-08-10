<%--
  Created by IntelliJ IDEA.
  User: zh
  Date: 2019/8/3
  Time: 9:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>后台管理系统</title>
    <link rel="stylesheet" href="/resoures/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resoures/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resoures/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="/resoures/plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="/resoures/plugins/morris/morris.css">
    <link rel="stylesheet" href="/resoures/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="/resoures/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="/resoures/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="/resoures/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="/resoures/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="/resoures/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet" href="/resoures/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="/resoures/plugins/select2/select2.css">
    <link rel="stylesheet" href="/resoures/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet" href="/resoures/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="/resoures/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="/resoures/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="/resoures/css/style.css">
    <link rel="stylesheet" href="/resoures/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="/resoures/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="/resoures/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet" href="/resoures/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>
<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <header class="main-header">


        <!-- Logo -->
        <a href="all-admin-index.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>数据</b></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>数据</b>后台管理</span>
        </a>


        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">

                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="/resoures/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">
                                <security:authentication property="principal.username"></security:authentication>
                            </span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="../img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    <small>最后登录 11:20AM</small>
                                </p>
                            </li>

                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">修改密码</a>
                                </div>
                                <div class="pull-right">
                                    <a href="${pageContext.request.contextPath}/logout.do" class="btn btn-default btn-flat">注销</a>
                                </div>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>
        </nav>
    </header>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="/resoures/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>
                        <security:authentication property="principal.username"></security:authentication>
                    </p>
                    <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
                </div>
            </div>

            <ul class="sidebar-menu">
                <li class="header">菜单</li>

                <li id="admin-index"><a href="${pageContext.request.contextPath}/pages/index.jsp"><i class="fa fa-dashboard"></i> <span>首页</span></a></li>

                <!-- 菜单 -->


                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-folder"></i> <span>系统操作</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">

                        <li id="admin-profile">
                            <a href="${pageContext.request.contextPath}/user/findall">
                                <i class="fa fa-circle-o"></i> 用户管理
                            </a>
                        </li>

                        <li id="admin-invoice">
                            <a href="${pageContext.request.contextPath}/role/findall">
                                <i class="fa fa-circle-o"></i> 角色管理
                            </a>
                        </li>

                        <li id="admin-invoice1">
                            <a href="${pageContext.request.contextPath}permission/findall">
                                <i class="fa fa-circle-o"></i>资源权限管理
                            </a>
                        </li>

                        <li id="admin-invoice-print">
                            <a href="${pageContext.request.contextPath}/aoplog/findall">
                                <i class="fa fa-circle-o"></i> 访问日志
                            </a>
                        </li>

                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-pie-chart"></i> <span>基础数据</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">

                        <li id="charts-chartjs">
                            <a href="${pageContext.request.contextPath}/order/findall?page=1&pagesize=3">
                                <i class="fa fa-circle-o"></i> 订单管理
                            </a>
                        </li>

                        <li id="charts-morris">
                            <a href="${pageContext.request.contextPath}/product/findall?page=1&pagesize=3">
                                <i class="fa fa-circle-o"></i> 产品管理
                            </a>
                        </li>

                    </ul>
                </li>
                <!-- 菜单 /-->
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <div class="content-wrapper">
        <img src="/resoures/img/avatar.png" width="100%" height="100%"/>
    </div>
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.8
        </div>
        <strong>个人学习</strong> All rights reserved.
    </footer>
    <!-- 底部导航 /-->

</div>


<script src="/resoures/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="/resoures/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="/resoures/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="/resoures/plugins/raphael/raphael-min.js"></script>
<script src="/resoures/plugins/morris/morris.min.js"></script>
<script src="/resoures/plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="/resoures/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="/resoures/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="/resoures/plugins/knob/jquery.knob.js"></script>
<script src="/resoures/plugins/daterangepicker/moment.min.js"></script>
<script src="/resoures/plugins/daterangepicker/daterangepicker.js"></script>
<script src="/resoures/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="/resoures/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="/resoures/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="/resoures/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="/resoures/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="/resoures/plugins/fastclick/fastclick.js"></script>
<script src="/resoures/plugins/iCheck/icheck.min.js"></script>
<script src="/resoures/plugins/adminLTE/js/app.min.js"></script>
<script src="/resoures/plugins/treeTable/jquery.treetable.js"></script>
<script src="/resoures/plugins/select2/select2.full.min.js"></script>
<script src="/resoures/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="/resoures/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="/resoures/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script src="/resoures/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="/resoures/plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="/resoures/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="/resoures/plugins/ckeditor/ckeditor.js"></script>
<script src="/resoures/plugins/input-mask/jquery.inputmask.js"></script>
<script src="/resoures/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="/resoures/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="/resoures/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/resoures/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="/resoures/plugins/chartjs/Chart.min.js"></script>
<script src="/resoures/plugins/flot/jquery.flot.min.js"></script>
<script src="/resoures/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="/resoures/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="/resoures/plugins/flot/jquery.flot.categories.min.js"></script>
<script src="/resoures/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="/resoures/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script src="/resoures/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script src="/resoures/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script>
    $(document).ready(function() {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
    });


    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }

    $(document).ready(function() {
        // 激活导航位置
        setSidebarActive("admin-index");
    });
</script>
</body>

</html>
<!---->

