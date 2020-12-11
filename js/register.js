"use strict";

$(document).ready(function() {

    $("#btn-submit").click(function () {
        var phoneNumber = $('#phoneNumber').val();
        var password = $('#psw1').val();
        register(phoneNumber,password);
    });


    function register(phoneNumber, password) {

        // This makes the ajax call and fires a success or error function defined inline.
        // alert(phoneNumber);
        // alert(password);

        var userData = {
            "Phonenumber" : phoneNumber,
            "Password": password
        };

        //alert(JSON.stringify(userData));

        $.ajax({
            type: "POST",
            url: 'https://class-scheduling-api.herokuapp.com/user',
            data: JSON.stringify(userData),
            crossDomain: true,
            contentType: "application/json; charset=utf-8",
            success: function(data) {
            window.location.href = "home.html";

                console.log(data);
                alert("Registration successful! \nPhone Number: " +phoneNumber +"\nPassword: " +password +"\nClick OK to login")
            },          
            error: function(request, error) {
                console.log("Error:");
                console.log(error);
                alert("Registration failed, please check that phone number and password are correct");

    //             alert("Request: " + JSON.stringify(request));
            }
        });
    }
});

