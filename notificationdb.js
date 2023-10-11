
// Function to handle user search
function searchNotifi() {
    const keyword = document.getElementById("searchKeyword").value;
    fetch('search_notify.php?keyword=' + keyword)
        .then(response => response.text())
        .then(data => {
            document.getElementById('notificationData').innerHTML = data;
        })
        .catch(error => console.error('Error:', error));
}




function fetchNotificationData() {
    fetch('notificationdb.php')
        .then(response => response.text())
        .then(data => {
            document.getElementById('notificationData').innerHTML = data;
        })
        .catch(error => console.error('Error:', error));
}

// Call the function when the page loads
window.onload = fetchNotificationData;


