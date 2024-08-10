@extends('layouts.app')

@section('content')
    <div class="container mt-5">
        <div id="weatherData"></div>
        <div id="analysis"></div>
        <div id="errorMessage" class="alert alert-danger mt-4" style="display: none;"></div>
    </div>

    <script>
        $(document).ready(function() {
            // Check if Geolocation is supported and fetch location
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position) {
                    const latitude = position.coords.latitude;
                    const longitude = position.coords.longitude;
                    $.LoadingOverlay("show");
                    // AJAX request to get weather data
                    $.ajax({
                        url: '/weather',
                        type: 'POST',
                        dataType: 'json',
                        contentType: 'application/json',
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        data: JSON.stringify({
                            latitude: latitude,
                            longitude: longitude,
                            days: 3
                        }),
                        success: function(data) {
                            if (data.success) {
                                displayWeatherData(data.data.forecast.forecastday, data.data
                                    .location);
                                displayAnalysis(data.analysis);
                                $.LoadingOverlay("hide");
                            } else {
                                $('#errorMessage').text('Failed to retrieve weather data.')
                                    .show();
                                $.LoadingOverlay("hide");
                            }
                        },
                        error: function(error) {
                            $('#errorMessage').text('Failed to retrieve weather data.').show();
                            $.LoadingOverlay("hide");
                        }
                    });

                }, function(error) {
                    $('#errorMessage').text(
                        'Unable to retrieve your location. Please enable location services and try again.'
                    ).show();
                    $.LoadingOverlay("hide");
                });
            } else {
                $('#errorMessage').text('Geolocation is not supported by this browser.').show();
                $.LoadingOverlay("hide");
            }

            function displayWeatherData(forecast, location) {
                console.log(forecast);
                console.log(location);
                $('#weatherData').empty();

                const rowElement = $('<div class="row"></div>');

                forecast.forEach(function(day) {
                    const dayElement = `
                        <div class="col-md-4 mb-4">
                            <div class="weather-day card">
                                <div class="card-body">
                                    <h4 class="card-title">Date: ${day.date}</h4>
                                    <p><strong>Location:</strong> ${location.name}, ${location.region}, ${location.country}</p>
                                    <p><strong>Max Temperature:</strong> ${day.day.maxtemp_c}°C</p>
                                    <p><strong>Min Temperature:</strong> ${day.day.mintemp_c}°C</p>
                                    <p><strong>Condition:</strong> ${day.day.condition.text}</p>
                                    <img src="https:${day.day.condition.icon}" alt="Weather icon" class="img-fluid">
                                    <p><strong>Humidity:</strong> ${day.day.avghumidity}%</p>
                                    <p><strong>Precipitation:</strong> ${day.day.totalprecip_mm} mm</p>
                                    <p><strong>Wind:</strong> ${day.day.maxwind_kph} kph</p>
                                </div>
                            </div>
                        </div>
                    `;
                    rowElement.append(dayElement);
                });

                $('#weatherData').append(rowElement);
            }

            function displayAnalysis(analysis) {
                console.log(analysis);
                $('#analysis').empty();

                const recommendedCropsArray = Object.values(analysis.recommendedCrops);
                const alertsArray = Array.isArray(analysis.alerts) ? analysis.alerts : [];

                const cropsElement = `
                    <h3>Recommended Crops</h3>
                    <ul>
                        ${recommendedCropsArray.map(crop => `<li>${crop}</li>`).join('')}
                    </ul>
                `;

                const alertsElement = `
                    <h3>Alerts</h3>
                    <ul>
                        ${alertsArray.map(alert => `<li>${alert}</li>`).join('')}
                    </ul>
                `;

                $('#analysis').append(cropsElement);
                $('#analysis').append(alertsElement);
            }
        });
    </script>

    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection
