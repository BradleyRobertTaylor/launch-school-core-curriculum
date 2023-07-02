document.addEventListener('DOMContentLoaded', () => {
  const articleLinks = Array.from(document.querySelectorAll('a'));
  const articles = Array.from(document.querySelectorAll('article'));
  const main = document.querySelector('main');

  articleLinks.forEach(link => {
    link.addEventListener('click', event => {
      event.stopPropagation();
      const id = event.target.textContent.toLowerCase().split(' ').join('-');
      const otherArticles = articles.filter(article => article !== document.getElementById(id));

      otherArticles.forEach(article => {
        article.classList.remove('highlight');
      });
      main.classList.remove('highlight');

      document.getElementById(id).classList.add('highlight');
    });
  });

  articles.forEach(article => {
    article.addEventListener('click', event => {
      event.stopPropagation();
      const currentArticle = event.target.closest('article');
      const otherArticles = articles.filter(article => article !== currentArticle);

      otherArticles.forEach(otherArticle => {
        otherArticle.classList.remove('highlight');
      });
      main.classList.remove('highlight');

      currentArticle.classList.add('highlight');
    });
  });

  document.body.addEventListener('click', event => {
    main.classList.add('highlight');
    articles.forEach(article => {
      article.classList.remove('highlight');
    });
  });
});
