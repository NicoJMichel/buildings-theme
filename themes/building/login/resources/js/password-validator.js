/**
 * Toggles the icon for the specific password policy rule
 */
function toggleValidation(id, isValid) {
  if (isValid) {
    document.getElementById(`${id}-invalid`).style.display = "none";
    document.getElementById(`${id}-valid`).style.display = "block";
  } else {
    document.getElementById(`${id}-valid`).style.display = "none";
    document.getElementById(`${id}-invalid`).style.display = "block";
  }
}

function validatePassword(event) {
  var password = event.target.value;
  
  // RegEx rules below:
  // Minimum password length is 12
  var minPasswordLength = /^.{12,}/;
  // At least one capital and small letter
  var hasMixedLetters = /^(?=.*?[A-Z])(?=.*?[a-z])/;
  // At least one digit
  var hasDigit = /^(?=.*?[0-9])/;
  // At least one special character (without space)
  var hasSpecialChar = /^(?=.*?[#?!@$%^&*-])/;

  toggleValidation("password-length", minPasswordLength.test(password));
  toggleValidation("mixed-letters", hasMixedLetters.test(password));
  toggleValidation("digit", hasDigit.test(password));
  toggleValidation("special-char", hasSpecialChar.test(password));
}