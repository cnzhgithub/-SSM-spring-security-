<%--
  Created by IntelliJ IDEA.
  User: zh
  Date: 2019/8/9
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>order_list.jsp</title>
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
                日志管理
                <small>日志列表</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="#">日志管理</a></li>
                <li class="active">日志信息</li>
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

                        <!--工具栏-->
                        <div class="box-tools pull-right">
                            <div class="has-feedback">
                                <input type="text" class="form-control input-sm" placeholder="搜索">
                                <span class="glyphicon glyphicon-search form-control-feedback"></span>
                            </div>
                        </div>
                        <!--工具栏/-->

                        <!--数据列表-->
                        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="" style="padding-right:0px;">
                                    <input id="selall" type="checkbox" class="icheckbox_square-blue">
                                </th>
                                <th class="sorting_asc">id</th>
                                <th class="sorting_desc">访问时间</th>
                                <th class="sorting_asc sorting_asc_disabled">姓名</th>
                                <th class="sorting_asc">ip</th>
                                <th class="sorting_asc">url</th>
                                <th class="sorting_asc">执行时间</th>
                                <th class="sorting_asc">方法名</th>
                            </tr>
                            </thead>
                            <tbody>

                            <c:forEach items="${loglist.list}" var="eachlog">
                                <tr>
                                    <td><input name="ids" type="checkbox"></td>
                                    <td>${eachlog.id}</td>
                                    <td>${eachlog.time}</td>
                                    <td>${eachlog.username}</td>
                                    <td>${eachlog.ip}</td>
                                    <td>${eachlog.url}</td>
                                    <td>${eachlog.executiontime}</td>
                                    <td>${eachlog.method}</td>
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
                        <!--数据列表/-->

                        <!--工具栏-->

                    </div>

                    <!-- 数据表格 /-->


                </div>
                <!-- /.box-body -->

                <!-- .box-footer-->
                <div class="box-footer">
                    <div class="pull-left">
                        <div class="form-group form-inline">
                            每页
                            <select id="changep" class="form-control" onchange="changepagesize()">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select> 条
                        </div>
                    </div>

                    <div class="box-tools pull-right">
                        <ul class="pagination">
                            <li>
                                <a href="findall?page=1&pagesize=${loglist.pageSize}" aria-label="Previous">首页</a>
                            </li>
                            <li><a href="findall?page=${loglist.pageNum-1}&pagesize=${loglist.pageSize}">上一页</a></li>
                            <c:forEach begin="1" end="${loglist.pages}" var="pagenum">
                                <li><a href="findall?page=${pagenum}&pagesize=${loglist.pageSize}">${pagenum}</a></li>

                            </c:forEach>
                            <li><a href="findall?page=${loglist.pageNum+1}&pagesize=${loglist.pageSize}">下一页</a></li>
                            <li>
                                <a href="findall?page=${loglist.pages}&pagesize=${loglist.pageSize}" aria-label="Next">尾页</a>
                            </li>
                        </ul>
                    </div>

                </div>
                <!-- /.box-footer-->



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

    function changepagesize(){
        var pagesize = $("#changep").val();
        location.href="findall?page=1&pagesize="+pagesize;
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



