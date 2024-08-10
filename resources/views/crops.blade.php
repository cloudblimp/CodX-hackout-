@extends('layouts.app')

@section('content')
<div class="container mt-5">
    <h1 class="mb-4">Crops List</h1>
    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Crop Name</th>
                <th>Min Temp (°C)</th>
                <th>Max Temp (°C)</th>
                <th>Max Precipitation (mm)</th>
                <th>Max Humidity (%)</th>
                <th>Planting Season</th>
                <th>Growth Duration</th>
                <th>Harvest Season</th>
            </tr>
        </thead>
        <tbody>
            @foreach($crops as $crop)
                <tr>
                    <td>{{ $crop->id }}</td>
                    <td>{{ $crop->crop_name }}</td>
                    <td>{{ $crop->min_temp }}</td>
                    <td>{{ $crop->max_temp }}</td>
                    <td>{{ $crop->max_precipitation }}</td>
                    <td>{{ $crop->max_humidity }}</td>
                    <td>{{ $crop->planting_season }}</td>
                    <td>{{ $crop->growth_duration }}</td>
                    <td>{{ $crop->harvest_season }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection