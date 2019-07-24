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
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal"
                                    data-target="#myModal">
                                <i class="material-icons">
                                    chat_bubble_outline</i></button></td>
                    </td>

                        <td width=30px style="text-align:center;"><i class="material-icons">
                            mail_outline
                        </i>
                        </td>

                        <td width=30px><i class="material-icons" style="text-align:center;">
                            attach_file
                        </i>
                        </td>

                        <td width=25px><i class="material-icons" style="text-align:center;">description
                        </i>
                        </td>

                        <td width=40px style="text-align:right;"><i class="material-icons">face</i>
                        </td>

                        <td width=20px>

                            ${session.name}
                        </td>
                        <td width=30px>

                            <div class="dropdown">
                                <button class="btn btn-primary dropdown-toggle" type="button"
                                        data-toggle="dropdown">select
                                    <span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a href="#">profile</a></li>
                                    <li><a href="#">Users</a></li>
                                    <li><a href="#">Topics</a></li>
                                    <li><a href="#">Logout</a></li>
                                </ul>
                            </div>

                        </td>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-5">
        <div class="panel panel-default">
            <div class="panel-heading">Recent Searches</div>

            <div class="panel-body">
                <table style="width:100%">
                    <td rowspan="3" width="10%"><img src="https://i.stack.imgur.com/l60Hf.png" height=120px width=125px>
                    </td>
                    <td width=200px class="text">Uday Pratap Singh</td>
                    <td width=150px class="text-muted">@uday 5min</td>
                    <td width=150px></td>
                    <td width=150px></td>
                    <td width=150px>
                        <a href="#"></a>
                        Grails
                    </td>
                </tr>
                    <td colspan="5"
                        height=100px>A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. Almost every piece of writing you do that is longer than a few sentences should be organized into paragraphs.</td>
                </tr>
                    <td>Links</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><a href="#">View Post</a></td>
                </table>
            </div>
        </div>


        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="container">
                    <div class="col-md-5">Top Posts</div>

                    <div class="col-md-2">
                        <div class="dropdown">
                            <button class="btn btn-basic dropdown-toggle" type="button" id="about-us"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Today  <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="about-us">
                                <li><a href="#">One Week</a></li>
                                <li><a href="#">One Month</a></li>
                                <li><a href="#">One Year</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel-body"><table style="width:100%">
                <td rowspan="3" width=25%><img src="https://i.stack.imgur.com/l60Hf.png" height=120px width=125px></td>
                <td width=200px class="text">Uday Pratap Singh</td>
                <td width=150px class="text-muted">@uday 5min</td>
                <td width=150px></td>
                <td width=150px></td>
                <td width=150px><a href="#">Grails</td>
            </tr>
                <td colspan="5"
                    height=100px>A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. Almost every piece of writing you do that is longer than a few sentences should be organized into paragraphs.</td>
            </tr>
                <td>Links</td>
                <td></td>
                <td></td>
                <td></td>
                <td><a href="#">View Post</a></td>
            </table></div>
        </div>


        <div class="panel panel-default">
            <div class="panel-heading">Send Invitation  ( Pop up)</div>

            <div class="panel-body">
                <form class="form-horizontal" action="/action_page.php">
                    <div class="form-group">
                        <text class="control-label col-md-2" for="email" style="text-align: left;">Email*</text>

                        <div class="col-md-10">
                            <input type="text" class="form-control" id="email" placeholder="Link" name="email">
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
                            <div class="col-md-offset-8">
                                <button type="submit" class="btn btn-basic btn-block" width=100%>Save</button>
                            </div>
                        </div>

                        <div class=" col-md-4">
                            <button type="submit" class="btn btn-basic btn-block" width=100%>Cancel</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div>

    <!-- this is for right side pannel -->

    <div class="col-md-7">
        <div class="panel panel-default">
            <div class="panel-heading">Inbox</div>

            <div class="panel-body">
                <table style="width:100%">
                    <tr>
                        <td rowspan="3" width=25%><img src="https://i.stack.imgur.com/l60Hf.png" height=120px
                                                       width=125px></td>
                        <td width=400px class="text">Uday Pratap Singh</td>
                        <td width=150px class="text-muted">@uday 5min</td>
                        <td width=150px></td>
                        <td width=150px></td>
                        <td width=150px>
                            <a href="#"><small>Grails</small></a></td>
                    </tr>
                    <tr>
                        <td colspan="5"
                            height=100px>A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. Almost every piece of writing you do that is longer than a few sentences should be organized into paragraphs.</td>
                    </tr>
                    <tr>

                        <td>Links</td>
                        <td><a href="#"><small><u>Downloads</u></small></a></td>
                        <td width=250px><a href="#"><small><u>View Full Site</u></small></a></td>
                        <td width=250px><a href="#"><small><u>Mark as read</u></small></a></td>
                        <td><a href="#"><small><u>View Post</u></small></a></td>
                    </tr>
                </table>
            </div>
        </div>


        <div class="panel panel-default">
            <div class="panel-heading">Share Link (  Pop up)</div>

            <div class="panel-body">
                <form class="form-horizontal" action="/action_page.php">
                    <div class="form-group">
                        <text class="control-label col-md-2" for="email" style="text-align: left;">Link *</text>

                        <div class="col-md-10">
                            <input type="email" class="form-control" id="mail" placeholder="Link" name="mail">
                        </div>
                    </div>

                    <div class="form-group">
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
                            <div class="col-md-offset-8">
                                <button type="submit" class="btn btn-basic btn-block" width=100%>Submit</button>
                            </div>
                        </div>

                        <div class=" col-md-4">
                            <button type="submit" class="btn btn-basic btn-block" width=100%>Register</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>


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
                            <div class="col-md-offset-8">
                                <button type="submit" class="btn btn-basic btn-block" width=100%>Share</button>
                            </div>
                        </div>

                        <div class=" col-md-4">
                            <button type="submit" class="btn btn-basic btn-block" width=100%>Cancel</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>



        <!--create topic pop up-->




        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">

                <!--HEAD-->
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                        <h4 class="modal-title">CREATE A TOPIC</h4>

                    </div>


                    <!--BODY-->

                    <div class="modal-body">
                        <div class="form-group">
                            <label class="control-label"><h3>NAME:*</h3></label>

                            <div>
                                <input type="text" class="form-control input-lg" name="t_name" value="">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="sel1"><h3>VISIBILITY:*</h3></label>

                            <div>
                                <select class="form-control" id="sel1">
                                    <option><h2>PUBLIC</h2></option>
                                    <option><h2>PRIVATE</h2></option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class=" col-md-8">
                                <div class="col-md-offset-8">
                                    <input type="submit" class="btn btn-success" style="float: right; margin-top:8px;"/>

                                </div>
                            </div>

                            <div class="modal-footer" style=" margin-top: 15px;">
                                <button type="button" class="btn btn-warning" onclick="resetTopicForm()">Reset</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>