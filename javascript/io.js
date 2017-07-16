function getFileAsString(filename) {
    var request = new XMLHttpRequest()
    request.open('GET', filename)
    request.onreadystatechange = function(event) {
        if (request.readyState == XMLHttpRequest.DONE)
            console.log(request.responseText)
    }
    request.send()
}
