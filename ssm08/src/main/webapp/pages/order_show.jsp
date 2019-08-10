<%--
  Created by IntelliJ IDEA.
  User: zh
  Date: 2019/8/5
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>order_show.jsp</title>
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
    <%--头部页面--%>
    <jsp:include page="header.jsp"></jsp:include>
    <%--恻边--%>
    <jsp:include page="aside.jsp"></jsp:include>
    <%--内容区域--%>
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                订单详情
                <small>订单详情列表列表</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="#">订单详情</a></li>
                <li class="active">详情</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">

            <!-- .box-body -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">列表</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--订单基本列表-->
                        <div><h3>订单基本信息</h3></div>
                        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="" style="padding-right:0px;">
                                    <input id="selall" type="checkbox" class="icheckbox_square-blue">
                                </th>
                                <th class="sorting_asc">id</th>
                                <th class="sorting_desc">订单编号</th>
                                <th class="sorting_asc sorting_asc_disabled">订单时间</th>
                                <th class="sorting_desc sorting_desc_disabled">支付方式</th>
                                <th class="sorting">人数</th>
                                <th class="text-center sorting">订单描述</th>
                                <th class="text-center">订单状态</th>

                            </tr>
                            </thead>
                            <tbody>

                                <tr>
                                    <td><input name="ids" type="checkbox"></td>
                                    <td>${order.oid}</td>
                                    <td>${order.onum}</td>
                                    <td>${order.date}</td>
                                    <td> ${order.paytype}</td>
                                    <td>${order.peoplecount}</td>
                                    <td>${order.odesc}</td>
                                    <td class="text-center">${order.status}</td>
                                </tr>

                            </tbody>
                            <!--
                                <tfoot>
                                <tr>
                                <th>Rendering engine</th>
                                <th>Browser</th>
                                <th>Platform(s)</th>
                                <th>Engine version</th>
                                <th>CSS grade</th>
                                </tr>
                                </tfoot>-->
                        </table>
                        <!--产品基本信息列表/-->
                        <div><h3>所订产品基本信息</h3></div>
                        <table id="dataList1" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="" style="padding-right:0px;">
                                    <input id="selall1" type="checkbox" class="icheckbox_square-blue">
                                </th>
                                <th class="sorting_asc">id</th>
                                <th class="sorting_desc">编号</th>
                                <th class="sorting_asc sorting_asc_disabled">名称</th>
                                <th class="sorting_desc sorting_desc_disabled">出发城市</th>
                                <th class="sorting">时间</th>
                                <th class="text-center sorting">价格</th>
                                <th class="text-center">描述</th>
                                <th class="text-center">状态</th>

                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                 <td><input name="ids" type="checkbox"></td>
                                 <td>${order.product.id}</td>
                                 <td>${order.product.pnum}</td>
                                 <td>${order.product.pname}</td>
                                 <td>${order.product.cityname}</td>
                                 <td>${order.product.date}</td>
                                 <td>${order.product.price}</td>
                                 <td>${order.product.pdesc}</td>
                                 <td class="text-center">${order.product.status}</td>
                            </tr>

                            </tbody>
                            <!--
                                <tfoot>
                                <tr>
                                <th>Rendering engine</th>
                                <th>Browser</th>
                                <th>Platform(s)</th>
                                <th>Engine version</th>
                                <th>CSS grade</th>
                                </tr>
                                </tfoot>-->
                        </table>
                        <!--游客基本信息列表/-->
                        <div>游客基本信息列表</div>
                        <table id="dataList2" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="sorting_asc">id</th>
                                <th class="sorting_desc">游客姓名</th>
                                <th class="sorting_asc sorting_asc_disabled">游客性别</th>
                                <th class="sorting_desc sorting_desc_disabled">电话号码</th>
                                <th class="sorting">游客类型</th>
                                <th class="text-center sorting">证件类型</th>
                                <th class="text-center">证件号码</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${order.tlist}" var="traveller">
                            <tr>
                                <td>${traveller.tid}</td>
                                <td>${traveller.tname}</td>
                                <td>${traveller.tsex}</td>
                                <td>${traveller.tphonenum}</td>
                                <td>${traveller.ttype}</td>
                                <td>${traveller.ctype}</td>
                                <td>${traveller.cardnum}</td>
                            </tr>
                            </c:forEach>
                            </tbody>
                            <!--
                                <tfoot>
                                <tr>
                                <th>Rendering engine</th>
                                <th>Browser</th>
                                <th>Platform(s)</th>
                                <th>Engine version</th>
                                <th>CSS grade</th>
                                </tr>
                                </tfoot>-->
                        </table>
                    </div>
                    <!-- 数据表格 /-->
                </div>
            </div>

        </section>
        <!-- 正文区域 /-->

    </div>
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
    function chageadd(){
        location.href="${pageContext.request.contextPath}/pages/product_add.jsp"
    }
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

