<div class="toolbar-wrap">
    <div class="uk-container uk-container-center">
        <div class="tm-toolbar uk-clearfix uk-hidden-small">


            <div class="uk-float-right">
                <div class="uk-panel">
                    <div class="social-top">
                        <a href="https://www.facebook.com/1v1footballs" target="blank"><span class="uk-icon-small uk-icon-hover uk-icon-facebook"></span></a>
                        <a href="https://twitter.com/1v1footballs" target="blank"><span class="uk-icon-small uk-icon-hover uk-icon-twitter"></span></a>
                        <a href="https://www.linkedin.com/company/1v1/" target="blank"><span class="uk-icon-small uk-icon-hover uk-icon-linkedin"></span></a>
                       <!-- <a href="#"><span class="uk-icon-small uk-icon-hover uk-icon-pinterest"></span></a>
                        <a href="#"><span class="uk-icon-small uk-icon-hover uk-icon-youtube"></span></a>
                        <a href="#"><span class="uk-icon-small uk-icon-hover uk-icon-instagram"></span></a>
                        <a href="#"><span class="uk-icon-small uk-icon-hover uk-icon-flickr"></span></a>-->
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<div class="tm-menu-box">

    <div style="height: 70px;" class="uk-sticky-placeholder">
        <nav style="margin: 0px;" class="tm-navbar uk-navbar" data-uk-sticky="">
            <div class="uk-container uk-container-center">
                <a class="tm-logo uk-float-left" href="<?php echo URL::to('/');?>">
                    {!! PageBuilder::img('logo.png') !!} <span>1v1<em>Footballs</em></span>
                </a>

                <ul class="uk-navbar-nav uk-hidden-small">
                    {!! $items !!}
                </ul>
                <a href="#offcanvas" class="uk-navbar-toggle uk-visible-small" data-uk-offcanvas=""></a>
            </div>
        </nav>
    </div>

</div>


