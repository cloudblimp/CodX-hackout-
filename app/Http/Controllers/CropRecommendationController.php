namespace App\Http\Controllers;

use App\Services\CropRecommendationService;
use Illuminate\Http\Request;

class CropRecommendationController extends Controller
{
    protected $cropRecommendationService;

    public function __construct(CropRecommendationService $cropRecommendationService)
    {
        $this->cropRecommendationService = $cropRecommendationService;
    }

    public function recommend(Request $request)
    {
        $latitude = $request->input('latitude');
        $longitude = $request->input('longitude');
        $date = $request->input('date', now()->toDateString());
        $days = $request->input('days', 7);

        // Get historical weather data
        $historicalWeather = $this->cropRecommendationService->getHistoricalWeather($latitude, $longitude, $date);

        // Get weather forecast data
        $forecastData = $this->cropRecommendationService->getForecast($latitude, $longitude, $days);

        // Recommend crops based on weather data
        $recommendedCrops = $this->cropRecommendationService->recommendCrops($historicalWeather, $forecastData);

        return view('crops.recommendations', ['recommendedCrops' => $recommendedCrops]);
    }
}
