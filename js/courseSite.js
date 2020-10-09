//alert("Hello from courseSite.js");
function httpGet() {
    const Http = new XMLHttpRequest();
    const url = 'https://class-scheduling-api.herokuapp.com/testing';
    Http.open("GET", url);
    Http.send();
    Http.onreadystatechange = (e) => {
        return Http.responseText;
    }
}