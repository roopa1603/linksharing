<!doctype html>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="4nonymous">
</head>
<body>
  <div class="container"><br>
    <div class="panel panel-default">
      <div class="panel-body">
        <div class="container">
          <div class="col-md-8">
            <h4><a href="#"><strong> <u>Link Sharing</u></strong></a></h4>
          </div>
          <div class="col-md-3">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Search" id="txtSearch"/>
              <div class="input-group-btn">
                <button class="btn btn-basic" type="submit">
                  <span class="glyphicon glyphicon-search"></span>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-7">
      <div class="panel panel-default">
        <div class="panel-heading">Recent Searches</div>
        <div class="panel-body">
          <table  style="width:100%">
            <td rowspan="3" width=25%> <img src="https://i.stack.imgur.com/l60Hf.png" height=120px width=125px></td>
            <td width=275px class="text">chaithra</td>
            <td width=150px class="text-muted">@chaithra</td>
            <td width=150px></td>
            <td width=150px></td>
            <td width=150px>
              <a href="#">
                Grails
              </td>
            </tr>
            <td colspan="5" </td>
          </tr>
          <td>Links</td>
          <td></td>
          <td></td>
          <td></td>
          <td><a href="#">View Post</td>
          </table>
        </div>
      </div>
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="container">
            <div class="col-md-5">
              Top Posts</div>
              <div class="col-md-2">
                <div class="dropdown">
                  <button class="btn btn-basic dropdown-toggle" type="button" id="about-us" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
          <div class="panel-body"> <table  style="width:100%">
            <td rowspan="3" width=25%> <img src="https://i.stack.imgur.com/l60Hf.png" height=120px width=125px></td>
            <td width=275px class="text">chaithra</td>
            <td width=150px class="text-muted">@chaithra</td>
            <td width=150px></td>
            <td width=150px></td>
            <td width=150px><a href="#">Grails</td>
            </tr>
            <td colspan="5" height=100px> </td>
          </tr>
          <td>Links</td>
          <td></td>
          <td></td>
          <td></td>
          <td><a href="#">View Post</td>
          </table></div>
        </div>
      </div>
      <div class="col-md-5">
        <div class="panel panel-default">
          <div class="panel-heading">Login</div>
          <div class="panel-body">
            <g:form class="form-horizontal" url="[controller:'login',action:'index']">
              <div class="form-group">
                <text class="control-label col-md-4" for="email"  style="text-align: left;">Email/Username *</text>
                <div class="col-md-8">
                  <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                </div>
              </div>
              <div class="form-group">
                <text class="control-label col-md-4 " for="pwd" style="text-align: left;">Password *</text>
                <div class="col-md-8">
                  <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
                </div>
              </div>
              <div class="form-group">
                <div class=" col-md-10">
                  <a href="#" class="control-label col-md-8" style="text-align: left;">Forget Password</a>
                </div>
                <div class=" offset-md-1">
                  <button type="submit" class="btn btn-basic">Login</button>
                </div>
              </div>
            </g:form>
          </div>
        </div>


