<!DOCTYPE html>
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
    <g:javascript>
    var url="${createLink(controller:'resourceRating',action:'save')}"
    </g:javascript>
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
<body onload="Ratingsprint(${value})">

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



    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-2">
                                <asset:image src="${resource.user.photo}" style="width:70px;height:70px"/></div>
                            <div class="col-md-6">
                                <div style="font-size:18px;"><b>${resource.user.firstName}&nbsp${resource.user.lastName}</b></div>
                                <div>@${resource.user.username}</div></div>
                            <div class="col-md-4">
                                <g:link controller="topic" action="index" params="[id: resource.topic.id]">${resource.topic.name}</g:link><br>
                                ${resource.dateCreated}
                            </div></div>
                        <div class="row">
                            <div class="col-md-9">
                                ${resource.description}</div>
                            <div class="col-md-3">
                                <span id="1" onclick="Rating('${session.name}' , '${resource.id}' , '${1}')"class="glyphicon glyphicon-star"></span>
                                <span id="2" onclick="Rating('${session.name}' , '${resource.id}' , '${2}')"class="glyphicon glyphicon-star"></span>
                                <span id="3" onclick="Rating('${session.name}' , '${resource.id}' , '${3}')"class="glyphicon glyphicon-star"></span>
                                <span id="4" onclick="Rating('${session.name}' , '${resource.id}' , '${4}')"class="glyphicon glyphicon-star"></span>
                                <span id="5" onclick="Rating('${session.name}' , '${resource.id}' , '${5}')"class="glyphicon glyphicon-star"></span>
                            </div>
                        </div><br><br><br>
                        <p id="test"></p>


                    <div class="row">
                        <div class="col-md-4"></div>
                    <div class="col-md-2">
                        <g:if test="${resource.user.email==session.name}">
                            <g:link controller="resource" action="delete" params="[id:resource.id]">Delete</g:link>
                            </div>
                            <div class="col-md-2">
                                <a>Edit</a>
                            </div></g:if>
                        <g:else>
                            <a>Delete</a>
                            </div>
                            <div class="col-md-2">
                                <a>Edit</a>
                            </div>
                        </g:else>


                        <div class="col-md-2">
                            <g:link controller="Document" action="download" params="[id:resource.id]">Download</g:link>
                        </div>

                        <div class="col-md-2">
                            <a>View full site</a></div>
                    </div>

                </div>
            </div>
        </div>


        <div class ="col-md-6">
            <div class="panel panel-default" style="height:500px;overflow: auto;">
                <div class="panel-heading">Trending Topics
                </div>
                <div class="panel-body">
                    <g:each in="${trending}" var="us" status="i">
                        <ul class="list-inline">

                            <li>
                                <div class="row">
                                    <div class="col-md-4">
                                        <asset:image src="${us.createdBy.photo}"  style="width:70px;height:70px"/></div>
                                    <div class="col-sm-8">
                                        <div style="font-size:23px;"><b>${us.name}</b></div>
                                        <div>@${us.createdBy.username}</div>

                                        <div class="col-sm-6">
                                            Subscriptions:
                                            <div>${countforsubs.getAt(i)}</div>
                                        </div>
                                        <div class="col-sm-6">

                                            Posts:
                                            <div><a>${countforposts.getAt(i)}</a></div>
                                        </div>
                                    </div>
                                    <div class="col-md-offset-4">
                                        <g:link controller="subscription" action="subscribe" params="[id:us.id ,page:"rating"]">Subscribe</g:link>
                                    </div>
                                </div>

                            </li>
                        </ul>
                    </g:each>

                </div>

            </div>
        </div>
    </div>


    <script>
        function Rating(username , resourceId , value)
        {
            console.log("inside")

            for(var i=1;i<=5;i++)
            {
                document.getElementById(i).style.color="black";
            }

            for(var i=1;i<=value;i++)
            {
                document.getElementById(i).style.color="red";
            }

            console.log("above ajax")
            $.ajax({
                "url":     url,
                "type":    "get",
                "data":    {username : username , resourceId : resourceId , value : value},
                success: function(resp){
                    document.getElementById("test").innerHTML=resp.success
                }
            });

        }
        function Ratingsprint(value)
        {
            for(var i=1;i<=5;i++)
            {
                document.getElementById(i).style.color="black";
            }

            for(var i=1;i<=value;i++)
            {
                document.getElementById(i).style.color="orange";
            }
        }
    </script>
</body>
</html>