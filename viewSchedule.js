"use strict";

$(document).ready(function() {

        // This makes the ajax call and fires a success or error function defined inline.
        $.ajax({
            url: 'https://class-scheduling-api.herokuapp.com/years',
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

                //append data into html as table with years, name

                $.each(data, function(i, yearItem) {

                    //visit each element in array, pull out 'yearItem'

                    console.log(yearItem.idyears); 
                    console.log(yearItem.rName1);

                    //log yearItem - 'id years' (from database)
                    //log yearItem - 'rName1' (from database)

                    if (yearItem.rName1 != null) {
                    html_to_append += '<tr>'
                    html_to_append += '<td>' + yearItem.idyears + '</td>'
                    html_to_append += '<td>' + yearItem.rName1 + '</td>'
                    html_to_append += '</tr>'
                    }

                    if (yearItem.rName2 != null) {
                    html_to_append += '</tr>'
                    html_to_append += '<td>' + yearItem.idyears + '</td>'
                    html_to_append += '<td>' + yearItem.rName2 + '</td>'
                    html_to_append += '</tr>'
                    }

                    if (yearItem.rName3 != null) {
                    html_to_append += '</tr>'
                    html_to_append += '<td>' + yearItem.idyears + '</td>'
                    html_to_append += '<td>' + yearItem.rName3 + '</td>'
                    html_to_append += '</tr>'
                    }

                    if (yearItem.rName4 != null) {
                    html_to_append += '</tr>'
                    html_to_append += '<td>' + yearItem.idyears + '</td>'
                    html_to_append += '<td>' + yearItem.rName4 + '</td>'
                    html_to_append += '</tr>'
                    }

                    if (yearItem.rName5 != null) {
                    html_to_append += '</tr>'
                    html_to_append += '<td>' + yearItem.idyears + '</td>'
                    html_to_append += '<td>' + yearItem.rName5 + '</td>'
                    html_to_append += '</tr>'
                    }

                    if (yearItem.rName6 != null) {
                    html_to_append += '</tr>'
                    html_to_append += '<td>' + yearItem.idyears + '</td>'
                    html_to_append += '<td>' + yearItem.rName6 + '</td>'
                    html_to_append += '</tr>'
                    }

                    if (yearItem.rName7 != null) {
                    html_to_append += '</tr>'
                    html_to_append += '<td>' + yearItem.idyears + '</td>'
                    html_to_append += '<td>' + yearItem.rName7 + '</td>'
                    html_to_append += '</tr>'
                    }

                    if (yearItem.rName8 != null) {
                    html_to_append += '</tr>'
                    html_to_append += '<td>' + yearItem.idyears + '</td>'
                    html_to_append += '<td>' + yearItem.rName8 + '</td>'
                    html_to_append += '</tr>'
                    }

                    if (yearItem.rName9 != null) {
                        html_to_append += '</tr>'
                        html_to_append += '<td>' + yearItem.idyears + '</td>'
                        html_to_append += '<td>' + yearItem.rName9 + '</td>'
                        html_to_append += '</tr>'
                    }
                    if (yearItem.rName10 != null) {
                        html_to_append += '</tr>'
                        html_to_append += '<td>' + yearItem.idyears + '</td>'
                        html_to_append += '<td>' + yearItem.rName10 + '</td>'
                        html_to_append += '</tr>'
                    }
                    if (yearItem.rName11 != null) {
                        html_to_append += '</tr>'
                        html_to_append += '<td>' + yearItem.idyears + '</td>'
                        html_to_append += '<td>' + yearItem.rName11 + '</td>'
                        html_to_append += '</tr>'
                    }
                    if (yearItem.rName12 != null) {
                        html_to_append += '</tr>'
                        html_to_append += '<td>' + yearItem.idyears + '</td>'
                        html_to_append += '<td>' + yearItem.rName12 + '</td>'
                        html_to_append += '</tr>'
                        }

                //put new row in table for each year and name(rName1, rName2, rName3...)
                //takes out 'null' for each one(we gotta fix the formatting of the dataBase)

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

