const h1E = document.querySelector('h1')
const loremE = document.querySelector('p')
const codE = document.getElementById('cod')
const unitE = document.getElementById('unit')
const redE = document.getElementById('red')
const greenE = document.getElementById('green')
const blueE = document.getElementById('blue')

codE.addEventListener('change', (e)=>{
    loremE.classList.toggle("cod")
})