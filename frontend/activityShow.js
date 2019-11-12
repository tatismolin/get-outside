const activityDiv = document.querySelector(".activityCards")


fetch("http://[::1]:3000/activities")
    .then(response => response.json())
    .then(activities => activities.map(activity => {
        let h2 = document.createElement("h2")
        h2.innerText = activity.name
        activityDiv.appendChild(h2)
    }))