const activityDiv = document.querySelector(".activityCards")
const params = new URLSearchParams(window.location.search)
const temp = params.get("temp")

fetch(`http://localhost:3000/activities/`)
    .then(response => response.json())
    .then(activities => activities.map(activity => {
        const h1 = document.createElement("h1")
        const img = document.createElement("img")
        const edit = document.createElement('a')
        const deleteButton = document.createElement('button')

        if (activity.temperature >= +temp-20 && activity.temperature <= +temp+20) {
            h1.innerText = activity.name

            img.setAttribute("src", activity.photo)
            edit.innerText = "EDIT"
            edit.href = `activityEdit.html?id=${activity.id}`

            deleteButton.innerText = "DELETE"
            deleteButton.addEventListener("click", function(event){
                event.target.parentNode.remove()
                fetch(`http://localhost:3000/activities/${activity.id}`, {
                    method: "DELETE"
                })
            })

            activityDiv.append(h1, img, edit, deleteButton)
        }  
    }))