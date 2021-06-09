function checkIfEmpty(event) {
  // If Input Field is empty, disable Submit button
  const submitBtn = document.getElementById("submitButton");

  if (event.target.value !== null && event.target.value === "") {
    submitBtn.setAttribute("disabled", true);
  } else {
    submitBtn.removeAttribute("disabled");
  }
}
