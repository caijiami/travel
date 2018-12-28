function addCss(){
    var head = document.getElementsByTagName('head')[0];
    var link = document.createElement('link');
    link.type='text/css';
    link.rel = 'stylesheet';
    link.href = "../my_plug/css/my_carousel.css";
    head.appendChild(link);
}
addCss();
window.addEventListener('load', function () {
    var carousels = document.querySelectorAll('.carousel');
    carousel(carousels[0]);
});

function carousel(root) {
    var figure = root.querySelector('figure'),
        btn = root.querySelectorAll('nav button'),
        images = figure.children,
        n = images.length,
        gap = root.dataset.gap || 0,
        bfc = 'bfc' in root.dataset,
        theta = 2 * Math.PI / n,
        currImage = 0;

    setupCarousel(n, parseFloat(getComputedStyle(images[0]).width));
    window.addEventListener('resize', function () {
        setupCarousel(n, parseFloat(getComputedStyle(images[0]).width));
    });

    setupNavigation();

    function setupCarousel(n, s) {
        var apothem = s / (2 * Math.tan(Math.PI / n));

        figure.style.transformOrigin = '50% 50% ' + -apothem + 'px';

        for (var i = 0; i < n; i++) {
            images[i].style.padding = gap + 'px';
        }for (i = 1; i < n; i++) {
            images[i].style.transformOrigin = '50% 50% ' + -apothem + 'px';
            images[i].style.transform = 'rotateY(' + i * theta + 'rad)';
        }
        if (bfc) for (i = 0; i < n; i++) {
            images[i].style.backfaceVisibility = 'hidden';
        }rotateCarousel(currImage);
    }

    function setupNavigation() {
        btn[0].addEventListener('click', onPrevClick, true);
        btn[1].addEventListener('click', onNextClick, true);
        function onNextClick() {
                currImage++;
            rotateCarousel(currImage);
        }
        function onPrevClick() {
                currImage--;
            rotateCarousel(currImage);
        }
        setInterval(function(){
            onNextClick()
        },5000);
    }

    function rotateCarousel(imageIndex) {
        figure.style.transform = 'rotateY(' + imageIndex * -theta + 'rad)';
    }
}