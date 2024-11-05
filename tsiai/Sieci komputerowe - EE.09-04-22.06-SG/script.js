const btnu = document.querySelectorAll('.update')
const btno = document.querySelectorAll('.order')
const ilosc = document.querySelectorAll('.ilosc')

function chq(){
    ilosc.forEach((iloscE) =>{
        let iloscV = Number(iloscE.innerHTML)
        if(iloscV==0){
            iloscE.style.backgroundColor="red"
        }
        if(iloscV<=5){
            iloscE.style.backgroundColor="yellow"
        }
        else{
            iloscE.style.backgroundColor="honeydew"
        }
    });
}
chq()

btnu.forEach((update, index) =>{
    update.addEventListener('click', (e)=>{
        let wartosc = Number(prompt('podaj nowa ilosc: '))
        ilosc[index].innerHTML=wartosc
        chq()
    })
})