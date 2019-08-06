/*var validatePassword=function()  {


    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmpassword").value;
    if (password != confirmPassword) {

        document.getElementById("validate" ).innerHTML = "Not Match"
        //return false;
    } else{
        document.getElementById("validate").innerHTML = "Match"
        //return true;
    }
}*/
var validate_email = function() {

    var email = document.getElementById("email").value;
    var lemail = document.getElementByEmail(params.email).value;

    if(email!=lemail){

        document.getElementById("validate").innerHTML = "Enter valid email"
    }else{
        document.getElementById("validate").innerHTML = "Valid email"
    }
}