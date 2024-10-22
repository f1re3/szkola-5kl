const textE = document.querySelector('input')
const btnS = document.getElementById('BtnS')
const btnG = document.getElementById('BtnG')
const chatB = document.getElementById('chat')

btnS.addEventListener('click', (e)=>{
    let textV = textE.value
    let imgE = document.createElement('img')
    let pE = document.createElement('p')
    let divE = document.createElement('div')
    imgE.src = 'pliki/pliki2/Jolka.jpg'
    pE.innerHTML=`${textV}`
    divE.appendChild(imgE)
    divE.appendChild(pE)
    divE.className = 'jola'
    chatB.appendChild(divE)
})

