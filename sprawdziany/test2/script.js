//1
const num1E = document.getElementById('num1')
const num2E = document.getElementById('num2')
const BtnS = document.getElementById('btnS')
const result1E = document.getElementById('result1')

BtnS.addEventListener('click', (e)=>{
    let num1E_V = Number(num1E.value)
    let num2E_V = Number(num2E.value)
    result1E.innerHTML=`suma liczb to ${num1E_V+num2E_V}`
})

//2
const servicesE = document.getElementById('services')
const powE = document.getElementById('pow')
const BtnO = document.getElementById('btnO')
const result2E = document.getElementById('result2')

BtnO.addEventListener('click', (e)=>{
    let powE_V = powE.value
    let servicesE_V = servicesE.value
    if(servicesE_V == 'mur'){
        result2E.innerHTML=`cena murowania rowna ${powE_V*150}`
    }
    if(servicesE_V == 'gips'){
        result2E.innerHTML=`cena gipsowania rowna ${powE_V*70}`
    }
    if(servicesE_V == 'mal'){
        result2E.innerHTML=`cena malowania rowna ${powE_V*40}`
    }
})

//3
const h1E = document.getElementById('warning')

h1E.addEventListener('click', (e)=>{
    h1E.style.color = 'red'
})

//4
const przekE = document.getElementById('przek')
const podkE = document.getElementById('podk')
const noneE = document.getElementById('none')
const textE = document.getElementById('text')
const BtnW = document.getElementById('btnW')

BtnW.addEventListener('click', (e)=>{
    if(przekE.checked)
        textE.style.textDecoration = "line-through"
    if(podkE.checked)
        textE.style.textDecoration = "underline"
    if(noneE.checked)
        textE.style.textDecoration = "none"
})