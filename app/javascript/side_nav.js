const toggleBtn = document.querySelector('.menu-btn')
const menu = document.querySelector('.app-side-nav')
menu.style.display = 'block'
toggleBtn.addEventListener('click', () => {
  if (menu.style.display === 'none' || menu.style.display === '') {
    menu.style.display = 'block';
  } else {
    menu.style.display = 'none';
  }
})
