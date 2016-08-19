var express         =         require("express");
var mysql           =         require("mysql");
var app             =         express();

/*
  * Configure MySQL parameters.
*/

var bodyParser = require('body-parser');
app.use(bodyParser.json()); // support json encoded bodies
app.use(bodyParser.urlencoded({ extended: true })); // support encoded bodies

var connection      =         mysql.createConnection({
        host        :         "localhost",
        user        :         "root",
        password    :         "",
        database     :         "phonecatapp"
});

connection.connect(function(error){
  if(error)
    {
      console.log("Problem with MySQL"+error);
    }
  else
    {
      console.log("Connected with Database");
    }
});

/*
  * Configure Express Server.
*/
app.use(express.static(__dirname + '/app'));
app.use(express.static(__dirname + '/js'));
app.use(express.static(__dirname + '/css'));
app.use(express.static(__dirname + '/partials'));
app.use(express.static(__dirname + '/img'));
/*
  * Define routing of the application.
*/
app.get('/',function(req,res){
  res.sendfile('index.html');
});

//DISPLAY PHONE LIST 
app.get('/phonelist',function(req,res){
  connection.query("SELECT * from phones",function(error,rows,fields){
    if(error)
      {
        console.log("Problem with MySQL"+error);
      }
      else
        {
          res.end(JSON.stringify(rows));
        }
  });
});

//DISPLAY PHONE DETAILS
app.get('/phonedetail/:id', function(req, res){
 var id = req.params.id;
  connection.query("SELECT p.phoneId, p.age, p.carrier, p.id, p.imageUrl, p.name, p.snippet, p.additionalFeatures, p.description, " +
		"android.os, android.ui, " +
		"availability.availability, " +
		"battery.standbyTime, battery.talkTime, battery.type, " +
		"camera.features, camera.primary, " +
		"connectivity.bluetooth, connectivity.cell, connectivity.gps, connectivity.infrared, connectivity.wifi, " +
		"display.screenResolution, display.screenSize, display.touchScreen, " +
		"hardware.accelerometer, hardware.audioJack, hardware.cpu, hardware.fmRadio, hardware.physicalKeyboard, hardware.usb, " +
		"images.images, " +
		"sizeAndWeight.dimensions, sizeAndWeight.weight, " +
		"storage.flash, storage.ram " +	
		"FROM phones AS p INNER JOIN android ON android.phoneId = p.phoneId " +
		"INNER JOIN availability ON availability.phoneId = p.phoneId " +
		"INNER JOIN battery ON battery.phoneId = p.phoneId " +
		"INNER JOIN camera ON camera.phoneId = p.phoneId " +
		"INNER JOIN connectivity ON connectivity.phoneId = p.phoneId " +
		"INNER JOIN display ON display.phoneId = p.phoneId " +
		"INNER JOIN hardware ON hardware.phoneId = p.phoneId " +
		"INNER JOIN images ON images.phoneId = p.phoneId " +
		"INNER JOIN sizeAndWeight ON sizeAndWeight.phoneId = p.phoneId " +
		"INNER JOIN storage ON storage.phoneId = p.phoneId " +
		"WHERE p.id= '"+id+"'", function(error,rows,fields){
	//	"WHERE p.id= 'dell-streak-7'", function(error,rows,fields){
    if(error)
      {
        console.log("Problem with MySQL"+error);
      }
      else
        {
          res.end(JSON.stringify(rows));
        }
  });
});

//DISPLAY PHONE DETAILS TO TABLE
app.get('/phoneboard', function(req, res){
 //var id = req.params.id;
  connection.query("SELECT p.phoneId, p.age, p.carrier, p.id, p.imageUrl, p.name, p.snippet, p.additionalFeatures, p.description, " +
		"android.os, android.ui, " +
		"availability.availability, " +
		"battery.standbyTime, battery.talkTime, battery.type, " +
		"camera.features, camera.primary, " +
		"connectivity.bluetooth, connectivity.cell, connectivity.gps, connectivity.infrared, connectivity.wifi, " +
		"display.screenResolution, display.screenSize, display.touchScreen, " +
		"hardware.accelerometer, hardware.audioJack, hardware.cpu, hardware.fmRadio, hardware.physicalKeyboard, hardware.usb, " +
		"images.images, " +
		"sizeAndWeight.dimensions, sizeAndWeight.weight, " +
		"storage.flash, storage.ram " +	
		"FROM phones AS p INNER JOIN android ON android.phoneId = p.phoneId " +
		"INNER JOIN availability ON availability.phoneId = p.phoneId " +
		"INNER JOIN battery ON battery.phoneId = p.phoneId " +
		"INNER JOIN camera ON camera.phoneId = p.phoneId " +
		"INNER JOIN connectivity ON connectivity.phoneId = p.phoneId " +
		"INNER JOIN display ON display.phoneId = p.phoneId " +
		"INNER JOIN hardware ON hardware.phoneId = p.phoneId " +
		"INNER JOIN images ON images.phoneId = p.phoneId " +
		"INNER JOIN sizeAndWeight ON sizeAndWeight.phoneId = p.phoneId " +
		"INNER JOIN storage ON storage.phoneId = p.phoneId", function(error,rows,fields){
	//	"INNER JOIN storage ON storage.phoneId = p.phoneId " +
	//	"WHERE p.id= '"+id+"'", function(error,rows,fields){
	//	"WHERE p.id= 'dell-streak-7'", function(error,rows,fields){
    if(error)
      {
        console.log("Problem with MySQL"+error);
      }
      else
        {
          res.end(JSON.stringify(rows));
        }
  });
});

app.get('/updatePhone/:id', function(req, res){
 var id = req.params.id;
  connection.query("SELECT p.phoneId, p.age, p.carrier, p.id, p.imageUrl, p.name, p.snippet, p.additionalFeatures, p.description, " +
		"android.os, android.ui, " +
		"availability.availability, " +
		"battery.standbyTime, battery.talkTime, battery.type, " +
		"camera.features, camera.primary, " +
		"connectivity.bluetooth, connectivity.cell, connectivity.gps, connectivity.infrared, connectivity.wifi, " +
		"display.screenResolution, display.screenSize, display.touchScreen, " +
		"hardware.accelerometer, hardware.audioJack, hardware.cpu, hardware.fmRadio, hardware.physicalKeyboard, hardware.usb, " +
		"images.images, " +
		"sizeAndWeight.dimensions, sizeAndWeight.weight, " +
		"storage.flash, storage.ram " +	
		"FROM phones AS p INNER JOIN android ON android.phoneId = p.phoneId " +
		"INNER JOIN availability ON availability.phoneId = p.phoneId " +
		"INNER JOIN battery ON battery.phoneId = p.phoneId " +
		"INNER JOIN camera ON camera.phoneId = p.phoneId " +
		"INNER JOIN connectivity ON connectivity.phoneId = p.phoneId " +
		"INNER JOIN display ON display.phoneId = p.phoneId " +
		"INNER JOIN hardware ON hardware.phoneId = p.phoneId " +
		"INNER JOIN images ON images.phoneId = p.phoneId " +
		"INNER JOIN sizeAndWeight ON sizeAndWeight.phoneId = p.phoneId " +
		"INNER JOIN storage ON storage.phoneId = p.phoneId " +
		"WHERE p.id= '"+id+"'", function(error,rows,fields){
	//	"WHERE p.id= 'dell-streak-7'", function(error,rows,fields){
    if(error)
      {
        console.log("Problem with MySQL"+error);
      }
      else
        {
          res.end(JSON.stringify(rows));
        }
  });
});

app.post('/postUpdate', function(req, res){


//UPDATING PHONES TABLE
  var phoneId = req.body.phoneId;
  var age = req.body.age;
  var carrier = req.body.carrier;
  var id = req.body.id;
  var imageUrl = req.body.imageUrl;
  var name = req.body.name;
  var snippet = req.body.snippet;
  var description = req.body.description;
  var addFeatures = req.body.additionalFeatures;
  
  connection.query("UPDATE phones SET age='" + age+"', carrier='" +carrier+
	  "', id='"+id+
	  "', imageUrl='" +imageUrl+
	  "', name='" +name+
	  "', snippet='" +snippet+
	  "', description='" +description+
	  "', additionalFeatures='" +addFeatures+
	  "'WHERE phoneId='"+phoneId +"'" , function(error,rows,fields){
	
    if(error)
      {
        console.log("Problem with MySQL"+error);
      }
      else
        {
          console.log("Phones Table Updated!");
        }
  });
  

  //UPDATING AVAILABILITY TABLE  
  var availability = req.body.availability;
  
   connection.query("UPDATE availability SET availability='" + availability+
		"'WHERE phoneId='"+phoneId +"'" , function(error,rows,fields){
	
    if(error)
      {
        console.log("Problem with MySQL"+error);
      }
      else
        {
          console.log("Availability Table Updated!");
        }
  });
  
  //UPDATING BATTERY TABLE
  var type = req.body.type;
  var standbyTime = req.body.standbyTime;
  var talkTime = req.body.talkTime;
  
    connection.query("UPDATE battery SET type='" + type+"', standbyTime='" +standbyTime+
	  "', talkTime='"+talkTime+
	  "'WHERE phoneId='"+phoneId +"'" , function(error,rows,fields){
	
    if(error)
      {
        console.log("Problem with MySQL"+error);
      }
      else
        {
          console.log("Battery Table Updated!");
        }
  });
  
  //UPDATING CAMERA TABLE
  var primary = req.body.primary;
  var features = req.body.features;
 // var talkTime = req.body.talkTime;
  
    connection.query("UPDATE `camera` SET `primary`='" + primary+"', `features`='" +features+
	
	  "'WHERE phoneId='"+phoneId +"'" , function(error,rows,fields){
	
    if(error)
      {
        console.log("Problem with MySQL"+error);
      }
      else
        {
          console.log("Camera Table Updated!");
        }
  });
  
  
  //UPDATING ANDROID TABLE
  var os = req.body.os;
  var ui = req.body.ui;
  
  connection.query("UPDATE android SET os='" + os+"', ui='" +ui+
	  "'WHERE phoneId='"+phoneId +"'" , function(error,rows,fields){
	
    if(error)
      {
        console.log("Problem with MySQL"+error);
      }
      else
        {
          console.log("Android Table Updated!");
        }
  });
   
  
  //UPDATING CONNECTIVITY TABLE
  var bluetooth = req.body.bluetooth;
  var cell = req.body.cell;
  var gps = req.body.gps;
  var infrared = req.body.infrared;
  var wifi = req.body.wifi;
  
  connection.query("UPDATE connectivity SET bluetooth='" + bluetooth+
	  "', cell='" +cell+
	  "', gps='"+gps+
	  "', infrared='" +infrared+
	  "', wifi='" +wifi+
	  "'WHERE phoneId='"+phoneId +"'" , function(error,rows,fields){
	
    if(error)
      {
        console.log("Problem with MySQL"+error);
      }
      else
        {
          console.log("Connectivity Table Updated!");
        }
  });
  
  //UPDATING DISPLAY TABLE
  var screenResolution = req.body.screenResolution;
  var screenSize = req.body.screenSize;
  var touchScreen = req.body.touchScreen;
    
   connection.query("UPDATE display SET screenResolution='" + screenResolution+
	  "', screenSize='" +screenSize+
	  "', touchScreen='"+touchScreen+
	  "'WHERE phoneId='"+phoneId +"'" , function(error,rows,fields){
	
    if(error)
      {
        console.log("Problem with MySQL"+error);
      }
      else
        {
          console.log("Display Table Updated!");
        }
  });
  
  //UPDATING HARDWARE TABLE
  var accelerometer = req.body.accelerometer;
  var audioJack = req.body.audioJack;
  var cpu = req.body.cpu;
  var fmRadio = req.body.fmRadio;
  var physicalKeyboard = req.body.physicalKeyboard;
  var usb = req.body.usb;
  
   connection.query("UPDATE hardware SET accelerometer='" +accelerometer+
	  "', audioJack='" +audioJack+
	  "', cpu='"+cpu+
	  "', fmRadio='" +fmRadio+
	  "', physicalKeyboard='" +physicalKeyboard+
	  "', usb='" +usb+
	  "'WHERE phoneId='"+phoneId +"'" , function(error,rows,fields){
	
    if(error)
      {
        console.log("Problem with MySQL"+error);
      }
      else
        {
          console.log("Hardware Table Updated!");
        }
  });
  
  //UPDATING SIZE & WEIGHT TABLE
  var dimensions = req.body.dimensions;
  var weight = req.body.weight;
  
  connection.query("UPDATE sizeAndWeight SET dimensions='" +dimensions+
	  "', weight='" +weight+
	  "'WHERE phoneId='"+phoneId +"'" , function(error,rows,fields){
	
    if(error)
      {
        console.log("Problem with MySQL"+error);
      }
      else
        {
          console.log("Size & Weight Table Updated!");
        }
  });
  
  //UPDATING STORAGE TABLE
  var ram = req.body.ram;
  var flash = req.body.flash;
   
  connection.query("UPDATE storage SET ram='" +ram+
	  "', flash='" +flash+
	  "'WHERE phoneId='"+phoneId +"'" , function(error,rows,fields){
	
    if(error)
      {
        console.log("Problem with MySQL"+error);
      }
      else
        {
          console.log("Storage Table Updated!");
        }
  });
  
  //UPDATING IMAGES TABLE
  var images= req.body.images;
  
  connection.query("UPDATE images SET images='" +images+
	  "'WHERE phoneId='"+phoneId +"'" , function(error,rows,fields){
	
    if(error)
      {
        console.log("Problem with MySQL"+error);
      }
      else
        {
          console.log("Images Table Updated!");
        }
  });
});

/*
  // var cope = req.body.params;
   var phone = JSON.parse(JSON.stringify(req.body));
   var id = req.params.id;
   
   req.getConnection(function (err, connection) {
        
        var data = {
            
            age    : phone.age,
            carrier : phone.carrier,
            id   : phone.id,
            imageUrl   : phone.imageUrl,
			name   : phone.name,
			snippet   : phone.snippet,
			description   : phone.description,
			additionalFeatures   : phone.additionalFeatures,
        
        };
        
        connection.query("UPDATE phones set ? WHERE phoneId = ? ",[data,id], function(err, rows)
        {
  
          if (err)
              console.log("Error Updating : %s ",err );
         
          res.redirect('/phoneboard');
          
        });
    
    });
});
*/



/*
  * Start the Express Web Server.
*/
app.listen(3000,function(){
  console.log("It's Started on PORT 3000");
});
