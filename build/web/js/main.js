window.addEventListener('scroll', function () {
    var scrollPosition = window.scrollY || window.pageYOffset;
    var smallNav = document.querySelector('.smallnav');
    var bigNav = document.querySelector('.bignav');
    var smallNavHeight = smallNav.offsetHeight;

    if (scrollPosition > smallNavHeight) {
        smallNav.classList.add('smallnav-fixed');
        bigNav.classList.add('bignav_scroll');
    } else {
        smallNav.classList.remove('smallnav-fixed');
        bigNav.classList.remove('bignav_scroll');
    }
});