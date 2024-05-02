const d = new Date();
let year = d.getFullYear();
document.getElementById("anoatual").innerHTML = "@ " + year + " by Grupo 4 - Proz | Turma 18";

//document.getElementById("imgDestaqueTopo").src = "img/city.png";

function mudarImgTop(numero){
    if(numero === 1){
        document.getElementById("imgDestaqueTopo").src = "img/fit.jpg";
        document.getElementById("tituloDestaque").innerHTML = "Destaque: Honda - Linha Fit";
        document.getElementById("linhaDestaque").innerHTML = "Conheça toda a Linha Fit - Honda.";
        document.getElementById("paginaCarroDestaque").href = "fit.html";
    }
    if(numero === 2){
        document.getElementById("imgDestaqueTopo").src = "img/city.png";
        document.getElementById("tituloDestaque").innerHTML = "Destaque: Honda - Linha City";
        document.getElementById("linhaDestaque").innerHTML = "Conheça toda a Linha City - Honda";
        document.getElementById("paginaCarroDestaque").href = "city.html";
    }
    if(numero === 3){
        document.getElementById("imgDestaqueTopo").src = "img/civic.png";
        document.getElementById("tituloDestaque").innerHTML = "Destaque: Honda - Linha Civic";
        document.getElementById("linhaDestaque").innerHTML = "Conheça toda a Linha Civic - Honda.";
        document.getElementById("paginaCarroDestaque").href = "civic.html";
    }
}

