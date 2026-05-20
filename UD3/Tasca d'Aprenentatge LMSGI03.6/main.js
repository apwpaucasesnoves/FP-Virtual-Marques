//creem una variable de llista de la compra qeu tingui l'element pare

const llistaDeCompres=document.querySelector("ul");

//creem una variable amb la id formatge, que eliminarem 

const formatge=document.getElementById("formatge");

//eliminem formatge, 

const elementEliminat = llistaDeCompres.removeChild(formatge);



//eliminem formatge, 


listaDeCompres.removeChild(formatge);




//creem una variable amb la id formatge, que eliminarem 

const formatge=document.getElementById("formatge");

//eliminem formatge


if (formatge.parentNode) {//si formatge té un node pare

  formatge.parentNode.removeChild(formatge);//eliminem el fill de formatge

}







//creem una variable amb la id formatge, que eliminarem 

const formatge=document.getElementById("formatge");

//eliminem  tots els nodes fills d'un pare

const llistaDeCompres=document.querySelector("ul");//creem una constant amb el node pare

while (llistaDeCompres.firstChild) {//mentre que el pare tingui un element primer fill 

  llistaDeCompres.removeChild(llistaDeCompres.firstChild);//elimina el primer fill

}


