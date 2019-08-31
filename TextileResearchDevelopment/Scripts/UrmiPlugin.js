

function IsValidNumber(element, keyCode) {
    if (keyCode == true) {
        return false;
    }

    if ((keyCode >= 48 && keyCode <= 57) || (keyCode >= 96 && keyCode <= 105) || keyCode == 8 || keyCode == 9 || keyCode == 37 || keyCode == 39 || keyCode == 46 || keyCode == 190 || keyCode == 110) {

    } else {
        return false;
    }

    if (element.val().indexOf('.') !== -1 && (keyCode == 190 || keyCode == 110))
        return false;
}