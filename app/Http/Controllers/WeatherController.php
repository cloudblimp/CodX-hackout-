<?php

namespace App\Http\Controllers;

use App\Models\Crop;
use Illuminate\Http\Request;
use App\Services\WeatherService;
use Illuminate\Support\Facades\Log;

class WeatherController extends Controller
{
    protected $weatherApiService;

    public function __construct(WeatherService $weatherApiService)
    {
        $this->weatherApiService = $weatherApiService;
    }

    public function showForecast(Request $request)
    {
        $request->validate([
            'latitude' => 'required|numeric',
            'longitude' => 'required|numeric',
            'days' => 'required|integer|min:1|max:10',
        ]);

        $latitude = $request->input('latitude');
        $longitude = $request->input('longitude');
        $days = $request->input('days');

        try {
            $weatherData = $this->weatherApiService->getForecast($latitude, $longitude, $days);

            $analysis = $this->analyzeWeatherData($weatherData);

            return response()->json([
                'success' => true,
                'data' => $weatherData,
                'analysis' => $analysis,
            ]);
        } catch (\Exception $e) {
            Log::error('Error in showForecast method', [
                'error' => $e->getMessage(),
                'latitude' => $latitude,
                'longitude' => $longitude,
                'days' => $days
            ]);

            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve weather data.',
                'error' => $e->getMessage(),
            ], 500);
        }
    }

    protected function analyzeWeatherData($weatherData)
    {
        Log::info('Analyzing Weather Data:', $weatherData);

        $forecast = $weatherData['forecast']['forecastday'];
        $recommendedCrops = [];
        $alerts = [];

        foreach ($forecast as $day) {
            $avgTemp = ($day['day']['maxtemp_c'] + $day['day']['mintemp_c']) / 2;
            $precipitation = $day['day']['totalprecip_mm'];
            $humidity = $day['day']['avghumidity'];

            $crops = Crop::where('min_temp', '<=', $avgTemp)
                ->where('max_temp', '>=', $avgTemp)
                ->where('max_precipitation', '>=', $precipitation)
                ->where('max_humidity', '>=', $humidity)
                ->pluck('crop_name')
                ->toArray();

            $recommendedCrops = array_merge($recommendedCrops, $crops);

            // Example alerts
            if ($precipitation > 100) {
                $alerts[] = "Heavy rain expected on {$day['date']}. Consider delaying planting.";
            }
            if ($avgTemp < 5) {
                $alerts[] = "Frost warning on {$day['date']}. Protect young plants.";
            }
        }

        return [
            'recommendedCrops' => array_unique($recommendedCrops),
            'alerts' => $alerts,
        ];
    }

    public function crops()
    {
        $crops = Crop::all();
        return view('crops', compact('crops'));
    }
}
