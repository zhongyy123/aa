<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <link rel="icon" href="favicon.ico" type="image/ico">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/materialdesignicons.min.css" rel="stylesheet">
    <link href="css/style.min.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript"></script>
    <title>注册界面</title>
    <style type="text/css">
        h1 {
            text-align: center;
        }

        h4 {
            text-align: right;
            color: red;
        }

        .lyear-wrapper {
            position: relative;
        }

        .lyear-login {
            display: flex !important;
            min-height: 100vh;
            align-items: center !important;
            justify-content: center !important;
        }

        .login-center {
            background: #fff;
            min-width: 38.25rem;
            padding: 2.14286em 3.57143em;
            border-radius: 5px;
            margin: 2.85714em 0;
        }

        .login-header {
            margin-bottom: 1.5rem !important;
        }

        .login-center .has-feedback.feedback-left .form-control {
            padding-left: 38px;
            padding-right: 12px;
        }

        .login-center .has-feedback.feedback-left .form-control-feedback {
            left: 0;
            right: auto;
            width: 38px;
            height: 38px;
            line-height: 38px;
            z-index: 4;
            color: #dcdcdc;
        }

        .login-center .has-feedback.feedback-left.row .form-control-feedback {
            left: 15px;
        }
    </style>

    <script type="text/javascript">
        $(document).ready(function () {
            //alert("测试jQuery是否能用");
            $("#form1").submit(function () {
                var name = $("#name").val();//获取提交的值
                if (name.length == 0) {//进行判断，如果获取的值为0那么提示账号不能为空
                    //alert("aa");//测试使用
                    $("#nameError").html("账号不能为空");
                    return false;
                }

                //密码进行验证不能为空
                var password = $("#password").val();//获取提交的密码的值
                if (password.length == 0) {
                    $("#passwordError").html("密码不能为空");
                    return false;
                }

                //确认密码进行验证
                var relpassword = $("#relpassword").val();//获取提交的确认密码的值
                if (relpassword.length == 0) {
                    $("#relpasswordError").html("确认密码不能为空哦");
                    return false;
                }

                if (password != relpassword) {
                    $("#relpasswordError").html("确认密码输入不正确，请重新输入");
                    return false;
                }
            });

        });
    </script>
</head>
<body>
<form action="aa" method="post" id="form1">
    <div class="row lyear-wrapper">
        <div class="lyear-login">
            <div class="login-center">
                <div class="login-header text-center">
                    <h3>李杰后台注册界面</h3>
                </div>
                <div class="form-group has-feedback feedback-left">
                    <input type="text" placeholder="请输入您的用户名" class="form-control" name="name" id="name"/>
                    <div id="nameError" style="display:inline;color:red;"></div>
                    <span class="mdi mdi-account form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group has-feedback feedback-left">
                    <input type="password" placeholder="请输入密码" class="form-control" id="password" name="password"/>
                    <div id="passwordError" style="display:inline;color:red;"></div>
                    <span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group has-feedback feedback-left">
                    <input type="password" placeholder="请确认密码" class="form-control" id="relpassword"
                           name="relpassword"/>
                    <div id="relpasswordError" style="display:inline;color:red;"></div>
                    <span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group has-feedback feedback-left">
                    <input type="text" placeholder="请输入电话号码" class="form-control" name="phone" id="phone"/>
                    <div id="nameError" style="display:inline;color:red;"></div>
                    <span class="mdi mdi-cellphone-android form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group has-feedback feedback-left">
                    <input type="text" placeholder="请输入电子邮件" class="form-control" name="email" id="email"/>
                    <div id="nameError" style="display:inline;color:red;"></div>
                    <span class="mdi mdi-email form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group">
                    <input class="btn btn-block btn-primary" type="submit" value="注册">
                    <input class="btn btn-block btn-cyan" type="reset" value="重置"/>
                    <a class="btn btn-block btn btn-link" href="login.jsp" target="_blank">返回登陆</a>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>