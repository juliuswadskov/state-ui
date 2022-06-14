var globalState = {}

class StateUI {
    constructor(element) {
        var element = document.getElementsByTagName(element) 

        globalState[element]
    }

    updateHTML(html) {
        
    }

    updateValue(value) {

    }
}

window.addEventListener('message', function(event) {
    if (globalState[event.data.type] !== null) {
        let ui = globalState[event.data.type].StateUI()
        ui.updateHTML
    } else if (event.data.internal == "use_state") {
        globalState[event.data.element].StateUI = new StateUI(event.data.element)
    }
})

/*

let list = new StateUI("#het")

list.updateValue()

*/