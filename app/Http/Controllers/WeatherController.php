<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\WeatherService;

class WeatherController extends Controller
{
    protected $weatherService;

    public function __construct(WeatherService $weatherService)
    {
        $this->weatherService = $weatherService;
    }

    public function showForecast(Request $request)
    {
        $latitude = $request->input('latitude');
        $longitude = $request->input('longitude');
        $days = $request->input('days', 10);

        if ($latitude && $longitude) {
            $forecastData = $this->weatherService->getForecast($latitude, $longitude, $days);
            
            return response()->json([
                'success' => true,
                'data' => $forecastData
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Unable to retrieve location.'
            ], 400);
        }
    }
}
