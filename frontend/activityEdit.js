let params = new URLSearchParams(window.location.search)
let id = params.get("id")
let nameInput = document.querySelector('#name')
let descriptionInput = document.querySelector('#description')
let photoInput = document.querySelector('#photo')
let temperatureInput = document.querySelector('#temperature')
let edit = document.querySelector('#edit')

fetch(`http://localhost:3000/activities/${id}`)
    .then(response => response.json())
    .then(activity => {
        nameInput.value = activity.name 
        descriptionInput.value = activity.description 
        photoInput.value = activity.photo 
        temperatureInput.value = activity.temperature 
        edit.addEventListener("click", function(event){
            event.preventDefault()
            fetch(`http://localhost:3000/activities/${id}`, {
            method: "PATCH",
            headers: {
                "Content-Type": "application/json"   
            },
            body: JSON.stringify({
                name: nameInput.value,
                description: descriptionInput.value,
                photo: photoInput.value,
                temperature: temperatureInput.value
            })
        })
        .then(response => window.location = `http://localhost:3001/activityShow.html?temp=${currentTemp}`)
    })
})