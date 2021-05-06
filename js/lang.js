lang = {
    "de": {
        "lang-name": "Deutsch",
        "main-title": "Tourismus App <span class=\"orange\">Le<span id=\"heart\">❤</span>nding</span>"
    },
    "en": {
        "lang-name": "English",
        "main-title": "Tourism App <span class=\"orange\">Le<span id=\"heart\">❤</span>nding</span>"
    }
}

loadLanguage('de');

// Only loads de package right now, will get changed in future
function loadLanguage(lange) {
    document.getElementById("lang-header").innerText = lang[lange]["lang-name"];
    document.getElementById("main-title").innerHTML = lang[lange]["main-title"];
}
