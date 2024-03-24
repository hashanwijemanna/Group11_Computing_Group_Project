// Function to handle form submission for adding users
document.getElementById("userForm").addEventListener("submit", function (event) {
    event.preventDefault();
    const formData = new FormData(event.target);
    const data = {};
    formData.forEach((value, key) => {
        data[key] = value;
    });

    fetch('add_user.php', {
        method: 'POST',
        body: JSON.stringify(data),
        headers: {
            'Content-Type': 'application/json'
        }
    })
    .then(response => response.json())
    .then(result => {
        document.getElementById("message").textContent = result.message;
        fetchStudentData();
    })
    .catch(error => console.error('Error:', error));
});

// Function to handle user search
function searchUsers() {
    const keyword = document.getElementById("searchKeyword").value;
    fetch('search_users.php?keyword=' + keyword)
        .then(response => response.text())
        .then(data => {
            document.getElementById('studentData').innerHTML = data;
        })
        .catch(error => console.error('Error:', error));
}

// Function to fetch student data
function fetchStudentData() {
    fetch('studentdb.php')
        .then(response => response.text())
        .then(data => {
            document.getElementById('studentData').innerHTML = data;
        })
        .catch(error => console.error('Error:', error));
}

// Function to scroll to the top of the page
function scrollToTop() {
    window.scrollTo({ top: 0, behavior: 'smooth' });
}

// Call the function when the DOM content is loaded
document.addEventListener('DOMContentLoaded', function () {
    fetchStudentData();
});
