

var coll = document.getElementsByClassName("modFileCollapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("modFileActive");
    var modFileContent = this.nextElementSibling;
    if (modFileContent.style.maxHeight){
      modFileContent.style.maxHeight = null;
    } else {
      modFileContent.style.maxHeight = modFileContent.scrollHeight + "px";
    } 
  });
}




var coll2 = document.getElementsByClassName("modBranchCollapsible");
var i2;

for (i2 = 0; i2 < coll2.length; i2++) {
  coll2[i2].addEventListener("click", function() {
    this.classList.toggle("modBranchActive");
    var modBranchContent = this.nextElementSibling;
    if (modBranchContent.style.maxHeight){
      modBranchContent.style.maxHeight = null;
    } else {
      modBranchContent.style.maxHeight = modBranchContent.scrollHeight + "px";
    } 
  });
}






var coll3 = document.getElementsByClassName("modCondCollapsible");
var i3;

for (i3 = 0; i3 < coll3.length; i3++) {
  coll3[i3].addEventListener("click", function() {
    this.classList.toggle("modCondActive");
    var modCondContent = this.nextElementSibling;
    if (modCondContent.style.maxHeight){
      modCondContent.style.maxHeight = null;
    } else {
      modCondContent.style.maxHeight = modCondContent.scrollHeight + "px";
    } 
  });
}
