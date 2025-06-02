var i =0;
var txt1 = `Movimento Popular febre Amarela`
var txt2 = `A Primeira barra brava do São Bernardo Futebol Clube. `

var velocidade = 50;

function escrever(){
    if(i<txt1.length){
        p1.innerHTML += txt1.charAt(i);
        i++;
        setTimeout(escrever,velocidade)
        
    } else if(i==txt1.length){
        p1.innerHTML+=`<br> `;
        p1.innerHTML += txt2.charAt(i-txt1.length)
        i++
        setTimeout(escrever,velocidade)
    }

    else {
        p1.innerHTML += txt2.charAt(i-txt1.length)
        i++
        if(i==txt1.length+txt2.length){
            return;
        }
        setTimeout(escrever,velocidade)
       
        
        
    }    
}

escrever();