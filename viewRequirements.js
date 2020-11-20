"use strict";

$(document).ready(function() {

    // alert('Hello Class Schedule');
    //$('.phone_us').mask('000-000-0000');


    // $("#viewCS").click(function() {
        // alert('Working?');

        // This makes the ajax call and fires a success or error function defined inline.
        $.ajax({
            url: 'https://class-scheduling-api.herokuapp.com/requirements',
            type: 'GET', // POST  PUT  PATCH  DELETE  GET
            crossDomain: true,
            dataType: 'json',             
            beforeSend: function(xhr) {
                xhr.withCredentials = true;                
            },
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

                    //log requirementsItem - 'id requirements' (from database)
                    //log requirementsItem - 'MajorID' (from database)

                    if (requirementItem.RequirementName != null) {
                    html_to_append += '<tr>'
                    html_to_append += '<td>' + requirementItem.idRequirements + '</td>'
                    html_to_append += '<td>' + requirementItem.RequirementName + '</td>'
                    html_to_append += '</tr>'
                    }
                    
                  });
        
                  html_to_append += '</table>'

                  $("#classes-container").html(html_to_append);

            },
            error: function(request, error) {
                // This function is call if an error occurs.
                alert("Request: " + JSON.stringify(request));
            }
        });
});
