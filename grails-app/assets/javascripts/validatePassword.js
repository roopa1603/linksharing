var validatePassword=function()  {


    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmpassword").value;
    if (password != confirmPassword) {

        document.getElementById("validate" ).innerHTML = "Not Match"
        //return false;
    } else{
        document.getElementById("validate").innerHTML = "Match"
        //return true;
    }
}

/*

$('#password, #confirmpassword').on('keyup', function () {
    if ($('#password').val() == $('#confirm_password').val()) {
        $('#validate').html('Matching').css('color', 'green');
    } else
        $('#message').html('Not Matching').css('color', 'red');
});

*/

