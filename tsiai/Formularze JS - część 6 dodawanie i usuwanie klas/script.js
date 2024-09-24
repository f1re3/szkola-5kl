const h1E = document.querySelector('h1')
const loremE = document.querySelector('p')
const codE = document.getElementById('cod')
const sizeE = document.getElementById('size')
const unitE = document.getElementById('unit')
const redE = document.getElementById('red')
const greenE = document.getElementById('green')
const blueE = document.getElementById('blue')

codE.addEventListener('change', (e)=>{
    loremE.classList.toggle("cod")
})

unitE.addEventListener('change', (e)=>{
    sizeE_V = Number(sizeE.value)
    unitE_V = unitE.value
    loremE.style.fontSize = `${sizeE_V}${unitE_V}`
    console.log(unitE_V, sizeE_V)
})

redE.addEventListener('change', (e)=>{
    loremE.classList.toggle('red')
})
greenE.addEventListener('change', (e)=>{
    loremE.classList.toggle('green')
})
blueE.addEventListener('change', (e)=>{
    loremE.classList.toggle('blue')
})