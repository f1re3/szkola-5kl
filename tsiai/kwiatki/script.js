const btnN1 = document.getElementById('btnN1')
const btnN2 = document.getElementById('btnN2')
const M1 = document.getElementById('m-1')
const M2 = document.getElementById('m-2')
const M3 = document.getElementById('m-3')

btnN1.addEventListener('click', (e)=>{
    M1.style.visibility = 'hidden'
    M2.style.visibility = 'visible'
})

btnN2.addEventListener('click', (e)=>{
    M2.style.visibility = 'hidden'
    M3.style.visibility = 'visible'
})

const btnA = document.getElementById('btnA')
const firstname = document.getElementById('firstname')
const surname = document.getElementById('surname')
const pass1 = document.getElementById('pass')
const pass2 = document.getElementById('pass2')

btnA.addEventListener('click', (e)=>{
    console.log(`witaj ${firstname.value} ${surname.value}`)
    if(pass1.value != pass2.value){
        alert(`podane hasla roznia sie`)
    }
})