const weatherSection = document.querySelector(".weather")

fetch("http://openweathermap.org/data/2.5/weather?q=Denver,us&appid=b6907d289e10d714a6e88b30761fae22&units=imperial")
    .then(response => response.json())
    .then(weatherData => {
        let h2 = document.createElement("h2")
        // let dateh3 = document.createElement("h3")
        let temph3 = document.createElement("h3")
        let desch3 = document.createElement("h3")

        h2.innerText = weatherData.name
        // dateh3.innerText = new Date(weatherData.dt)
        temph3.innerText = Math.ceil(weatherData.main.temp)
        desch3.innerText = weatherData.weather[0].main



        weatherSection.append(h2, temph3, desch3)
    })


// function weatherPictureSelection() {

// }

