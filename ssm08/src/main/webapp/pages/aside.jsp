<%--
  Created by IntelliJ IDEA.
  User: zh
  Date: 2019/8/3
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
                <p><security:authentication property="principal.username"></security:authentication></p>
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
                        <a href="${pageContext.request.contextPath}/permission/findall">
                            <i class="fa fa-circle-o"></i>资源权限管理
                        </a>
                    </li>

                    <li id="admin-invoice-print">
                        <a href="${pageContext.request.contextPath}/aoplog/findall?page=1&pagesize=3">
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
                        <a href="${pageContext.request.contextPath}/product/findall?page=1&pagesize=3">
                            <i class="fa fa-circle-o"></i> 产品管理
                        </a>
                    </li>

                    <li id="charts-morris">
                        <a href="${pageContext.request.contextPath}/order/findall?page=1&pagesize=3">
                            <i class="fa fa-circle-o"></i> 订单管理
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

</body>
</html>
