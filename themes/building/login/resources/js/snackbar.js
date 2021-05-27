setTimeout(removeIt, 5000);

function removeIt() {
    var snackbar = document.getElementById("snackbar");
    if (snackbar) {
        snackbar.classList.add('snackbar-slideout');
        setTimeout(deleteSnackbar, 500,"snackbar");
    }
}

function deleteSnackbar(element) {
    var snackbar = document.getElementById(element);
    snackbar.parentNode.removeChild(snackbar);
}

function removeInfo() {
    var snackbar = document.getElementById("snackbar-info");
    snackbar.classList.add('snackbar-slideout');
    setTimeout(deleteSnackbar, 500,"snackbar-info");
}