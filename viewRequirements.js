"use strict";

$(document).ready(function() {

    // alert('Hello Class Schedule');
    //$('.phone_us').mask('000-000-0000');


    // $("#viewCS").click(function() {
        // alert('Working?');

        // This makes the ajax call and fires a success or error function defined inline.
        $.ajax({
            url: 'https://class-scheduling-api.herokuapp.com/requirements',

             //Type of request is 'GET' - requesting then pulling data
            type: 'GET',

            //'True' gives code the approval to get data from the backend to the front end 
            crossDomain: true,

            //Establishes dataType 
            dataType: 'json',

            //Before AJAX request sent, set request too allow cookie values for own domain         
            beforeSend: function(xhr) {
                xhr.withCredentials = true;                
            },

            //if successful, log data from backend into the console
            success: function(data) {     
                console.log(data);

            // console.log("num elements: " + data.length); puts it in an array
                var html_to_append = ''; 
                html_to_append += '<table>'
                html_to_append += '<tr>'
                html_to_append += '<th>Year</th>'
                html_to_append += '<th>Name</th>'
                html_to_append += '</tr>'

                //append data into html as table with requirements, majorID
                $.each(data, function(i, requirementItem) {

                //visit each element in array, pull out 'yearItem'
                console.log(requirementItem.idRequirements); 
                console.log(requirementItem.RequirementName);

                //log requirementsItem - 'id requirements' (pull from database)
                //log requirementsItem - 'MajorID' (pull from database)
                //if requirementname doesnt equal null, send it to the table! 
                    if (requirementItem.RequirementName != null) {
                    html_to_append += '<tr>'
                    html_to_append += '<td>' + requirementItem.idRequirements + '</td>'
                    html_to_append += '<td>' + requirementItem.RequirementName + '</td>'
                    html_to_append += '</tr>'
                    }
    
                  });
        
                  //append data into html_to_append table 
                  html_to_append += '</table>'

                  $("#classes-container").html(html_to_append);

            },
            error: function(request, error) {
                // This function is call if an error occurs.
                alert("Request: " + JSON.stringify(request));
            }
        });
});
