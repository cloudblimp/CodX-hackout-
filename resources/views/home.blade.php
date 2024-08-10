@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">{{ __('Dashboard') }}</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif

                        {{ __('You are logged in!') }}
                    </div>

                    <h1>Weather Forecast</h1>

                    <div id="weatherData">
                    </div>


                    <button id="getLocation" class="btn btn-primary mt-3">Get Weather Forecast for My Location</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $("#getLocation").click(function(e) {
                e.preventDefault();
                getLocation();
            });

            function getLocation() {
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(showPosition, showError);
                } else {
                    console.log("Geolocation is not supported by this browser.");
                }
            }

            function showPosition(position) {
                let latitude = position.coords.latitude;
                let longitude = position.coords.longitude;

                console.log("Latitude: " + latitude);
                console.log("Longitude: " + longitude);

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
                            $('#weatherData').empty();

                            $.each(data.data.forecast.forecastday, function(index, day) {
                                const dayElement = `
                                    <h2>Date: ${day.date}</h2>
                                    <p>Location: ${data.data.location.name}, ${data.data.location.region}, ${data.data.location.country}</p>
                                    <p>Max Temperature: ${day.day.maxtemp_c}°C</p>
                                    <p>Min Temperature: ${day.day.mintemp_c}°C</p>
                                    <p>Condition: ${day.day.condition.text}</p>
                                    <img src="https:${day.day.condition.icon}" alt="Weather icon">
                                    <p>Humidity: ${day.day.avghumidity}%</p>
                                    <p>Precipitation: ${day.day.totalprecip_mm} mm</p>
                                    <p>Wind: ${day.day.maxwind_kph} kph</p>
                                    <hr>
                                `;
                                $('#weatherData').append(dayElement);
                            });

                        } else {
                            alert('Failed to retrieve weather data.');
                        }
                    },
                    error: function(error) {
                        console.error('Error:', error);
                        alert('Failed to retrieve weather data.');
                    }
                });
            }

            function showError(error) {
                switch (error.code) {
                    case error.PERMISSION_DENIED:
                        alert("User denied the request for Geolocation.");
                        break;
                    case error.POSITION_UNAVAILABLE:
                        alert("Location information is unavailable.");
                        break;
                    case error.TIMEOUT:
                        alert("The request to get user location timed out.");
                        break;
                    case error.UNKNOWN_ERROR:
                        alert("An unknown error occurred.");
                        break;
                }
            }
        });
    </script>
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection
