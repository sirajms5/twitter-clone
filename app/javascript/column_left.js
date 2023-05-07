document.addEventListener("turbo:load", function() {
    var h4Element = document.querySelector("h4");
    var elementId = null;
    
    if (pageTitle === "Home") { // pageTitle is writtien in views/tweets/index.html.erb
      elementId = document.getElementById("home");
    } else if (pageTitle === "Explore") {
      elementId = document.getElementById("explore");
    } else if (pageTitle === "Settings") {
      elementId = document.getElementById("settings");
    } else if(pageTitle === "profile"){
      elementId = document.getElementById("profile");
      localStorage.removeItem("savedData");
    }
    
    if (elementId !== null) {
      elementId.classList.add("solidifier");
    }
  });
  