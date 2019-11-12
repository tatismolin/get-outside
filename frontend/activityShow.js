const activityDiv = document.querySelector(".activityCards")
const params = new URLSearchParams(window.location.search)
const temp = params.get("temp")

fetch(`http://localhost:3000/activities/`)
    .then(response => response.json())
    .then(activities => activities.map(activity => {
        const h1 = document.createElement("h1")  
        if (activity.temperature >= +temp-20 && activity.temperature <= +temp+20) {
            h1.innerText = activity.name
        }
    
        activityDiv.appendChild(h1)
    }))