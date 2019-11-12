const weatherSection = document.querySelector(".weather")

fetch("http://api.openweathermap.org/data/2.5/weather?q=Denver,us&APPID=36439a7025c58d3c92fc4bba9b81a802&units=imperial")
    .then(response => response.json())
    .then(weatherData => {
        const h2 = document.createElement("h2")
        const temph3 = document.createElement("h3")
        const desch3 = document.createElement("h3")
        const a = document.createElement("a")
        const img = document.createElement("img");
        if (weatherData.weather[0].main === "Clear" || weatherData.weather[0].main === "Sunny") {
            img.src = "https://ssl.gstatic.com/onebox/weather/64/sunny.png";
        } else if (weatherData.weather[0].main === "Rain") {
            img.src = "https://ssl.gstatic.com/onebox/weather/64/rain_light.png";
        } else if (weatherData.weather[0].main === "Clouds") {
            img.src = "https://ssl.gstatic.com/onebox/weather/64/partly_cloudy.png"
        } else if (weatherData.weather[0].main === "Snow") {
            img.src = "https://ssl.gstatic.com/onebox/weather/48/snow_light.png"
        }

        h2.innerText = weatherData.name
        temph3.innerText = `${Math.ceil(weatherData.main.temp)}\u2109`
        desch3.innerText = weatherData.weather[0].main
        a.innerText = "Select an activity"
        a.href = `http://localhost:3001/activityShow.html?temp=${Math.ceil(weatherData.main.temp)}` 
        
        weatherSection.append(h2, img, temph3, desch3, a)
    })




