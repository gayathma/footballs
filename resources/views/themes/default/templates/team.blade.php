{!! PageBuilder::section('head') !!}

<div class="tm-top-a-box tm-full-width tm-box-bg-1 ">
    <div class="uk-container uk-container-center">
        <section id="tm-top-a" class="tm-top-a uk-grid uk-grid-collapse" data-uk-grid-match="{target:'> div > .uk-panel'}" data-uk-grid-margin="">

            <div class="uk-width-1-1 uk-row-first">
                <div class="uk-panel">
                    <div class="uk-cover-background uk-position-relative head-wrap" style="height: 290px; background-image: url('/themes/default/img/head-bg.jpg');">
                        <img class="uk-invisible" src="images/head-bg.jpg" alt="" height="290" width="1920">
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
        <li><a href="{{ url('/') }}">Home</a>
        </li>
        <li class="uk-active"><span>Team</span>
        </li>
    </ul>
</div>

<div class="tm-bottom-a-box  ">
    <div class="uk-container uk-container-center">
        <section id="tm-bottom-a" class="tm-bottom-a uk-grid" data-uk-grid-match="{target:'> div > .uk-panel'}" data-uk-grid-margin="">
            <form method="POST"  accept-charset="UTF-8" id="team">
                <?php echo csrf_field(); ?>
                <div class="uk-width-1-1 uk-row-first">
                    <div class="uk-panel">
                        <div class="about-team-page-top-wrap">
                            <div class="uk-grid">
                                <div class="uk-width-large-5-10 uk-width-small-1-1 left-part">
                                    <div class="top-title">
                                       <h2>Fan That Can - <span>Grassroots Teams</span></h2>
                                   </div>
                                   <p class="sub-title">Register your TEAM</p>
                                   <div id="aiContactSafeForm">

                                    <div id="displayAiContactSafeForm_1">
                                        <div class="aiContactSafe" id="aiContactSafe_contact_form">
                                            <div class="aiContactSafe" id="aiContactSafe_info"></div>
                                            <div class="aiContactSafe_row" id="aiContactSafe_row_aics_name">
                                                <div class="aiContactSafe_contact_form_field_label_left"><span class="aiContactSafe_label" id="aiContactSafe_label_aics_name"><label for="aics_name">Grassroots Team Name *</label></span>&nbsp;
                                                    <label class="required_field">*</label>
                                                </div>
                                                <div class="aiContactSafe_contact_form_field_right {{ FormMessage::get_class('name') }}">
                                                    <input name="team_name" id="team_name" class="textbox" placeholder="Team Name" value="" type="text">
                                                </div>
                                            </div>
                                            <div class="aiContactSafe_row" id="aiContactSafe_row_aics_email">
                                                <div class="aiContactSafe_contact_form_field_label_left"><span class="aiContactSafe_label" id="aiContactSafe_label_aics_email"><label for="aics_email">Age Group</label></span>&nbsp;
                                                    <label class="required_field">*</label>
                                                </div>
                                                <div class="aiContactSafe_contact_form_field_right {{ FormMessage::get_class('email') }}">
                                                   <select name="age_group" class="form-select">
                                                    <option value="Under 6's">Under 6's</option>
                                                    <option value="Under 7's">Under 7's</option>
                                                    <option value="Under 8's">Under 8's</option>
                                                    <option value="Under 9's">Under 9's</option>
                                                    <option value="Under 10's">Under 10's</option>
                                                    <option value="Under 11's">Under 11's</option>
                                                    <option value="Under 12's">Under 12's</option>
                                                    <option value="Under 13's">Under 13's</option>
                                                    <option value="Under 14's">Under 14's</option>
                                                    <option value="Under 15's">Under 15's</option>
                                                    <option value="Under 16's">Under 16's</option>
                                                    <option value="Under 18's">Under 18's</option>
                                                    <option value="Multiple Ages">Multiple Ages</option>
                                                </select>

                                            </div>
                                        </div>
                                        <div class="aiContactSafe_row" id="aiContactSafe_row_aics_message">
                                            <div class="aiContactSafe_contact_form_field_label_left"><span class="aiContactSafe_label" id="aiContactSafe_label_aics_message"><label for="aics_message">Post Code</label></span>&nbsp;
                                                <label class="required_field">*</label>
                                            </div>
                                            <div class="aiContactSafe_contact_form_field_right {{ FormMessage::get_class('message') }}">
                                               <input name="postcode" id="postcode" class="textbox" placeholder="Post Code" value="" type="text">
                                           </div>
                                       </div>
                                       <div class="aiContactSafe_row" id="aiContactSafe_row_aics_message">
                                        <div class="aiContactSafe_contact_form_field_label_left"><span class="aiContactSafe_label" id="aiContactSafe_label_aics_message"><label for="aics_message">Contact Name</label></span>&nbsp;
                                            <label class="required_field">*</label>
                                        </div>
                                        <div class="aiContactSafe_contact_form_field_right {{ FormMessage::get_class('message') }}">
                                           <input name="first_name" id="first-name" class="textbox" placeholder="First Name" value="" type="text">
                                           <input name="last_name" id="last-name" class="textbox" placeholder="Last Name" value="" type="text">
                                       </div>
                                   </div>
                                   <div class="aiContactSafe_row" id="aiContactSafe_row_aics_email">
                                    <div class="aiContactSafe_contact_form_field_label_left"><span class="aiContactSafe_label" id="aiContactSafe_label_aics_email"><label for="aics_email">Position</label></span>&nbsp;
                                        <label class="required_field">*</label>
                                    </div>
                                    <div class="aiContactSafe_contact_form_field_right {{ FormMessage::get_class('email') }}">
                                       <select name="position" class="form-select">
                                        <option value="Team Manager">Team Manager</option>
                                        <option value="Team Coach">Team Coach</option>
                                        <option value="Club Secretary">Club Secretary</option>
                                        <option value="Club Chairman">Club Chairman</option>
                                        <option value="Treasurer">Treasurer</option>
                                        <option value="Other">Other</option>
                                    </select>

                                </div>
                            </div>
                            <div class="aiContactSafe_row" id="aiContactSafe_row_aics_message">
                               <div class="aiContactSafe_contact_form_field_label_left"><span class="aiContactSafe_label" id="aiContactSafe_label_aics_message"><label for="aics_message">Email</label></span>&nbsp;
                                <label class="required_field">*</label>
                            </div>
                            <div class="aiContactSafe_contact_form_field_right {{ FormMessage::get_class('message') }}">
                               <input name="email" id="email" class="textbox" placeholder="example@example.com" value="" type="text">
                           </div>
                       </div>
                       <div class="aiContactSafe_row" id="aiContactSafe_row_aics_message">
                           <div class="aiContactSafe_contact_form_field_label_left"><span class="aiContactSafe_label" id="aiContactSafe_label_aics_message"><label for="aics_message">Phone Number</label></span>&nbsp;
                            <label class="required_field">*</label>
                        </div>
                        <div class="aiContactSafe_contact_form_field_right {{ FormMessage::get_class('message') }}">
                           <input name="phone" id="phone" class="textbox" placeholder="phone number" value="" type="text">
                       </div>
                   </div>

               <div class="aiContactSafe_row" id="aiContactSafe_row_aics_message">
                <div class="aiContactSafe_contact_form_field_label_left"><span class="aiContactSafe_label" id="aiContactSafe_label_aics_message"><label for="aics_message">Any further details you would like to add</label></span>&nbsp;
                    <label class="required_field">*</label>
                </div>
                <div class="aiContactSafe_contact_form_field_right {{ FormMessage::get_class('message') }}">
                <textarea name="comments" id="comments" cols="40" rows="10" class="editbox" placeholder="Message"></textarea>
                </div>
            </div>
            <div class="aiContactSafe_row" id="aiContactSafe_row_aics_message">
                           <div class="aiContactSafe_contact_form_field_label_left"><span class="aiContactSafe_label" id="aiContactSafe_label_aics_message"><label for="aics_message">Enter Code Given (Optional)</label></span>&nbsp;
                           
                        </div>
                        <div class="aiContactSafe_contact_form_field_right {{ FormMessage::get_class('message') }}">
                           <input name="code" id="code" class="textbox" placeholder="phone number" value="" type="text">
                       </div>
                   </div>
                    <div class="aiContactSafe_row" id="aiContactSafe_row_aics_message">
                           <div class="aiContactSafe_contact_form_field_label_left"><span class="aiContactSafe_label" id="aiContactSafe_label_aics_message"><label for="aics_message"></label></span>&nbsp;
                           
                        </div>
                        <div class="aiContactSafe_contact_form_field_right {{ FormMessage::get_class('message') }}">
                            <input id="aiContactSafeSendButton" type="submit" value="Shoot">
                       </div>
                   </div>
        </div>
    </div>


    </div>
    </div>
    <div class="uk-width-large-5-10 uk-width-small-1-1">
        <div class="top-banner uk-cover-background uk-position-relative" style="height: 420px; background-image: url('/themes/default/img/our-story.jpg');">
            <img class="uk-invisible" src="/themes/default/img/our-story.jpg" alt="">
            <div class="uk-position-cover uk-flex uk-flex-center uk-flex-middle inner">

            </div>
        </div>
    </div>
    </div>
    </div>
    </div>
    </div>
</form>
</section>
</div>
</div>
<script type="text/javascript">

    $( "#team" ).submit(function( event ) {
        $.ajax({
            url: '/team-save',
            data: $('#team').serialize(),
            type: 'POST',
            success: function (msg) {
                cms_alert('success', 'The team has been successfully saved.');
            },
            error: function () {
                cms_alert('danger', 'Error Occured');
            }
        });
        event.preventDefault();
    });
    
</script>



{!! PageBuilder::section('footer') !!}
