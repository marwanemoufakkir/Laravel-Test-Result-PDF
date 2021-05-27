@extends('layouts.client')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Results of your test</div>

                <div class="card-body">
                    @if(session('status'))
                        <div class="row">
                            <div class="col-12">
                                <div class="alert alert-success" role="alert">
                                    <p>{{ session('status') }}</p>
                                    
                                    <a href="{{ route('client.test') }}" class="btn btn-primary">Start test again</a>
                                </div>
                            </div>
                        </div>
                    @endif
                    <div class="p-6 m-20">
                        {!! $chart->container() !!}
                        {{ $chart->script() }}
                    </div>
                    
                    <div class="p-6 m-20">
                        {!! $chart2->container() !!}
                        {{ $chart2->script() }}
                    </div>
                   
                    <div class="p-6 m-20">
                        {!! $chart3->container() !!}
                        {{ $chart3->script() }}
                    </div>
                    <div class="p-6 m-20">
                        {!! $chart4->container() !!}
                        {{ $chart4->script() }}
                    </div>        
                    <div class="p-6 m-20">
                        {!! $chart5->container() !!}
                        {{ $chart5->script() }}
                    </div>  
                    <div class="p-6 m-20">
                        {!! $chart6->container() !!}
                        {{ $chart6->script() }}
                    </div>  
                    <div class="p-6 m-20">
                        {!! $chart7->container() !!}
                        {{ $chart7->script() }}
                    </div>  
                    <div class="p-6 m-20">
                        {!! $chart8->container() !!}
                        {{ $chart8->script() }}
                    </div>  
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


