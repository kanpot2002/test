<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>SET New Scoop</title>
    <meta name="description" content="description">
    <meta name="author" content="Evgeniya">
    <meta name="keyword" content="keywords">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/SETNewScoop/js/plugins/bootstrap/bootstrap.css" rel="stylesheet">
    <link href="/SETNewScoop/css/font-awesome.css" rel="stylesheet">
    <link href='/SETNewScoop/css/font-Righteous.css' rel='stylesheet' type='text/css'>
    <link href="/SETNewScoop/css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="http://getbootstrap.com/docs-assets/js/html5shiv.js"></script>
    <script src="http://getbootstrap.com/docs-assets/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container-fluid">
    <div id="page-login" class="row">
        <div class="col-xs-12 col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
            <form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
                <div class="box">
                    <div class="box-content">
                        <g:if test='${flash.message}'>
                            <div class='login_message'>${flash.message}</div>
                        </g:if>
                        <div class="text-center">
                            <h3 class="page-header">SET New Scoop Login Page</h3>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Username</label>
                            <input type="text" class="form-control" name="j_username" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Password</label>
                            <input type="password" class="form-control" name="j_password" />
                        </div>
                        <div class="form-group">
                            <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                            <label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
                        </div>
                        <div class="text-center">
                            <input class="btn btn-primary" type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script type='text/javascript'>
    (function() {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
</script>
</html>