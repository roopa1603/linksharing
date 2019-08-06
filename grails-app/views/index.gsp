<%@page import="grails.util.Holders"%>
<!doctype html>
<html xmlns="http://www.w3.org/1999/html">
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="4nonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script type="text/javascript">

    var validatePassword=function()  {
      var password = document.getElementById("password").value;
      var confirmPassword = document.getElementById("confirmpassword").value;
      if (password != confirmPassword) {
        document.getElementById("validate" ).innerHTML= "Not Match!!!!"
        //alert("Passwords are not same")
        /*document.getElementById("password").value = "";
        document.getElementById("confirmpassword").value = "";*/
        //return false;
      } else{
        document.getElementById("validate").innerHTML = "Match!!!!"
        //return true;
      }
    }

    $(document).ready(function() {
      $('.Loginbutton').attr('disabled', true);

      /*$('#email').keyup(function () {*/
        $('#pwd').keyup(function () {
          if ($(this).val().length != 0) {
            $('.Loginbutton').attr('disabled', false);
          } else {
            $('.Loginbutton').attr('disabled', true);
          }
        })
      })
    /*})
*/
  </script>
</head>
<body>
<div class="container"><br>
  <div class="panel panel-default">
    <div class="panel-body">
      <div class="container">
        <div class="col-md-8">
          <h4><a href="${Holders.config.server.host}"><strong> <u>Link Sharing</u></strong></a></h4>
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
          <td width=275px class="text">Roopa Sabri</td>
          <td width=150px class="text-muted">@Roopa Sabri</td>
          <td width=150px></td>
          <td width=150px></td>
          <td width=150px>
            <a href="#"></a>
            Grails
          </td>
        </tr>
          <td colspan="5" ></td>
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
        <td width=275px class="text">Roopa Sabri</td>
        <td width=150px class="text-muted">@Roopa Sabri</td>
        <td width=150px></td>
        <td width=150px></td>
        <td width=150px><a href="#">Grails</a></td>
      </tr>
        <td colspan="5" height=100px> </td>
      </tr>
        <td>Links</td>
        <td></td>
        <td></td>
        <td></td>
        <td><a href="#">View Post</a></td>
      </table></div>
    </div>
  </div>
  <div class="col-md-5">
    <div class="panel panel-default">
      <div class="panel-heading">Login</div>
      <div class="panel-body">
        <g:form class="form-horizontal" url="[controller:'login',action:'index']">
          <div class="form-group">
            <text class="control-label col-md-4" for="email"  style="text-align: left;">Email *</text>
            <div class="col-md-8">
              <input type="email" class="form-control" id="email" placeholder="Enter email" name="email"maxlength="30">
            </div>
          </div>
          <div class="form-group">
            <text class="control-label col-md-4 " for="pwd" style="text-align: left;">Password *</text>
            <div class="col-md-8">
              <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd"required>
            </div>
            <div>${flash.message}</div>
              <div>${flash.message12}</div>
          </div>
          <div class="form-group">
           %{-- <div class=" col-md-10" style="text-align: justify-all">--}%
              <g:link class="control-label col-md-4" style="text-align: left" controller="forgotPassword" action="forgotPassword">Forgot Password</g:link>
           %{-- </div>--}%
            <div class=" col-md-4" style="float: right">
              <button type="submit" class= "Loginbutton" style="float: right">Login</button>
            </div>
          </div>
        </g:form>
      </div>
    </div>





    <div class="panel panel-default">
      <div class="panel-heading">Register</div>
      <div class="panel-body">
        <g:uploadForm class="form-horizontal" controller='signup' action='index'>
          <div class="form-group">
            <text class="control-label col-md-4" for="firstName" style="text-align: left;">First Name </text>
            <div class="col-md-8">
          <input type="text" class="form-control" id="firstname" placeholder="Enter First Name" name="firstname" maxlength="15" pattern="([A-Z][a-z]*)" required/>
            </div>
          </div>

          <div class="form-group">
            <text class="control-label col-md-4" for="lastName" style="text-align: left;">Last Name </text>
            <div class="col-md-8">
              <input type="text" class="form-control" id="lastname" placeholder="Enter Last Name" name="lastname"maxlength="15"pattern="([A-Z][a-z]*)" required/>
            </div>
          </div>
          <div class="form-group">
            <text class="control-label col-md-4" for="email" style="text-align: left;">Email </text>
            <div class="col-md-8">
              <input type="email" class="form-control" id="signup_email" placeholder="Enter Email" name="signup_email" maxlength="30" required/>
            </div>
          </div>
          <div class="form-group">
            <text class="control-label col-md-4" for="username" style="text-align: left;">UserName </text>
            <div class="col-md-8">
              <input type="text" class="form-control" id="username" placeholder="Enter User Name" name="username" maxlength="10" pattern="([A-Z][a-z]*)" title="START WITH UPPERCASE" required/>
            </div>
          </div>
          <div class="form-group">
            <text class="control-label col-md-4" for="password" style="text-align: left">Password </text>
            <div class="col-md-8">
              <input type="password" class="form-control" id="password" placeholder="Enter password" name="password"maxlength="10" required/>
            </div>
          </div>
          <div class="form-group">
            <text class="control-label col-md-4" for="confirmpassword" style="text-align: left;">Confirm Password </text>
            <div class="col-md-8">
              <input type="password" class="form-control" id="confirmpassword" placeholder="Re-Enter Password" name="confirmpassword" onfocusout="validatePassword()" required/>
            </div>
            <div>
            <span id="validate" style="color: #46a5c8"></span>
            </div>
          </div>


          <div class="form-group">
            <text class="control-label col-md-4 " for="photo" style="text-align: left;">Photo</text>
            <div class="col-md-8">
              <input type="file" class="form-control" id="photo" placeholder="choose" name="inputphoto" required/>
            </div>
          </div>

          <div class="form-group">
            <div class=" col-md-8">
            </div>
            <div class=" col-md-4">
              <button type="submit" class="btn btn-basic btn-block" width=100% id="register">Register</button>
            </div>
            <span>${flash.message3}</span>
          </div>
        </g:uploadForm>
      </div>
</div>
  </div>
</div>
</body>
</html>