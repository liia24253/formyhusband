[23.07.2026 20:59] Yuliia: <!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>21 Birthday Galaxy</title>

<style>
*{
    box-sizing:border-box;
}

body{
    margin:0;
    height:100vh;
    overflow:hidden;
    font-family:'Segoe UI', sans-serif;
    background:
    radial-gradient(circle at top, #142b63, #020617 70%);
    color:white;
}

/* Звезды */
.star{
    position:absolute;
    width:3px;
    height:3px;
    background:white;
    border-radius:50%;
    animation:twinkle 3s infinite;
}

@keyframes twinkle{
    0%,100%{opacity:.2; transform:scale(1)}
    50%{opacity:1; transform:scale(1.8)}
}


/* Сердечки */
.heart{
    position:absolute;
    top:-50px;
    color:#ff8fcf;
    font-size:25px;
    animation:fall linear infinite;
}

@keyframes fall{
    to{
        transform:translateY(110vh) rotate(360deg);
        opacity:0;
    }
}


/* Карточка */
.card{
    position:absolute;
    top:50%;
    left:50%;
    transform:translate(-50%,-50%);
    
    width:90%;
    max-width:500px;

    padding:35px;

    background:rgba(255,255,255,0.12);
    backdrop-filter:blur(15px);

    border:1px solid rgba(255,255,255,.25);

    border-radius:30px;

    text-align:center;

    box-shadow:
    0 0 40px rgba(255,255,255,.15);
}


h1{
    font-size:42px;
    margin:0;
}

h2{
    color:#ffd6ef;
}


.message{
    min-height:90px;
    font-size:20px;
    line-height:1.5;
}


button{
    margin-top:25px;

    padding:14px 30px;

    border:none;
    border-radius:30px;

    background:
    linear-gradient(45deg,#ff77c8,#8b7cff);

    color:white;

    font-size:18px;

    cursor:pointer;

    box-shadow:0 0 20px #ff77c8;
}


/* Финальная галактика */

.final{
    position:absolute;
    inset:0;

    background:
    radial-gradient(circle,#ff8de7 0%, transparent 20%),
    radial-gradient(circle,#685cff,transparent 40%);

    display:flex;
    align-items:center;
    justify-content:center;

    opacity:0;
    pointer-events:none;

    transition:2s;
}


.final.active{
    opacity:1;
}


.galaxy-heart{

    width:180px;
    height:180px;

    background:
    radial-gradient(circle,#fff,#ff5bd7,#8b5cff);

    clip-path:polygon(
    50% 90%,
    10% 45%,
    20% 20%,
    40% 15%,
    50% 35%,
    60% 15%,
    80% 20%,
    90% 45%
    );

    animation:pulse 2s infinite;

    box-shadow:
    0 0 60px #ff8de7;
}


@keyframes pulse{

50%{
transform:scale(1.15);
}

}


.final-text{

position:absolute;
bottom:15%;
font-size:35px;
text-shadow:0 0 20px white;

}

</style>

</head>


<body>


<div id="stars"></div>
<div id="hearts"></div>



<div class="card">

<h1>✨ 21 ✨</h1>

<h2>С днём рождения!</h2>


<div class="message" id="text">

Сегодня твой особенный день.
Тебе 21 — возраст мечтаний,
новых возможностей и больших побед 💙

</div>


<button onclick="changeText()">
Открыть признание 💌
</button>


<button onclick="showGalaxy()">
Финал 🌌
</button>


</div>



[23.07.2026 21:01] Yuliia: <div class="final" id="final">

    <div class="galaxy"></div>

    <div class="stars-galaxy"></div>

    <div class="glow-heart">
        ❤️
    </div>

    <div class="final-text">
        Ты — моя самая яркая звезда ✨
    </div>

</div>
[23.07.2026 21:02] Yuliia: .final{
    position:fixed;
    inset:0;

    background:
    radial-gradient(circle at center,
    #8b5cff 0%,
    #20104d 25%,
    #020617 70%);

    display:flex;
    justify-content:center;
    align-items:center;

    opacity:0;
    pointer-events:none;

    overflow:hidden;

    transition:2s;
}


.final.active{
    opacity:1;
}


/* Галактика */

.galaxy{

position:absolute;

width:600px;
height:600px;


background:
radial-gradient(
ellipse,
rgba(255,255,255,.8) 0%,
rgba(174,100,255,.5) 15%,
transparent 55%
);


border-radius:50%;


filter:blur(1px);


animation:
rotateGalaxy 12s linear infinite,
zoomGalaxy 4s ease forwards;


}


@keyframes rotateGalaxy{

from{
transform:rotate(0deg);
}

to{
transform:rotate(360deg);
}

}


@keyframes zoomGalaxy{

from{
scale:0;
opacity:0;
}

to{
scale:1;
opacity:1;
}

}



/* Звездная пыль */


.stars-galaxy{

position:absolute;

width:700px;
height:700px;

background-image:

radial-gradient(
white 1px,
transparent 2px
);


background-size:
30px 30px;


border-radius:50%;


animation:
rotateGalaxy 20s linear infinite;


opacity:.7;

}



/* Сердце */

.glow-heart{

position:absolute;


font-size:130px;


animation:

heartAppear 3s ease forwards,
heartbeat 1.8s infinite 3s;


filter:

drop-shadow(0 0 20px #ff6bdf)
drop-shadow(0 0 60px #ff00cc);


}


@keyframes heartAppear{

0%{
transform:scale(0);
opacity:0;
}

70%{
transform:scale(1.3);
opacity:1;
}

100%{
transform:scale(1);
}

}



@keyframes heartbeat{


0%,100%{

transform:scale(1);

}


50%{

transform:scale(1.15);

}

}



/* Текст */


.final-text{

position:absolute;

bottom:15%;


font-size:32px;

text-align:center;


color:white;


text-shadow:
0 0 20px white;


animation:
textAppear 4s forwards;


}



@keyframes textAppear{


from{
opacity:0;
transform:translateY(40px);
}


to{
opacity:1;
transform:translateY(0);
}

}




let messages=[

"Ты делаешь этот мир ярче. Спасибо, что ты есть 💫",

"Пусть каждый день приносит тебе счастье, любовь и новые мечты 🌙",

"21 год — это начало невероятной главы твоей жизни. Пусть она будет красивой ✨",

"Я хочу всегда видеть твою улыбку и быть рядом ❤️"

];


let index=0;


function changeText(){

document.getElementById("text").innerHTML=
messages[index];

index++;

if(index>=messages.length){
index=0;
}

}
[23.07.2026 20:59] Yuliia: function showGalaxy(){

document.getElementById("final")
.classList.add("active");

}


</script>


</body>
</html>
