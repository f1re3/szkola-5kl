const firstnE = document.getElementById('firstname')
const surnE = document.getElementById('surname')
const ageE = document.getElementById('age')
const BtnS = document.querySelector('button')
const resultE = document.querySelector('p')

BtnS.addEventListener('click', (e)=>{
    let firstnE_V = firstnE.value
    let surnE_V = surnE.value
    let ageE_V = Number(ageE.value)
    if(ageE_V<0 || ageE_V>120){
        ageE.focus()
        ageE.value = ''
        ageE.placeholder = 'wiek od 0 do 120'
        console.log(ageE_V)
    }
    else
        ageE.style.backgroundColor = ''    

    if(firstnE_V.length<3){
        firstnE.focus()
        firstnE.value = ''
        firstnE.placeholder = 'imie powinno miec cnm 3 znaki'
        console.log(firstnE_V)
    }
    else
        firstnE.style.backgroundColor = ''  

    if(surnE_V.length<3){
        surnE.focus()
        surnE.value = ''
        surnE.placeholder = 'nazwisko powinno miec cnm 3 znaki'
        console.log(surnE_V)
    }
    else
        surnE.style.backgroundColor = ''  

    if(ageE_V>0 && ageE_V<120 && firstnE_V.length>3 && surnE_V.length>3){
        alert(`witaj ${firstnE_V} ${surnE_V}`)
    }

    
})