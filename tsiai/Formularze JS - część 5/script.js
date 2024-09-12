const goldE = document.getElementById('gold')
const silverE = document.getElementById('silver')
const noneE = document.getElementById('none')
const priceE = document.getElementById('price')
const btnE = document.querySelector('#send')
const resultE = document.getElementById('result')

btnE.addEventListener('click', (e)=>{
    let price = Number(priceE.value)
    if(goldE.checked)
        resultE.innerHTML=`cena z uwzględnieniem rabatu to: ${price*0.8}`
    if(silverE.checked)
        resultE.innerHTML=`cena z uwzględnieniem rabatu to: ${price*0.9}`
    if(noneE.checked)
        resultE.innerHTML=`cena z uwzględnieniem rabatu to: ${price}`
})

const weatherE = document.querySelector('h1')

weatherE.addEventListener('click', (e)=>{
    weatherE.innerHTML='deszcz'
    weatherE.style.color='grey'
})

const changeE = document.getElementById('change')
const redE = document.getElementById('red')
const greenE = document.getElementById('green')
const blueE = document.getElementById('blue')
const procE = document.getElementById('proc')
let proc = procE.value
let proc2 = proc*0.01

redE.addEventListener('click', (e)=>{
    changeE.style.color = 'red'
    // changeE.style.fontSize = 
})
greenE.addEventListener('click', (e)=>{
    changeE.style.color = 'green'
})
blueE.addEventListener('click', (e)=>{
    changeE.style.color = 'blue'
})