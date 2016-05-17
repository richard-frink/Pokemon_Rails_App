/**
 * Created by sam on 5/16/16.
 */

var canvas;
var ctx;

var dx = 20;
var x = 30;
var y = 100;

var WIDTH = 250 - dx;
var HEIGHT = 280 + dx;
var tile1 = new Image();
var image = new Image();

var encounter_odds;
var pokemon_number;

var pokemonInPokedex = 71;

image.src = "/images/maps/map1.png";
tile1.src = "/images/avatar/avatar_1.gif ";

function encounterBattle() {
    encounter_odds = Math.floor(Math.random() * 100) + 1;
    if (encounter_odds < 20) { //20% chance to have an encounter
        pokemon_number = Math.floor(Math.random() * pokemonInPokedex) + 1;
        document.getElementById('battleDIV').style.display = 'block';
        document.getElementById('battleDIV').innerHTML = "A wild " + pokemon_number + " appeared";
    } else {
        document.getElementById('battleDIV').style.display = 'none';
    }
}

function KeyDown(evt) {
    switch (evt.keyCode) {
        case 68: /* Arrow right */
            if (x + dx < WIDTH) {
                x += dx;
                encounterBattle();
            }
            break;

        case 65: /* Arrow left */
            if (x - dx > 0) {
                x -= dx;
                encounterBattle();
            }
            break;

        case 87: /* Arrow top */
            if (y - dx > 0) {
                y -= dx;
                encounterBattle();
            }
            break;

        case 83: /* Arrow bottom */
            if (y + dx < HEIGHT) {
                y += dx;
                encounterBattle();
            }
            break;
    }
}
function Update() {

    ctx.drawImage(image, 0, 0);
    ctx.drawImage(tile1, x, y);
}

function getPokedexJSON() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            document.getElementById("battleDIV").innerHTML = "<h4>Data has been loaded! Let's begin!</h4>";
        }
    };
    xhttp.open("GET", "", true);
    xhttp.send();
}

function Start() {
    canvas = document.getElementById("canvas");
    ctx = canvas.getContext("2d");
    getPokedexJSON();
    return setInterval(Update, 10);
}

window.addEventListener('keydown', KeyDown);
Start();