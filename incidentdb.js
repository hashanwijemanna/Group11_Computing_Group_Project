function fetchIncidentData() {
    fetch('incidentdb.php')
        .then(response => response.text())
        .then(data => {
            document.getElementById('incidentData').innerHTML = data;
        })
        .catch(error => console.error('Error:', error));
}

// Call the function when the page loads
window.onload = fetchIncidentData;


