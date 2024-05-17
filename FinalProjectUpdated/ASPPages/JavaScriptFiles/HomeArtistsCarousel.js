const slides = document.querySelectorAll('.slide');
let currentIndex = 0;

function showSlide(index)
{
    slides.forEach((slide, i) =>
    {
        slide.style.transform = `translateX(-${index * 100}%)`;
    });
}

function nextSlide()
{
    currentIndex = (currentIndex + 1) % slides.length;
    showSlide(currentIndex);
}

function prevSlide()
{
    currentIndex = (currentIndex - 1 + slides.length) % slides.length;
    showSlide(currentIndex);
}

document.querySelector('.next-arrow').addEventListener('click', nextSlide);
document.querySelector('.prev-arrow').addEventListener('click', prevSlide);

// Optional: Add automatic sliding timer
setInterval(nextSlide, 5000); // Change slide every 5 seconds