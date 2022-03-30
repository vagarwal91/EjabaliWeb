$(document).ready(function () {

    $(".owl-banner").owlCarousel({
        loop: true,
        navigation: true, // Show next and prev buttons

        slideSpeed: 300,
        paginationSpeed: 400,
        autoplay: true,
        autoPlaySpeed: 5000,
        autoPlayTimeout: 5000,
        autoplayHoverPause: true,
        items: 1,
        itemsDesktop: false,
        itemsDesktopSmall: false,
        itemsTablet: false,
        itemsMobile: false,
        dots: false,
        nav: true,
        navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>']
    });

    $("#owl-sub-category").owlCarousel({
        loop: true,
        margin: 15,
        navigation: true, // Show next and prev buttons

        slideSpeed: 300,
        paginationSpeed: 400,
        autoPlay: true,
        stopOnHover: false,
        items: 6,
        itemsDesktop: false,
        itemsDesktopSmall: false,
        itemsTablet: false,
        itemsMobile: false,
        dots: false,
        nav: true,
        navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>'],
        responsive: {
            0: {
                items: 2,
                nav: true
            },
            600: {
                items: 3,
                nav: false
            },
            1000: {
                items: 5,
                nav: true,
                loop: false
            }
        }
    });

    $("#owl-div-category").owlCarousel({
        loop: true,
        margin: 15,
        navigation: true, // Show next and prev buttons

        slideSpeed: 300,
        paginationSpeed: 400,
        autoPlay: true,
        stopOnHover: false,
        items: 12,
        itemsDesktop: false,
        itemsDesktopSmall: false,
        itemsTablet: false,
        itemsMobile: false,
        dots: false,
        nav: true,
        navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>'],
        responsive: {
            0: {
                items: 3,
                nav: true
            },
            600: {
                items: 6,
                nav: false
            },
            1000: {
                items: 12,
                nav: true,
                loop: false
            }
        }
    });

    $(".owl-sub-sub-category").owlCarousel({
        loop: true,
        margin: 15,
        navigation: true, // Show next and prev buttons

        slideSpeed: 300,
        paginationSpeed: 400,
        autoPlay: true,
        stopOnHover: false,
        items: 6,
        itemsDesktop: false,
        itemsDesktopSmall: false,
        itemsTablet: false,
        itemsMobile: false,
        dots: false,
        nav: true,
        navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>'],
        responsive: {
            0: {
                items: 2,
                nav: true
            },
            600: {
                items: 3,
                nav: false
            },
            1000: {
                items: 5,
                nav: true,
                loop: false
            }
        }
    });

    $("#owl-item-brand").owlCarousel({
        loop: true,
        margin: 15,
        navigation: true, // Show next and prev buttons

        slideSpeed: 300,
        paginationSpeed: 400,
        autoPlay: true,
        stopOnHover: false,
        items: 6,
        itemsDesktop: false,
        itemsDesktopSmall: false,
        itemsTablet: false,
        itemsMobile: false,
        dots: false,
        nav: true,
        navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>'],
        responsive: {
            0: {
                items: 2,
                nav: true
            },
            600: {
                items: 3,
                nav: false
            },
            1000: {
                items: 5,
                nav: true,
                loop: false
            }
        }
    });

    $('#loginBtn').on('click', function () {
        $('#loginModal').modal('show');
        //$('.dropdown-menu').hide();
    });

});