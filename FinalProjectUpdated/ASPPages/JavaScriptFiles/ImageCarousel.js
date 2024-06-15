document.addEventListener('DOMContentLoaded', function ()
{
    const buttons = document.querySelectorAll("[data-carousel-button]");
    const slides = document.querySelector("[data-slides]");
    let currentIndex = 0;
    let slideInterval;

    function showSlide(index)
    {
        const activeSlide = slides.querySelector("[data-active='true']");
        activeSlide.removeAttribute('data-active');
        slides.children[index].setAttribute('data-active', 'true');
        currentIndex = index;
    }

    function nextSlide()
    {
        currentIndex++;
        if (currentIndex >= slides.children.length)
        {
            currentIndex = 0;
        }
        showSlide(currentIndex);
    }

    function prevSlide()
    {
        currentIndex--;
        if (currentIndex < 0)
        {
            currentIndex = slides.children.length - 1;
        }
        showSlide(currentIndex);
    }

    function startSlideShow()
    {
        slideInterval = setInterval(nextSlide, 3000); // Change slide every 3 seconds
    }

    function stopSlideShow()
    {
        clearInterval(slideInterval);
    }

    buttons.forEach(button =>
    {
        button.addEventListener("click", () =>
        {
            stopSlideShow();
            const offset = button.dataset.carouselButton === "next" ? 1 : -1;
            currentIndex += offset;
            if (currentIndex < 0)
            {
                currentIndex = slides.children.length - 1;
            } else if (currentIndex >= slides.children.length)
            {
                currentIndex = 0;
            }
            showSlide(currentIndex);
            startSlideShow(); // Restart autoplay after manual navigation
        });
    });

    startSlideShow(); // Start autoplay when the page loads
});
