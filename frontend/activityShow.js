const galleryDiv = document.querySelector("#gallery")
const activitiesDiv = document.querySelector(".activityCards")
const params = new URLSearchParams(window.location.search)
const temp = params.get("temp")

fetch(`http://localhost:3000/activities/`)
    .then(response => response.json())
    .then(activities => activities.map(activity => {


        if (activity.temperature >= +temp-20 && activity.temperature <= +temp+20) {
            const h1 = document.createElement("h1")
            const img = document.createElement("img")
            const addButton = document.createElement('button')
            const editButton = document.createElement('button')
            const deleteButton = document.createElement('button')
            const activityDiv = document.createElement("div")
            h1.innerText = activity.name
            img.setAttribute("src", activity.photo)

            editButton.innerText = "EDIT"
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
            activityDiv.setAttribute("class", "activity")
            activityDiv.append(img, h1, editButton, deleteButton)
            activitiesDiv.appendChild(activityDiv)
        }  
    }))