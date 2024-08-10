<?php

namespace App\Services;

use GuzzleHttp\Client;
use GuzzleHttp\Exception\ClientException;
use Illuminate\Support\Facades\Log;

class WeatherService
{
    protected $client;
    protected $apiKey;

    public function __construct()
    {
        $this->client = new Client();
        $this->apiKey = env('WEATHER_API_KEY'); // Ensure this key is correctly set in your .env file
    }

    public function getForecast($latitude, $longitude, $days)
    {
        $url = "https://api.weatherapi.com/v1/forecast.json";

        try {
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
        } catch (ClientException $e) {
            Log::error('Error fetching forecast data', ['error' => $e->getMessage()]);
            throw $e;
        }
    }
}