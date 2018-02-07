var inputs = {};
inputs['Maturity Month'] = '20-Mar'
inputs['Maturity Year']   = '1992'
  
  
function getDate(month, year) {	 
var date = null;
if(month !== undefined && year !==undefined){
    if (month.toString().substr(3, 3) == 'Mar') {
        var date = Number(year + '03' + month.toString().substr(0, 2));
    } else if (month.toString().substr(3, 3) == 'Jun') {
        var date = Number(year + '06' + month.toString().substr(0, 2));
    } else if (month.toString().substr(3, 3) == 'Sep') {
        var date = Number(year + '09' + month.toString().substr(0, 2));
    } else {
        var date = Number(year + '12' + month.toString().substr(0, 2));
    }
   // return date;
    }	 
     return date;
}


var here = getDate(inputs['Maturity Month'] , inputs['Maturity Year'] )
var test = here || 19931021

system.out.println(here)
