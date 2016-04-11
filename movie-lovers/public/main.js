(function main (doc) {
    var correct, i, element;

    correct = doc.querySelectorAll('[data-hook~=guess]');

    for (i = 0; i < correct.length; i += 1) {
        element = correct.item(i);
        element.addEventListener('click', function (event) {
            var data, message;

            event.preventDefault();

            data = event.currentTarget.dataset;
            message = data.hook.indexOf('correct') > -1
                ? 'Correct!'
                : 'Wrong! Guess again.'
            ;

            alert(message);
        });
    }
})(document);
