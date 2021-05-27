<?php

namespace App\Http\Controllers;

use App\Result;
use Illuminate\Support\Facades\DB;
use ArielMejiaDev\LarapexCharts\LarapexChart;

class ResultsController extends Controller
{
    public function show($result_id)
    {
        $Data=[];
        $Infrastructure=[];
        $Data_Quality_Management=[];
        $Platforms=[];
        $Management=[];
        $Knowledge_Management=[];
        $Domain_Integration=[];
        $technology=[];
        $Data_Quality_Management=[];
        $result_2= DB::table('question_result')
        ->join('results', 'results.id', '=', 'question_result.result_id')
        ->join('questions', 'questions.id', '=', 'question_result.question_id')
        ->join('sub-categories', 'sub-categories.id', '=', 'sub_category_id')
        ->join('categories', 'categories.id', '=', 'categories_id')
        ->select('categories.name as Cname','sub-categories.name as SCname','question_result.points')
        ->where('results.id',$result_id)->where('results.user_id',auth()->id())->get();

        // foreach ($result_2 as $key => $value) {
        //     # code...
        //     if($value->Cname==='Data'){
        //         $Data=[
        //             'Cname'=>$value->Cname,
        //             'SCname'=>$value->SCname,
        //             'points'=>$value->points,
        //         ];
        //     }
        // }
        // $result = Result::whereHas('user', function ($query) {
        //         $query->whereId(auth()->id());
        //     })->join('question_result', 'results.id', '=', 'question_result.result_id')->findOrFail($result_id);
        $result=$result_2->groupBy('Cname')->toArray();
        $a=array_chunk($result,1);
      
        $Data=$a[0][0];
        $dataPoint=array();
        $dataAxis=array();
        foreach ($Data as $key => $value) {
            $dataPoint[]=$value->points;
            $dataAxis[]=$value->SCname;
        }
        $chart =(new LarapexChart)->radarChart()
        ->setTitle($Data[0]->Cname.'.')
        ->addData('Points', $dataPoint)
        ->setXAxis($dataAxis)
        // ->setColors(['#ffc63b', '#ff6384'])
        ->setMarkers(['#303F9F'], 7, 10);
        
        $Infrastructure=$a[1][0];
        $infrastructureAxis=array();
        // dd($Infrastructure);
        $infrastructurePoint=array();
        foreach ($Infrastructure as $key => $value) {
            $infrastructurePoint[]=$value->points;
            $infrastructureAxis[]=$value->SCname;
        }
        $chart2 =(new LarapexChart)->radarChart()
        ->setTitle($Infrastructure[0]->Cname.'.')
        ->addData('Points', $infrastructurePoint)
        ->setXAxis($infrastructureAxis)
        // ->setColors(['#ffc63b', '#ff6384'])
        ->setMarkers(['#303F9F'], 7, 10);

        $Data_Quality_Management=$a[2][0];
        
        $Data_Quality_ManagementAxis=array();
        // dd($Data_Quality_Management);
        $Data_Quality_ManagementPoint=array();
        foreach ($Data_Quality_Management as $key => $value) {
            $Data_Quality_ManagementPoint[]=$value->points;
            $Data_Quality_ManagementAxis[]=$value->SCname;
        }
        
        $chart3 =(new LarapexChart)->radarChart()
        ->setTitle($Data_Quality_Management[0]->Cname.'.')
        ->addData('Points', $Data_Quality_ManagementPoint)
        ->setXAxis($Data_Quality_ManagementAxis)
        // ->setColors(['#ffc63b', '#ff6384'])
        ->setMarkers(['#303F9F'], 7, 10);
        
        
        $Platforms=$a[3][0];

        $PlatformsAxis=array();
        // dd($Platforms);
        $PlatformsPoint=array();
        foreach ($Platforms as $key => $value) {
            $PlatformsPoint[]=$value->points;
            $PlatformsAxis[]=$value->SCname;
        }
        
        $chart4 =(new LarapexChart)->radarChart()
        ->setTitle($Platforms[0]->Cname.'.')
        ->addData('Points', $PlatformsPoint)
        ->setXAxis($PlatformsAxis)
        // ->setColors(['#ffc63b', '#ff6384'])
        ->setMarkers(['#303F9F'], 7, 10);

        $Management=$a[4][0];

        $ManagementAxis=array();
        // dd($Management);
        $ManagementPoint=array();
        foreach ($Management as $key => $value) {
            $ManagementPoint[]=$value->points;
            $ManagementAxis[]=$value->SCname;
        }
        
        $chart5 =(new LarapexChart)->radarChart()
        ->setTitle($Management[0]->Cname.'.')
        ->addData('Points', $ManagementPoint)
        ->setXAxis($ManagementAxis)
        // ->setColors(['#ffc63b', '#ff6384'])
        ->setMarkers(['#303F9F'], 7, 10);

        $Knowledge_Management=$a[5][0];

        $Knowledge_ManagementAxis=array();
        // dd($Knowledge_Management);
        $Knowledge_ManagementPoint=array();
        foreach ($Knowledge_Management as $key => $value) {
            $Knowledge_ManagementPoint[]=$value->points;
            $Knowledge_ManagementAxis[]=$value->SCname;
        }
        
        $chart6 =(new LarapexChart)->radarChart()
        ->setTitle($Knowledge_Management[0]->Cname.'.')
        ->addData('Points', $Knowledge_ManagementPoint)
        ->setXAxis($Knowledge_ManagementAxis)
        // ->setColors(['#ffc63b', '#ff6384'])
        ->setMarkers(['#303F9F'], 7, 10);

        $Domain_Integration=$a[6][0];

        $Domain_IntegrationAxis=array();
        // dd($Domain_Integration);
        $Domain_IntegrationPoint=array();
        foreach ($Domain_Integration as $key => $value) {
            $Domain_IntegrationPoint[]=$value->points;
            $Domain_IntegrationAxis[]=$value->SCname;
        }
        
        $chart7 =(new LarapexChart)->radarChart()
        ->setTitle($Domain_Integration[0]->Cname.'.')
        ->addData('Points', $Domain_IntegrationPoint)
        ->setXAxis($Domain_IntegrationAxis)
        // ->setColors(['#ffc63b', '#ff6384'])
        ->setMarkers(['#303F9F'], 7, 10);

        $technology=$a[7][0];

        $technologyAxis=array();
        // dd($technology);
        $technologyPoint=array();
        foreach ($technology as $key => $value) {
            $technologyPoint[]=$value->points;
            $technologyAxis[]=$value->SCname;
        }
        
        $chart8 =(new LarapexChart)->radarChart()
        ->setTitle($technology[0]->Cname.'.')
        ->addData('Points', $technologyPoint)
        ->setXAxis($technologyAxis)
        // ->setColors(['#ffc63b', '#ff6384'])
        ->setMarkers(['#303F9F'], 7, 10);
        


        
        return view('client.results',compact('chart','chart2','chart3','chart4','chart5','chart6','chart7','chart8') );
        
    }


}
