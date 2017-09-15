/**
* @author mrdoob / http://mrdoob.com/
*/

var APP = {

	Player: function () {

		var loader = new THREE.ObjectLoader();
		var camera, scene, renderer,raycaster;

		var controls, effect, cameraVR, isVR;
		var mouse = new THREE.Vector2(), INTERSECTED;
		var events = {};
		var c1,c2;
		this.dom = document.createElement( 'div' );

		this.width = 500;
		this.height = 500;
		renderer = new THREE.WebGLRenderer( { antialias: true  } );
		renderer.setClearColor( 0xcacaca );
		renderer.setPixelRatio( window.devicePixelRatio );
		// if ( json.project.gammaInput ) renderer.gammaInput = true;
		// if ( json.project.gammaOutput ) renderer.gammaOutput = true;
		//
		// if ( json.project.shadows ) {
		//
		// 	renderer.shadowMap.enabled = false;
		// 	// renderer.shadowMap.type = THREE.PCFSoftShadowMap;
		//
		// }

		
		this.load = function ( json ) {

			this.dom.appendChild( renderer.domElement);
			isVR = json.project.vr;
			//raycaster = new THREE.Raycaster();
			this.setScene( loader.parse( json.scene ) );
			this.setCamera( loader.parse( json.camera ) );
			var directionalLight = new THREE.DirectionalLight(/*Math.random() * 0xffffff*/0xffffff );
			directionalLight.intensity = 0.5;
			directionalLight.castShadow = false;
			directionalLight.position.set( 1, 10.75, 1 );
			scene.add( directionalLight );

			var directionalLight2 = new THREE.DirectionalLight(/*Math.random() * 0xffffff*/0xffffff );
			directionalLight2.intensity = 0.5;
			directionalLight2.castShadow = false;
			directionalLight2.position.set( 1, -10.75, 1 );
			scene.add( directionalLight2 );

			var hemiLight = new THREE.HemisphereLight( 0xffffff, 0xffffff, 0.6 );
			hemiLight.castShadow = false;
			hemiLight.color.setHSL(359, 100, 100 );
			hemiLight.groundColor.setHSL(359, 100, 100 );
			hemiLight.position.set( 0, 500, 0 );
			scene.add( hemiLight );
			events = {
				init: [],
				start: [],
				stop: [],
				keydown: [],
				keyup: [],
				mousedown: [],
				mouseup: [],
				mousemove: [],
				touchstart: [],
				touchend: [],
				touchmove: [],
				update: []
			};

			var scriptWrapParams = 'player,renderer,scene,camera';
			var scriptWrapResultObj = {};

			for ( var eventKey in events ) {

				scriptWrapParams += ',' + eventKey;
				scriptWrapResultObj[ eventKey ] = eventKey;

			}

			var scriptWrapResult = JSON.stringify( scriptWrapResultObj ).replace( /\"/g, '' );

			for ( var uuid in json.scripts ) {

				var object = scene.getObjectByProperty( 'uuid', uuid, true );

				if ( object === undefined ) {

					console.warn( 'APP.Player: Script without object.', uuid );
					continue;

				}

				var scripts = json.scripts[ uuid ];

				for ( var i = 0; i < scripts.length; i ++ ) {

					var script = scripts[ i ];

					var functions = ( new Function( scriptWrapParams, script.source + '\nreturn ' + scriptWrapResult + ';' ).bind( object ) )( this, renderer, scene, camera );

					for ( var name in functions ) {

						if ( functions[ name ] === undefined ) continue;

						if ( events[ name ] === undefined ) {

							console.warn( 'APP.Player: Event type not supported (', name, ')' );
							continue;

						}

						events[ name ].push( functions[ name ].bind( object ) );

					}

				}

			}

			dispatch( events.init, arguments );
			

		};



		this.setCamera = function ( value ) {

			camera = value;
			camera.aspect = this.width / this.height;
			camera.updateProjectionMatrix(true);


			controls = new THREE.TrackballControls( camera , renderer.domElement);
			controls.rotateSpeed = 1.0;
			controls.zoomSpeed = 1.2;
			//controls.panSpeed = 0.8;

			controls.enableZoom  = true;
			controls.enablePan  = false;

			controls.staticMoving  = false;
			controls.dampingFactor  = 0.5;
			controls.maxDistance= 8;
			controls.minDistance= 3;

			controls.keys = [ 65, 83, 68 ];

			//controls.addEventListener( 'change', renderer );



		};

		this.setScene = function ( value ) {

			scene = value;

		};

		this.setSize = function ( width, height ) {

			this.width = width;
			this.height = height;

			if ( camera ) {

				camera.aspect = this.width / this.height;
				camera.updateProjectionMatrix();

			}

			if ( renderer ) {

				renderer.setSize( width, height );

			}

		};

		function dispatch( array, event ) {

			for ( var i = 0, l = array.length; i < l; i ++ ) {

				array[ i ]( event );

			}

		}

		var prevTime, request;

		function animate( time ) {

			request = requestAnimationFrame( animate );

			try {

				dispatch( events.update, { time: time, delta: time - prevTime } );

			} catch ( e ) {

				console.error( ( e.message || e ), ( e.stack || "" ) );

			}



			renderer.render( scene, camera );
			controls.update();


			prevTime = time;

		}

		this.play = function () {

			document.addEventListener( 'keydown', onDocumentKeyDown );
			document.addEventListener( 'keyup', onDocumentKeyUp );
			document.addEventListener( 'mousedown', onDocumentMouseDown );
			document.addEventListener( 'mouseup', onDocumentMouseUp );
			document.addEventListener( 'mousemove', onDocumentMouseMove );
			document.addEventListener( 'touchstart', onDocumentTouchStart );
			document.addEventListener( 'touchend', onDocumentTouchEnd );
			document.addEventListener( 'touchmove', onDocumentTouchMove );

			dispatch( events.start, arguments );

			request = requestAnimationFrame( animate );
				

		};

		this.stop = function () {

			document.removeEventListener( 'keydown', onDocumentKeyDown );
			document.removeEventListener( 'keyup', onDocumentKeyUp );
			document.removeEventListener( 'mousedown', onDocumentMouseDown );
			document.removeEventListener( 'mouseup', onDocumentMouseUp );
			document.removeEventListener( 'mousemove', onDocumentMouseMove );
			document.removeEventListener( 'touchstart', onDocumentTouchStart );
			document.removeEventListener( 'touchend', onDocumentTouchEnd );
			document.removeEventListener( 'touchmove', onDocumentTouchMove );

			dispatch( events.stop, arguments );

			cancelAnimationFrame( request );

		};

		this.dispose = function () {

			while ( this.dom.children.length ) {
			
				this.dom.removeChild( this.dom.firstChild );
			
			}

			renderer.dispose();

			//camera = undefined;
			//scene = undefined;
			//renderer = undefined;

		};

		this.setColor1 = function (r,g,b) {

			scene.traverse( function ( child ) {

				if ( child.material && child.material.name === 'layer1' ) {
					console.log(r+" "+g+" "+ b);
					r=r/225;
					g=g/225;
					b=b/225;
					child.material.color.setRGB(r,g,b );
					c1=child.material.color;
					if(child.name=="premium")
						child.material.alphaMap=child.material.map;

			        //child.material.color.setHex( Math.random() * 0xffffff );

			    }

			} );

		};

		this.setColors=function(){


			scene.traverse( function ( child ) {
				if(c1!=null ){
					if ( child.material && child.material.name === 'layer1' ) {
						child.material.color=c1;
						if(child.name=="premium")
							child.material.alphaMap=child.material.map;

			        //child.material.color.setHex( Math.random() * 0xffffff );

			    }
			}
			if(c2!=null ){
				if ( child.material && child.material.name === 'layer2' ) {
					child.material.color=c2;
					if(child.name=="premium")
						child.material.alphaMap=child.material.map;

			        //child.material.color.setHex( Math.random() * 0xffffff );

			    }
			}

		} );
		};

		this.setColor2 = function (r,g,b) {

			scene.traverse( function ( child ) {

				if ( child.material && child.material.name === 'layer2' ) {
					console.log(r+" "+g+" "+ b);
					r=r/225;
					g=g/225;
					b=b/225;
					child.material.color.setRGB(r,g,b );
					c2=child.material.color;
					if(child.name=="premium")
						child.material.alphaMap=child.material.map;

			        //child.material.color.setHex( Math.random() * 0xffffff );

			    }

			} );

		};

		this.setLogo1 = function (img) {

			scene.traverse( function ( child ) {

				if ( child.material && child.material.name === 'logo' ) {
					//child.scale.set(.5,.5,.5);
					new THREE.TextureLoader().load( img,function ( texture ) {

							//texture.wrapS = THREE.RepeatWrapping;
							//texture.wrapT = THREE.RepeatWrapping;
							console.log(texture);
							if(football.design=="blast"){
								child.position.x= 0.02;
								child.position.y= 0.93;
								child.position.z= -0.37;
								
							}

								child.scale.x= 0.55;
								child.scale.y= 0.55;
								child.scale.z= 0.55;

							if(football.design=="premium"){
								child.scale.x= 0.50;
								child.scale.y= 0.50;
								child.scale.z= 0.50;

							}





							child.material.map=texture;

							child.material.opacity=1;
							child.material.transparent=true;

							child.material.needsUpdate = true;


						} );

//Territorio.material.map=new THREE.ImageUtils.loadTexture( data_image_1 );
							//child.material.color.setHex( Math.random() * 0xffffff );

						}

					} );
			player.centerBall();

		};

		this.setLogo2 = function (img) {

			scene.traverse( function ( child ) {

				if ( child.material && child.material.name === 'logo2' ) {
					//child.scale.set(.5,.5,.5);
					new THREE.TextureLoader().load( img,function ( texture ) {

							//texture.wrapS = THREE.RepeatWrapping;
							//texture.wrapT = THREE.RepeatWrapping;
							console.log(texture);
							if(football.design=="blast"){
								child.position.x= 0.56;
								child.position.y= -0.57;
								child.position.z= -0.60;
								
							}
								child.scale.x= 0.55;
								child.scale.y= 0.55;
								child.scale.z= 0.55;

							if(football.design=="premium"){
								child.scale.x= 0.50;
								child.scale.y= 0.50;
								child.scale.z= 0.50;

							}

							child.material.map=texture;

							child.material.opacity=1;
							child.material.transparent=true;

							child.material.needsUpdate = true;


						} );

//Territorio.material.map=new THREE.ImageUtils.loadTexture( data_image_1 );
							//child.material.color.setHex( Math.random() * 0xffffff );

						}

					} );
			player.centerBall();
		};

		this.centerBall=function(){
			

controls.reset();

			







				
			if(football.design=="blast"){
			    //camera.rotation.set(-2.0038604161917553,0.023683759685614626, -3.1380977409224737);
				camera.position.set(0.12483256292949609,4.783334903415469, -2.2115022877888304);
				
			}
			 if(football.design=="flame"){
				camera.up.set(0.3986248377794287,-2.3663579568170547,  -0.6243667537909988);
				camera.position.set(2.91565087418718,2.708466685437841, 2.8673651184034483);
			}
			if(football.design=="prem"){
				camera.up.set(-0.040519292486137275,0.9959332784546746,0.08046795513051);
				camera.position.set(-2.824314173774465,3.2834502349767023,-3.002539920664631);
			}

			if(football.design=="swerve"){
				camera.up.set(1.895262691218129,-0.6896621397052134,0.8889037764551181);
				camera.position.set(0.010163370647395148,-5.771314031758157,-2.257540771002774);
			}

			if(football.design=="world"){

				camera.up.set(1.4340734194361286,-2.1842516914682677,-0.08682895813799874);
				camera.position.set(3.011895020339136,3.000488298230456,-3.15729880578785);
			}

			if(football.design=="premium"){
				camera.up.set(-1.8198769906117025,-1.432384235052962,-0.0376989100577953);
				camera.position.set(2.7943953636510024,-4.465378214422477,-0.11675991789616331);
			}




controls.object.updateProjectionMatrix();
			  
			controls.update();
			
		};

		this.addText2=function(text){
			var t=text;
			var c = document.getElementById("textCanvas");
			var ctx = c.getContext("2d");
			ctx.canvas.width=512;
			ctx.canvas.height=512;

			ctx.font = "70px Georgia";
			ctx.fillText(t, (512- ctx.measureText(t).width)/2, 256);
			ctx.textBaseline = 'middle';
			ctx.textAlign = "center";
			console.log( ctx.canvas.width);

			scene.traverse( function ( child ) {

				if ( child.material && child.material.name === 'logo2' ) {
					//child.scale.set(.5,.5,.5);
					new THREE.TextureLoader().load( ctx.canvas.toDataURL('image/png'),function ( texture ) {

							//texture.wrapS = THREE.RepeatWrapping;
							//texture.wrapT = THREE.RepeatWrapping;
							console.log(texture);
							if(football.design=="blast"){
								child.position.x= 0.56;
								child.position.y= -0.57;
								child.position.z= -0.60;
								child.scale.x= 0.90;
								child.scale.y= 0.90;
								child.scale.z= 0.90;
							}


							child.material.map=texture;

							child.material.opacity=1;
							child.material.transparent=true;

							child.material.needsUpdate = true;


						} );


						}

					} );


		};

		this.addText1=function(text,fz,lh){
			var c = document.getElementById("textCanvas");
			var ctx = c.getContext("2d");
			ctx.canvas.width=256;
			ctx.canvas.height=256;
			
			this.generateText(c, 0, 0, 256, 256, text, lh,fz);
			
		};

		this.applyText=function(v){
			//var c = document.getElementById("textCanvas");
			//var ctx2d = c.getContext("2d");
			scene.traverse( function ( child ) {

				if(v==0){
					if ( child.material && child.material.name === 'logo' ) {
					//child.scale.set(.5,.5,.5);
					
					new THREE.TextureLoader().load( text1,function ( texture ) {

							//texture.wrapS = THREE.RepeatWrapping;
							//texture.wrapT = THREE.RepeatWrapping;
							console.log(texture);
							if(football.design=="blast"){
								child.position.x= 0.02;
								child.position.y= 0.93;
								child.position.z= -0.37;
								
							}

								child.scale.x= 0.55;
								child.scale.y= 0.55;
								child.scale.z= 0.55;
							child.material.map=texture;

							child.material.opacity=1;
							child.material.transparent=true;

							child.material.needsUpdate = true;


						} );

//Territorio.material.map=new THREE.ImageUtils.loadTexture( data_image_1 );
							//child.material.color.setHex( Math.random() * 0xffffff );

						}
					}else if(v==1){
					if ( child.material && child.material.name === 'logo2' ) {
					//child.scale.set(.5,.5,.5);
					
					new THREE.TextureLoader().load( text2,function ( texture ) {

							//texture.wrapS = THREE.RepeatWrapping;
							//texture.wrapT = THREE.RepeatWrapping;
							console.log(texture);
							if(football.design=="blast"){
								child.position.x= 0.56;
								child.position.y= -0.57;
								child.position.z= -0.60;
							
							}
								child.scale.x= 0.55;
								child.scale.y= 0.55;
								child.scale.z= 0.55;

							child.material.map=texture;

							child.material.opacity=1;
							child.material.transparent=true;

							child.material.needsUpdate = true;


						} );

//Territorio.material.map=new THREE.ImageUtils.loadTexture( data_image_1 );
							//child.material.color.setHex( Math.random() * 0xffffff );

						}
					}

				

					} );
player.centerBall();
		};

		this.generateText = function(canvas, x, y, w, h, text, spl,fz) {
	    // The painting properties 
	    // Normally I would write this as an input parameter
	    var Paint = {
	        RECTANGLE_STROKE_STYLE : 'black',
	        RECTANGLE_LINE_WIDTH : 0,
	        VALUE_FONT : fz+'px Arial',
	        VALUE_FILL_STYLE : 'red'
	    }
	    /*
	     * @param ctx   : The 2d context 
	     * @param mw    : The max width of the text accepted
	     * @param font  : The font used to draw the text
	     * @param text  : The text to be splitted   into 
	     */
	    var split_lines = function(ctx, mw, font, text) {
	        // We give a little "padding"
	        // This should probably be an input param
	        // but for the sake of simplicity we will keep it
	        // this way
	        mw = mw - 10;
	        // We setup the text font to the context (if not already)
	        ctx2d.font = font;
	        // We split the text by words 
	        var words = text.split(' ');
	        var new_line = words[0];
	        var lines = [];
	        for(var i = 1; i < words.length; ++i) {
	           if (ctx.measureText(new_line + " " + words[i]).width < mw) {
	               new_line += " " + words[i];
	           } else {
	               lines.push(new_line);
	               new_line = words[i];
	           }
	        }
	        lines.push(new_line);
	        // DEBUG 
	        // for(var j = 0; j < lines.length; ++j) {
	        //    console.log("line[" + j + "]=" + lines[j]);
	        // }
	        return lines;
	    }
	    // Obtains the context 2d of the canvas 
	    // It may return null
	    var ctx2d = canvas.getContext('2d');
	    if (ctx2d) {
	      
	     
	        // Paint text
	        var lines = split_lines(ctx2d, w, Paint.VALUE_FONT, text);
	        // Block of text height
	        var both = lines.length * (fz + spl);
	       
	            // We won't be able to wrap the text inside the area
	            // the area is too small. We should inform the user 
	            // about this in a meaningful way
	        
	            // We determine the y of the first line
	            var ly = (h - both)/2 + y + spl*lines.length;
	            var lx = 0;
	            for (var j = 0, ly; j < lines.length; ++j, ly+=fz+spl) {
	                // We continue to centralize the lines
	                lx = x+w/2-ctx2d.measureText(lines[j]).width/2;
	                // DEBUG 
	                console.log("ctx2d.fillText('"+ lines[j] +"', "+ lx +", " + ly + ")");
	               
	                ctx2d.fillText(lines[j], lx, ly);

	            }
	        
	    } else {
	    // Do something meaningful
	    }
	}


		this.resetBall = function () {
			scene.traverse( function ( child ) {

				if ( child.material && child.material.name === 'logo' ) {
					//child.scale.set(.5,.5,.5);
					child.material.map=null;
					child.material.opacity=0;
					child.material.transparent=true;
					child.material.needsUpdate = true;


				}

				if ( child.material && child.material.name === 'logo2' ) {
					//child.scale.set(.5,.5,.5);
					child.material.map=null;
					child.material.opacity=0;
					child.material.transparent=true;
					child.material.needsUpdate = true;


				}

				if ( child.material && (child.material.name === 'layer2' || child.material.name === 'layer1' ) ) {

					child.material.color.setHex(  0xffffff );


			        //child.material.color.setHex( Math.random() * 0xffffff );

			    }



			} );

		};

		this.takeSnapShot=function(){
			

			if(football.design=="blast"){
			    //camera.rotation.set(-2.0038604161917553,0.023683759685614626, -3.1380977409224737);
			    setTimeout(function(){
			    	controls.reset();
			    	camera.position.set(0.12483256292949609,4.783334903415469, -2.2115022877888304);
			    	player.takeShot(1);
			    },200);

			     setTimeout(function(){
			    	controls.reset();
			    	camera.position.set(3.0724559569893755,-3.114858135646388, -2.9867145333735676);
					camera.up.set(0.7148033589959035,-0.6369993873912404, -0.2885964976075268);
					player.takeShot(2);
			    },400);

			}
			 if(football.design=="flame"){
			 	 setTimeout(function(){
			    	controls.reset();
			    	camera.up.set(0.3986248377794287,-2.3663579568170547,  -0.6243667537909988);
					camera.position.set(2.91565087418718,2.708466685437841, 2.8673651184034483);
			    	player.takeShot(1);
			    },200);

			 	 setTimeout(function(){
			    	controls.reset();
			    	camera.up.set(2.1326697469487077,-0.7931045884628073,0.9854392150377493);
				    camera.position.set(-2.9991903903551624,-2.679981710555151, -2.807338519310011);
			    	player.takeShot(2);
			    },400);

			}
			if(football.design=="prem"){

				 setTimeout(function(){
			    	controls.reset();
			    	camera.up.set(-0.42951540205004135,0.8848057884239542,0.18065225205692934);
					camera.position.set(0.08530338004117863,2.665469970745831,4.545441138255291);
					player.takeShot(1);
			    },200);

				  setTimeout(function(){
			    	controls.reset();
			    	camera.up.set(0.43494812564444907,-0.8801988507796856,-0.18992132867179792);
					camera.position.set(-0.17319717585808403,-2.677592262602187,-4.535806916797149);
					player.takeShot(2);
			    },400);
			
			}

			if(football.design=="swerve"){
				 setTimeout(function(){
			    	controls.reset();
			    	camera.up.set(1.895262691218129,-0.6896621397052134,0.8889037764551181);
					camera.position.set(0.010163370647395148,-5.771314031758157,-2.257540771002774);
					player.takeShot(1);
			    },200);

				setTimeout(function(){
			    	controls.reset();
			    	camera.up.set(0.9980369891945703,-0.2906843463815986,1.9435095159093565);
					camera.position.set(-0.14363292081157636,5.871486323187808,1.9772903733865395);
					player.takeShot(2);
			    },400);

				


				
			}

			if(football.design=="world"){

				 setTimeout(function(){
			    	controls.reset();
			    	camera.up.set(1.4340734194361286,-2.1842516914682677,-0.08682895813799874);
					camera.position.set(3.011895020339136,3.000488298230456,-3.15729880578785);
					player.takeShot(1);
			    },200);

				 setTimeout(function(){
			    	controls.reset();
			    	camera.up.set(2.166936833022903,0.0360093994010502,-1.4622412170464625);
					camera.position.set(-2.954171390967827,-3.101852245344768,-3.11357695122922);
					player.takeShot(2);
			    },400);

				


				

			}

			if(football.design=="premium"){

				setTimeout(function(){
			    	controls.reset();
			    	camera.up.set(-1.8198769906117025,-1.432384235052962,-0.0376989100577953);
					camera.position.set(2.7943953636510024,-4.465378214422477,-0.11675991789616331);
					player.takeShot(1);
			    },200);

			    setTimeout(function(){
			    	controls.reset();
			    	camera.up.set(1.8629507885561196,1.3757059687466948,0.04410796502260109);
					camera.position.set(-2.6543189825750737,4.551414792556206,-0.03309153217171922);
					player.takeShot(2);
			    },400);

			}

			
   
};

this.takeShot=function(v){
			controls.object.updateProjectionMatrix();
			controls.update();
			renderer.render(scene, camera);
			if(v==1){
				football.screenshot1=renderer.domElement.toDataURL();
				$('#order-preview').attr('src',football.screenshot1);
			}else{
				football.screenshot2=renderer.domElement.toDataURL();
			}
    		
};

		//

		function onDocumentKeyDown( event ) {

			dispatch( events.keydown, event );

		}

		function onDocumentKeyUp( event ) {

			dispatch( events.keyup, event );

		}

		function onDocumentMouseDown( event ) {

			dispatch( events.mousedown, event );


						//event.preventDefault();

					// 	mouse.x = ( event.clientX / renderer.domElement.clientWidth ) * 2 - 1;
					// 	mouse.y = - ( event.clientY / renderer.domElement.clientHeight ) * 2 + 1;
					//
					// 	raycaster.setFromCamera( mouse, camera );
					// 		var ob=[];
					// 	ob.push(scene.getObjectByName( "logo1" ));
					// ob.push(scene.getObjectByName( "logo2" ));
					//
					//
					//
					// 	var intersects = raycaster.intersectObjects( ob );
					//
					// 	if ( intersects.length > 0 ) {
					// 		intersects[0].object.material.opacity=1;
					// 		intersects[ 0 ].object.material.color.setHex( Math.random() * 0xffffff );

	//intersects[ 0 ].object.skinning=false;
							//intersects[ 0 ].object.material.color.setHex( Math.random() * 0xffffff );



						//}

						/*
						// Parse all the faces
						for ( var i in intersects ) {

							intersects[ i ].face.material[ 0 ].color.setHex( Math.random() * 0xffffff | 0x80000000 );

						}
						*/

					}

					function onDocumentMouseUp( event ) {
						console.log(camera);
						dispatch( events.mouseup, event );

					}

					function onDocumentMouseMove( event ) {
						
						dispatch( events.mousemove, event );

					}

					function onDocumentTouchStart( event ) {

						dispatch( events.touchstart, event );
			//event.preventDefault();

		// 	mouse.x = ( event.clientX / renderer.domElement.clientWidth ) * 2 - 1;
		// 	mouse.y = - ( event.clientY / renderer.domElement.clientHeight ) * 2 + 1;
		//
		// 	raycaster.setFromCamera( mouse, camera );
		// 		var ob=[];
		// 	ob.push(scene.getObjectByName( "logo1" ));
		// ob.push(scene.getObjectByName( "logo2" ));
		//
		//
		//
		// 	var intersects = raycaster.intersectObjects( ob );
		//
		// 	if ( intersects.length > 0 ) {
		// 		intersects[0].object.material.opacity=1;
		// 		intersects[ 0 ].object.material.color.setHex( Math.random() * 0xffffff );

		//intersects[ 0 ].object.skinning=false;
				//intersects[ 0 ].object.material.color.setHex( Math.random() * 0xffffff );



		//	}
	}

	function onDocumentTouchEnd( event ) {

		dispatch( events.touchend, event );

	}

	function onDocumentTouchMove( event ) {

		dispatch( events.touchmove, event );

	}

}

};
