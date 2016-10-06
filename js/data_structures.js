// 7.2 pairing session with alinadin09 and von-ashley

var color = ['pink', 'purple', 'blue', 'yellow'];
var names = ['Sun', "Storm", 'Sky', 'BlackBeauty'];

color.push('red');
names.push('Fluffy');

var horses = {};

for(var i = 0; i < color.length; i++){
	horses[names[i]] = color[i];
}
console.log(horses);

//////////////////////
function Car(model, year, itWorks){
	console.log("Our new car:", this);
	
	this.model = model;
	this.year = year;
	this.itWorks = itWorks;
	
	this.engine = function() { console.log("Vroom Vroom"); };
}

var newCar = new Car("Porche", 2017, true);
console.log(newCar);
newCar.engine();

var ashDream = new Car("Viper", 2020, true);
console.log(ashDream);

// function() { console.log("*sings opera song*")};
// bird.newTrick();

newCar.reverse = function() {console.log("*Beep Beep*")};
console.log(newCar.reverse());


