const linkE = document.querySelector('nav div:first-child input')
const imgE = document.querySelector('img')

linkE.addEventListener('change', (e)=>{
    let linkE_V = linkE.value
    imgE.src = linkE_V
    console.log(linkE_V)
})

// const redE = document.querySelector('nav div:first-child + div input:first-child')
// const greenE = document.querySelector('nav div:first-child + div input:first-child + input')
// const blueE = document.querySelector('nav div:first-child + div input:last-child')
const left_up = document.querySelector('nav div:first-child')
const left_mid = document.querySelector('nav div:first-child + div')
const left_down = document.querySelector('nav div:last-child')

left_mid.addEventListener('change', (e)=>{
    let color = document.querySelector('input[name="color"]:checked').value
    left_up.style.backgroundColor = `hsl(${color}, 50%, 20%)`
    // left_up.style.color = 'black'
    left_mid.style.backgroundColor = `hsl(${color}, 50%, 50%)`
    // left_mid.style.color = 'black'
    left_down.style.backgroundColor = `hsl(${color}, 50%, 80%)`
    // left_down.style.color = 'black'
    console.log(color)
})