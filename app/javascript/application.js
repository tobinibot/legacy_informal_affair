// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
// import * as bootstrap from "bootstrap"

console.log('Ran application.js')

const tableRows = document.getElementById('item-table').querySelectorAll('tbody tr');
const searchField = document.getElementById('search');
const onlyGiftCardsCheckbox = document.getElementById('only-gc');
const statusRadioButtons = document.querySelectorAll('input[name="status"]');

function filter() {
    const query = searchField.value.trim().toLowerCase().replaceAll(/\s+/g, ' ');
    // const onlyGiftCards = onlyGiftCardsCheckbox.checked;

    // let status = 'all';
    // for (const radio of statusRadioButtons) {
    //     if (radio.checked) {
    //         status = radio.value;
    //     }
    // }

    for (const row of tableRows) {
        const text = row.innerText.toLowerCase();

        if (text.indexOf(query) > -1) {
            row.classList.remove('d-none');
        } else {
            row.classList.add('d-none');
        }

    }
}

searchField.addEventListener('keyup', function (e) {
    filter();
});

// onlyGiftCardsCheckbox.addEventListener('change', function (e) {
//     filter();
// });

// for (const radio of statusRadioButtons) {
//     radio.addEventListener('change', function (e) {
//         filter();
//     });
// }

// document.addEventListener("turbolinks:load", function() {
//     alert('hi');
//     // let tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
//     // tooltipTriggerList.map(function (tooltipTriggerEl) {
//     //     return new bootstrap.Tooltip(tooltipTriggerEl)
//     // });
// });

