<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>${_plugin.name} - V${_plugin.version}</title>

    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/css/ace.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="assets/css/jquery.gritter.css"/>

    <script src="assets/js/jquery-2.0.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/typeahead-bs2.min.js"></script>
    <script src="assets/js/ace-elements.min.js"></script>
    <script src="assets/js/ace.min.js"></script>
    <script src="assets/js/ace-extra.min.js"></script>

    <script src="assets/js/jquery.gritter.min.js"></script>
    <script src="assets/js/bootbox.min.js"></script>
    <script src="js/set_update.js"></script>
    <script>
        $(document).ready(function() {
            $("#testEmailService").click(function(e){
                $.get("testEmailService",function(data){

                })
            })
        });
    </script>
</head>
<body>
<div class="main-container">
    <form id="ajaxemailServiceMsg" class="form-horizontal" role="form">
        <h4 class="header blue">邮件服务，让你更快的了解网站情况</h4>

        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 登陆名 </label>

            <div class="col-sm-9">
                <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" value="${from?''}" name="from">
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> SMTP服务器 </label>

            <div class="col-sm-9">
                <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" value="${smtpServer?''}"
                       name="smtpServer">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 密码 </label>

            <div class="col-sm-9">
                <input type="password" id="form-field-1" class="col-xs-10 col-sm-5" value="${password?''}"
                       name="password">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 端口 </label>

            <div class="col-sm-9">
                <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" value="${port?''}" name="port"
                       maxlength="5">
            </div>
        </div>
        <div class="space-4"></div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 收件邮件地址 </label>

            <div class="col-sm-9">
                <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" value="${to?''}" name="to">
            </div>
        </div>
        <div class="clearfix form-actions">
            <div class="col-md-offset-3 col-md-9">
                <button class="btn" type="button" id="testEmailService">
                    <i class="icon-ok bigger-110"></i> 测试一下
                </button>
                <button class="btn btn-info" type="button" id="emailServiceMsg">
                    <i class="icon-ok bigger-110"></i> 提交
                </button>
            </div>
        </div>
    </form>
</div>
<input id="gritter-light" checked="" type="checkbox" class="ace ace-switch ace-switch-5"/>
</body>
</html>