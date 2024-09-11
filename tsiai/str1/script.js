const num1E = document.getElementById(num1)
const num2E = document.getElementById(num2)
const Btnw = document.querySelector('button')
const resultE = document.querySelector('p')

Btnw.addEventListener('click', (e)=>{
    const num1EV = num1E.value
    const num2EV = num2E.value
    resultE.innerHTML=`suma liczb to ${Number(num1EV)+Number(num2EV)}, a iloczyn to ${num1EV*num2EV}`
})

const hE = document.querySelector('h2')

hE.addEventListener('click', (e)=>{
    hE.innerHTML='Daniel Sobiech'
})