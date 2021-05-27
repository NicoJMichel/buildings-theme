window.onload = function () {
    var password = document.getElementById("password");
    var username = document.getElementById("username");
    
    username.addEventListener('keyup', checkCapsLock);
    password.addEventListener('keyup', checkCapsLock);
    username.addEventListener('mousedown', checkCapsLock);
    password.addEventListener('mousedown', checkCapsLock);
}

function checkCapsLock() {
    // If "caps lock" is pressed, display the warning text
    if (event.getModifierState("CapsLock")) {
        document.getElementById("caps-lock-warning").style.visibility = "visible";
    } else {
        document.getElementById("caps-lock-warning").style.visibility = "hidden";
    }
}