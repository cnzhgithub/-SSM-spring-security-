<%--
  Created by IntelliJ IDEA.
  User: zh
  Date: 2019/8/4
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>product_list.jsp</title>
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
                添加产品
                <small>添加产品</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="#">添加产品</a></li>
                <li class="active">产品信息填写</li>
            </ol>
        </section>
        <!-- 内容头部 /-->
        <%--正文--%>

        <section class="content">
            <form method="post" action="/product/save">

                <div class="tab-pane" id="tab-common">
                    <div class="row data-type">
                        <div class="col-md-2 title">id</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="id">
                        </div>

                        <div class="col-md-2 title">产品编号</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="pnum">
                        </div>

                        <div class="col-md-2 title">产品名称</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="pname">
                        </div>

                        <div class="col-md-2 title">出发城市</div>
                        <div class="col-md-4 data">

                        <input type="text" class="form-control" name="cityname">

                    </div>
                        <div class="col-md-2 title">时间</div>
                        <div class="col-md-4 data">
                        <input type="text" class="form-control" name="pdate">
                    </div>

                    </div>
                    <div class="col-md-2 title">价格</div>
                    <div class="col-md-4 data">
                        <div class="input-group">
                            <span class="input-group-addon">¥</span>
                            <input type="text" class="form-control" name="pprice">
                            <span class="input-group-addon">.00</span>
                        </div>
                        <input type="text" class="form-control" name="pprice">
                    </div>

                </div>
                <div class="col-md-2 title">产品描述</div>
                <div class="col-md-4 data">
                    <input type="text" class="form-control" name="pdesc">
                </div>
                        <div class="col-md-2 title">状态</div>
                        <div class="col-md-4 data">
                        <input type="text" class="form-control" name="pstastus">
                </div>

              <div class="col-md-2 title"></div>
              <div class="col-md-10 data text-center">

    <input type="submit" class="form-control" value="提交">
</div>

              </div>
</div>
</form>
</section>
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

    $(document).ready(function () {
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

    $(document).ready(function () {
        // 激活导航位置
        setSidebarActive("admin-index");
    });
</script>
</div>
</body>
</html>
