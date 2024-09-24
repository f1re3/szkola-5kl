const firstnE = document.getElementById('firstname')
const surnE = document.getElementById('surname')
const ageE = document.getElementById('age')
const BtnS = document.querySelector('button')
const resultE = document.querySelector('p')

BtnS.addEventListener('click', (e)=>{
    let firstnE_V = firstnE.value
    let surnE_V = surnE.value
    let ageE_V = Number(ageE.value)
    if(firstnE_V.length<3 || surnE_V.length<3 || ageE_V<0 && ageE_V>120){
        
    }
    else
        alert(`witaj ${firstnE_V} ${surnE_V}`)
})