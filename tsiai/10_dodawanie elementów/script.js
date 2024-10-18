const formE = document.querySelector('form')
const inputE = document.querySelector('input')
const ulE = document.querySelector('ul')

formE.addEventListener('submit', (e)=>{
    e.preventDefault()
    inputV = inputE.value
    let liE = document.createElement('li')
    liE.innerHTML = inputV
    if(inputV.length > 2){
        ulE.appendChild(liE)
        inputE.value = null
        inputE.style.backgroundColor = 'white'
    }
    else
        inputE.style.backgroundColor = 'red'
})