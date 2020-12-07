"use strict";

$(document).ready(function() {


        // This makes the ajax call and fires a success or error function defined inline.
        $.ajax({
            url: 'https://class-scheduling-api.herokuapp.com/requirements',
            type: 'GET', 
            crossDomain: true,
            dataType: 'json',             
            beforeSend: function(xhr) {
                xhr.withCredentials = true;                
            },
            success: function(data) {     
                console.log(data);
                
                //table layout on html page   
                var html_to_append = ''; 
                html_to_append += '<table>'
                html_to_append += '<tr>'
                html_to_append += '<th>Year</th>'
                html_to_append += '<th>Name</th>'
                html_to_append += '</tr>'


                //append data into html into a table with requirements, majorID
                $.each(data, function(i, requirementItem) {

                    //visit each element in the database, pull out 'requirementItem'
                    console.log(requirementItem.idRequirements); 
                    console.log(requirementItem.RequirementName);
                
                    //conditional statement that allows function to traverse thorugh the database and append requirement information
                
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

            //Function call if an error occurs 
            error: function(request, error) {

                alert("Request: " + JSON.stringify(request));
            }
        });
});
