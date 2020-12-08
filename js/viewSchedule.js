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

            //Sets up table with data from API 
            var html_to_append = '';
            html_to_append += '<table>'
            html_to_append += '<tr>'
            html_to_append += '<th>Year</th>'
            html_to_append += '<th>Name</th>'
            html_to_append += '</tr>'

            //.each visits each element in the data under yearItem and sorts it by idyears and rName1
            $.each(data, function(i, yearItem) {

                console.log(yearItem.idyears);
                console.log(yearItem.rName1);

                //checks if the yearName is null, if false then log idyears and rName1 into rows and columns 
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

            });

            //appends all data into html_to_append as a sorted table with name and year of class to be taken 
            html_to_append += '</table>'

            $("#classes-container").html(html_to_append);

        },
        error: function(request, error) {
            // This function is call if an error occurs.
            alert("Request: " + JSON.stringify(request));
        }
    });
});