


//creem una variable de llista de la compra

const llistaDeCompres=document.querySelector("ul");

//creem variable anomenada li que és un element de llista i li donem per valor Pomes

const li=document.createElement("li");

li.textContent="Pomes";

//Afegim l'element a la llista com un fill de llistadeCompres

llistaDeCompres.appendChild(li);







//creem una variable de llista de la compra

const llistaDeCompres = document.querySelector("ul");

//creem un array amb els elements de la llista


const menjar = ['ous', 'carn', 'pomes', 'llet'];

for (let i=0; i < menjar.length; i++)

{const li = document.createElement('li');//creem un element li

li.textContent = menjar[i];//el text sera el de l'array menjar

llistaDeCompres.appendChild(li);//afegeix a llista de compres




}




//creem una variable de llista de la compra

const llistaDeCompres = document.querySelector("ul");

//creem un array amb els elements de la llista

const menjar = ['ous', 'carn', 'pomes', 'llet'];

menjar.forEach(item =>//creem bucle similar al for en un array

{const li = document.createElement('li');

li.textContent = item;//li sera igual al item

llistaDeCompres.appendChild(li);




});



















