<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/bootstrap-datepicker/bootstrap-datepicker3.min.css">
    <link href="<%=request.getContextPath()%>/css/style.min.css" rel="stylesheet">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/perfect-scrollbar.min.js"></script>
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/style.min.css" rel="stylesheet">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/main.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/perfect-scrollbar.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/main.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script><!-- 引用jquery.js -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/perfect-scrollbar.min.js"></script>
    <!--日期选择插件-->
    <script src="js/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    <script src="js/bootstrap-datepicker/locales/bootstrap-datepicker.zh-CN.min.js"></script>
    <script type="text/javascript" src="js/main.min.js"></script>
    <link rel="icon" href="favicon.ico" type="image/ico">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/materialdesignicons.min.css" rel="stylesheet">
    <!--日期选择插件-->
    <link rel="stylesheet" href="js/bootstrap-datepicker/bootstrap-datepicker3.min.css">
    <link href="css/style.min.css" rel="stylesheet">
    <title>SpringMVCspringMybatis增删改查页面</title>

    <%--文件上传样式--%>
    <style>
        .fileinput-button {
            position: relative;
            overflow: hidden;
            background: white;
            width: 70px;
            height: 30px;
            color: cyan;
            font-size: 14px;
            text-align: center;
            border: 0;
            border-radius: 5%;
            line-height: 30px;
        }

        .fileinput-button:hover {
            background: #81F7F3;
        }

        .fileinput-button input {
            position: absolute;
            top: 0;
            right: 0;
            margin: 0;
            opacity: 0;
            -ms-filter: 'alpha(opacity=0)';
            font-size: 200px;
            direction: ltr;
            cursor: pointer;
        }

        /* Fixes for IE < 8 */
        @media screen\9 {
            .fileinput-button input {
                filter: alpha(opacity=0);
                font-size: 100%;
                height: 100%;
            }


    </style>

    <%--显示新增上传图片--%>
    <script>
        function aa() {
            var docObj = document.getElementById("headPath");
            var imgObjPreview = document.getElementById("preview");
            if (docObj.files && docObj.files[0]) {
                //火狐下，直接设img属性
                imgObjPreview.style.display = 'block';
                imgObjPreview.style.width = '100px';
                imgObjPreview.style.height = '70px';
                //imgObjPreview.src = docObj.files[0].getAsDataURL();
                //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
                imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
            } else {
                //IE下，使用滤镜
                docObj.select();
                var imgSrc = document.selection.createRange().text;
                var localImagId = document.getElementById("localImag");
                //必须设置初始大小
                localImagId.style.width = "100px";
                localImagId.style.height = "70px";
                //图片异常的捕捉，防止用户修改后缀来伪造图片
                try {
                    localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                    localImagId.filters
                        .item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
                } catch (e) {
                    alert("您上传的图片格式不正确，请重新选择!");
                    return false;
                }
                imgObjPreview.style.display = 'none';
                document.selection.empty();
            }
            return true;
        }
    </script>
    <%--显示修改上传图片--%>
    <script>
        function bb() {
            var docObj = document.getElementById("uheadPath");
            var imgObjPreview = document.getElementById("preview1");
            if (docObj.files && docObj.files[0]) {
                //火狐下，直接设img属性
                imgObjPreview.style.display = 'block';
                imgObjPreview.style.width = '100px';
                imgObjPreview.style.height = '70px';
                //imgObjPreview.src = docObj.files[0].getAsDataURL();
                //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
                imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
            } else {
                //IE下，使用滤镜
                docObj.select();
                var imgSrc = document.selection.createRange().text;
                var localImagId = document.getElementById("localImag1");
                //必须设置初始大小
                localImagId.style.width = "100px";
                localImagId.style.height = "70px";
                //图片异常的捕捉，防止用户修改后缀来伪造图片
                try {
                    localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                    localImagId.filters
                        .item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
                } catch (e) {
                    alert("您上传的图片格式不正确，请重新选择!");
                    return false;
                }
                imgObjPreview.style.display = 'none1';
                document.selection.empty();
            }
            return true;
        }
    </script>

    <script type="text/javascript">
        //序列化
        $(function () {
            $.fn.serializeObject = function () {
                var o = {};
                var a = this.serializeArray();
                $.each(a, function () {
                    if (o[this.name] !== undefined) {
                        if (!o[this.name].push) {
                            o[this.name] = [o[this.name]];
                        }
                        o[this.name].push(this.value || '');
                    } else {
                        o[this.name] = this.value || '';
                    }
                });
                return o;
            };

            save();//
            cal();//清空新增框里面的值
            getdept();
            query(1);

            //首页
            $("#first").click(function () {
                query(1);
            });

            //尾页
            $("#last").click(function () {
                //获取最后一页
                var count = $("#pageCount").val();
                query(count);
            });

            //上页
            $("#up").click(function () {
                var pageNo = $("#pageNo").val();
                if (pageNo != "1") {
                    //先转换成INT数据类型进行计算
                    query(parseInt(pageNo) - 1);
                }
            });


            //下页
            $("#down").click(function () {
                var pageNo = $("#pageNo").val();
                var pageCount = $("#pageCount").val();
                if (pageNo != pageCount) {
                    query(parseInt(pageNo) + 1);
                }
            });


            //改变每页显示多少条记录
            $("#ps").change(function () {
                var pageSize = $("#ps").val();//获取下拉框选中的值
                $("#pageSize").val(pageSize);
                query(1);
            });


            //取消修改
            $("#calUpdate").click(function () {
                $("#updateDiv").hide();
            })

            //显示新增
            $("#addEmp").click(function () {
                $("#addDiv").show();
            });

            //取消(隐藏)新增
            $("#calEmp").click(function () {
                $("#addDiv").hide();
                cal();//清空新增框里面的值
            })

        });


        //新增触发事件
        function save() {
            $("#addButton").click(function () {

                var formData = new FormData();//这里需要实例化一个FormData来进行文件上传
                formData.append("file", $("#headPath")[0].files[0]);
                //alert($("#headPath")[0].files[0])
                //序列化表单不会序列化file字段.
                var emp = $("#addForm").serializeObject();
                //把json转换成formdate
                Object.keys(emp).forEach((key) => {
                    formData.append(key, emp[key]);
                    //alert(key+" "+emp[key]);
                });

                $.ajax({
                    url: "save",
                    type: "post",
                    dataType: "json",
                    data: formData,
                    processData: false,//默认true,会转换成字符串,因为我们需要提交流,所以不能使用True
                    contentType: false,//这个必须有，不然会报错
                    success: function (emp) {

                        $("#emplist").append("<tr><td>" + emp.id + "</td><td><img width=100 height=70  src='testResponseEntity?headPath=" + emp.headPath + "'></td><td>" + emp.lastName + "</td><td>" + (emp.gender == 1 ? '男' : '女') + "</td><td>" + emp.birth + "</td><td>" + emp.salary + "</td><td>" + emp.email + "</td><td>" + emp.department.departmentName + "</td><td><a class='stud' href='update/" + emp.id + "'title=\"修改\" data-toggle=\"tooltip\"><i class=\"mdi mdi-pencil\"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class='delete' href='delemp/" + emp.id + "'title=\"删除\" data-toggle=\"tooltip\"><i class=\"mdi mdi-window-close\"></i></a></td></tr>");
                        $("#addDiv").hide();

                        cal();//清空新增框里面的值
                        query(1);//新增完成跳到第一页或最后一页

                    },

                    error: function () {
                        alert("发生错误");
                    }

                });

            });
        }

        //清空新增框里值
        function cal() {
            $("#headPath").val("");
            $("#lastName").val("");
            $("#birth").val("");
            $("#salary").val("");
            $("#email").val("");
            $("#department.id").val("");
            $("input[type='radio'][name='gender']").each(function () {
                $(this).prop("checked", false);
            });
        }

        //删除
        function del() {
            //因为异步加载，下面执行的时候，上面的数据还没有加载完成
            $(".delete").click(function () {
                //confirm 你确定返回true,取消返回false
                if (confirm("您确定要删除吗？")) {
                    var id = $(this).attr("href");//自定义abc就是对应的ID
                    var tr = $(this).parent().parent();//获取当前TR，需要删除的TR
                    //query(1);//删除完成跳到第一页或最后一页
                    $.ajax({
                        type: "DELETE",
                        url: id,
                        dataType: "text",
                        success: function () {
                            tr.remove();
                            alert("删除成功！");
                        },
                        error: function () {
                            alert("删除失败！");
                        }
                    });
                    return false;
                }
                return false;
            })
        }


        //修改触发事件
        function update() {
            $("#updateButton").click(function () {
                var formData = new FormData();//这里需要实例化一个FormData来进行文件上传
                formData.append("file", $("#uheadPath")[0].files[0]);
                //alert($("#uheadPath")[0].files[0])
                //序列化表单不会序列化file字段.
                var emp = $("#updateForm").serializeObject();
                //把json转换成formdate
                Object.keys(emp).forEach((key) => {
                    formData.append(key, emp[key]);
                    //alert(key+" "+emp[key]);
                });
                formData.append("_method", "PUT");
                $.ajax({
                    url: "update",
                    type: "post",
                    data: formData,
                    dataType: "json",
                    processData: false,//默认true,会转换成字符串,因为我们需要提交流,所以不能使用True
                    contentType: false,//这个必须有，不然会报错
                    success: function (empl) {
                        //循环所有的TR里面的第一个TD
                        $("#emplist tr").find("td:eq(0)").each(function () {
                            //如果第一个TD的值正好是我们需要修改的ID值，就表示我们刚才修改的就是这行
                            if ($(this).text() == empl.id) {
                                $(this).parent().find("td:eq(1)").html("<img class=img-avatar img-avatar-55 m-r-14 src='testResponseEntity?headPath=" + empl.headPath + "'>");
                                $(this).parent().find("td:eq(2)").text(empl.lastName);
                                $(this).parent().find("td:eq(3)").html((empl.gender == 1 ? "男" : "女"));
                                $(this).parent().find("td:eq(4)").text(empl.birth);
                                $(this).parent().find("td:eq(5)").text(empl.salary);
                                $(this).parent().find("td:eq(6)").text(empl.email);
                                $(this).parent().find("td:eq(7)").text(empl.department.departmentName);
                            }
                            $("#updateDiv").hide();

                        });

                    },
                    error: function () {
                        alert("发生错误");
                    }

                });
            });

            //修改回显
            $(".stud").click(function () {
                var id = $(this).attr("href");
                $("#updateDiv").show();
                //通过ID查询对要修改的对象,进行数据回显
                $.ajax({
                    url: id,
                    type: "GET",
                    dataType: "json",
                    success: function (emp) {
                        $("#id").val(emp.id);//修改,是根据ID来修改
                        var head = "testResponseEntity?headPath=" + emp.headPath;
                        $("#tu").attr('src', head);
                        $("#ulastName").val(emp.lastName);
                        $(":radio[value=" + emp.gender + "]").prop("checked", true);
                        $("#ubirth").val(emp.birth);
                        $("#usalary").val(emp.salary);
                        $("#uemail").val(emp.email);
                        $("select option[value='" + emp.department.id + "']").prop("selected", true);

                    },
                    error: function () {
                        alert("发生错误");
                    }
                });
                return false;
            });
        }

        //查询
        function query(pageNo) {

            var pageSize = $("#pageSize").val();
            $.ajax({
                type: "get",
                url: "emps",
                dataType: "json",
                data: {"pageNo": pageNo, "pageSize": pageSize},
                success: function (page)//page(list)
                {
                    var pageSize = page.pageSize;
                    var pageNo = page.pageNo;
                    var pageCount = page.pageCount;
                    var sum = page.sum;

                    $("#a").text(pageSize);
                    $("#b").text(pageNo);
                    $("#c").text(pageCount);
                    $("#d").text(sum);

                    //设置隐藏值,就是分页信息
                    $("#pageSize").val(page.pageSize);
                    $("#pageNo").val(page.pageNo);
                    $("#pageCount").val(page.pageCount);
                    $("#sum").val(page.sum);

                    //首尾给效果
                    if (page.pageNo == page.pageCount) {
                        $("#down").css("background-color", "grey");
                    } else {
                        $("#down").css("background-color", "");
                    }

                    if (page.pageNo == 1) {
                        $("#up").css("background-color", "grey");
                    } else {
                        $("#up").css("background-color", "");
                    }
                    if (page.pageNo == 1) {
                        $("#first").css("background-color", "grey");
                    } else {
                        $("#first").css("background-color", "");
                    }
                    if (page.pageNo == page.pageCount) {
                        $("#last").css("background-color", "grey");
                    } else {
                        $("#last").css("background-color", "");
                    }

                    $("#emplist").empty();//先清空内容,这里会给表头一起清空.
                    //所以给表头加上
                    $("#emplist").append("<tr><th>ID</th><th>头像</th><th>姓名</th><th>性别</th><th>生日</th><th>工资</th><th>邮箱</th><th>部门</th><th>操作</th></tr>");
                    var list = page.list;
                    for (var i = 0; i < list.length; i++) {
                        var emp = list[i];
                        $("#emplist").append("<tr><td>" + emp.id + "</td><td><img class=img-avatar img-avatar-55 m-r-14 src='testResponseEntity?headPath=" + emp.headPath + "'></td><td>" + emp.lastName + "</td><td>" + (emp.gender == 1 ? '男' : '女') + "</td><td>" + emp.birth + "</td><td>" + emp.salary + "</td><td>" + emp.email + "</td><td>" + emp.department.departmentName + "</td><td><a class='stud btn btn-xs btn-default btn btn-link' href='update/" + emp.id + "'title=\"修改\" data-toggle=\"tooltip\"><i class=\"mdi mdi-pencil\"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class='delete btn btn-xs btn-default btn btn-link' href='delemp/" + emp.id + "'title=\"删除\" data-toggle=\"tooltip\"><i class=\"mdi mdi-window-close\"></i></a></td></tr>");
                    }
                    del();//为了sc事件
                    update();//修改
                },
                error: function () {
                    alert("失败");
                }
            });
        }

        //查询部门
        function getdept() {
            $("#department.id").empty();
            $.ajax({
                url: "dept",
                dataType: "json",
                success: function (dept) {
                    for (var i = 0; i < dept.length; i++) {
                        $("select[name='department.id']").append("<option value=" + dept[i].id + ">" + dept[i].departmentName + "</option>");
                    }
                },
                error: function () {
                    alert("部门发生错误");
                }
            });
        }

    </script>
</head>
<body>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <aside class="lyear-layout-sidebar">
            <!-- logo -->
            <div id="logo" class="sidebar-header">
                <a href="list"><img src="images/13.gif" alt="The selected child description" title="LightYear"/></a>
            </div>
            <div class="lyear-layout-sidebar-scroll">
                <nav class="sidebar-main">
                    <ul class="nav nav-drawer">
                        <li class="nav-item"><a href="index.jsp"><i class="mdi mdi-home"></i> 首页</a></li>
                        <li class="nav-item"><a href="list"><i class="mdi mdi-pencil"></i> CRUD</a></li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-palette"></i> UI 图库</a>
                            <ul class="nav nav-subnav">
                                <li><a href="a.jsp">李杰名照</a></li>
                                <li><a href="b.jsp">幻灯片</a></li>
                                <li><a href="head.jsp">李杰头像库</a></li>
                            </ul>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-palette"></i> 李杰娱乐</a>
                            <ul class="nav nav-subnav">
                                <li><a href="play.jsp">找色块</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!--End 左侧导航-->

        <!--头部信息-->
        <header class="lyear-layout-header">
            <nav class="navbar navbar-default">
                <div class="topbar">
                    <div class="topbar-left">
                        <div class="lyear-aside-toggler">
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                        </div>
                        <span class="navbar-page-title">CRUD </span>
                    </div>

                    <ul class="topbar-right">
                        <li class="dropdown dropdown-profile">
                            <a href="javascript:void(0)" data-toggle="dropdown">
                                <img class="img-avatar img-avatar-48 m-r-10" src="aaa.jpg" alt="设置"/>
                                <span>设置<span class="caret"></span></span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li><a href="login.jsp"><i class="mdi mdi-logout-variant"></i>退出登录</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>

        <!--页面主要内容-->
        <main class="lyear-layout-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-13">
                        <div class="card">
                            <div class="toolbar-btn-action">
                                <a class="btn btn-link btn-round btn-w-md " title="新增" data-toggle="tooltip"
                                   id="addEmp"><i class="mdi mdi-plus"></i></a>
                            </div>
                            <input type="hidden" name="pageSize" id="pageSize" value="5">
                            <input type="hidden" name="pageNo" id="pageNo">
                            <input type="hidden" name="pageCount" id="pageCount">
                            <input type="hidden" name="sum" id="sum">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover  table-bordered" id="emplist">
                                        <tr>
                                            <td><fmt:message key="test.id"></fmt:message></td>
                                            <td><fmt:message key="test.headPath"></fmt:message></td>
                                            <td><fmt:message key="test.lastName"></fmt:message></td>
                                            <td><fmt:message key="test.gender"></fmt:message></td>
                                            <td><fmt:message key="test.birth"></fmt:message></td>
                                            <td><fmt:message key="test.salary"></fmt:message></td>
                                            <td><fmt:message key="test.email"></fmt:message></td>
                                            <td><fmt:message key="test.department"></fmt:message></td>
                                            <td><fmt:message key="test.edit"></fmt:message></td>
                                        </tr>
                                    </table>
                                    <br>
                                    每页有<span class="btn btn-link" id="a"></span>条 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    这是第<span class="btn btn-link" id="b"></span>页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    总共有<span class="btn btn-link" id="c"></span>页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    总共有<span class="btn btn-link" id="d"></span>条&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br>

                                    <nav>
                                        <ul class="pagination pagination-circle">
                                            <li>
                                                <a id="first">
                                                    <span><i class="mdi mdi-chevron-left"></i></span>
                                                </a>
                                            </li>
                                            <li class="active"><a id="up">上</a></li>
                                            <li class="active"><a id="down">下</a></li>
                                            <li>
                                                <a id="last">
                                                    <span><i class="mdi mdi-chevron-right"></i></span>
                                                </a>
                                            </li>
                                            <li>
                                                <select class="btn btn-link " title="每页显示" data-toggle="tooltip"
                                                        id="ps">
                                                    <option value="5">5</option>
                                                    <option value="4">4</option>
                                                    <option value="3">3</option>
                                                    <option value="2">2</option>
                                                    <option value="1">1</option>
                                                </select>
                                            </li>
                                        </ul>
                                    </nav>

                                    <br>
                                    <!-- 新增-->
                                    <div id="addDiv" style="display: none;">
                                        <form id="addForm">
                                            <div class="form-group">
                                                <label class="col-xs-12" for="example-text-input">头像</label>
                                                <div id="localImag">
                                                    <img class="img-avatar img-avatar-90 m-r-45" id="preview" width=-1
                                                         height=-1 style="diplay: none"/>
                                                </div>
                                                <div class="fileinput-button">
                                                    <a>
                                                        选择头像<input type="file" name="file" id="headPath"
                                                                   onchange="javascript:aa();">
                                                    </a>
                                                </div>
                                            </div>

                                            <label class="col-xs-12" for="example-text-input">姓名</label>
                                            <div class="col-xs-5">
                                                <input id="lastName" name="lastName" class="form-control" type="text"
                                                       id="example-text-input" name="example-text-input"
                                                       placeholder="请输入姓名..">
                                            </div>

                                            <label class="col-xs-12" for="example-text-input">性别</label>
                                            <div class="example-box col-xs-5">
                                                <label class="lyear-radio radio-cyan m-t-10">
                                                    <input type="radio" name="gender" value="1"
                                                           checked=""><span>男</span>
                                                </label>
                                                <label class="lyear-radio radio-danger m-t-10">
                                                    <input type="radio" name="gender" value="0"
                                                           checked=""><span>女</span>
                                                </label>
                                            </div>

                                            <label class="col-xs-12" for="example-text-input">生日</label>
                                            <div class="col-xs-5">
                                                <input id="birth" name="birth" class="form-control js-datepicker m-b-10"
                                                       type="text" id="example-datepicker"
                                                       name="example-datepicker" placeholder="请输入生日.." value=""
                                                       data-date-format="yyyy-mm-dd"/>

                                            </div>

                                            <label class="col-xs-12" for="example-text-input">工资</label>
                                            <div class="col-xs-5">
                                                <input id="salary" name="salary" class="form-control" type="text"
                                                       id="example-text-input" name="example-text-input"
                                                       placeholder="请输入工资..">
                                            </div>

                                            <label class="col-xs-12" for="example-text-input">邮箱</label>
                                            <div class="col-xs-5">
                                                <input id="email" name="email" class="form-control" type="text"
                                                       id="example-text-input" name="example-text-input"
                                                       placeholder="请输入邮箱..">
                                            </div>

                                            <div class="form-group">
                                                <label class="col-xs-12" for="example-select">部门</label>
                                                <div class="col-xs-2">
                                                    <select id="department.id" name="department.id" class="form-control"
                                                            id="example-select" name="example-select" size="1">
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-9">
                                                <input class=" btn btn-link  btn-round btn-w-md" type="button"
                                                       value="确定新增" id="addButton"/>
                                                <input class=" btn btn-link  btn-round btn-w-md" type="button"
                                                       value="取消新增" id="calEmp"/>
                                            </div>
                                        </form>
                                    </div>


                                    <!-- 修改 -->
                                    <div id="updateDiv" style="display: none;">
                                        <form id="updateForm">
                                            <input type="hidden" name="id" id="id">

                                            <div class="form-group">
                                                <label class="col-xs-12" for="example-text-input">头像</label>
                                                <div id="localImag1">
                                                    <img class="img-avatar img-avatar-90 m-r-45" id="preview1" width=-1
                                                         height=-1 style="diplay: none1"/>
                                                </div>
                                                <div class="fileinput-button">
                                                    <a>
                                                        选择头像<input type="file" name="headPath" alt="" src=""
                                                                   id="uheadPath" onchange="javascript:bb();">
                                                    </a>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-xs-12" for="example-select">当前头像</label>
                                                <div class="col-xs-5">
                                                    <img class="img-avatar img-avatar-60 m-r-15" id="tu"><br>
                                                </div>
                                            </div>

                                            <label class="col-xs-12" for="example-text-input">姓名</label>
                                            <div class="col-xs-5">
                                                <input id="ulastName" name="lastName" class="form-control" type="text"
                                                       id="example-text-input" name="example-text-input"
                                                       placeholder="请输入姓名..">
                                            </div>

                                            <label class="col-xs-12" for="example-text-input">性别</label>
                                            <div class="example-box col-xs-5">
                                                <label class="lyear-radio radio-cyan m-t-10">
                                                    <input type="radio" name="gender" value="1"
                                                           checked=""><span>男</span>
                                                </label>
                                                <label class="lyear-radio radio-danger m-t-10">
                                                    <input type="radio" name="gender" value="0"
                                                           checked=""><span>女</span>
                                                </label>
                                            </div>

                                            <label class="col-xs-12" for="example-text-input">生日</label>
                                            <div class="col-xs-5">
                                                <input id="ubirth" name="birth"
                                                       class="form-control js-datepicker m-b-10" type="text"
                                                       id="example-datepicker"
                                                       name="example-datepicker" placeholder="请输入生日.." value=""
                                                       data-date-format="yyyy-mm-dd"/>

                                            </div>

                                            <label class="col-xs-12" for="example-text-input">工资</label>
                                            <div class="col-xs-5">
                                                <input id="usalary" name="salary" class="form-control" type="text"
                                                       id="example-text-input" name="example-text-input"
                                                       placeholder="请输入工资..">
                                            </div>

                                            <label class="col-xs-12" for="example-text-input">邮箱</label>
                                            <div class="col-xs-5">
                                                <input id="uemail" name="email" class="form-control" type="text"
                                                       id="example-text-input" name="example-text-input"
                                                       placeholder="请输入邮箱..">
                                            </div>

                                            <div class="form-group">
                                                <label class="col-xs-12" for="example-select">部门</label>
                                                <div class="col-xs-2">
                                                    <select id="department.id" name="department.id" class="form-control"
                                                            id="example-select" name="example-select" size="1">
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-8">
                                                <input class=" btn btn-link  btn-round btn-w-md" type="button"
                                                       value="确定修改" id="updateButton"/>
                                                <input class=" btn btn-link  btn-round btn-w-md" type="button"
                                                       value="取消修改" id="calUpdate"/>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>
</main>
</body>
</html>