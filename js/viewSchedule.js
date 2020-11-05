"use strict";

$(document).ready(function() {

    //alert('Hello View Schedule');
    //$('.phone_us').mask('000-000-0000');


    // Adds a click event to the GetDogPic button
    $("#viewCS").click(function() {
        alert('Working?');

        // This makes the ajax call and fires a success or error function defined inline.
        $.ajax({
            url: 'https://class-scheduling-api.herokuapp.com/schedule',
            type: 'GET', // POST  PUT  PATCH  DELETE  GET
            data: {
                // Any data to be sent to server can be created here.  This api doesn't require data, but a POST call will
                'numberOfWords': 10
            },
            dataType: 'json',
            success: function(data) {
                // This is the success function event.
                // Notice the data is passed as a parameter.  It is in json format can you can reference the properties data.message and data.success.
                // https://dog.ceo/dog-api/ The documentation tells you the layout of the return data.
                alert('Data: ' + data);

                //$("#DogPic").attr("src", data.message);
            },
            error: function(request, error) {
                // This function is call if an error occurs.
                alert("Request: " + JSON.stringify(request));
            }
        });
    });
});