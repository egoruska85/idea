
document.addEventListener('click', function (e) {
  const btn = e.target.closest('#menu-btn');
  if (!btn) return;

  const menu = document.getElementById('mobile-menu');
  if (!menu) return;

  menu.classList.toggle('hidden');
});
