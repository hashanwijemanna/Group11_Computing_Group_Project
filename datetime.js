function updateDateTime() {
    const dateElement = document.getElementById('date');
    const timeElement = document.getElementById('time');

    const now = new Date();

    const options = {
        weekday: 'long',
        year: 'numeric',
        month: 'long',
        day: 'numeric',
    };

    const date = now.toLocaleDateString(undefined, options);
    const time = now.toLocaleTimeString();

    dateElement.textContent = 'Date: ' + date;
    timeElement.textContent = 'Time: ' + time;
}

// Update date and time every second
setInterval(updateDateTime, 1000);

// Initial call to display date and time
updateDateTime();
