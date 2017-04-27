

<!DOCTYPE html>
<html lang="en">
<head itemscope>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{!! PageBuilder::block('meta_title', ['meta' => true]) !!}</title>
    <meta name="description" content="{!! PageBuilder::block('meta_description', ['meta' => true]) !!}">
    <meta name="keywords" content="{!! PageBuilder::block('meta_keywords', ['meta' => true]) !!}">

    <meta name="revisit-after" content="7 days">

    

    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet" type="text/css">
    <link href="{!! PageBuilder::css('akslider') !!}" rel="stylesheet">
    <link href="{!! PageBuilder::css('donate') !!}" rel="stylesheet">
    <link href="{!! PageBuilder::css('theme') !!}" rel="stylesheet">

    <link href="{!! PageBuilder::css('editor') !!}" rel="stylesheet">
    <script type='text/javascript' src='../../ajax.googleapis.com/ajax/libs/mootools/1.3.1/mootools-yui-compressed.js'></script>

    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>

    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    {!! PageBuilder::block('header_html', ['source' => true]) !!}

</head>

<body class="tm-isblog">
    <div class="preloader">
        <div class="loader"></div>
    </div>

    <div class="over-wrap">

       


<section id="second">
  
<div class="uk-width-1-1 uk-row-first">
                <div class="uk-panel">
<div class="col-md-12 col-sm-12 col-xs-12 ball-selector">
                <p>Choose your preferred design</p>
                <img src="/themes/default/img/blast.png" onclick="blast()" class="bttn blast"/>
                <img src="/themes/default/img/flame.png" onclick="flame()" class="bttn flame"/>
                <img src="/themes/default/img/prem.png" onclick="prem()" class="bttn prem"/>
                <img src="/themes/default/img/swerve.png" onclick="swerve()" class="bttn swerve"/>
                <img src="/themes/default/img/world.png" onclick="world()" class="bttn world"/>
                <img src="/themes/default/img/premium.png" onclick="premium()" class="bttn premium"/>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="row">
                    
                    <div class=" col-md-12 col-sm-12 col-xs-12 tp-pd">

                        <div class="form-group">
                            
                            <button class="btn btn-success btn-sm"  onclick="showColor()">Main Colour</button>
                            <button class="btn btn-success btn-sm"  onclick="showColor2()">Secondary Colour</button>
                            <label class="btn btn-success btn-file logoSelect btn-sm">Add Primary Logo <input id="logo1" type="file" hidden ></label>
                            <label class="btn btn-success btn-file logoSelect btn-sm">Add Secondary Logo<input id="logo2" type="file" hidden ></label>
                            <button class="btn btn-success textSelect btn-sm" onclick="addText(0)">Enter Primary Text</button>
                            <button class="btn btn-success textSelect btn-sm" onclick="addText(1)">Enter Secondary Text</button>
                            <!--<button id="logoSelect" class="btn btn-success btn-sm"  onclick="showLogoModal()">Add Logo</button>
                            <button id="textSelect" class="btn btn-success btn-sm"  onclick="showTextModal()">Add Text</button>-->
                            <button class="btn btn-success btn-sm"  id="reset">Reset Options</button>
                            <button class="btn btn-success btn-sm"  onclick="player.centerBall()">Center Ball</button>
                            <!-- <button class="btn btn-success btn-sm"  onclick="placeOrder()">Place Order</button> -->
                            
                        </div>
                    </div>
                </div>

                <img src="" id="img"/>




            </div>
  </div>

   </div>
    
<div class="uk-width-1-1 uk-row-first">
                <div class="uk-panel">
<div class="canvas-holder">
</div>
</div>
</div>
<div id="labelHolder">
    <label id="lblStatus">Select a Football</label>
</div>



<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="modal" role="dialog" aria-labelledby="modalLabel" tabindex="-1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalLabel">Cropper</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <div class="img-container">
                    <img id="image" src="" alt="your image" />

                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" id="crop" >Crop</button>
                <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>




<!-- Modal -->
<div class="modal fade" id="confirmModal" role="dialog" aria-labelledby="modalLabel" tabindex="-1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalLabel">Confirm Order</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="exampleInputEmail2">Email</label>
                    <input type="email" class="form-control" id="emailAdd" placeholder="jane.doe@example.com" required>
                </div>

            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-success" onclick="processOrder()">Order</button>
                <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="colorPicker" role="dialog" aria-labelledby="modalLabel" tabindex="-1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalLabel">Select main colour</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body pd-left">
                <div class="colorContainer row">


                </div>

            </div>
            <div class="modal-footer">
                
                <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="colorPicker2" role="dialog" aria-labelledby="modalLabel" tabindex="-1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalLabel">Select secondary colour</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body pd-left">
                <div class="colorContainer2 row">


                </div>

            </div>
            <div class="modal-footer">
                
                <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="logoModal" role="dialog" aria-labelledby="modalLabel" tabindex="-1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalLabel">Upload main and secondary logo</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body txt-center">
                <label class="btn btn-primary btn-file">Select Main Logo <input id="logo1" type="file" hidden ></label>
                <label class="btn btn-primary btn-file">Select Secondary Logo<input id="logo2" type="file" hidden ></label>
                
            </div>
            <div class="modal-footer">
                
                <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="textModal" role="dialog" aria-labelledby="modalLabel" tabindex="-1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalLabel">Enter main and secondary text</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body txt-center">
                <button class="btn btn-success" onclick="addText(0)">Enter Primary Text</button>
                
                <button class="btn btn-success" onclick="addText(1)">Enter Secondary Text</button>
            </div>
            <div class="modal-footer">
                
                <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="addText1" role="dialog" aria-labelledby="modalLabel" tabindex="-1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalLabel">Format Text</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body txt-center">
                <input type="text" id="text1" class="form-control" />
                <label>Adjust font size</label>
                <input type="range" id="fontSize" value="27" min="0" max="200" class="form-control" placeholder="enter your text"/>
                <label>Adjust line height</label>
                <input type="range" id="lineHeight" value="8" min="0" max="300" class="form-control"/>
                
                <script>
                    var fontSize=27;
                    var fontLineHeight=8;

                    var text='';
                    onload = function () {
                        var e = document.getElementById('text1');
                        var slider = document.getElementById('fontSize');
                        var lineHeight = document.getElementById('lineHeight');

                        e.oninput = textChange;
                       e.onpropertychange = e.oninput; // for IE8

                       slider.oninput = sizeChange;
                       slider.onpropertychange = slider.oninput; // for IE8

                       lineHeight.oninput = heightChange;
                       lineHeight.onpropertychange = lineHeight.oninput; // for IE8

                   };

                   function textChange(v){
                    text=v.target.value;
                    console.log(v.target.value);
                    player.addText1(text,fontSize,fontLineHeight);
                   }    

                   function sizeChange(v){
                    fontSize=parseInt(v.target.value);
                    player.addText1(text,fontSize,fontLineHeight);
                    console.log(v.target.value);
                   }

                   function heightChange(v){
                    fontLineHeight=parseInt(v.target.value);
                    player.addText1(text,fontSize,fontLineHeight);
                    console.log(v.target.value);
                   }

                   
                </script>
                <canvas id="textCanvas" style="width:256px;height:256px;"></canvas>
            </div>
            <div class="modal-footer">
                
                <button id="applyText" type="button" class="btn btn-success addBtn" >Add</button>
                <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="addText2" role="dialog" aria-labelledby="modalLabel" tabindex="-1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalLabel">Format Text</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body txt-center">
                <input type="text" id="text2" maxlength="14" />
                <input type="text" id="text4" maxlength="14" />
                <input type="text" id="text6" maxlength="14" />

            </div>
            <div class="modal-footer">
                
                <button type="button" class="btn btn-success"  onclick="addText2(1)">Add</button>
                <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

    <!-- /.container -->
</section>


<footer>
    <div class="container">
        <div class="row">
            <div class="col-sm-7">
                <p class="dupa">&copy; {!! date("Y") !!} {!! PageBuilder::block('footer_left') !!} | A <a href="http://coastercms.org" target="_blank">Coaster CMS</a> website | <a href="#toptop">Back to top</a></p>
            </div>
            <div class="col-sm-5">
                <p class="text-right">E-mail: <a href="mailto:{!! PageBuilder::block('email') !!}">{!! PageBuilder::block('email') !!}</a> | Phone: +44 {!! str_replace(" ", "-", PageBuilder::block('phone')) !!} </p>
            </div>
        </div>
        <!--/. row -->
    </div>
    <!-- /.container -->
</footer>


<script src="{!! PageBuilder::js('jquery') !!}"></script>
<script src="{!! PageBuilder::js('bootstrap.min') !!}"></script>

    <script src="{!! PageBuilder::js('three.min') !!}"></script>
<script src="{!! PageBuilder::js('app') !!}"></script>
<script src="{!! PageBuilder::js('TrackballControls') !!}"></script>
<script src="{!! PageBuilder::js('pantone-match-system') !!}"></script>
<script src="{!! PageBuilder::js('logic') !!}"></script>
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