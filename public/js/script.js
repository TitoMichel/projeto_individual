var i =0;
var txt1 = `Movimento Popular febre Amarela`
var txt2 = `A Primeira barra brava do São Bernardo Futebol Clube. `

var speed = 50;

function escrever(){
    if(i<txt1.length){
        p1.innerHTML += txt1.charAt(i);
        i++;
        setTimeout(escrever,speed)
        if(i>19){
            
        }
    } else if(i==txt1.length){
        p1.innerHTML+=`<br> `;
        p1.innerHTML += txt2.charAt(i-txt2.length)
        i++
        setTimeout(escrever,speed)
    }
    
    else {
        p1.innerHTML += txt2.charAt(i-txt2.length)
        i++
        setTimeout(escrever,speed)
    }    
}

escrever();