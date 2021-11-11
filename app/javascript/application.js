// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
// import * as bootstrap from "bootstrap"

console.log('Ran application.js')

const currencyFormatter = new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'USD'
});

function init() {
    let searchBox = document.getElementById('search')
    searchBox.value = '';
}

document.addEventListener("turbo:load", function() {
    console.log('turbo:load');
    // let tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
    // tooltipTriggerList.map(function (tooltipTriggerEl) {
    //     return new bootstrap.Tooltip(tooltipTriggerEl)
    // });

    let searchBox = document.getElementById('search');
    searchBox.addEventListener('input', function (e) {
        filter();
    });

    init()
});

init();

function filter() {
    const tableRows = document.getElementById('item-table').querySelectorAll('tbody tr');
    const searchField = document.getElementById('search');
    // const onlyGiftCardsCheckbox = document.getElementById('only-gc');
    // const statusRadioButtons = document.querySelectorAll('input[name="status"]');


    const query = searchField.value.trim().toLowerCase().replaceAll(/\s+/g, ' ');
    // const onlyGiftCards = onlyGiftCardsCheckbox.checked;

    // let status = 'all';
    // for (const radio of statusRadioButtons) {
    //     if (radio.checked) {
    //         status = radio.value;
    //     }
    // }

    let itemsSold = 0
    let totalSales = 0

    for (const row of tableRows) {
        const text = row.innerText.toLowerCase();

        if (text.indexOf(query) > -1) {
            row.classList.remove('d-none');
            let value = parseFloat(row.dataset.soldFor);
            totalSales += value
            if (value > 0) {
                itemsSold++;
            }
        } else {
            row.classList.add('d-none');
        }
    }

    const visibleCounter = document.getElementById('visible-item-count');
    const allCounter = document.getElementById('all-item-count');
    const soldCounter = document.getElementById('sold-item-count');
    const saleValue = document.getElementById('sale-value');
    const allRows = document.querySelectorAll('tbody tr').length;
    const hiddenRows = document.querySelectorAll('tbody tr.d-none').length;

    visibleCounter.innerText = allRows - hiddenRows;
    allCounter.innerText = allRows;
    soldCounter.innerText = itemsSold;
    saleValue.innerText = currencyFormatter.format(totalSales);
}


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

