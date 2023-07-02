document.addEventListener("DOMContentLoaded", () => {
  const exoticAnimals = document.querySelectorAll("figure");

  exoticAnimals.forEach((animal) => {
    let captionTimeout;

    animal.addEventListener("mouseenter", (event) => {
      const caption = event.target.closest("figure").children[1];
      captionTimeout = setTimeout(() => {
        caption.classList.add("show");
      }, 2000);
    });

    animal.addEventListener("mouseleave", (event) => {
      const caption = event.target.closest("figure").children[1];
      caption.classList.remove("show");
      clearTimeout(captionTimeout);
    });
  });
});
