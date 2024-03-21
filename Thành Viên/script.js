const carousel = document.querySelector(".carousel"),
    firstDropup = carousel.querySelectorAll(".dropup")[0];
    arrowIcons = document.querySelectorAll(".wrapper i");
    let firstDropupWidth = firstDropup.clientWidth + 4;
    let scrollWidth = carousel.scrollWidth - carousel.clientWidth;

const showHideIcons = () => {
    arrowIcons[0].style.display = carousel.scrollLeft == 0 ? "none" : "block";
    arrowIcons[1].style.display = carousel.scrollLeft == scrollWidth ? "none" : "block";
}



    arrowIcons.forEach(icon => {
        icon.addEventListener("click", () => {
            carousel.scrollLeft += icon.id == "left" ? -firstDropupWidth : firstDropupWidth;
            setTimeout(() => showHideIcons(),60)
        }) 
    });

const carousel1 = document.querySelector(".carousel1"),
    firstImg = carousel.querySelectorAll("img")[0];
    arrowIcons1 = document.querySelectorAll(".wrapper1 i");
    let firstImgWidth = firstImg.clientWidth + 4;
    let scrollWidth1 = carousel1.scrollWidth - carousel1.clientWidth;

const showHideIcons1 = () => {
    arrowIcons1[0].style.display = carousel1.scrollLeft == 0 ? "none" : "block";
    arrowIcons1[1].style.display = carousel1.scrollLeft == scrollWidth1 ? "none" : "block";
}



    arrowIcons1.forEach(icon => {
        icon.addEventListener("click", () => {
            carousel1.scrollLeft += icon.id == "left" ? -firstImgWidth : firstImgWidth;
            setTimeout(() => showHideIcons1(),60)
        }) 
    });

  