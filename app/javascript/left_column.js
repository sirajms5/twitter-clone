function solidify(elementId){
    var element = document.getElementById(elementId);
    var allElementIds = ["home", "explore", "profile", "settings"]; // IDs for all tabs

    var index = allElementIds.indexOf(elementId);
    if (index !== -1) {
        allElementIds.splice(index, 1);
    }
    
    element.classList.remove("cleaner");
    element.classList.add("solidifier");

    for (var i = 0; i < allElementIds.length; i++) {
        var otherElement = document.getElementById(allElementIds[i]);
        otherElement.classList.remove("solidifier");
        otherElement.classList.add("cleaner");
    }
}

