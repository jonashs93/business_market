require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap'
import VMasker from 'vanilla-masker'

document.addEventListener('turbolinks:load', () => {
  VMasker(document.querySelector(".cpf-mask")).maskPattern("999.999.999-99")
})

document.addEventListener('ajax:success', () => {
  document.getElementById('error-notice').style.display = 'none'
  document.getElementById('success-notice').style.display = 'block'
  document.getElementById('error-notice').innerHTML = ''
  document.forms[0].reset()
})

document.addEventListener('ajax:error', (e) => {
  if (e.detail[2].status !== 422) { return }
  document.getElementById('success-notice').style.display = 'none'
  document.getElementById('error-notice').innerHTML = '<h3>Os seguintes erros foram encontrados:</h3>'
  document.getElementById('error-notice').style.display = 'block'

  e.detail[0].errors.forEach(function (error) {
    let errorHtmlMessage = '<li>' + error + '</li>'
    document.getElementById('error-notice').innerHTML += errorHtmlMessage
  })
})
