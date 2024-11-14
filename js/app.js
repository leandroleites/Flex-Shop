//const menu = document.querySelector('.menu');
//const btnHamburger = document.querySelector('.hamburger');
const btnMenuClose = document.querySelector('#btnMenuClose');

//const cart = document.querySelector('.cart');
//const btnCart = document.querySelector('.btnCart');

const btnPlus = document.querySelector('#btnPlus');
const btnMinus = document.querySelector('#btnMinus');
const productCounter = document.querySelector('.counter');

const gallery = document.querySelectorAll('.pic');
const heroImg = document.querySelector('.product-hero');

const btnNext = document.querySelector('.next');
const btnPrevious = document.querySelector('.previous');

const btnAddToCard = document.querySelector('.btn');
//const cartCount = document.querySelector('.cart-count');
const productInShoppingCart = document.querySelector('.products-in-cart');

//const msgEmpty = document.querySelector('.msg-empty');
const checkout = document.querySelector('.checkout');

const overlay = document.querySelector('.overlay');
const lightbox = document.querySelector('.lightbox');

let lightboxGallery;
let lightboxHero;


//Numerical Variables
let productCounterValue = 1;
let productsInCart = 0;
let price = 250.0
let discount = 0.5;


//btnHamburger.addEventListener('click', onHamburgerClick);
//btnMenuClose.addEventListener('click', onBtnMenuCloseClick);

//btnCart.addEventListener('click', openCart);

btnPlus.addEventListener('click', productCounterPlus);
btnMinus.addEventListener('click', productCounterMinus);

gallery.forEach(img => {
    img.addEventListener('click', onThumbClick);
});

btnNext.addEventListener('click', handleBtnClickNext);
btnPrevious.addEventListener('click', handleBtnClickPrevious);

btnAddToCard.addEventListener('click', addToCart);

heroImg.addEventListener('click', onHeroImgClick);



//function onHamburgerClick() {
   // menu.classList.remove('hidden');
//}

function onBtnMenuCloseClick() {
    menu.classList.add('hidden');
}

//function openCart() {
    //cart.classList.toggle('hidden');
//}

function productCounterPlus() {
    //console.log(productCounterValue);
    setProductCounter(1);
}

function productCounterMinus() {
    setProductCounter(-1);
}

function setProductCounter(value) {
    if ((productCounterValue + value) > 0) {
        productCounterValue += value;
        productCounter.innerHTML = productCounterValue;
    }
    //console.log(value);
}


function onThumbClick(event) {
    //clear active state for all thumbnails
    gallery.forEach(img => {
        img.classList.remove('active');
    });
    //set active thumbnail
    event.target.parentElement.classList.add('active');
    //update hero image
    heroImg.src = event.target.src.replace('-thumbnail', '');
}

function handleBtnClickNext() {
    let imageIndex = getCurrentImageIndex();
    imageIndex++;
    if (imageIndex > 4) {
        imageIndex = 1;
    }
    setHeroImage(imageIndex);
}

function handleBtnClickPrevious() {
    let imageIndex = getCurrentImageIndex();
    imageIndex--;
    if (imageIndex < 1) {
        imageIndex = 4;
    }
    setHeroImage(imageIndex);
}

function getCurrentImageIndex() {
    const imageIndex = parseInt(heroImg.src.split('\\').pop().split('/').pop().replace('.png', '').replace('image-product-', ''));
    return imageIndex;
}

function setHeroImage(imageIndex) {
    heroImg.src = `./images/image-product-${imageIndex}.png`;
    //images are not sync
    gallery.forEach(img => {
        img.classList.remove('active');
    });
    //set active thumbnail
    gallery[imageIndex-1].classList.add('active');
}





function updateCheckoutButton() {
    if (productsInCart == 0) {
        if (!checkout.classList.contains('hidden')) {
            checkout.classList.add('hidden');
        }
    } else {
        checkout.classList.remove('hidden');
    }
}


function onHeroImgClick() {
    if (window.innerWidth >= 1440) {
        if (overlay.childElementCount == 1) {
            const newNode = lightbox.cloneNode(true);
            overlay.appendChild(newNode);

            const btnOverlayClose = document.querySelector('#btnOverlayClose');
            btnOverlayClose.addEventListener('click', onBtnOverlayClose);

            lightboxGallery = overlay.querySelectorAll('.pic');
            lightboxHero = overlay.querySelector('.product-hero');
            lightboxGallery.forEach(img => {
                img.addEventListener('click', onThumbClickLightbox);
            });

            const btnOverlayNext = overlay.querySelector('.next');
            const btnOverlayPrevious = overlay.querySelector('.previous');
            btnOverlayNext.addEventListener('click', handleBtnClickNextOverlay);
            btnOverlayPrevious.addEventListener('click', handleBtnClickPreviousOverlay);
        }
        overlay.classList.remove('hidden');
    }
}

function onBtnOverlayClose() {
    overlay.classList.add('hidden');
}

function onThumbClickLightbox(event) {
    //clear active state for all thumbnails
    lightboxGallery.forEach(img => {
        img.classList.remove('active');
    });
    //set active thumbnail
    event.target.parentElement.classList.add('active');
    //update hero image
    lightboxHero.src = event.target.src.replace('-thumbnail', '');
}


function handleBtnClickNextOverlay() {
    let imageIndex = getOverlayCurrentImageIndex();
    imageIndex++;
    if (imageIndex > 4) {
        imageIndex = 1;
    }
    setOverlayHeroImage(imageIndex);
}

function handleBtnClickPreviousOverlay() {
    let imageIndex = getOverlayCurrentImageIndex();
    imageIndex--;
    if (imageIndex < 1) {
        imageIndex = 4;
    }
    setOverlayHeroImage(imageIndex);
}

function getOverlayCurrentImageIndex() {
    const imageIndex = parseInt(lightboxHero.src.split('\\').pop().split('/').pop().replace('.png', '').replace('image-product-', ''));
    return imageIndex;
}

function setOverlayHeroImage(imageIndex) {
    lightboxHero.src = `./images/image-product-${imageIndex}.png`;
    //images are not sync
    lightboxGallery.forEach(img => {
        img.classList.remove('active');
    });
    //set active thumbnail
    lightboxGallery[imageIndex-1].classList.add('active');
}