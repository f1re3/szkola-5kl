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
const italicE = document.getElementById('italic')

redE.addEventListener('click', (e)=>{
    let proc = Number(procE.value)
    changeE.style.color = 'red'
    changeE.style.fontSize = `${proc}%`
    changeE.className = italicE.value
})
greenE.addEventListener('click', (e)=>{
    let proc = Number(procE.value)
    changeE.style.color = 'green'
    changeE.style.fontSize = `${proc}%`
    changeE.className = italicE.value
})
blueE.addEventListener('click', (e)=>{
    let proc = Number(procE.value)
    changeE.style.color = 'blue'
    changeE.style.fontSize = `${proc}%`
    changeE.className = italicE.value
})