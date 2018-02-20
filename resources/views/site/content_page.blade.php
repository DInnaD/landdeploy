@section('content')
<section><!--Aboutus-->
<div class="inner_wrapper">
  <div class="container">
    <h2>{{ $page->name }}</h2>
    <div class="inner_section">
    <div class="row">
      <div class=" col-lg-4 col-md-4 col-sm-4 col-xs-12 pull-right">
      
            <div class=" delay-01s animated fadeInDown wow animated">
            
            <ul>
            <li>
              {!! Html::image('assets/img/'.$page->images,'',['class' => 'zoomIn wow animated']) !!}
              </li>
              <li>
              <audio controls>
               <source src="{{ asset('assets/audio/'.$page->audios,'',['class' => 'izoomIn wow animated']) }}" type="audio/ogg">
               <source src="{{ asset('assets/audio/'.$page->audios,'',['class' => 'izoomIn wow animated']) }}" type="audio/mp3">
              </audio>  
              
              </li>
              <li>
              {!! Html::image('assets/video/'.$page->videos,'',['class' => 'zoomIn wow animated']) !!}
              </li>
            
          </ul>
              
        </div>
      </div>

        <div class=" col-lg-7 col-md-7 col-sm-7 col-xs-12 pull-left">
            <div class=" delay-01s animated fadeInDown wow animated">
            <div class="panel-body">
                    <a class="btn btn-info btn-xs col-md-1 col-sm-2 col-xs-2" href="{{ URL::previous() }}">
                    <i class="fa fa-backward" aria-hidden="true"></i> back
                    </a>
                       
                        <hr>
                  </div>
            {!! $page->text !!}
              
          </div>
       
            </div>
        
              </div>
                <div class="panel-body">
                    <a class="btn btn-info btn-xs col-md-1 col-sm-2 col-xs-2" href="{{ URL::previous() }}">
                    <i class="fa fa-backward" aria-hidden="true"></i> back
                    </a>
                       

                        <hr>
                  </div>
                </div>
            </div> 
        </div>
</section>
@endsection





        
          
        

