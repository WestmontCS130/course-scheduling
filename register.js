function password(inputtxt) { 
    var pattern= /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
    if (inputtxt.match(pattern)){
        return true;
    }
    else {
        //alert ("invalid password");
        return false;
        }
    }   

module.export= password; 
