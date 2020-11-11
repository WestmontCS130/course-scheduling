$(document).ready(function () {

    $("#results").append("<h2>password validation test</h2>")

    // Test case 1 with no lowercase 
    var password = "1234ABCD";
    var result = validate(password);
    $("#results").append("<p> test 1 valid password " + password + " = " + result + "</p>")
        // Test case 2 with no numbers
    var password = "ABCDabcd";
    var result = validate(password);
    $("#results").append("<p> test 2 valid password " + password + " = " + result + "</p>")
        // Test case 3 with no uppercase
    var password = "1234abcd";
    var result = validate(password);
    $("#results").append("<p> test 3 valid password " + password + " = " + result + "</p>")
        // Test case 4 with less than 8 characters
    var phNumber = "123Abc";
    var result = validate(password);
    $("#results").append("<p> test 3 valid password " + password + " = " + result + "</p>")


});
