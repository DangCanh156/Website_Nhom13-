const scriptURL = 'https://script.google.com/macros/s/AKfycbwYyQ3jE_qy-_UVJKxh6gNFXkIcVJzBWNdsZkVyPh46Jv9ThxLpJh3fUSo-Xrb-SMZYqQ/exec'
const form = document.forms['register-form']

form.addEventListener('submit', e => {
  e.preventDefault()
  fetch(scriptURL, { method: 'POST', body: new FormData(form)})
  .then(() => { window.location.href = "Login.html"; })
  .then(response => alert("Đăng ký thành công!" ))
  
  .catch(error => console.error('Error!', error.message))
})