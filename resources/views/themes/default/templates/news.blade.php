{!! PageBuilder::section('head') !!}


       <style>
.over-wrap {
    overflow-x: hidden;
    overflow-y: hidden;
}
</style>
   <div class="tm-top-a-box tm-full-width tm-box-bg-1 ">
            <div class="uk-container uk-container-center">
                <section id="tm-top-a" class="tm-top-a uk-grid uk-grid-collapse" data-uk-grid-match="{target:'> div > .uk-panel'}" data-uk-grid-margin="">

                    <div class="uk-width-1-1 uk-row-first">
                        <div class="uk-panel">
                            <div class="uk-cover-background uk-position-relative head-wrap" style="height: 290px; background-image: url('/themes/default/img/head-bg.jpg');">
                                <img class="uk-invisible" src="/themes/default/img/head-bg.jpg" alt="" height="290" width="1920">
                                <div class="uk-position-cover uk-flex uk-flex-center head-title">
                                    <h1>{!! PageBuilder::block('title') !!}</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>

        <div class="uk-container uk-container-center alt">
            <ul class="uk-breadcrumb">
                <li><a href="<?php echo URL::to('/');?>">Home</a>
                </li>
                <li class="uk-active"><span>News</span>
                </li>
            </ul>
        </div>

        <div class="tm-bottom-a-box  ">
            <div class="uk-container uk-container-center">
                <section id="tm-bottom-a" class="tm-bottom-a uk-grid" data-uk-grid-match="{target:'> div > .uk-panel'}" data-uk-grid-margin="">

                    <div class="uk-width-1-1 uk-row-first">
                        <div class="uk-panel">
                            <div class="about-team-page-top-wrap">
                                <div class="uk-grid">
                                    <div class="uk-width-large-5-10 uk-width-small-1-1 left-part">
                                        <div class="top-title">
                                            <h2>In the News for 1v1 footballs</h2>
                                        </div>
                                        <p class="sub-title">This is where we try and keep you up to date on anything that we at 1v1 Personalised Footballs are doing that we feel is worthy of news. Also this is going to be a great page to keep updated on what else is happening that is relevant to you. We know some of you are football players, or coaches at grassroots level. Some of you are crazy enough to be Football Managers, or Assistant Managers. Then theres the over looked parent, that is there come rain or shine all year round, cheering and supporting their young player to do their best.
Obviously its the personalised footballs that should make the news, as it is the essential element of the game we all love...most of the time</p>
                                         <p >{!! PageBuilder::block('content') !!}</p>
                                    </div>
                                    <div class="uk-width-large-5-10 uk-width-small-1-1">
                                    {!! PageBuilder::block('image', ['width' => 400, 'class' => 'img-responsive']) !!}
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
{!! PageBuilder::section('footer') !!}
