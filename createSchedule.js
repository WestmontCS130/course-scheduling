"use strict";

$(document).ready(function() {

    //Sets up JavaScript AJAX library for pulling data from Heroku API
    $.ajax({
        url: 'https://class-scheduling-api.herokuapp.com/years',
        type: 'GET',
        crossDomain: true,
        dataType: 'json',
        beforeSend: function(xhr) {
            xhr.withCredentials = true;
        },
        success: function(data) {
            console.log(data);

            $.each(data, function(i, requirementItem) {

              //visit each element in the database, pull out 'requirementItem'
              //console.log(requirementItem.idRequirements);
              console.log(requirementItem.RequirementName);

              //conditional statement that allows function to traverse thorugh the database and append requirement information

              if (requirementItem.RequirementName != null) {
                  var x = equirementItem.RequirementName;
                  data.add(x[0])
                  //html_to_append += '<td>' + requirementItem.idRequirements + '</td>'
                  //html_to_append += '<td>' + requirementItem.RequirementName + '</td>'
                  //html_to_append += '</tr>'
              }

          });


          //html_to_append += '</table>'

          $("#classes-container").html(x);

      },

              error: function(request, error) {
                // This function is call if an error occurs.
                alert("Request: " + JSON.stringify(request));
            }
        }
    }
        