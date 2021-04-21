let field1 = [], field2 = []

function appendJsonData(myArray){
    var i = 0
    var fieldName = ""
    for (var key in myArray) {
        if(i < 1){
            fieldName = myArray[key]
        }
        if(i > 0){
            var node = document.createElement("option")     
            node.value = key       
            var textnode = document.createTextNode(myArray[key])
            node.appendChild(textnode)
            document.getElementById(fieldName).appendChild(node)
        }
        i++
    }
}

fetch("data.json")
    .then(function(resp){
    	
    
        return resp.json();
    })
    .then(function(data){
        /* console.log(data) */
        appendJsonData(data.field1)
        appendJsonData(data.field2)
        appendJsonData(data.field3)
        appendJsonData(data.field4)
        appendJsonData(data.field5)
        appendJsonData(data.field6)
    })

