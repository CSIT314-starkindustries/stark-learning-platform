function printpage() {
    var printBtn = document.getElementById("printPageBtn");
    var backToForumLink = document.getElementById("backToForumLink");
   
    printBtn.style.visibility = 'hidden';
    backToForumLink.style.visibility = 'hidden';
   
    //Print the page content
    window.print()
    
    //Set print button and forum link to 'visible' again 
    printBtn.style.visibility = 'visible';
    backToForumLink.style.visibility = 'visible';
}
