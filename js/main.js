var json = require('../lang/lang.json');

// Only loads de package right now, will get changed in future
function loadLanguage(){

}

let contactButton = document.getElementById('contact');

contactButton.style.cursor = 'pointer';
contactButton.onclick = function() {
    location.href = './mail/index.html';
};
