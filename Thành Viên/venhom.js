const scriptURL = 'https://script.google.com/macros/s/AKfycbwz01MHEohTf7OIDRcijqJpMl1MEGo3fsaJDwT6l_G4Zqqsm01Jaga4kiEmvggNpwxp/exec'
const form = document.forms['venhom-form']

form.addEventListener('submit', e => {
  e.preventDefault()
  fetch(scriptURL, { method: 'POST', body: new FormData(form)})
  .then(response => alert("Đăng ký vé nhóm thành công!" ))
  .then(() => { window.location.reload(); })
  
  .catch(error => console.error('Error!', error.message))
})