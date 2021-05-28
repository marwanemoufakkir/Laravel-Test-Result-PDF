@extends('layouts.client')

@section('content')

<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-11 col-sm-9 col-md-7 col-lg-6 col-xl-5 text-center p-0 mt-3 mb-2">
            <div class="card px-0 pt-4 pb-0 mt-3 mb-3">
                <form id="msform" method="POST" action="{{ route('client.test.store') }}">
                    @csrf
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                    </div> <br> <!-- fieldsets -->
                    <fieldset>
                        <div class="form-card">
                            <div class="row">
                                <div class="col-7">
                                    <h2 class="fs-title">Platforms:</h2>


                                </div>
                                <div class="col-5">
                                    <h2 class="steps">Step 1 - 8</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos itaque sit dicta incidunt maxime rem earum dolorem quos explicabo dolor laboriosam, quae molestiae numquam non ut ex libero in voluptatem?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste rem, adipisci illo illum magni culpa dolorem! Officiis id illo laboriosam, quis praesentium hic delectus perferendis, inventore nulla eos cum est Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero sit saepe sed! Perferendis illo quia sint debitis iste architecto tempora maiores autem, laudantium suscipit, et ullam veniam magni tempore adipisci.</p>
                                </div>
                            </div>
                            @foreach($categories1 as $category)
                            <div class="card text-white mb-3" style="min-width: 18rem;background-color: #673AB7;">
                                <div class="card-header">{{ $category->name }}</div>
                                <div class="card-body">
                                    @foreach($category->categoryQuestions as $question)
                                    <h5 class="card-title">{{ $question->question_text }}</h5>
                                    <p class="card-text">
                                        <ul class="list-unstyled">
                                            @foreach($question->questionOptions as $option)
                                            <li style="padding-left: 19px">
                                                <label for="option-{{ $option->id }}">
                                                    <input type="radio" name="questions[{{ $question->id }}]" id="option-{{ $option->id }}" value="{{ $option->id }}"@if(old("questions.$question->id") == $option->id) checked @endif/>
                                                    <span>{{ $option->option_text }}</span>
                                                </label>
                                            </li>
                                            
                                            @endforeach
                                        </ul>
                                    </p>
                                  @endforeach
                                </div>
                            </div>

                        
                            @endforeach
                        </div> 
                        
                        <input type="button" name="next" class="next action-button" value="Next" />
                    </fieldset>
                    <fieldset>
                        <div class="form-card">
                            <div class="row">
                                <div class="col-7">
                                    <h2 class="fs-title">Data Quality Management:</h2>
                                </div>
                                <div class="col-5">
                                    <h2 class="steps">Step 2 - 8</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos itaque sit dicta incidunt maxime rem earum dolorem quos explicabo dolor laboriosam, quae molestiae numquam non ut ex libero in voluptatem?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste rem, adipisci illo illum magni culpa dolorem! Officiis id illo laboriosam, quis praesentium hic delectus perferendis, inventore nulla eos cum est Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero sit saepe sed! Perferendis illo quia sint debitis iste architecto tempora maiores autem, laudantium suscipit, et ullam veniam magni tempore adipisci.</p>
                            </div>
                            </div>
                            @foreach($categories2 as $category)
                            <div class="card text-white mb-3" style="min-width: 18rem;background-color: #673AB7;">
                                <div class="card-header">{{ $category->name }}</div>
                                <div class="card-body">
                                    @foreach($category->categoryQuestions as $question)
                                    <h5 class="card-title">{{ $question->question_text }}</h5>
                                    <p class="card-text">
                                        <ul class="list-unstyled">
                                            @foreach($question->questionOptions as $option)
                                            <li style="padding-left: 19px">
                                                <label for="option-{{ $option->id }}">
                                                    <input type="radio" name="questions[{{ $question->id }}]" id="option-{{ $option->id }}" value="{{ $option->id }}"@if(old("questions.$question->id") == $option->id) checked @endif/>
                                                    <span>{{ $option->option_text }}</span>
                                                </label>
                                            </li>
                                            
                                            @endforeach
                                        </ul>
                                    </p>
                                  @endforeach
                                </div>
                            </div>

                        
                            @endforeach
                        </div> 
                         <input type="button" name="next" class="next action-button" value="Next" /> <input type="button" name="previous" class="previous action-button-previous" value="Previous" />
                    </fieldset>
                    <fieldset>
                        <div class="form-card">
                            <div class="row">
                                <div class="col-7">
                                    <h2 class="fs-title">Technology:</h2>
                                </div>
                                <div class="col-5">
                                    <h2 class="steps">Step 3 - 8</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos itaque sit dicta incidunt maxime rem earum dolorem quos explicabo dolor laboriosam, quae molestiae numquam non ut ex libero in voluptatem?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste rem, adipisci illo illum magni culpa dolorem! Officiis id illo laboriosam, quis praesentium hic delectus perferendis, inventore nulla eos cum est Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero sit saepe sed! Perferendis illo quia sint debitis iste architecto tempora maiores autem, laudantium suscipit, et ullam veniam magni tempore adipisci.</p>
                                </div>
                            </div>
                            @foreach($categories3 as $category)
                            <div class="card text-white mb-3" style="min-width: 18rem;background-color: #673AB7;">
                                <div class="card-header">{{ $category->name }}</div>
                                <div class="card-body">
                                    @foreach($category->categoryQuestions as $question)
                                    <h5 class="card-title">{{ $question->question_text }}</h5>
                                    <p class="card-text">
                                        <ul class="list-unstyled">
                                            @foreach($question->questionOptions as $option)
                                            <li style="padding-left: 19px">
                                                <label for="option-{{ $option->id }}">
                                                    <input type="radio" name="questions[{{ $question->id }}]" id="option-{{ $option->id }}" value="{{ $option->id }}"@if(old("questions.$question->id") == $option->id) checked @endif/>
                                                    <span>{{ $option->option_text }}</span>
                                                </label>
                                            </li>
                                            
                                            @endforeach
                                        </ul>
                                    </p>
                                  @endforeach
                                </div>
                            </div>

                        
                            @endforeach
                        </div> 
                         <input type="button" name="next" class="next action-button" value="Next" /> <input type="button" name="previous" class="previous action-button-previous" value="Previous" />
                    </fieldset>
                    <fieldset>
                        <div class="form-card">
                            <div class="row">
                                <div class="col-7">
                                    <h2 class="fs-title">Infrastructure:</h2>
                                </div>
                                <div class="col-5">
                                    <h2 class="steps">Step 4 - 8</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos itaque sit dicta incidunt maxime rem earum dolorem quos explicabo dolor laboriosam, quae molestiae numquam non ut ex libero in voluptatem?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste rem, adipisci illo illum magni culpa dolorem! Officiis id illo laboriosam, quis praesentium hic delectus perferendis, inventore nulla eos cum est Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero sit saepe sed! Perferendis illo quia sint debitis iste architecto tempora maiores autem, laudantium suscipit, et ullam veniam magni tempore adipisci.</p>
                                </div>
                            </div>
                            @foreach($categories4 as $category)
                            <div class="card text-white mb-3" style="min-width: 18rem;background-color: #673AB7;">
                                <div class="card-header">{{ $category->name }}</div>
                                <div class="card-body">
                                    @foreach($category->categoryQuestions as $question)
                                    <h5 class="card-title">{{ $question->question_text }}</h5>
                                    <p class="card-text">
                                        <ul class="list-unstyled">
                                            @foreach($question->questionOptions as $option)
                                            <li style="padding-left: 19px">
                                                <label for="option-{{ $option->id }}">
                                                    <input type="radio" name="questions[{{ $question->id }}]" id="option-{{ $option->id }}" value="{{ $option->id }}"@if(old("questions.$question->id") == $option->id) checked @endif/>
                                                    <span>{{ $option->option_text }}</span>
                                                </label>
                                            </li>
                                            
                                            @endforeach
                                        </ul>
                                    </p>
                                  @endforeach
                                </div>
                            </div>

                        
                            @endforeach
                        </div> 
                         <input type="button" name="next" class="next action-button" value="Next" /> <input type="button" name="previous" class="previous action-button-previous" value="Previous" />
                    </fieldset>
                    <fieldset>
                        <div class="form-card">
                            <div class="row">
                                <div class="col-7">
                                    <h2 class="fs-title">Data:</h2>
                                </div>
                                <div class="col-5">
                                    <h2 class="steps">Step 5 - 8</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos itaque sit dicta incidunt maxime rem earum dolorem quos explicabo dolor laboriosam, quae molestiae numquam non ut ex libero in voluptatem?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste rem, adipisci illo illum magni culpa dolorem! Officiis id illo laboriosam, quis praesentium hic delectus perferendis, inventore nulla eos cum est Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero sit saepe sed! Perferendis illo quia sint debitis iste architecto tempora maiores autem, laudantium suscipit, et ullam veniam magni tempore adipisci.</p>
                                </div>
                            </div>
                            @foreach($categories5 as $category)
                            <div class="card text-white mb-3" style="min-width: 18rem;background-color: #673AB7;">
                                <div class="card-header">{{ $category->name }}</div>
                                <div class="card-body">
                                    @foreach($category->categoryQuestions as $question)
                                    <h5 class="card-title">{{ $question->question_text }}</h5>
                                    <p class="card-text">
                                        <ul class="list-unstyled">
                                            @foreach($question->questionOptions as $option)
                                            <li style="padding-left: 19px">
                                                <label for="option-{{ $option->id }}">
                                                    <input type="radio" name="questions[{{ $question->id }}]" id="option-{{ $option->id }}" value="{{ $option->id }}"@if(old("questions.$question->id") == $option->id) checked @endif/>
                                                    <span>{{ $option->option_text }}</span>
                                                </label>
                                            </li>
                                            
                                            @endforeach
                                        </ul>
                                    </p>
                                  @endforeach
                                </div>
                            </div>

                        
                            @endforeach
                        </div> 
                         <input type="button" name="next" class="next action-button" value="Next" /> <input type="button" name="previous" class="previous action-button-previous" value="Previous" />
                    </fieldset>
                    <fieldset>
                        <div class="form-card">
                            <div class="row">
                                <div class="col-7">
                                    <h2 class="fs-title">Management:</h2>
                                </div>
                                <div class="col-5">
                                    <h2 class="steps">Step 6 - 8</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos itaque sit dicta incidunt maxime rem earum dolorem quos explicabo dolor laboriosam, quae molestiae numquam non ut ex libero in voluptatem?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste rem, adipisci illo illum magni culpa dolorem! Officiis id illo laboriosam, quis praesentium hic delectus perferendis, inventore nulla eos cum est Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero sit saepe sed! Perferendis illo quia sint debitis iste architecto tempora maiores autem, laudantium suscipit, et ullam veniam magni tempore adipisci.</p>
                                </div>
                            </div>
                            @foreach($categories6 as $category)
                            <div class="card text-white mb-3" style="min-width: 18rem;background-color: #673AB7;">
                                <div class="card-header">{{ $category->name }}</div>
                                <div class="card-body">
                                    @foreach($category->categoryQuestions as $question)
                                    <h5 class="card-title">{{ $question->question_text }}</h5>
                                    <p class="card-text">
                                        <ul class="list-unstyled">
                                            @foreach($question->questionOptions as $option)
                                            <li style="padding-left: 19px">
                                                <label for="option-{{ $option->id }}">
                                                    <input type="radio" name="questions[{{ $question->id }}]" id="option-{{ $option->id }}" value="{{ $option->id }}"@if(old("questions.$question->id") == $option->id) checked @endif/>
                                                    <span>{{ $option->option_text }}</span>
                                                </label>
                                            </li>
                                            
                                            @endforeach
                                        </ul>
                                    </p>
                                  @endforeach
                                </div>
                            </div>

                        
                            @endforeach
                        </div> 
                         <input type="button" name="next" class="next action-button" value="Next" /> <input type="button" name="previous" class="previous action-button-previous" value="Previous" />
                    </fieldset>
                    <fieldset>
                        <div class="form-card">
                            <div class="row">
                                <div class="col-7">
                                    <h2 class="fs-title">Knowledge Management:</h2>
                                </div>
                                <div class="col-5">
                                    <h2 class="steps">Step 7 - 8</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos itaque sit dicta incidunt maxime rem earum dolorem quos explicabo dolor laboriosam, quae molestiae numquam non ut ex libero in voluptatem?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste rem, adipisci illo illum magni culpa dolorem! Officiis id illo laboriosam, quis praesentium hic delectus perferendis, inventore nulla eos cum est Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero sit saepe sed! Perferendis illo quia sint debitis iste architecto tempora maiores autem, laudantium suscipit, et ullam veniam magni tempore adipisci.</p>
                                </div>
                            </div>
                            @foreach($categories7 as $category)
                            <div class="card text-white mb-3" style="min-width: 18rem;background-color: #673AB7;">
                                <div class="card-header">{{ $category->name }}</div>
                                <div class="card-body">
                                    @foreach($category->categoryQuestions as $question)
                                    <h5 class="card-title">{{ $question->question_text }}</h5>
                                    <p class="card-text">
                                        <ul class="list-unstyled">
                                            @foreach($question->questionOptions as $option)
                                            <li style="padding-left: 19px">
                                                <label for="option-{{ $option->id }}">
                                                    <input type="radio" name="questions[{{ $question->id }}]" id="option-{{ $option->id }}" value="{{ $option->id }}"@if(old("questions.$question->id") == $option->id) checked @endif/>
                                                    <span>{{ $option->option_text }}</span>
                                                </label>
                                            </li>
                                            
                                            @endforeach
                                        </ul>
                                    </p>
                                  @endforeach
                                </div>
                            </div>

                        
                            @endforeach
                        </div> 
                         <input type="button" name="next" class="next action-button" value="Next" /> <input type="button" name="previous" class="previous action-button-previous" value="Previous" />
                    </fieldset>
                    <fieldset>
                        <div class="form-card">
                            <div class="row">
                                <div class="col-7">
                                    <h2 class="fs-title">Domain Integration:</h2>
                                </div>
                                <div class="col-5">
                                    <h2 class="steps">Step 8 - 8</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos itaque sit dicta incidunt maxime rem earum dolorem quos explicabo dolor laboriosam, quae molestiae numquam non ut ex libero in voluptatem?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste rem, adipisci illo illum magni culpa dolorem! Officiis id illo laboriosam, quis praesentium hic delectus perferendis, inventore nulla eos cum est Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero sit saepe sed! Perferendis illo quia sint debitis iste architecto tempora maiores autem, laudantium suscipit, et ullam veniam magni tempore adipisci.</p>
                                </div>
                            </div>
                            @foreach($categories8 as $category)
                            <div class="card text-white mb-3" style="min-width: 18rem;background-color: #673AB7;">
                                <div class="card-header">{{ $category->name }}</div>
                                <div class="card-body">
                                    @foreach($category->categoryQuestions as $question)
                                    <h5 class="card-title">{{ $question->question_text }}</h5>
                                    <p class="card-text">
                                        <ul class="list-unstyled">
                                            @foreach($question->questionOptions as $option)
                                            <li style="padding-left: 19px">
                                                <label for="option-{{ $option->id }}">
                                                    <input type="radio" name="questions[{{ $question->id }}]" id="option-{{ $option->id }}" value="{{ $option->id }}"@if(old("questions.$question->id") == $option->id) checked @endif/>
                                                    <span>{{ $option->option_text }}</span>
                                                </label>
                                            </li>
                                            
                                            @endforeach
                                        </ul>
                                    </p>
                                  @endforeach
                                </div>
                            </div>
                        
                            @endforeach
                        </div>  <input type="submit" name="next" class="next action-button" value="Submit" /> <input type="button" name="previous" class="previous action-button-previous" value="Previous" />
                    </fieldset>

                </form>
            </div>
        </div>
    </div>
</div>
@endsection