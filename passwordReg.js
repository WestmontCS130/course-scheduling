    function compare(inputtxt){
        var psw1 = document.getElementById('psw1').value;

        if (psw1.match('psw1')){
            return true;
        }
        else{
            //alert ("passwords do not match");
            return false;
    }
}
module.exports = compare;
