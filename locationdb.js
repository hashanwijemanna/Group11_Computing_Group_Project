function fetchLocationData() {
    fetch('locationdb.php')
        .then(response => response.text())
        .then(data => {
            document.getElementById('locationData').innerHTML = data;
        })
        .catch(error => console.error('Error:', error));
}

// Call the function when the page loads
window.onload = fetchLocationData;


