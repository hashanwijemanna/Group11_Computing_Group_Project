// Function to handle form submission for adding users
document.getElementById("routeForm").addEventListener("submit", function (event) {
    event.preventDefault();
    const formData = new FormData(event.target);
    const data = {};
    formData.forEach((value, key) => {
        data[key] = value;
    });

    fetch('add_route.php', {
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
    fetch('search_route.php?keyword=' + keyword)
        .then(response => response.text())
        .then(data => {
            document.getElementById('routeData').innerHTML = data;
        })
        .catch(error => console.error('Error:', error));
}





function fetchRouteData() {
    fetch('routedb.php')
        .then(response => response.text())
        .then(data => {
            document.getElementById('routeData').innerHTML = data;
        })
        .catch(error => console.error('Error:', error));
}

// Call the function when the page loads
window.onload = fetchRouteData;
