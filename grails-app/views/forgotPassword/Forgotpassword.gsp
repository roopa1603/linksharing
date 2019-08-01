<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>forgot Password</title>
</head>
<body>
<div class="container"><br>
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="container col-md-12" style="background: #f7ecb5">
                    <div class="col-md-5">
                        <h2 style="color: #f7e1b5">
                            <g:link controller="dashboard" action="index"><strong> <u><b>
                                Link Sharing</b></u></strong>
                            </g:link>
                        </h2>
                    </div>
                    <div class="col-md-7">
                        <table class="table">
                            <td width=200px>
                                <div class="input-group">
                                    <g:form controller="search" action="search">
                                        <div class="input-group">
                                            <g:textField id="mytext" class="form-control" name="q" placeholder="Search" value="${q}"/>
                                            <div class="input-group-btn">
                                                <button class="btn btn-basic" type="submit">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </div>
                                        </div>
                                    </g:form>

                                </div>
                            </td>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<g:form url="[controller:'forgotPassword' , action : 'validateResetPasswordEmail']" class="form-horizontal">
    <div class="form-group">
        <text class="control-label col-md-4" for="resetPassword"  style="text-align: left;">Email *</text>
        <div class="col-md-8">
            <input type="email" class="form-control" id="resetPassword" placeholder="Enter email" name="fetch_email">
        </div>
    </div>
    <div class=" offset-md-2">
        <button type="submit" class="btn btn-basic">
            Send Link
        </button>
    </div>
</g:form>

</body>
</html>