function phonenumber(inputtxt) {
    var phoneno = /^[\+]?[(]?[0-9]{2,3}[)]?[-\s\.]?[0-9]{3,4}[-\s\.]?[0-9]{4,6}$/im;
    if (inputtxt.match(phoneno)) {
        return true;
    } else {
        //alert("Not a valid Phone Number");
        return false;
    }
}
module.exports = phonenumber;