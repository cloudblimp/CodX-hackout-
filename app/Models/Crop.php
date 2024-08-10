<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Crop extends Model
{
    use HasFactory;

    // Define the table associated with the model.
    protected $table = 'crops';

    // Define the attributes that are mass assignable.
    protected $fillable = [
        'crop_name',
        'min_temp',
        'max_temp',
        'max_precipitation',
        'max_humidity',
        'planting_season',
        'growth_duration',
        'harvest_season',
    ];

    // Define the attributes that should be cast to native types.
    protected $casts = [
        'min_temp' => 'decimal:2',
        'max_temp' => 'decimal:2',
        'max_precipitation' => 'integer',
        'max_humidity' => 'integer',
    ];

    // Optionally, you can define relationships, scopes, or methods for this model.
}
