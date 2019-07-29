<%@ page import="com.sample.Visibility" %>
<html>
<head>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">

    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js">

    </script>
    <script src="https://code.jquery.com/jquery-3.3.1.js">

    </script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">



    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="4nonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <script>
        var resetTopicForm = function () {
            console.log('Something');
            $("#myModal").trigger("reset");
        }
    </script>
</head>

<body>
<div class="container"><br>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="container">
                <div class="col-md-5">
                    <h4><a href="#"><strong><u>Link Sharing</u></strong></a></h4>
                </div>

                <div class="col-md-7">
                    <table class="table">
                        <td width=200px>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search" id="txtSearch"/>

                                <div class="input-group-btn">
                                    <button class="btn btn-basic" type="submit">
                                        <span class="glyphicon glyphicon-search"></span>
                                    </button>
                                </div>
                            </div>
                        </td>
                        <td width=40px style="text-align:center;" }>
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">
                                <i class="material-icons">
                                    chat_bubble_outline</i></button></td>
                    </td>

                        <td width=30px style="text-align:center;">
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal1">
                                <i class="material-icons">
                                    mail_outline
                                </i>
                            </button>
                        </td>

                        <td width=30px>
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal2">
                                <i class="material-icons" style="text-align:center;">
                                    attach_file
                                </i>
                            </button>
                        </td>

                        <td width=25px>
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal3">
                                <i class="material-icons" style="text-align:center;">
                                    description
                                </i>
                            </button>
                        </td>
                        <td width=30px>

                            <div class="dropdown">
                                <button class="btn btn-primary dropdown-toggle" type="button"
                                        data-toggle="dropdown">${userdata.username}
                                    <span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a href="#">profile</a></li>
                                    <li><a href="/user/showList">Users</a></li>
                                    <li><a href="#">Topics</a></li>
                                    <li><a href="/user/logout">Logout</a></li>
                                </ul>
                            </div>

                        </td>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-5">

            %{--1.user details panel--}%

            <div class="panel panel-default">
                <div class="panel panel-default">
                    <div class="panel-body" >
                        <table  style="width:100%">
                            <tr>
                                <td rowspan="4" colspan="3" width="10%">
                                    <asset:image src="grails-app/assets/images/{userdata.username}.png" height="100px" width="90px" style="margin-right: 10px;"/>
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
                                <td width=150px>${count_subscribe}</td>
                                <td width=150px>${count_topic}</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

            %{--2.Searches--}%

            <div class="panel panel-default">
                <div class="panel-heading">Recent Searches</div>
                <div class="panel-body">
                    <table  style="width:100%">
                        <tr>
                            <td rowspan="3" width="10%">
                                <img src="https://i.stack.imgur.com/l60Hf.png" height=100px width=95px>
                            </td>
                            <td width=200px class="text">Recent Searches</td>
                            <td width=150px class="text-muted">@Recent Searches</td>
                            <td width=150px></td>
                            <td width=150px></td>
                            <td width=150px>
                                <a href="#"></a>
                                Grails
                            </td>
                        </tr>
                        <td colspan="5" height=100px>Recent Search Posts will come here</td>
                    </tr>
                        <td>Links</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><a href="#">View Post</a></td>
                    </table>
                </div>
            </div>



                %{--  3.SEND INVITATION--}%

                <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header panelHeaders">
                                <h4 class="modal-title panelHeadersText" id="sendInviteModalLabel">
                                    Send Invitation
                                </h4>
                            </div>
                            <g:form name = "sendInviteForm" class="form myModal1" controller = "topic" action = "invite">
                                <div class="modal-body table-responsive">

                                    <div class="form-group row">
                                        <label class="form-control-label col-xs-4">Email*</label>

                                        <div class="col-xs-6">
                                            <input type="email" id="emailID" name="emailID" class="form-control" required/>
                                        </div>
                                    </div>

                                    <div id = "subscribedTopicsList" class="form-group row">
                                        <label class="form-control-label col-xs-4">
                                            Topic *
                                        </label>

                                       %{-- <div class="col-xs-8">
                                            ${}
                                            <ls:showSubscribedTopics />
                                        </div>
--}%
                                    </div>

                                    <div class="form-group row">
                                        <div class="col-xs-offset-4 col-xs-4">
                                            <g:submitButton class="btn btn-primary submitButtons" type="submit"
                                                            name="submit" value="Invite"/>
                                        </div>

                                        <div class="col-xs-4">
                                            <button type="button" class="btn btn-primary submitButtons"
                                                    data-dismiss="modal">Close</button>
                                        </div>

                                    </div>
                                </div>
                            </g:form>
                        </div>
                    </div>
                </div>

                %{--4.subscription Modal--}%
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
                                    <asset:image src="https://i.stack.imgur.com/l60Hf.png" style="width:60px;height:60px"/>
                                </div>
                                <div class="col-sm-8">
                                    <div style="font-size:23px;"><g:link controller="dashboard" action="index" params="[id: us.id]">${us.topic.name}</g:link></div>
                                    <div>@${us.topic.user.username}</div>
                                    <div class="col-sm-6">
                                        Subscriptions:
                                        <div>${subscount.getAt(i) }</div></div>
                                    <div class="col-sm-6">
                                        Posts:
                                        <div><a>${resourceCount.get(i)}</a></div></div>
                                    <a>Unsubscribe</a></div></div>
                            <g:if test  = "${us.topic.user.email==session.name}" >
                                <div class="row">
                                    <div class="col-md-12">
                                        <ul class="list-inline">
                                            <li>
                                                    <g:field type="hidden" name="id" value="${us.id}"></g:field>
                                                    <g:select onChange="submit()" name="Seriousness" from="${com.sample.Seriousness.values()}" />
                                            </li>
                                            <li>
                                                    <g:field type="hidden" name="id" value="${us.topicId}"></g:field>
                                                    <g:select onChange="submit()" name="Visibility" from="${com.sample.Visibility.values()}" />
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </g:if>
                            <g:else>

                                    <g:field type="hidden" name="id" value="${us.id}"></g:field>
                                    <g:select onChange="submit()" name="Seriousness" from="${com.sample.Seriousness.values()}" />
                            </g:else>
                        </li>
                    </g:each>

                </div>
            </div>

                %{--<div class="panel panel-default">
                    <div class="panel-heading">Subscriptions</div>
                    <div class="panel-body">
                        <table  style="width:100%">
                            <tr>
                                <td rowspan="4" colspan="3" width="10%">
                                    <img src="https://i.stack.imgur.com/l60Hf.png"  height=100px width=90px>
                                </td>
                                <td width=200px class="text" colspan="3">${userdata.firstName} ${userdata.lastName}</td>
                            </tr>
                            <tr>
                                <td width=150px class="text-muted" >@${userdata.username}</td>
                                <td width=150px class="text-muted" >Subscriptions</td>
                                <td width=150px class="text-muted" >Post</td>
                            </tr>
                            <tr>
                                <td width=150px>toggle here</td>
                                <td width="150px">${subs}</td>

                                <td> <span class="caret"></span>
                                    </button>
                                    <div class="col-xs-8">
                                        <g:select id = "seriousness" name="Seriousness" from="${com.sample.Seriousness.values()}"
                                                  class="btn btn-default btn-sm dropdown-toggle"/>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <br>
                        <div>
                            <div class="col-md 4">
                                        <div class="col-xs-8">
                                        <g:select id = "visibility" name="Visibility" from="${com.sample.Visibility.values()}"
                                                  class="btn btn-default btn-sm dropdown-toggle"/>
                                    </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
--}%
                %{--recent research--}%


                <!-- inbox pannel -->

                <div class="col-md-7">
                    <div class="panel panel-default">
                        <div class="panel-heading">Inbox</div>
                        <div class="panel-body">
                            <table style="width:100%">
                                <tr>
                                    <td rowspan="3" width=25%><img src="https://i.stack.imgur.com/l60Hf.png" height=120px
                                                                   width=125px></td>
                                    <td width=400px class="text">${userdata.firstName} ${userdata.lastName}</td>
                                    <td width=150px class="text-muted">@${userdata.username}</td>
                                    <td width=150px></td>
                                    <td width=150px></td>
                                    <td width=150px>
                                        <a href="#"><small>Grails</small></a></td>
                                </tr>
                                <tr>
                                    <td colspan="5"
                                        height=100px>Soon To fetch ur inbox mails</td>
                                </tr>
                                <tr>

                                    <td><a href="#">LINKS</a></td>
                                    <td><a href="#"><small><u>Downloads</u></small></a></td>
                                    <td width=250px><a href="#"><small><u>View Full Site</u></small></a></td>
                                    <td width=250px><a href="#"><small><u>Mark as read</u></small></a></td>
                                    <td><a href="#"><small><u>View Post</u></small></a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                %{--SHARE LINK POP UP--}%

                <div class = "col-md-8">
                    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog"aria-labelledby="myModal2">

                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header panelHeaders">
                                    <button type="button" class="close" data-dismiss="modal">
                                        &times;</button>
                                    <h4 class="modal-title panelheadersText" id="myModalLabel2">SHARE LINK </h4>
                                </div>
                                <g:form name = "shareLinkForm" class="form form-horizontal" controller="topic" action="save">
                                    <div class="modal-body table-responsive">
                                        <div class="form-group row">
                                            <label class="form-control-label col-xs-4">LINK *</label>
                                            <div class="panel-body">
                                                <div class="col-md-10">
                                                    <input type="email" class="form-control" id="mail" placeholder="Link" name="mail">
                                                </div>
                                            </div>

                                            <div class="col-xs-6">
                                                <text class="control-label col-md-2" for="desc" style="text-align: left;">Description*</text>

                                                <div class="col-md-10">
                                                    <textarea type="text" class="form-control" id="desc" placeholder="Enter description"
                                                              name="desc">
                                                    </textarea>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <text class="control-label col-md-2" for="email" style="text-align: left;">Topic *</text>

                                                <div class="dropdown  col-md-10">
                                                    <button class="btn btn-default btn-sm-dropdown-toggle" type="button" data-toggle="dropdown">Topic
                                                        <span class="caret"></span></button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">HTML</a></li>
                                                        <li><a href="#">CSS</a></li>
                                                        <li><a href="#">JavaScript</a></li>
                                                        <li class="divider"></li>
                                                        <li><a href="#">About Us</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-xs-offset-4 col-xs-4">
                                                    <g:submitButton name = "submitLinkButton" class="btn btn-primary submitButtons"
                                                                    value="Submit"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </g:form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class=" col-md-9">
                    <div class="panel panel-default">
                        <div class="panel-heading">Share Document ( Pop up)</div>

                        <div class="panel-body">
                            <form class="form-horizontal" action="/action_page.php">
                                <div class="form-group">
                                    <text class="control-label col-md-2" for="email" style="text-align: left;">Document *</text>

                                    <div class="col-md-10">
                                        <div class="col-md-8">
                                            <input type="file" class="form-control" id="photo" placeholder="choose"
                                                   name="inputphoto">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <text class="control-label col-md-2" for="desc" style="text-align: left;">Description*</text>

                                    <div class="col-md-10">
                                        <textarea type="text" class="form-control" id="docdesc" placeholder="description"
                                                  name="docdesc">
                                        </textarea>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <text class="control-label col-md-2" for="email" style="text-align: left;">Topic *</text>

                                    <div class="dropdown  col-md-10">
                                        <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Topic
                                            <span class="caret"></span></button>
                                        <ul class="dropdown-menu">
                                            <li><a href="#">HTML</a></li>
                                            <li><a href="#">CSS</a></li>
                                            <li><a href="#">JavaScript</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">About Us</a></li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class=" col-md-8">
                                        <div class="col-md-offset-12">
                                            <button type="submit" class="btn btn-basic btn-block">Share</button>
                                        </div>
                                    </div>

                                    <div class=" col-md-4">
                                        <button type="submit" class="btn btn-basic btn-block">Cancel</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>



                <!--create topic pop up-->

                <div class="modal fade" id="myModal" tabindex="-1" role="dialog"aria-labelledby="myModal">
                    <div class="modal-dialog" role="document">

                        <!--HEAD-->
                        <div class="modal-content">
                            <div class="modal-header panelHeaders">
                                <button type="button" class="close" data-dismiss="modal">
                                    &times;</button>
                                <h4 class="modal-title panelheadersText" id="myModalLabel">CREATE A TOPIC</h4>
                            </div>
                            <g:form name = "createTopicForm" class="form form-horizontal" controller="topic" action="save">
                                <div class="modal-body table-responsive">
                                    <div class="form-group row">
                                        <label class="form-control-label col-xs-4">Name*</label>

                                        <div class="col-xs-6">
                                            <input type="text" id="topicName" name="topicName" class="form-control" required/>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for = "visibility" class="form-control-label col-xs-4">
                                            Visibility *
                                        </label>

                                        <div class="col-xs-8">
                                            <g:select id = "visibility" name="Visibility" from="${com.sample.Visibility.values()}"
                                                      class="btn btn-default btn-sm dropdown-toggle"/>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <div class="col-xs-offset-4 col-xs-4">
                                            <g:submitButton name = "saveTopicButton" class="btn btn-primary submitButtons"
                                                            value="Save"/>
                                        </div>

                                        <div class="col-xs-4">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        </div>

                                    </div>
                                </div>
                            </g:form>

                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>
</body>

</html>