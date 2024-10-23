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

btnG.addEventListener('click', (e)=>{
    let textyT = ["Świetnie!",
    "Kto gra główną rolę?",
    "Lubisz filmy Tego reżysera?",
    "Będę 10 minut wcześniej",
    "Może kupimy sobie popcorn?",
    "Ja wolę Colę",
    "Zaproszę jeszcze Grześka",
    "Tydzień temu też byłem w kinie na Diunie",
    "Ja funduję bilety"]

    // const textyT2 = [import('pliki/pliki2/tekstyDoChatu.txt')]
    const random = textyT[Math.floor(Math.random() * textyT.length)]

    // console.log(textyT2[Math.floor(Math.random() * textyT2.length)])

    let imgE = document.createElement('img')
    let pE = document.createElement('p')
    let divE = document.createElement('div')
    imgE.src = 'pliki/pliki2/Krzysiek.jpg'
    pE.innerHTML = `${random}`
    divE.appendChild(imgE)
    divE.appendChild(pE)
    divE.className = 'krzychu'    
    chatB.appendChild(divE)
    divE.scrollIntoView()
    
})