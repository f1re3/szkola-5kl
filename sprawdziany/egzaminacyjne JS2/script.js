const firstnameE = document.getElementById('firstname')
const surnameE = document.getElementById('surname')
const emailE = document.getElementById('email')
const servicesE = document.getElementById('services')
const sendE = document.getElementById('send')
const btnC = document.getElementById('btnC')
const btnS = document.getElementById('btnS')
const resultE = document.getElementById('result')

btnS.addEventListener('click', (e)=>{
    let firstnameV = firstnameE.value
    let surnameV = surnameE.value
    let emailV = emailE.value
    let servicesV = servicesE.value

    resultE.innerHTML = `${firstnameV} ${surnameV} <br>${emailV} <br>${servicesV}`
})

btnC.addEventListener('click', (e)=>{
    firstnameE.value = ""
    surnameE.value = ""
    emailE.value = ""
})