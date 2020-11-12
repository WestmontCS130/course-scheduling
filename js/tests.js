$(document).ready(function() {

    $("#results").append("<h2>phone number test</h2>")

    // Test 1 with spaces and no symbols 
    var phNumber = "123 456 7890";
    var result = phonenumber(phNumber);
    $("#results").append("<p> test 1 valid phone number " + phNumber + " = " + result + "</p>")
        // Test 2 with no spaces and no symbols
    var phNumber = "1234567890";
    var result = phonenumber(phNumber);
    $("#results").append("<p> test 2 valid phone number " + phNumber + " = " + result + "</p>")
        // Test 3 with spaces and symbols
    var phNumber = "(123) 456-7890";
    var result = phonenumber(phNumber);
    $("#results").append("<p> test 3 valid phone number " + phNumber + " = " + result + "</p>")
        // Test 4 with spaces and symbols and letters
    var phNumber = "(abc) 456-7890";
    var result = phonenumber(phNumber);
    $("#results").append("<p> test 3 valid phone number " + phNumber + " = " + result + "</p>")


});

const sum = require('./js/register');

test('Phone test', () => {
    expect(phonenumber(phNumber)).toBe(true);
});