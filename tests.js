$(document).ready(function () {

    $("#results").append("<h2>password test</h2>")

    // Test case 1 with no lowercase 
    var psw = "1234ABCD";
    var result = password(psw);
    $("#results").append("<p> valid password test 1 " + psw + " = " + result + "</p>")
        // Test case 2 with no numbers
    var psw = "ABCDabcd";
    var result = password(psw);
    $("#results").append("<p> valid password test 2 " + psw + " = " + result + "</p>")
        // Test case 3 with no uppercase
    var psw = "1234abcd";
    var result = password(psw);
    $("#results").append("<p> valid password test 3 " + psw + " = " + result + "</p>")
        // Test case 4 with less than 8 characters
    var psw = "123Abc";
    var result = password(psw);
    $("#results").append("<p> valid password test 4 " + psw + " = " + result + "</p>")
     // Test case 5 with just numbers
     var psw = "12345678";
     var result = password(psw);
     $("#results").append("<p> valid password test 5 " + psw + " = " + result + "</p>")
    // Test case 6 with correct criteria
    var psw = "123ABCabc";
    var result = password(psw);
    $("#results").append("<p> valid password test 5 " + psw + " = " + result + "</p>")
});
