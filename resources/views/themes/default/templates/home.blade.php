{!! PageBuilder::section('head') !!}

<div class="tm-top-a-box tm-full-width  ">
    <div class="uk-container uk-container-center">
        <section id="tm-top-a" class="tm-top-a uk-grid uk-grid-collapse" data-uk-grid-match="{target:'> div > .uk-panel'}" data-uk-grid-margin="">

            <div class="uk-width-1-1">
                <div class="uk-panel">
                    <div class="akslider-module ">
                        <div class="uk-slidenav-position" data-uk-slideshow="{height: 'auto', animation: 'swipe', duration: '500', autoplay: false, autoplayInterval: '7000', videoautoplay: true, videomute: true, kenburns: false}">
                            <ul class="uk-slideshow uk-overlay-active">
                                <li aria-hidden="false" class="uk-height-viewport uk-active">
                                    <div style="background-image: url('/themes/default/img/home_slider/main-slider-img.jpg');" class="uk-cover-background uk-position-cover"></div><img style="width: 100%; height: auto; opacity: 0;" class="uk-invisible" src="/themes/default/img/home_slider/main-slider-img.jpg" alt="">
                                    <div class="uk-position-cover uk-flex-middle">
                                        <div class="uk-container uk-container-center uk-position-cover">
                                            <div class="va-promo-text uk-width-6-10 uk-push-4-10">
                                                <h3>Life is <span>about timing</span></h3>
                                                <div class="promo-sub">Just play. <span>Have fun.</span> Enjoy the game</div>
                                                <a href="#" class="read-more">Read More<i class="uk-icon-chevron-right"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li aria-hidden="true" class="uk-height-viewport">
                                    <div style="background-image: url(/themes/default/img/home_slider/main-slider-img1.html);" class="uk-cover-background uk-position-cover"></div><img style="width: 100%; height: auto; opacity: 0;" class="uk-invisible" src="/themes/default/img/home_slider/main-slider-img1.jpg" alt="">
                                    <div class="uk-position-cover uk-flex-middle">
                                        <div class="uk-container uk-container-center uk-position-cover">
                                            <div class="va-promo-text uk-width-6-10 uk-push-4-10">
                                                <h3>Just play.<span>Have fun.</span></h3>
                                                <div class="promo-sub">Life is <span>about timing</span> Enjoy the game</div>
                                                <a href="#" class="read-more">Read More<i class="uk-icon-chevron-right"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li aria-hidden="true" class="uk-height-viewport">
                                    <div style="background-image: url(/themes/default/img/home_slider/main-slider-img2.html);" class="uk-cover-background uk-position-cover"></div><img style="width: 100%; height: auto; opacity: 0;" class="uk-invisible" src="/themes/default/img/home_slider/main-slider-img2.jpg" alt="">
                                    <div class="uk-position-cover uk-flex-middle">
                                        <div class="uk-container uk-container-center uk-position-cover">
                                            <div class="va-promo-text uk-width-6-10 uk-push-4-10">
                                                <h3>Life is <span>about timing</span></h3>
                                                <div class="promo-sub">Just play. <span>Have fun.</span> Enjoy the game</div>
                                                <a href="#" class="read-more">Read More<i class="uk-icon-chevron-right"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <a href="{{ url('/') }}" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slideshow-item="previous"></a>
                            <a href="{{ url('/') }}" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slideshow-item="next"></a>
                            <ul class="uk-dotnav uk-dotnav-contrast uk-position-bottom uk-text-center">
                                <li class="uk-active" data-uk-slideshow-item="0"><a href="{{ url('/') }}">0</a>
                                </li>
                                <li data-uk-slideshow-item="1"><a href="{{ url('/') }}">1</a>
                                </li>
                                <li data-uk-slideshow-item="2"><a href="{{ url('/') }}">2</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<section id="second">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h2>{!! PageBuilder::block('title') !!}</h2>
                {!! PageBuilder::block('content') !!}
            </div>
        </div>
        <!-- /.row -->
    </div>

    <div class="container-fluid">
    <div class="container tp-pd">
        <div class="row">

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
<!-- /.second -->

<script>
      

    

</script>
{!! PageBuilder::section('footer') !!}
