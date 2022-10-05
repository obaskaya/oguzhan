selectedarray = document.querySelectorAll(".box");
selectedarray.forEach(function(item, index) {
  console.log(index + " . element -> " + item.innerHTML);
});
const selectedDays = [];

const contain = document.querySelector('.container');
var days = [];
var items = document.querySelectorAll('.box');
items.forEach(function(item) {
  days.push(item);
});
if (contain) {
  contain.addEventListener("click", function(e) {
    console.log(e.target.classList);
    if (e.target.classList.contains('box')) {
      e.target.classList.toggle("clicked");
    
    }
    
  });
} else {
  alert("seems null");
}
function writetodatabase()
{
days.forEach(function(item,index){
if (item.classList.contains("clicked"))
{
selectedDays.push(index);
};
});
localStorage.setItem("selecteditems",JSON.stringify(selectedDays));
localStorage.setItem("bgColor","white");
}
function getfromlocalstorage()
{
if(localStorage.getItem("selecteditems") != undefined)
{
const selectedItems=JSON.parse(localStorage.getItem("selecteditems"));
if (selectedItems!=null && selectedItems.length>0)
{
selectedItems.forEach(function(item,index)
{
days[item].classList.add("clicked");
});
}
}
else
{
alert("seems null");
}
}
