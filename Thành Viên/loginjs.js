document.getElementById("login-form").addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent form submission

    // Retrieve input values
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    // Send login request to Google Apps Script
    fetch('https://script.google.com/macros/s/AKfycby_WbWKhkrzXO9mVv1VCL0rufnvoeUp84VN5GxqE9QKlRiiobpDcOy0E_MNh3_tn9MIWA/exec?username=' + username + '&password=' + password)
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            alert("Login successful!");
            // Redirect to another page or perform further actions after successful login
        } else {
            alert("Invalid username or password. Please try again.");
        }
    })
    .catch(error => console.error('Error:', error));
});