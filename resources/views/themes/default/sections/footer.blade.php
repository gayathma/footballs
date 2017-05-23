<!--<footer>
    <div class="container">
        <div class="row">
            <div class="col-sm-7">
                <p class="dupa">&copy; {!! date("Y") !!} {!! PageBuilder::block('footer_left') !!} | A <a href="http://coastercms.org" target="_blank">Coaster CMS</a> website | <a href="#toptop">Back to top</a></p>
            </div>
            <div class="col-sm-5">
                <p class="text-right">E-mail: <a href="mailto:{!! PageBuilder::block('email') !!}">{!! PageBuilder::block('email') !!}</a> | Phone: +44 {!! str_replace(" ", "-", PageBuilder::block('phone')) !!} </p>
            </div>
        </div>
       
    </div>
  
</footer>-->
<div id="offcanvas" class="uk-offcanvas">
            <div class="uk-offcanvas-bar">
                <ul class="uk-nav uk-nav-offcanvas">
                    <li class="uk-parent uk-active"><a href="{{ url('/') }}">HOME</a>
                    </li>
                    <li><a href="{{ url('/pledge-a-ball') }}">PLEDGE A BALL</a></li>
                    <li><a href="{{ url('/editor') }}">EDITOR</a>
                    </li>
                    <li><a href="{{ url('/our-story') }}">OUR STORY</a>
                    </li>
                </ul>
            </div>
        </div>

<script src="{!! PageBuilder::js('jquery') !!}"></script>
<script src="{!! PageBuilder::js('bootstrap.min') !!}"></script>

    
<script src="{!! PageBuilder::js('uikit') !!}"></script>


<script src="{!! PageBuilder::js('components/grid') !!}"></script>
<script src="{!! PageBuilder::js('components/slider') !!}"></script>
<script src="{!! PageBuilder::js('components/slideshow') !!}"></script>
<script src="{!! PageBuilder::js('components/slideset') !!}"></script>
<script src="{!! PageBuilder::js('components/sticky') !!}"></script>
<script src="{!! PageBuilder::js('components/lightbox') !!}"></script>
<script src="{!! PageBuilder::js('isotope.pkgd.min') !!}"></script>

<script src="{!! PageBuilder::js('theme') !!}"></script>

@yield('scripts')

{!! PageBuilder::block('footer_html', ['source' => true]) !!}
    </div>

</body>
</html>
