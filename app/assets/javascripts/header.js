$( document ).on('turbolinks:load', function() {
    addMenuToggleListeners();
    checkScreenSize();
});


$(window).resize(function(){
    checkScreenSize();
});

function addMenuToggleListeners() {
    $('#main-menu-open').on('click', function() {
        var menu = document.getElementById('main-menu');
        var menu_open = document.getElementById('main-menu-open');
        var menu_close = document.getElementById('main-menu-close');

        menu.classList.remove('hidden');
        menu_close.classList.remove('hidden');
        menu_open.classList.add('hidden');
    });

    $('#main-menu-close').on('click', function() {
        var menu = document.getElementById('main-menu');
        var menu_open = document.getElementById('main-menu-open');
        var menu_close = document.getElementById('main-menu-close');

        menu.classList.add('hidden');
        menu_close.classList.add('hidden');
        menu_open.classList.remove('hidden');
    });
}

function checkScreenSize() {
    if (window.matchMedia('(max-width:50em)').matches) {
        if (!document.getElementById('main-menu-close').classList.contains('hidden')) {
            // We're already in small viewport
        }
        else {
            setSmallHeader();
        }
    }
    else {
        setLargeHeader();
    }
}

function setSmallHeader(){
    document.getElementById('main-menu').classList.add('hidden');
    document.getElementById('main-menu-open').classList.remove('hidden');
    document.getElementById('s70-name').text = "S'70"
}

function setLargeHeader(){
    document.getElementById('main-menu').classList.remove('hidden');
    document.getElementById('main-menu-open').classList.add('hidden');
    document.getElementById('main-menu-close').classList.add('hidden');
    document.getElementById('s70-name').text = "SHAKESPEARE '70"
}