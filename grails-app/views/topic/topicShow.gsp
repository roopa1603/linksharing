<html>
<head>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="4nonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script>
        function display(){
            document.getElementById("droped").style.display="block";
        }
    </script>
    <style>
    body{
        background: #555555;
    }
    </style>
    <script>
        function display(){
            document.getElementById("droped").style.display="block";
        }
        var resetTopicForm = function () {
            $(".topicForm").trigger("reset");
        }
    </script>
    <style>
    body{
        background: #fff3f3;
    }
    </style>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    .dropbtn {
        background-color: #ce8483;
        color: white;
        padding: 16px;
        font-size: 16px;
        border: none;
    }
    .dropdown {
        position: relative;
        display: inline-block;
    }
    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f1f1f1;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }
    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }
    .dropdown-content a:hover {background-color: #ddd;}
    .dropdown:hover .dropdown-content {display: block;}
    .dropdown:hover .dropbtn {background-color: #3e8e41;}
    </style>

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
                            <td width=10px style="text-align:center;"}>
                                %{--<button type="button" class="btn btn-info btn-group-sm" data-toggle="modal"    data-target="#topicModal">
                                    <i class="material-icons">chat_bubble_outline</i></button>--}%
                                <a href="" data-toggle="modal" title="CREATE NEW TOPIC" data-target="#topicModal">
                                    <i class="material-icons">chat_bubble_outline</i>
                                </a>

                            </td>

                            <td width=30px style="text-align:center;">
                                <a href="" data-toggle="modal" title="SEND INVITATION" data-target="#invite">
                                    <i class="material-icons">mail_outline</i>
                                </a>

                            </td>

                            <td width=30px>
                                <a href="" data-toggle="modal"title="SHARE DOCUMENT" data-target="#resource">
                                    <i class="material-icons">attach_file</i>
                                </a>
                            </td>

                            <td width=30px>
                                <a href="" data-toggle="modal" title="SHARE LINK DOCUMENT" data-target="#linkresource">
                                    <i class="material-icons">description</i>
                                </a>
                            </td>
                            <td width=30px>

                                <div class="dropdown" >
                                    <button class="btn btn-primary" >${userdata.username}
                                    </button>
                                    <div class="dropdown-content">

                                        <g:if test="${userdata.admin==true}">
                                            <a href="/User/myaction">profile</a>
                                            <a href="/user/showlist" >Users</a>
                                            <a href="/topic/topiclist">Topics</a>
                                            <a href="/user/logout">Logout</a>
                                        </g:if>
                                        <g:else>
                                            <a href="/User/myaction">profile</a>
                                            <a href="/user/logout">Logout</a>
                                        </g:else>
                                    </div>
                                </div>
                            </td>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    %{--THIS IS SHARE LINK OF TOPIC MODEL--}%

    <div class="modal fade"  id="linkresource" role="dialog">
        <div class="modal-dialog">
            <!-- topic Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Share Link</h4>
                </div>
                <div class="modal-body">
                    <g:uploadForm  controller="topic" action="saveLink" class="topicForm">
                        Link *:
                        <input type="text" class="form-control" id="linkres" placeholder="Link" name="linkres">
                        <br>
                        Description *:
                        <textarea class="form-control" id="selectlink" name="selectlink"></textarea>
                        <br>
                        <g:select class="btn dropdown-toggle col-sm-8 form-control" name="topic" from="${subscriptions.topic.name}"  optionValue="value" />
                        <br>
                        <br>
                        <input type="submit" value="share"   class="btn btn-success" style="float: right; margin-top: 5px;"/>

                    </g:uploadForm>
                </div>
                <div class="modal-footer" style=" margin-top: 15px;">
                    <button type="button" class="btn btn-warning" onclick="resetTopicForm()">Reset</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

%{--THIS IS SHARE DOCUMENT MODEL--}%
    <div class="modal fade"  id="resource" role="dialog">
        <div class="modal-dialog">
            <!-- topic Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Share Document</h4>
                </div>
                <div class="modal-body">
                    <g:uploadForm  controller="topic" action="saveDoc" class="topicForm">
                        Document *:
                        <input type="file" class="form-control" id="doc" placeholder="choose" name="document">
                        <br>
                        Description *:
                        <textarea class="form-control" id="select" name="select"></textarea>
                        <br>
                        <g:select class="btn dropdown-toggle col-sm-8 form-control" name="topic" from="${subscriptions.topic.name}"  optionValue="value" />
                        <br>
                        <br>
                        <input type="submit" value="share"   class="btn btn-success" style="float: right; margin-top: 5px;"/>

                    </g:uploadForm>
                </div>
                <div class="modal-footer" style=" margin-top: 15px;">
                    <button type="button" class="btn btn-warning" onclick="resetTopicForm()">Reset</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    %{--CREATE TOPIC MODEL--}%
    <div class="modal fade" id="topicModal" role="dialog">
        <div class="modal-dialog">
            <!-- topic Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Create Topic</h4>
                </div>
                <div class="modal-body">
                    <g:form  controller="topic" action="save" class="topicForm">
                        Name *:
                        <input class="form-control" type="text" name="topicName" id="topicName"/>
                        Visibility *:
                        <select class="form-control" id="select" name="selection">
                            <option>PUBLIC</option>
                            <option>PRIVATE</option>
                        </select>
                        <input type="submit" class="btn btn-success" style="float: right; margin-top: 5px;"/>
                    </g:form>
                </div>
                <div class="modal-footer" style=" margin-top: 15px;">
                    <button type="button" class="btn btn-warning" onclick="resetTopicForm()">Reset</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
</div>

    <div class="col-md-5">

            <div class="panel panel-default" style="overflow: auto;height: 200px">
                <div class="panel-heading">${subs.topic.name}</div>

                <div class="panel-body">
                    <div class="col-md-3">
                        <g:img src="${subs.topic.createdBy.photo}"  style="width:60px;height:60px"/>
                    </div>

                    <div class="col-md-9">
                        <div><b>${subs.topic.name}</b>(${subs.topic.visibility})</div>

                        <div>@${subs.topic.createdBy.username}</div>

                        <div class="col-md-6">
                            Subscriptions:
                            <div>${subscount}</div></div>

                        <div class="col-md-3">

                            Posts:
                            <div><a>${postcount}</a></div></div>
                    </div>

                    <div class="row">
                        <div class="col-md-5">
                            <a>Unsubscribe</a></div>

                        <div class="col-md-7">
                            %{--<g:form controller="subscription" action="updateSerious">
                                <g:field type="hidden" name="sid" value="${subs.id}"></g:field>
                                <g:field type="hidden" name="page" value="topic"></g:field>
                                <g:select onChange="submit()" name="seriousness"
                                          from="${['CASUAL', 'SERIOUS', 'VERY_SERIOUS']}"
                                          value="${subs.seriousness}"/>
                            </g:form>--}%
                            <g:form controller="subscription" action="updateSeriouss">
                                <g:field type="hidden" name="id" value="${subs.id}"></g:field>
                                <g:select onChange="submit()" name="Seriousness" from="${['SERIOUS','CASUAL','VERY_SERIOUS']}"
                                          value="${subs.seriousness}" />
                            </g:form>

                        </div>
                    </div>

                </div>
                </div>

            <div class="panel panel-default" style="overflow: auto;height: 300px">
                <div class="panel-heading"><div style="float:left">Users : ${subs.topic.name}</div>

                    <div style="margin-left:350px">View all</div>
                </div>

                <div class="panel-body">
                    <g:each in="${subscription}" var="us" status="i">

                        <div class="row">
                            <div class="col-md-4">
                                <asset:image src="${us.user.photo}" style="width:60px;height:60px"/></div>

                            <div class="col-sm-8">
                                <div style="font-size:23px;"><b>${us.user.firstName}&nbsp${us.user.lastName}</b></div>

                                <div>@${us.user.username}</div>

                                <div class="col-sm-6">
                                    Subscriptions:
                                    <div>${subscriptioncount.getAt(i)}</div></div>

                                <div class="col-sm-6">

                                    Topics:
                                    <div><a>${postscount.getAt(i)}</a></div></div>

                                <a>Unsubscribe</a></div></div>
                        <br>
                    </g:each>
                </div>
            </div>
    </div>

    <div class="col-md-7">
        <div class="panel panel-default">
            <div class="panel-heading"><div style="float:left">Posts : ${subs.topic.name}</div>

                <div class="input-group" style="margin-left:350px">
                    <input type="text" class="form-control" placeholder="Search" id="txtSearch"/>

                    <div class="input-group-btn">
                        <button class="btn btn-basic" type="submit">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>
                    </div>
                </div>
            </div>

            <div class="panel-body">
                <g:each in="${resources}" var="res" status="i">
                    <div class="row">
                        <div class="col-md-4">
                            <asset:image src="${userdata.photo}" style="width:60px;height:60px"/>
                        </div>

                        <div class="col-md-8">
                            <p>${res.description}</p>
                            <br>
                        <div class="row">
                            <div class="col-md-3">
                            <g:if test="${res instanceof linksharing.LinkResource}">
                                <a href="${res.Linkurl}">View Full Site</a>
                            </div>
                                <div class="col-md-3">
                                    %{--<a>Download</a>--}%
                                </div>
                            </g:if>
                            <g:else>
                                <g:link controller="document" action="download" params="[id:res.id , tid:subs.id]" >Download</g:link></div>
                            <div class="col-md-3">
                               %{-- <a >View Full Site</a>--}%
                                </div>
                            </g:else>

                            <div class="col-md-3">
                                %{--<a>Mark as read</a>--}%
                                <g:link controller="resource" action="index" params="[id:res.id]" >View post</g:link>
                            </div>
                        </div>
                        </div>

                    </div>
                    <br>
                </g:each>
            </div>
        </div>
</div>
</div>

</body>
</html>