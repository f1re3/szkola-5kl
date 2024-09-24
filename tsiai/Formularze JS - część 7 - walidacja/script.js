//1
const surnE = document.getElementById('surname')
const BtnW = document.getElementById('BtnW')
const resultE = document.getElementById('result')

BtnW.addEventListener('click', (e)=>{
    surnE_V = surnE.value
    resultE.innerHTML = surnE_V
    if(surnE_V.length<3){
        resultE.style.backgroundColor = 'red'
        resultE.style.borderColor = 'red'
        resultE.innerHTML += ' zbyt krotkie'
    }
    else
        resultE.innerHTML=''
})

//2
const passE = document.getElementById('pass')
const BtnC = document.getElementById('check')
const resE = document.getElementById('res')

const cyfr = /[0-9]/

BtnC.addEventListener('click', (e)=>{
    let passE_V = passE.value

    if(cyfr.test(passE_V) && passE_V.length>=7){
        resE.innerHTML = 'DOBRE'
        resE.style.color = 'green'
    }
    else if(cyfr.test(passE_V) && passE_V.length<=6 && passE_V.length>=4){
        resE.innerHTML = 'SREDNIE'
        resE.style.color = 'blue'
    }
    else if(passE_V.length>=1){
        resE.innerHTML = 'SLABE'
        resE.style.color = 'yellow'
    }
    else{
        resE.innerHTML = 'WPISZ HASLO'
        resE.style.color = 'red'
    }
    console.log(passE_V)
})