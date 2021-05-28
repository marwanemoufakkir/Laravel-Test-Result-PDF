<?php

namespace App\Http\Controllers;

use App\Category;
use App\Http\Requests\StoreTestRequest;
use App\Option;

class TestsController extends Controller
{
    public function index()
    {
        $categories1 = Category::with(['categoryQuestions' => function ($query) {
                $query->inRandomOrder()
                    ->with(['questionOptions' => function ($query) {
                        $query->inRandomOrder();
                    }]);
            }])
            ->whereHas('categoryQuestions')
            ->where('categories_id',1)
            ->get();
        $categories2 = Category::with(['categoryQuestions' => function ($query) {
            $query->inRandomOrder()
                ->with(['questionOptions' => function ($query) {
                    $query->inRandomOrder();
                    }]);
            }])
            ->whereHas('categoryQuestions')
            ->where('categories_id',2)
            ->get();
            $categories3 = Category::with(['categoryQuestions' => function ($query) {
                $query->inRandomOrder()
                    ->with(['questionOptions' => function ($query) {
                        $query->inRandomOrder();
                        }]);
                }])
                ->whereHas('categoryQuestions')
                ->where('categories_id',3)
                ->get();
                $categories4 = Category::with(['categoryQuestions' => function ($query) {
                    $query->inRandomOrder()
                        ->with(['questionOptions' => function ($query) {
                            $query->inRandomOrder();
                            }]);
                    }])
                    ->whereHas('categoryQuestions')
                    ->where('categories_id',4)
                    ->get();
                    $categories5 = Category::with(['categoryQuestions' => function ($query) {
                        $query->inRandomOrder()
                            ->with(['questionOptions' => function ($query) {
                                $query->inRandomOrder();
                                }]);
                        }])
                        ->whereHas('categoryQuestions')
                        ->where('categories_id',5)
                        ->get();
                        $categories6 = Category::with(['categoryQuestions' => function ($query) {
                            $query->inRandomOrder()
                                ->with(['questionOptions' => function ($query) {
                                    $query->inRandomOrder();
                                    }]);
                            }])
                            ->whereHas('categoryQuestions')
                            ->where('categories_id',6)
                            ->get();
                            $categories7 = Category::with(['categoryQuestions' => function ($query) {
                                $query->inRandomOrder()
                                    ->with(['questionOptions' => function ($query) {
                                        $query->inRandomOrder();
                                        }]);
                                }])
                                ->whereHas('categoryQuestions')
                                ->where('categories_id',7)
                                ->get();
                                $categories8 = Category::with(['categoryQuestions' => function ($query) {
                                    $query->inRandomOrder()
                                        ->with(['questionOptions' => function ($query) {
                                            $query->inRandomOrder();
                                            }]);
                                    }])
                                    ->whereHas('categoryQuestions')
                                    ->where('categories_id',8)
                                    ->get();
        return view('client.test', compact('categories1','categories2','categories3','categories4','categories5','categories6','categories7','categories8'));
    }

    public function store(StoreTestRequest $request)
    {
       dd($request->input('questions'));
        $options = Option::find(array_values($request->input('questions')));
        
        $result = auth()->user()->userResults()->create([
            'total_points' => $options->sum('points')
        ]);

        $questions = $options->mapWithKeys(function ($option) {
            return [$option->question_id => [
                        'option_id' => $option->id,
                        'points' => $option->points
                    ]
                ];
            })->toArray();

        $result->questions()->sync($questions);

        return redirect()->route('client.results.show', $result->id);
    }
}
