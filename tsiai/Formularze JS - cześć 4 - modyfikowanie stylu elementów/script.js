const loremE=document.querySelector('#lorem')
const sizeE=document.querySelector('#size')
const italicE=document.querySelector('#italic')
const redE=document.getElementById('red')
const blueE=document.getElementById('blue')
const yellowE=document.getElementById('yellow')
const btnE=document.querySelector('#btn')
const classesE = document.querySelector('select')

btnE.addEventListener('click', (e)=>{
    let s=sizeE.value
    loremE.style.fontSize=`${s}px`
    if(italicE.checked)
        loremE.style.fontStyle = 'italic'
    if(redE.checked){
        loremE.style.color = "red"
        loremE.style.backgroundColor = "blue"
        }
    if(blueE.checked){
        loremE.style.color = "blue"
        loremE.style.backgroundColor = "yellow"
        }
    if(yellowE.checked){
        loremE.style.color = "yellow"
        loremE.style.backgroundColor = "red"
        }
})

classesE.addEventListener('change', (e)=>{
    loremE.className = classesE.value
})