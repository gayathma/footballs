

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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">

    <link href="{!! PageBuilder::css('editor') !!}" rel="stylesheet">
     <link href="{!! PageBuilder::css('introjs.min') !!}" rel="stylesheet">
  

    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    {!! PageBuilder::block('header_html', ['source' => true]) !!}

</head>

<body class="tm-isblog">
    <div class="preloader">
        <div class="loader"></div>
    </div>

 

       



  
<div class="container-fluid">
                <div class="row">
<div class="col-md-12 col-sm-12 col-xs-12 ball-selector" >

                <p><button class="btn btn-success btn-sm" >Back</button>Choose your preferred design</p>
                <img src="/themes/default/img/blast.png" onclick="blast()" class="bttn blast" data-intro='Hello There, Get started with your design by selecting a football.'/>
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
                            
                            <button class="btn btn-success btn-sm"  onclick="showColor()" data-intro='Select the primary colour.'>Main Colour</button>
                            <button class="btn btn-success btn-sm"  onclick="showColor2()" data-intro='Select the secondary colour.'>Secondary Colour</button>
                            <label class="btn btn-success btn-file logoSelect btn-sm" data-intro='You can add a logo and make sure to upload it in PNG format for best results.'>Add Primary Logo <input id="logo1" type="file" hidden ></label>
                            <label class="btn btn-success btn-file logoSelect btn-sm">Add Secondary Logo<input id="logo2" type="file" hidden ></label>
                            <button class="btn btn-success textSelect btn-sm" onclick="addText(0)" data-intro='Or you can add a text.'>Enter Primary Text</button>
                            <button class="btn btn-success textSelect btn-sm" onclick="addText(1)">Enter Secondary Text</button>
                            <!--<button id="logoSelect" class="btn btn-success btn-sm"  onclick="showLogoModal()">Add Logo</button>
                            <button id="textSelect" class="btn btn-success btn-sm"  onclick="showTextModal()">Add Text</button>-->
                            <button class="btn btn-success btn-sm"  id="reset" data-intro='You can always start fresh by resetting'>Reset Options</button>
                            <button class="btn btn-success btn-sm"  onclick="player.centerBall()" data-intro='Get a better view by centering out'>Center Ball</button>
                            <button class="btn btn-success btn-sm"  onclick="placeOrder()" data-intro='If you happy with it place the order'>Place Order</button>
                            
                        </div>
                    </div>
                </div>

                <img src="" id="img"/>




            </div>
  </div>

   </div>
    

<div class="canvas-holder">
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
                <div class="form-group text-left">
                    <label for="exampleInputEmail2">Name</label>
                    <input type="text" class="form-control" id="name" placeholder="ex : Richard Phillip" required>
                </div>
                <div class="form-group text-left">
                    <label for="exampleInputEmail2">Team Name</label>
                    <input type="text" class="form-control" id="team" placeholder="ex : Rowdies U12’s" required>
                </div>
                <div class="form-group text-left">
                    <label for="exampleInputEmail2">Email</label>
                    <input type="email" class="form-control" id="emailAdd" placeholder="ex : richard@1v1footballs.com" required>
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





<script
    src="https://code.jquery.com/jquery-3.1.1.min.js"
    integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
    crossorigin="anonymous"></script>
    <script src="https://npmcdn.com/tether@1.2.4/dist/js/tether.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <script src="{!! PageBuilder::js('three.min') !!}"></script>
<script src="{!! PageBuilder::js('app') !!}"></script>
<script src="{!! PageBuilder::js('TrackballControls') !!}"></script>
<script src="{!! PageBuilder::js('pantone-match-system') !!}"></script>
<script src="{!! PageBuilder::js('logic') !!}"></script>
<script src="{!! PageBuilder::js('intro.min') !!}"></script>

<script type="text/javascript">
    
setTimeout(function(){
    $('.preloader').hide();
    introJs().start();
},2000);

</script>



</body>
</html>