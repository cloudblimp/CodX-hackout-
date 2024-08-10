<?php
namespace App\Services;

use GuzzleHttp\Client;

class WeatherService
{
    protected $client;
    protected $apiKey;

    public function __construct()
    {
        $this->client = new Client();
        $this->apiKey = env('WEATHER_API_KEY');
    }

    public function getForecast($latitude, $longitude, $days)
    {
        $url = "https://api.weatherapi.com/v1/forecast.json";

        $response = $this->client->get($url, [
            'query' => [
                'key' => $this->apiKey,
                'q' => "{$latitude},{$longitude}",
                'days' => $days,
                'aqi' => 'yes',
                'alerts' => 'yes'
            ]
        ]);

        return json_decode($response->getBody()->getContents(), true);
    }
}