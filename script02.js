
//navigation bar start
const toggleNavButton = document.getElementById('toggleNav');
const navbar = document.getElementById('navbar');

toggleNavButton.addEventListener('click', () => {
    const currentLeft = parseInt(getComputedStyle(navbar).left);

    if (currentLeft < 0) {
        navbar.style.left = '0';
    } else {
        navbar.style.left = '-200px';
    }
});

// Auto-hide the navigation bar when not interacting with it
let timeoutId;

document.addEventListener('click', () => {
    clearTimeout(timeoutId);
    navbar.style.left = '0';
    timeoutId = setTimeout(() => {
        navbar.style.left = '-200px';
    }, 2000); // Hide after 2 seconds of inactivity
});

// Prevent auto-hide when interacting with the button or the navigation bar
toggleNavButton.addEventListener('mouseenter', () => {
    clearTimeout(timeoutId);
    navbar.style.left = '0';
});

navbar.addEventListener('mouseenter', () => {
    clearTimeout(timeoutId);
    navbar.style.left = '0';
});
//navigation bar end


//searchbox start
document.addEventListener('DOMContentLoaded', function () {
    const searchForm = document.getElementById('search-form');
    const searchInput = document.getElementById('search-input');
    const searchResults = document.getElementById('search-results');

    searchForm.addEventListener('submit', function (e) {
        e.preventDefault(); // Prevent the form from submitting normally

        const query = searchInput.value.trim();

        if (query !== '') {
            fetch(`search.php?q=${encodeURIComponent(query)}`)
                .then(response => response.text())
                .then(data => {
                    searchResults.innerHTML = data;
                })
                .catch(error => {
                    console.error('Error:', error);
                });
        }
    });
});
//searchbox end


//back-to-top start
window.onscroll = function() {
    scrollFunction();
};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("back-to-top").style.display = "block";
    } else {
        document.getElementById("back-to-top").style.display = "none";
    }
}

function scrollToTop() {
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE, and Opera
}
//back-to-top end