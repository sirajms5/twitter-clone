document.addEventListener("turbo:load", function() {
    var h4Element = document.querySelector("h4");
    var elementId = null;
    
    if (h4Element && h4Element.textContent === "Home") {
      elementId = document.getElementById("home");
    } else if (h4Element && h4Element.textContent === "Explore") {
      elementId = document.getElementById("explore");
    } else if (h4Element && h4Element.textContent === "Settings") {
      elementId = document.getElementById("settings");
    } else if(localStorage.getItem("savedData") == "profile"){
      elementId = document.getElementById("profile");
      localStorage.removeItem("savedData");
    }
    
    if (elementId !== null) {
      elementId.classList.add("solidifier");
    }
  });

  function profileClicked(){
    localStorage.setItem("savedData", "profile");
  }
