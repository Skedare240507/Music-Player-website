document.addEventListener("DOMContentLoaded", function () {
    const toggleButton = document.getElementById("theme-toggle");

    // Function to apply the theme
    function applyTheme(mode) {
        if (mode === "dark") {
            document.body.classList.add("dark-mode");
        } else {
            document.body.classList.remove("dark-mode");
        }
        localStorage.setItem("theme", mode);
    }

    // Apply the saved theme on page load
    const savedTheme = localStorage.getItem("theme") || "light";
    applyTheme(savedTheme);

    // Toggle theme on button click
    if (toggleButton) {
        toggleButton.addEventListener("click", function () {
            const currentMode = document.body.classList.contains("dark-mode") ? "light" : "dark";
            applyTheme(currentMode);
        });
    }
});
