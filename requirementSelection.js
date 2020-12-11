"use strict";

/*The purpose of this js file is loading course requirement data to the console from the backend. */
$(document).ready(function() {

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

                //table design layout on html page
                var html_to_append = ''; 
                html_to_append += '<table>'
                html_to_append += '<tr>'
                html_to_append += '<th>Name</th>'
                html_to_append += '<th>Select</th>'
                html_to_append += '</tr>'

                //append data into the table while visiting each element in array, pull out 'requirementItem'
                $.each(data, function(i, requirementItem) {

                   //console.log(requirementItem.idRequirements); 
                   console.log(requirementItem.RequirementName);

                    if (requirementItem.RequirementName != null) {
                    html_to_append += '<tr>'
                  //  html_to_append += '<td>' + requirementItem.idRequirements + '</td>'
                    html_to_append += '<td>' + requirementItem.RequirementName + '</td>'
                    html_to_append += '<td><input type="checkbox" name="check-tab2"></td>'
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
