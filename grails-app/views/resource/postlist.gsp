

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="4nonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>


<style>
   /* .topnav {
        overflow: hidden;
        background-color: #333;
        height: 53px;
    }
    .topnav a {
        float: left;
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
    }
    .topnav a:hover {
        background-color: #ddd;
        color: black;
    }
    .topnav a.active {
        background-color: #4CAF50;
        color: white;
    }
    .topnav .search-container {
        float: right;
    }
    .topnav input[type=text] {
        padding: 6px;
        margin-top: 8px;
        font-size: 17px;
        border: none;
    }
    .topnav .search-container button {
        float: right;
        padding: 6px 10px;
        margin-top: 8px;
        margin-right: 16px;
        background: #ddd;
        font-size: 17px;
        border: none;
        cursor: pointer;
    }
    .topnav .search-container button:hover {
        background: #ccc;
    }
    .topnav .search-container button {
        height: 36px;
    }*/
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    .dropbtn {
        background-color: #d58512;
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
    <script>
        function display(){
            document.getElementById("droped").style.display="block";
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
<div class="container">
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
<h2>Topics List</h2>
        <p>The table represent the all users</p>
        <table id="example" class="table table-striped table-bordered">
            <thead>
            <tr>
                <th>Id</th>
                <th>Description</th>
                <th>Created By</th>
                <th>Topic</th>
            </tr>
            </thead>
            <tbody>
<g:each var="res" in="${list}">
    <tr>
        <td>${res.id}</td>
        <td>${res.description}</td>
        <td>${res.user.username}</td>
        <td>${res.topic.name}</td>
    </tr>
</g:each>
</tbody>
</table>
</div>
<script>
   /* $(document).ready(function() {
        $('#example').DataTable({"dom":'<"top"i>rt<"bottom"flp><"clear">'});
    } );*/
    $(document).ready(function() {
        $('#example').DataTable( {
            "order": [[ 3, "desc" ]]
        } );
    } );
</script>
</body>
</html>