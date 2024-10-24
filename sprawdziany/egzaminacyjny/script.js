const numE = document.getElementById('num')
const checkE = document.getElementById('popr')
const btnO = document.querySelector('button')
const resultE = document.getElementById('result')

btnO.addEventListener('click', (e)=>{
    let numV = Number(numE.value)
    if(checkE.checked)
        resultE.innerHTML = `Koszt Twojego wesela to ${(numV*100)*1.3} złotych`
    else
        resultE.innerHTML = `Koszt Twojego wesela to ${(numV*100)} złotych`
})