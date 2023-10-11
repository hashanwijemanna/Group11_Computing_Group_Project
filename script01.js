// Function to click the button when Enter is pressed
function clickButtonOnEnter(event) {
    if (event.key === "Enter") {
        // Trigger the click event of the button
        document.getElementById("validateButton").click();
    }
}

//functions to show error massages
function showError() {
    const passwordInput = document.getElementById("password");
    const usernameInput = document.getElementById("username");
    const divElement = document.querySelector('.error');
    const password = passwordInput.value;
    const username = usernameInput.value;
    if(username!="admin" || password!="admin"){
        divElement.innerHTML = "<strong>Incorrect username or password!</strong>";
    }else{
        divElement.innerHTML = "<strong>Welcome!</strong>";
    }
}

// Function to validate the password
function validatePassword() {
    const passwordInput = document.getElementById("password");
    const usernameInput = document.getElementById("username");
    const password = passwordInput.value;
    const username = usernameInput.value;

    if(username=="admin" && password=="admin"){
        window.location.href = "AdminPanel.html";
    } else {
        
    }

    

    
}

// Attach the functions to the button click event
const textInput = document.getElementById("password");
textInput.addEventListener("keydown", clickButtonOnEnter);
const validateButton = document.getElementById("validateButton");
validateButton.addEventListener("click", validatePassword);
validateButton.addEventListener("click", showError);



