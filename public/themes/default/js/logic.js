  //console.log = function() {};

THREE.Cache.enabled = true;
var loader = new THREE.FileLoader();
var player = new APP.Player();
var counter=0;
var colo1,color2;
var showColor,showColor2;
        var count=0;
        var football={
            layer1color:'not selected any color for layer 1',
            layer2color:'not selected any color for layer 2',
            logo1:'no logo uploaded',
            logo2:'no logo uploaded',
            screenshot1:'',
            screenshot2:'',
            email:'',
            name:'',
            team:'',
            order:'',
            design:''
        };
        var logo1,logo2;
        var text1,text2;
        
        
            
              


                var image = document.getElementById('image');
                var cropBoxData;
                var canvasData;
                var cropper;
                var cropImgData;
                var pallet=[1205,
                1215,
                120,
                100,
                115,
                1225,
                110,
                105,
                1625,
                1635,
                1645,
                165,
                1655,
                1665,
                1675,
                1685,
                182,
                183,
                184,
                185,
                186,
                187,
                188,
                1817,
                236,
                237,
                2375,
                238,
                2385,
                247,
                248,
                249,
                270,
                2705,
                2715,
                2655,
                265,
                2665,
                2685,
                2695,
                290,
                2905,
                2915,
                2925,
                2935,
                2945,
                295,
                2955,
                3105,
                310,
                305,
                3115,
                3125,
                3135,
                3145,
                3035,

                345,
                3395,
                3405,
                340,
                3415,
                3425,
                3435,
                350,
                4685,

                726,
                719,
                4675,
                4665,
                4655,
                4645,
                4635,


                649,
                441,
                442,
                443,
                444,
                445,
                446,
                '433 2X'];

                var pallet2=[
                [107,'f9e526'],
                [108,'f7dd16'],
                [109,'f9d616'],
                [123,'ffc61e'],
                [124,'e0aa0f'],
                [125,'b58c0a'],
                [1375,'f99b0c'],
                [21,'ef6b00'],
                [1585,'f96b07'],
                [1665,'f95602'],
                [172,'f74902'],
                ['Warm Red','f93f26'],
                [32,'ef2b2d'],
                [186,'ce1126'],
                [485,'d81e05'],
                [193,'bf0a30'],
                [1955,'931638'],
                [1905,'fc9bb2'],
                [1915,'f4547c'],
                [191,'f4476b'],
                [198,'e5566d'], 
                [207,'af003d'], 
                [208,'8e2344'], 
                [209,'8e2344'],
                [253,'af23a5'],

                [2592,'930fa5'],
                [2597,'66008c'],
                [255,'772d6b'],
                [292,'75b2dd'],
                [2925,'008ed6'],
                [285,'3a75c4'],
                [293,'0051ba'],
                [286,'0038a8'],
                [288,'00337f'],
                [295,'00386b'],
                ['Reflex','0c1c8c'],
                [282,'002654'],
                [3395,'00c993'],
                [361,'1eb53a'],
                [356,'007a3d'],
                [343,'024930'],
                [877,'d6d6d8'],
                ['black','000000']



                ];


          
                console.log('asd');
  blast();
                blast();
                 genPallet(pallet);
        $('#logo1').on('change',function(){
                    //$('#logoModal').modal('hide');
                    if(counter!=0){
                        var ext = $('#logo1').val().split('.').pop().toLowerCase();
                        if($.inArray(ext, ['png','jpg','jpeg']) == -1) {
                            alert('invalid extension!');
                        }else{

                            $('.textSelect').hide();
                            readURL(this,1);
                            //onCropClick(1);
                            //document.getElementById('crop').onclick = function(){ onCropClick(1); } ;
                        }

                        
                    }else{
                        alert('please select a football first');
                    }

                });

                $('#logo2').on('change',function(){
                    //$('#logoModal').modal('hide');
                    if(counter!=0){
                        var ext = $('#logo2').val().split('.').pop().toLowerCase();
                        if($.inArray(ext, ['png','jpg','jpeg']) == -1) {
                             alert('invalid extension!');
                        }else{
                            $('.textSelect').hide();
                            readURL(this,2);
                            //onCropClick(2);
                            //document.getElementById('crop').onclick = function(){ onCropClick(2); } ;

                        }
                        
                    }else{
                        alert('please select a football first');
                    }

                });


$('#reset').on('click',function(){

    if(counter!=0){
        var r = confirm("Confirm resetting the design ?");
        if (r == true) {
            player.resetBall();
            logo1=undefined;
            logo2=undefined;
            text1=undefined;
            text2=undefined;
            $('.logoSelect').show();
            $('.textSelect').show();
        } 

    }else{
        alert('no football is selected to reset');
    }



});

$('.colorContainer span').on('click',function(){
                    if(counter!=0){
                        var temp=getPantoneColor("p" + $(this).attr('value'));
                        football.layer1color="p" + $(this).attr('value');
                        player.setColor1(temp.split(',')[0],temp.split(',')[1],temp.split(',')[2]);
                        $('#colorPicker').modal('hide');
                    }else{
                        alert('please select a football first');
                    }
                //alert($(this).attr('value'));
            });

                $('.colorContainer2 span').on('click',function(){
                    if(counter!=0){
                        var temp=getPantoneColor("p" + $(this).attr('value'));
                        football.layer2color="p" + $(this).attr('value');
                        player.setColor2(temp.split(',')[0],temp.split(',')[1],temp.split(',')[2]);
                        $('#colorPicker2').modal('hide');
                    }else{
                        alert('please select a football first');
                    }

                //alert($(this).attr('value'));
            });

                

                function onCropClick(v){
                    console.log(cropper['getCroppedCanvas'](cropImgData.option, cropImgData.secondOption));
                    var c=cropper['getCroppedCanvas'](cropImgData.option, cropImgData.secondOption).toDataURL('image/png');
                   
                    
                    
                    //$('#modal').modal('hide');
                    if(v==1){
                        football.logo1=c;
                        logo1=c;
                        player.setLogo1(c);
                    }else if(v==2){
                        football.logo2=c;
                        logo2=c;
                        player.setLogo2(c);
                    }

                    $('.textSelect').hide();
                }

            //  $('#crop').on('click',function(){


            //  //alert.log(cropper.getCroppedCanvas());
            //  console.log(cropper['getCroppedCanvas'](cropImgData.option, cropImgData.secondOption));
            //  var c=cropper['getCroppedCanvas'](cropImgData.option, cropImgData.secondOption).toDataURL('image/png');
            //  football.logo=c;
            //  player.setLogo(c);
            //  $('#modal').modal('hide');

            // });








var getContrastYIQ, getPantoneColor, pantoneColor, pantoneColorTag, runnerAssociativeArray;

function getContrastYIQ($rgb) {
    var rgb, yiq;
    rgb = $rgb.split(',');
    yiq = ((rgb[0] * 299) + (rgb[1] * 587) + (rgb[2] * 114)) / 1000;
    if (yiq >= 128) {
        return "black";
    } else {
        return "white";
    }
}
 function getPantoneColor(pantoneName) {
                //console.log(pantoneName);
                var b, g, r;
                r = Math.ceil(pantoneSwatches[pantoneName]['r'] * 255);
                g = Math.ceil(pantoneSwatches[pantoneName]['g'] * 255);
                b = Math.ceil(pantoneSwatches[pantoneName]['b'] * 255);
                return r + ',' + g + ',' + b;
            }
            function pantoneColor(numberPantone) {

                if (!numberPantone.id) {
                    return numberPantone.text;
                }

                return $('<span class="pantone-color-block" style="background-color: rgb(' + getPantoneColor("p" + numberPantone.id) + ');">&nbsp;</span><span class="pantone-color-name">' + numberPantone.text + '</span>');
            }
            function pantoneColorTag(numberPantone) {
                var $color;
                if (!numberPantone.id) {
                    return numberPantone.text;
                }
                $color = getPantoneColor("p" + numberPantone.id);

                return $('<span class="pantone-color-block" style="background-color: rgb(' + $color + ');">&nbsp;</span><span class="pantone-color-name" style="color: ' + getContrastYIQ($color) + '">' + numberPantone.text + '</span>');
            }
             function runnerAssociativeArray (array) {
                var key, results, size;
                size = 0;
                results = [];
                var count=0;
                var row=1;
                var canPrint=true;
                for (key in array) {
                    if (array.hasOwnProperty(key)) {

                        count++;

                        $('.colorContainer').append('<span value="' + array[key]['name'] + '" style="background-color: rgb(' + getPantoneColor("p" +  array[key]['name']) + ');width: 6vh;height: 6vh;display: block;"></span>');
                        $('.colorContainer2').append('<span value="' + array[key]['name'] + '" style="background-color: rgb(' + getPantoneColor("p" +  array[key]['name']) + ');width: 6vh;height: 6vh;display: block;"></span>');


                                //$('select').append('<option value="' + array[key]['name'] + '"> PMS ' + array[key]['name'] + '</option>');


                                results.push(size++);
                            } else {
                                results.push(void 0);
                            }
                        }
                        return results;
                    }
                //runnerAssociativeArray(pantoneSwatches);
                function genPallet(pallet){
                    for(a in pallet){
                        $('.colorContainer').append('<span class="colorblk" value="' + pallet[a] + '" style="background-color: rgb(' + getPantoneColor("p" +pallet[a])+ ');"></span>');
                        $('.colorContainer2').append('<span class="colorblk" value="' + pallet[a] + '" style="background-color: rgb(' + getPantoneColor("p" +pallet[a]) + ');"></span>');
                    }
                }
               
                



           







function addText(){
    player.addText();
}

function clear(){
    if(counter>0){
        player.stop();
        player.dispose();
        var football={
            layer1color:'not selected any color for layer 1',
            layer2color:'not selected any color for layer 2',
            logo1:'no logo uploaded',
            logo2:'no logo uploaded',
            screenshot1:'',
            screenshot2:'',
            email:'',
            name:'',
            team:'',
            order:'',
            design:''
        };
        console.log('s');
    }
}

var progress=function ( xhr ) {
    $('#lblStatus').show();
    var x=parseFloat((xhr.loaded / xhr.total * 100)).toFixed(2);
    $('#lblStatus').text('Loading football... '+x+ '% loaded');

};

var error=function ( xhr ) {
    console.error( 'An error happened' );
};

function applyLogos(){
    if(logo1!==undefined){
        player.setLogo1(logo1);
    }
    if(logo2!==undefined){
        player.setLogo2(logo2);
    }
}

function applyTexts(){
    if(text1!==undefined){
        player.applyText(0);
    }
    if(text2!==undefined){
        player.applyText(1);
    }
}

var sf=undefined;
function selectFB(){
        if(sf!=undefined){
            $('.'+sf).removeClass('selectedfb');
        }
        sf=football.design;
        $('.'+football.design).addClass('selectedfb');
    
}
function blast(){
    
    clear();
        //$('.canvas-holder div').empty();
        loader.load( '/themes/default/json/app.json', function ( text ) {
            $('#lblStatus').hide();
            counter++;
            player.load( JSON.parse( text ) );
            player.setSize( window.innerWidth, window.innerHeight );
            player.play();
            player.setColors();
            football.design='blast';
            $('.canvas-holder').append(player.dom);
            applyLogos();
            applyTexts();
            selectFB();

        },progress,error);
    }

    function prem(){

        clear();
        //$('.canvas-holder div').empty();
        loader.load( '/themes/default/json/prem.json', function ( text ) {
            $('#lblStatus').hide();
            counter++;
            player.load( JSON.parse( text ) );
            player.setSize( window.innerWidth, window.innerHeight );
            player.play();
            player.setColors();
            football.design='prem';
            $('.canvas-holder').append(player.dom);
            applyLogos();
            applyTexts();
            selectFB();
        } ,progress,error);
    }

    function flame(){
        //$('.canvas-holder div').empty();
        clear();
        loader.load( '/themes/default/json/flame.json', function ( text ) {
            $('#lblStatus').hide();
            counter++;
            player.load( JSON.parse( text ) );
            player.setSize( window.innerWidth, window.innerHeight );
            player.play();
            player.setColors();
            football.design='flame';
            $('.canvas-holder').append(player.dom);
            applyLogos();
            applyTexts();
            selectFB();
        },progress,error );
    }

    function swerve(){
        clear();
        //$('.canvas-holder div').empty();
        loader.load( '/themes/default/json/swerve.json', function ( text ) {
            $('#lblStatus').hide();
            counter++;
            player.load( JSON.parse( text ) );
            player.setSize( window.innerWidth, window.innerHeight );
            player.play();
            player.setColors();
            football.design='swerve';
            $('.canvas-holder').append(player.dom);
            applyLogos();
            applyTexts();
            selectFB();
        },progress,error );
    }

    function world(){
        clear();
        //$('.canvas-holder div').empty();
        loader.load( '/themes/default/json/world.json', function ( text ) {
            $('#lblStatus').hide();
            counter++;
            player.load( JSON.parse( text ) );
            player.setSize( window.innerWidth, window.innerHeight );
            player.play();
            player.setColors();
            football.design='world';
            $('.canvas-holder').append(player.dom);
            applyLogos();
            applyTexts();
            selectFB();
        } ,progress,error);
    }

    function premium(){
        clear();
        //$('.canvas-holder div').empty();
        loader.load( '/themes/default/json/premium.json', function ( text ) {
            $('#lblStatus').hide();
            counter++;
            player.load( JSON.parse( text ) );
            player.setSize( window.innerWidth, window.innerHeight );
            player.play();
            player.setColors();
            football.design='premium';
            $('.canvas-holder').append(player.dom);
            applyLogos();
            applyTexts();
            selectFB();
        } ,progress,error);
    }




    window.addEventListener( 'resize', function () {
        player.setSize( window.innerWidth, window.innerHeight );
    } );

    function readURL(input,v) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#image').attr('src', e.target.result);
                image = document.getElementById('image');
                //enableCropper();
                //$('#modal').modal('show');
                //var c=cropper['getCroppedCanvas'](cropImgData.option, cropImgData.secondOption).toDataURL('image/png');
                var res=reader.result;
                    football.logo=res;
                    
                    
                    //$('#modal').modal('hide');
                    if(v==1){
                        logo1=res;
                        player.setLogo1(res);
                    }else if(v==2){
                        logo2=res;
                        player.setLogo2(res);
                    }

                console.log('came');
                input.value = null;
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    function placeOrder() {
        player.takeSnapShot();
        console.log(football);
        $('#confirmModal').modal('show');
    }

    function showTextModal(){
        $('#textModal').modal('show');
    }

    function validateEmail(email) {
        var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(email);
    }
    
    var orderObject=[];

    function processOrder(){
        orderObject=[];
        var email=$('#emailAdd').val();
        var name=$('#name').val();
        var team=$('#team').val();
       
        if(name!='' && name.length>3){
            if(validateEmail(email)){

                $('#orderBody tr').each(function(){
                    orderObject.push({id:$(this).find('td:nth-child(1)').text(),size:$(this).find('td:nth-child(2)').attr('value'),quality:$(this).find('td:nth-child(3)').text(),quantity:$(this).find('td:nth-child(4)').text(),price:$(this).find('td:nth-child(5)').text().split('£')[1],itemId:$(this).find('td:nth-child(6)').text()});
                   
                });
                console.log(orderObject);

                if(orderObject.length>0){
                    football.email=email;
                    football.name=name;
                    football.team=team;
                    football.order=orderObject;
                    football._tocken = $('#order_tocken').val();

                    $.ajax({
                        url: "/process-order",
                        type: 'POST',
                        cache: false,
                        contentType: "application/x-www-form-urlencoded",
                        data: JSON.stringify(football),
                        success: function (msg) {
                            console.log(msg);
                            $('#confirmModal').modal('hide');
                            alert("Order successfully placed. A confirmation email is sent to given email address.");

                        },
                        error:function(msg){
                            console.log(msg);
                             $('#confirmModal').modal('hide');
                            alert("error occured. Try again later.");
                        }
                    });
                }else{
                   
                    alert('Please customize a football to continue');
                }
                
            }else{
               
                alert('Please enter email address to place the order');
            }

        }else{

            alert('Please enter your real name');
        }
        

    }

    showColor= function(){
        $('#colorPicker').modal('show');
    }

     showColor2= function(){
        $('#colorPicker2').modal('show');
    }

    function addText1(v){

        if(v===1){
            $('#addText1').modal('hide');
            var text=$('#text1').val();
            player.addText1(text);
        }else{
            //$('#textModal').modal('hide');
            $('#addText1').modal('show');
            
            
        }
        
    }

    function addText(v){
        var c = document.getElementById("textCanvas");
        var ctx2d = c.getContext("2d");
        if(v==0){
            document.getElementById("applyText").onclick = function (){
                if($('#text1').val()!=''){
                    $('#addText1').modal('hide');
                    text1=ctx2d.canvas.toDataURL('image/png');
                    player.applyText(0);
                    $('.logoSelect').hide();
                }
                
            };
        }else if(v==1){
            document.getElementById("applyText").onclick = function (){
                if($('#text1').val()!=''){
                    $('#addText1').modal('hide');
                    text2=ctx2d.canvas.toDataURL('image/png');
                    player.applyText(1);
                    $('.logoSelect').hide();
                }
            };
        }
        //$('#textModal').modal('hide');
        $('#addText1').modal('show');

    }

    function applyTextTextures(){

        player.applyText(0);
        player.applyText(1);

    }



    function addText2(v){

        if(v===1){
            $('#addText2').modal('hide');
            var text=$('#text2').val()+'\n'+$('#text4').val()+'\n'+$('#text6').val();
            player.addText2(text);
        }else{
            //$('#textModal').modal('hide');
            $('#addText2').modal('show');
            
            
        }
        
    }

    function showLogoModal(){
        $('#logoModal').modal('show');
    }

    function enableCropper(){
        cropper = new Cropper(image, {

            autoCrop: false,
            crop: function (data) {
                cropImgData=data;
            },
            ready: function () {
                cropper.setCropBoxData(cropBoxData).setCanvasData(canvasData);
            }
        });
    }

    function disableCropper(){
        cropBoxData = cropper.getCropBoxData();
        canvasData = cropper.getCanvasData();
        cropper.destroy();
    }

    makeOrderTable();
    var pricingTable=[];
    function makeOrderTable(){


                    $.each(productDetails, function( index, value ) {
                        $('#quality').append('<Option value="'+value.product_name+'">'+value.product_name+'</Option>');
                        
                    });



                    

                       

                         var number = document.getElementById('count');

                        // Listen for input event on numInput.
                        number.onkeydown = function(e) {
                            if(!((e.keyCode > 95 && e.keyCode < 106)
                              || (e.keyCode > 47 && e.keyCode < 58) 
                              || e.keyCode == 8)) {
                                return false;
                            }
                        }

                    
    }
    var orderCount=0;
    var total=0;

    function addItem(){
        var quality=$('#quality').val();
        var size=$('#size').val();
        var sizeLabel=$('#size option:selected').text();
        var count=$('#count').val();

        $.each(productDetails, function( index, value ) {
                       
                        if(value.product_name==quality){

                           for (var key in value) {
                            // skip loop if the property is from prototype
                            if (!value.hasOwnProperty(key)) continue;

                            var obj = value[key];
                            for (var prop in obj) {
                                // skip loop if the property is from prototype
                                if(!obj.hasOwnProperty(prop)) continue;

                                if(key.includes('price')){
                                    var t=key.split('_price')[0];
                                   
                                    if(parseInt(t.split('_')[0].trim())<=parseInt(count) && parseInt(t.split('_')[1].trim())>=parseInt(count)){
                                 
                                        var subtot=parseFloat(obj*count).toFixed(2);
                                        orderCount++;
                                        $('#orderBody').append('<tr><td colspan="1">'+orderCount+'</td><td colspan="2" value="'+size+'">'+sizeLabel+'</td><td colspan="3">'+quality+'</td><td colspan="1">'+count+'</td><td colspan="1">£'+subtot+'</td><td style="display:none">'+value.id+'</td><td><span class="rm">X</span></td></tr>');
                                        total+=parseFloat(subtot);
                                        total=parseFloat(total);
                                        $('#total').text('£'+total.toFixed(2));
                                        break;
                                    }
                                    // your code
                               
                                }
                                
                            }
                        } 
                        }
                        
                    });
    }


    $('#orderBody').on('click','.rm',function(){
       
        orderCount--;
        total-=parseFloat( $(this).parent().parent().find('td:nth-child(5)').text().split('£')[1]);
         $('#total').text('£'+total.toFixed(2));
        $(this).parent().parent().remove();
    });
    