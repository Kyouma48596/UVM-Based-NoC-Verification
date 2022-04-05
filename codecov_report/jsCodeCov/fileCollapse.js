var coll = document.getElementsByClassName("fileCollapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("fileActive");
    var fileContent = this.nextElementSibling;
    if (fileContent.style.maxHeight){
      fileContent.style.maxHeight = null;
    } else {
      fileContent.style.maxHeight = fileContent.scrollHeight + "px";
    } 
  });
}


var coll2 = document.getElementsByClassName("fileBranchCollapsible");
var i2;

for (i2 = 0; i2 < coll2.length; i2++) {
  coll2[i2].addEventListener("click", function() {
    this.classList.toggle("fileBranchActive");
    var fileBranchContent = this.nextElementSibling;
    if (fileBranchContent.style.maxHeight){
      fileBranchContent.style.maxHeight = null;
    } else {
      fileBranchContent.style.maxHeight = fileBranchContent.scrollHeight + "px";
    } 
  });
}


var coll3 = document.getElementsByClassName("fileCondCollapsible");
var i3;

for (i3 = 0; i3 < coll3.length; i3++) {
  coll3[i3].addEventListener("click", function() {
    this.classList.toggle("fileCondActive");
    var fileCondContent = this.nextElementSibling;
    if (fileCondContent.style.maxHeight){
      fileCondContent.style.maxHeight = null;
    } else {
      fileCondContent.style.maxHeight = fileCondContent.scrollHeight + "px";
    } 
  });
}
