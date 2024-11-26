const imgB = document.getElementById('bee')
const imgO = document.getElementById('orange')
const imgF = document.getElementById('fruits')
const imgT = document.getElementById('Turtle')
const BtnA1 = document.getElementById('btnA1')
const BtnA2 = document.getElementById('btnA2')
const BtnA3 = document.getElementById('btnA3')
const BtnC = document.getElementById('btnC')
const BtnB = document.getElementById('btnB')
const rangeE1 = document.getElementById('range1')
const rangeE2 = document.getElementById('range2')

BtnA1.addEventListener('click', (e)=>{
    const optionsE = document.querySelector('input[name="options"]:checked')
    if(optionsE.value == '1')
        imgB.className = 'blur'
    if(optionsE.value == '2')
        imgB.className = 'sepia'
    if(optionsE.value == '3')
        imgB.className = 'negativ'
})

BtnC.addEventListener('click', (e)=>{
    imgO.className = 'color'
})

BtnB.addEventListener('click', (e)=>{
    imgO.className = 'black-white'
})

BtnA2.addEventListener('click', (e)=>{
    let rangeV = rangeE1.value
    imgF.style.opacity = `${rangeV}%`
})

BtnA3.addEventListener('click', (e)=>{
    let rangeV = rangeE2.value
    imgT.style.brightness = `${rangeV}%`
})

