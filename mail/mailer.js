$('#button_send').click(function () {
    let allGood = true;
    let messageBox = $('#messageBox');
    let field_name = $('#name');
    let field_email = $('#email');
    let field_content = $('#content');

    field_name.removeClass('fieldError');
    field_email.removeClass('fieldError');
    field_content.removeClass('fieldError');
    messageBox.html("&nbsp;");
    messageBox.css("display", "none");

    if (field_name.val() === '') {
        allGood = false;
        field_name.addClass('fieldError');
        messageBox.html("Bitte geben Sie einen Namen ein!<br>");
    }

    if (!validateEmail(field_email.val())) {
        allGood = false;
        field_email.addClass('fieldError');
        messageBox.append("Bitte geben Sie eine richtige E-Mail Adresse ein!<br>");
    }

    if (field_content.val().split(' ').length < 10) {
        allGood = false;
        field_content.addClass('fieldError');
        messageBox.append("Bitte geben Sie eine längere Nachricht ein! (min. 10 Wörter)");
    }

    if (allGood) {
        $.post("./mailsend.php", $("#contactForm").serialize(), (data) => {
            location.href = '../index.html'
        });
    } else {
        messageBox.css("display", "block");
    }



});

$('#button_back').click(function () {
    location.href = '../index.html'
});

function validateEmail(email) {
    let re = /\S+@\S+\.\S+/;
    return re.test(email);
}
