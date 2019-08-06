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
    li {
        list-style-type: none;
    }
    ul {
        list-style-type: none;
    }
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
                            <g:link controller="dashboard" action="index">
                                <strong>
                                    <u><b>
                                        Link Sharing
                                    </b></u>
                                </strong>
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
                                <a href="" data-toggle="modal" title="CREATE NEW TOPIC" data-target="#topicModal"><i class="material-icons">chat_bubble_outline</i></a>

                            </td>

                            <td width=30px style="text-align:center;">
                                %{-- <button type="button" class="btn btn-info btn-group-sm" data-toggle="modal" style="caret-color: #48802c"   data-target="#invite"><i class="material-icons">
                                 mail_outline
                             </i></button>--}%
                                <a href="" data-toggle="modal" title="SEND INVITATION" data-target="#invite"><i class="material-icons">mail_outline</i></a>
                            </td>

                            <td width=30px>
                                %{--<button type="button" class="btn btn-info btn-group-sm" data-toggle="modal"   data-target="#resource"><i class="material-icons" style="text-align:center;">
                                attach_file
                            </i></button>--}%
                                <a href="" data-toggle="modal"title="SHARE LINK DOCUMENT" data-target="#resource"><i class="material-icons">attach_file</i></a>
                            </td>

                            <td width=30px>
                                %{--<button type="button" class="btn btn-info btn-group-sm" data-toggle="modal"   data-target="#linkresource"><i class="material-icons" style="text-align:center;">description
                            </i></button>--}%
                                <a href="" data-toggle="modal" title="SHARE DOCUMENT" data-target="#linkresource"><i class="material-icons">description</i></a>
                            </td>

                            %{-- <td width=40px style="text-align:right;"><i class="material-icons">face</i>
                             </td>--}%

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
                        <div>
                            ${flash.message11}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- for left pannel elements -->

    <div class="row">
        <div class="col-md-5">

            %{--user details panel--}%
            <div class="panel panel-default">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <table   style="width:100%">
                            <tr>
                                <td rowspan="4" colspan="3" width="10%">
                                    <asset:image src="${userdata.photo}"  height="100px" width="90px" style="margin-right: 10px;"></asset:image>
                                </td>
                                <td width=200px class="text" colspan="3">${userdata.firstName} ${userdata.lastName}</td>
                            </tr>
                            <tr>
                                <td width=150px class="text-muted" colspan="3">@${userdata.username}</td>
                            </tr>
                            <tr>
                                <td width=150px>Subscriptions</td>
                                <td width="150px">Topics</td>
                            </tr>
                            <tr>
                                <td width=150px>"${count_subscribe}"</td>
                                <td width=150px>"${count_topic }"</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

            %{--subscription Modal--}%
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div style="float:left">Subscriptions</div>
                    <div style="margin-left:350px">View all</div>
                </div>
                <div class="panel-body">
                    <g:each in="${subscriptions}" var="us" status="i">
                        <li>
                            <div class="row">
                                <div class="col-md-4">
                                    <asset:image src="${us.topic.createdBy.photo}" style="width:60px;height:60px"></asset:image></div>
                                <div class="col-sm-8">
                                    <div style="font-size:23px;">
                                        <g:link controller="topic" action="topicshow" params="[id: us.id]"> ${us.topic.name} </g:link>

                                    </div>
                                    <div>@${us.topic.createdBy.username}</div>
                                    <div class="row">
                                    <div class="col-md-4">
                                        Subscriptions:
                                        <div>
                                            ${subscount.getAt(i)}
                                        </div>
                                    </div>
                                    <div class="col-md-offset-8">
                                        Posts:
                                        <div>
                                            ${resourcecount.get(i)}
                                        </div>
                                    </div>
                                    </div>

                                    <g:link controller="subscription" action="changesub" params="[id:us.id ,  flag:0]">Unsubscribe</g:link></div>

                                <g:if test  = "${us.topic.createdBy.email==session.name}" >
                                    <div class="row">
                                        <div class="col-md-12">
                                            <ul>
                                                <li>
                                                    <div class="col-md-8">
                                                    <g:form controller="subscription" action="updateSerious">
                                                        <g:field type="hidden" name="id" value="${us.id}"></g:field>
                                                        <g:select onChange="submit()" name="seriousness" from="${['SERIOUS','CASUAL','VERY_SERIOUS']}"
                                                                  value="${us.seriousness}" />
                                                    </g:form>
                                                </li>
                                                <li>
                                                    <g:form controller="topic" action="updateVisibility">
                                                        <g:field type="hidden" name="id" value="${us.topicId}"></g:field>
                                                        <g:select onChange="submit()" name="visibility" from="${['PUBLIC','PRIVATE']}"
                                                                  value="${us.topic.visibility}" />
                                                    </g:form>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </g:if>
                                <g:else>
                                    <g:form controller="subscription" action="updateSerious">
                                        <g:field type="hidden" name="id" value="${us.id}"></g:field>
                                        <g:select onChange="submit()" name="seriousness" from="${['SERIOUS','CASUAL','VERY_SERIOUS']}"
                                                  value="${us.seriousness}" />
                                    </g:form>
                                </g:else>
                        </li>
                    </g:each>
                </div>
            </div>


            %{-- Trending topic --}%


            <div class="panel panel-default">
                <div class="panel-heading">
                    <div style="float:left">Trending Topics</div>
                    <div style="margin-left:350px">View all</div>
                </div>
                <div class="panel-body">
                    <g:each in="${trending}" var="us" status="i">
                        <li>
                            <div class="row">
                                <div class="col-md-4">
                                    <asset:image src="${us.createdBy.photo}" alt="photo here" style="width:70px;height:70px"/>
                                </div>
                                <div class="col-sm-8">
                                    <div style="font-size:15px;">
                                        <g:link controller="topic" action="index" params="[id: us]">
                                            <b>
                                            ${us.name}
                                        </g:link>
                                            </b>
                                    </div>
                                    <div>
                                        @${us.createdBy.username}
                                    </div>

                                    <div class="col-sm-6">
                                        Subscriptions:
                                        <div>${subs1.get(i)}</div></div>
                                    <div class="col-sm-6">

                                        Posts:
                                        <div><a>${topic1.getAt(i)}</a></div></div>
                                </div>
                                <div>
                                    <g:if test="${us.subscriptionHas.user.email.contains(session.name)}">
                                        <g:link controller="Subscription" action="unsubscribe" params="[id:us.id, page :'dashboard']">
                                            Unsubscribe
                                        </g:link>
                                        <br><hr>
                                    </g:if>
                                    <g:else>
                                        <g:link controller="Subscription" action="subscribe" params="[id:us.id, page:'dashboard']">
                                            Subscribe
                                        </g:link>
                                        <br><hr>
                                    </g:else>
                                </div>
%{--                                <g:link controller="subscription" action="subscribe" params="[id:us.id ,page:"dashboard"]">Subscribe</g:link>--}%

                        </li>
                    </g:each>
                </div>
            </div>

            %{--send invitation here--}%
            <div class="modal fade"  id="invite" role="dialog">
                <div class="modal-dialog">
                    <!-- topic Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h3 class="modal-title" style="alignment: center;">Send Invitation</h3>
                        </div>
                        <div class="modal-body">
                            <g:uploadForm  controller="topic" action="invite" class="topicForm">
                                Email *:
                                <input type="text" class="form-control" id="iemail" placeholder="Link" name="iemail">
                                <br>
                                <g:select class="btn dropdown-toggle col-sm-8 form-control" name="topic" from="${subscriptions.topic.name}"  optionValue="value" />
                                <br>
                                <br>
                                <input type="submit" value="share"   class="btn btn-success" style="float: right; margin-top: 5px;"/>

                            </g:uploadForm>
                        </div>
                        <div class="modal-footer" style=" margin-top: 15px;">
                            %{--<button type="button" class="btn btn-warning" onclick="resetTopicForm()">Reset</button>--}%
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <!-- this is for right side pannel -->


        <div class="col-md-7">
            %{--inbox--}%

            <div class="panel panel-default">
                <div class="panel-heading"><div style="float:left">Inbox</div>
                    <div style="margin-left:350px">View all</div>
                </div>
                <div class="panel-body">
                    <g:each in="${resources}" var="res" status="i">
                        <li>
                            <div class="row">
                                <div class="col-md-3">
                                    <asset:image src="${res.user.photo}"  style="width:70px;height:70px"/></div>
                                <div class="col-sm-9">
                                    <div class="row">
                                        %{--<div class="col-sm-4">--}%
                                            %{--<b>${res.user.firstName}&nbsp${res.user.lastName}</b></div>--}%
                                        <div class="col-sm-5">
                                        <b>
                                            @${res.user.username}
                                        </b>
                                        </div>
                                        <div class="col-sm-6">
                                            <b>TOPIC: ${res.topic.name}</b>
                                        </div>
                                    </div>
                                    <div class="row">
                                     <p>${res.description}</p>
                                    </div>
                                    <br>
                                <div class="row">
                                <div class="col-md-3">
                                    <g:if test="${res instanceof linksharing.LinkResource}">
                                        %{--<a >Download</a>--}%
                                        </div>
                                        <div class="col-md-3">
                                            <a href="${res.Linkurl}" target="_blank">
                                                View Full Site
                                            </a>
                                        </div>
                                    </g:if>
                                    <g:else>
                                        <g:link controller="Document" action="download" params="[id:res.id , tid:res.id , flag:1]" >Download</g:link>
                                        </div>
                                        %{--<div class="col-md-3">
                                            <a href="">View Full Site</a>
                                        </div>--}%
                                    </g:else>

                                    <div class="col-md-3">
                                        <g:link controller="resource" action="editread" params="[id:res.id]">Mark as read</g:link>
                                    </div>
                                    <div class="col-md-3">
                                        %{--<g:link controller="resource" action="index" params="[id: res.id]">View post</g:link>--}%
                                        <g:link controller="resource" action="index" params="[id: res.id]">View post</g:link>

                                    </div>
                                </div>
                                <hr>
                            </div>
                        </li>
                    </g:each>
                </div>

            </div>
        </div>



        %{--Share link--}%

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
                        %{--<button type="button" class="btn btn-warning" onclick="resetTopicForm()">Reset</button>--}%
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

%{--Shared Document--}%

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
                %{--<button type="button" class="btn btn-warning" onclick="resetTopicForm()">Reset</button>--}%
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
</div>
</div>

<!-- create topic -->
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
            %{--<div class="modal-footer" style=" margin-top: 15px;">
                --}%%{--<button type="button" class="btn btn-warning" onclick="resetTopicForm()">Reset</button>--}%%{--
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>--}%
        </div>
    </div>
</div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script>
    function displaydocument(){
        document.getElementById("drop").style.display="block";
    }
    function displayinvite(){
        document.getElementById("drop").style.display="block";
    }
    // var showHideTopicModal = function() {
    //     var currentDisplay = document.getElementById("topicModal").style.display;
    //     if(currentDisplay === "none"){
    //         document.getElementById("topicModal").style.display = "block";
    //     }
    //     else {
    //         document.getElementById("topicModal").style.display = "none";
    //     }
    // }
    var resetTopicForm = function () {
        $(".topicForm").trigger("reset");
    }
</script>
</body>
</html>