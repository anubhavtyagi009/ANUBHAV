$(document).ready(function () {
  var username = $('#login-username');
  var password = $('#login-password');
  var loginbtn = $('#btn-login');

  loginbtn.click(function () {
    if(username.val() == "" && password.val() == "") {
      alert("Fields area empty");
    }
    else if (username.val() == "" || password.val() == "") {
      alert("Username or password is missing!!");
    }
    else if (password.val().length < 5) {
      alert("Password is too short");
    }
    else if(!password.val().match(/[0-9]/)) {
      alert("Password must contain atleast one number");
    }
  });


});
