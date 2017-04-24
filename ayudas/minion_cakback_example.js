//https://medium.freecodecamp.com/javascript-callbacks-explained-using-minions-da272f4d9bcd


// generic reportOrders that shows your orders to the function
function reportOrders (minionOrders) {
    if ( typeof minionOrders === "string"){
        console.log(minionOrders);
    }
    else if ( typeof minionOrders === "object"){
        for (var item in minionOrders) {
            console.log(item + ": " + minionOrders[item]);
        }
    }
}

// A function that takes two parameters, the last one a callback function​
​function speakOrders (orders, minion) {
    minion(orders);
}
​
// When we call the speakOrders function, we pass reportOrders as a parameter.​
// So reportOrders will be the function that will called back (or executed) inside the speakOrders function​
speakOrders ({name:"Minion1031", speciality:"Scribe"}, reportOrders);
// Console
// name: Minion1031
// speciality: Scribe

/*-----------------------------------*/

function speakOrders ({name:"Minion1031", speciality:"Scribe"}, reportOrders) {
    minion(orders);
}

function speakOrders (, reportOrders) {
    reportOrders({name:"Minion1031", speciality:"Scribe"});
}