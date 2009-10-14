function onlyNumbers(evt) {
    var e = evt
    var charCode
    if(window.event){ // IE
            charCode = e.keyCode;
    } else if (e.which) { // Safari 4, Firefox 3.0.4
            charCode = e.which
    }
    if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;
    return true;
}
