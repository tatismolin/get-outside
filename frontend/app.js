const weatherSection = document.querySelector(".weather")
const planList = document.querySelector(".planList")
const asideButton = document.querySelector(".asideButton")
let currentTemp = 0

const h2 = document.createElement("h2")
const temph3 = document.createElement("h3")
const desch3 = document.createElement("h3")
const a = document.createElement("a")
const img = document.createElement("img")
const circleDiv = document.createElement("div")
const circleContainer = document.createElement("div")
let URL = "http://api.openweathermap.org/data/2.5/weather?q=80206,us&APPID=36439a7025c58d3c92fc4bba9b81a802&units=imperial"
let newLocation = localStorage.getItem("location");

if (newLocation) {
    URL = `http://api.openweathermap.org/data/2.5/weather?q=${newLocation},us&APPID=36439a7025c58d3c92fc4bba9b81a802&units=imperial`
} else {
    URL 
}

circleDiv.setAttribute("class", "circle")
circleContainer.setAttribute("class", "circleContainer")
img.setAttribute("class", "image")


fetch(URL)
    .then(response => response.json())
    .then(weatherData => {

        filterPictures(weatherData)
        
        h2.innerText = weatherData.name
        currentTemp = Math.ceil(weatherData.main.temp)
        temph3.innerText = `${currentTemp}\u2109`
        desch3.innerText = weatherData.weather[0].main
        a.innerText = "Select an activity"
        a.href = `http://localhost:3001/activityShow.html?temp=${currentTemp}` 
        
        circleContainer.append(img, circleDiv)
        weatherSection.append(h2, circleContainer, temph3, desch3)
        asideButton.appendChild(a)
    })

fetch("http://localhost:3000/activity_plans")
    .then(response => response.json())
    .then(activity_plans => activity_plans.map(activity_plan => {
        const planDiv = document.createElement("div")
        const listItem = document.createElement("div")
        const deleteButton = document.createElement("button")
        planDiv.setAttribute("id", "planDiv")
        listItem.setAttribute("id", "listItem")
        deleteButton.setAttribute("id", "delete")

        listItem.innerText = activity_plan.activity.description
        deleteButton.innerText = "X"
        deleteButton.addEventListener("click", function(event){
            event.target.parentNode.remove()
            fetch(`http://localhost:3000/activity_plans/${activity_plan.id}`, {
                method: "DELETE"
            })
        })

        planDiv.append( deleteButton, listItem)
        planList.appendChild(planDiv)
    }))

let locationInput = document.querySelector('#locationText')
let weatherLocation = document.querySelector('#weatherLocation')
 

weatherLocation.addEventListener("submit", function(event){
    localStorage.setItem("location", locationInput.value);
    event.preventDefault()
    fetch(`http://api.openweathermap.org/data/2.5/weather?q=${locationInput.value},us&APPID=36439a7025c58d3c92fc4bba9b81a802&units=imperial`)
        .then(response => response.json())
        .then(weatherData => {

            filterPictures(weatherData)

            h2.innerText = weatherData.name
            temph3.innerText = `${Math.ceil(weatherData.main.temp)}\u2109`
            currentTemp = Math.ceil(weatherData.main.temp)
            desch3.innerText = weatherData.weather[0].main
            a.href = `http://localhost:3001/activityShow.html?temp=${Math.ceil(weatherData.main.temp)}` 

            locationInput.value = ""
    })
})

function filterPictures(weatherData){
    if (weatherData.weather[0].main === "Clear" || weatherData.weather[0].main === "Sunny") {
        return img.src = "https://ssl.gstatic.com/onebox/weather/64/sunny.png";
    } else if (weatherData.weather[0].main === "Rain") {
        return img.src = "https://ssl.gstatic.com/onebox/weather/64/rain_light.png";
    } else if (weatherData.weather[0].main === "Clouds") {
        return img.src = "https://ssl.gstatic.com/onebox/weather/64/partly_cloudy.png"
    } else if (weatherData.weather[0].main === "Snow") {
        return img.src = "https://ssl.gstatic.com/onebox/weather/48/snow_light.png"
    } else if (weatherData.weather[0].main === "Smoke") {
        return img.src = "https://ssl.gstatic.com/onebox/weather/64/fog.png"
    } else if (weatherData.weather[0].main === "Mist") {
        return img.src = "https://ssl.gstatic.com/onebox/weather/48/cloudy.png"
    }
}

