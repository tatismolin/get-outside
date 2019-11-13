const galleryDiv = document.querySelector("#gallery")
const params = new URLSearchParams(window.location.search)
const temp = params.get("temp")

fetch(`http://localhost:3000/activities/`)
    .then(response => response.json())
    .then(activities => activities.map(activity => {
        const h1 = document.createElement("h1")
        const img = document.createElement("img")
        const editButton = document.createElement('button')
        const deleteButton = document.createElement('button')
        const activityDiv = document.createElement("div")

        if (activity.temperature >= +temp-20 && activity.temperature <= +temp+20) {
            h1.innerText = activity.name

            img.setAttribute("src", activity.photo)
            editButton.innerText = "EDIT"
            // edit.setAttribute('style', "text-decoration: none;")
            // edit.href = `activityEdit.html?id=${activity.id}`

            editButton.addEventListener("click", function(event){
                event.preventDefault()
                window.location.href = `activityEdit.html?id=${activity.id}`
            })

            deleteButton.innerText = "DELETE"
            deleteButton.addEventListener("click", function(event){
                event.target.parentNode.remove()
                fetch(`http://localhost:3000/activities/${activity.id}`, {
                    method: "DELETE"
                })
            })
            activityDiv.append(img, h1, editButton, deleteButton)
            galleryDiv.appendChild(activityDiv)
        }  
    }))