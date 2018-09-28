$( document ).on('turbolinks:load', function() {
    addMenuToggleListeners();
    checkScreenSize();
});


$(window).resize(function(){
    checkScreenSize();
});

function addMenuToggleListeners() {
    $('#main-menu-open').on('click', function() {
        var menu = get_by_id('main-menu');
        var menu_open = get_by_id('main-menu-open');
        var menu_close = get_by_id('main-menu-close');

        menu.classList.remove('hidden');
        menu_close.classList.remove('hidden');
        menu_open.classList.add('hidden');
    });

    $('#main-menu-close').on('click', function() {
        var menu = get_by_id('main-menu');
        var menu_open = get_by_id('main-menu-open');
        var menu_close = get_by_id('main-menu-close');

        menu.classList.add('hidden');
        menu_close.classList.add('hidden');
        menu_open.classList.remove('hidden');
    });
}

function checkScreenSize() {
    if (window.matchMedia('(max-width:50em)').matches) {
        if (!get_by_id('main-menu-close').classList.contains('hidden')) {
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
    get_by_id('main-menu').classList.add('hidden');
    get_by_id('main-menu-open').classList.remove('hidden');
    get_by_id('s70-name').text = "S'70"
}

function setLargeHeader(){
    get_by_id('main-menu').classList.remove('hidden');
    get_by_id('main-menu-open').classList.add('hidden');
    get_by_id('main-menu-close').classList.add('hidden');
    get_by_id('s70-name').text = "SHAKESPEARE '70"
}

function get_by_id(element_id){
    return document.getElementById(element_id);
}