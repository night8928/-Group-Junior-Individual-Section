<?php

namespace App\Http\Controllers;

// use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SpotSerController extends Controller
{
    public function index()
    {
        $attractions = DB::table("attractions_info")


            ->join("attractions_img", "attractions_info.id", "=", "attractions_img.attraction_id")
            ->join("attractions_vs_attractions_element", "attractions_info.id", "=", "attractions_vs_attractions_element.attraction_id")
            ->select("attractions_info.*", "attractions_img.path", "attractions_vs_attractions_element.element_id")
            ->where("attractions_img.id", "=", DB::raw("(SELECT MIN(id) FROM attractions_img WHERE attraction_id = attractions_info.id)"))
            ->get();


            // ->join("attractions_img", "attractions_info.id", "=", "attractions_img.attraction_id")
            // ->join("attractions_vs_attractions_element", "attractions_info.id", "=", "attractions_vs_attractions_element.attraction_id")
            // ->join("attractions_element", "attractions_vs_attractions_element.element_id", "=", "attractions_element.id")
            // ->select("attractions_info.*", "attractions_img.path", "attractions_vs_attractions_element.element_id", "attractions_element.checkname")
            // ->where("attractions_img.id", "=", DB::raw("(SELECT MIN(id) FROM attractions_img WHERE attraction_id = attractions_info.id)"))
            // ->groupBy("attractions_info.id")
            // ->get();

        return $attractions;
    }
}
