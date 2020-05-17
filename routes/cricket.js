var db = require('./db/config'); 


exports.team = (req, res) => {
  db.query('select * from team', (error,result)=>{
    if(error) throw error;
    res.send(result);
  });
};

// Fetch player Api
exports.player = (req, res) => {
  
  db.query('select * from player', (error,result)=>{
    if(error) throw error;
    res.send(result);
  });
  

};

exports.history = (req, res) => {
  db.query('SELECT player.firstName,player.lastName, history.* FROM history LEFT JOIN player ON player.id=history.player_id', (error,result)=>{
    if(error) throw error;
    res.send(result);
  });
};


// Create player Api
exports.playerCreate = (req, res) => {

  // Validate request
  var player = {
            firstName : req.body.firstName,
            LastName : req.body.lastName,
            imageUri : req.body.imageUri,
            PlayerJerseyNumber : req.body.PlayerJerseyNumber,
            Country:'India'
  }
  // Save player in the database
  db.query('insert into player SET ?', player, (error,result)=>{
      if(error){
      res.status(400).send({
        success:false,
        failed:error
      })
0      }else{
      res.status(200).send({
        success:true,
        message:"Player created successfully"
      });
    }
  })
  
}


// Find a single record with an id
exports.playerFindById = (req, res ) => {
  const id = req.params.id;
  db.query("select * from player where id =? ",id,(error,result)=>{
    if(error){
      res.status(400).send({
        success:false,
        message:error
      });
      
    }else{
      res.status(200).send(result);
    }
  })
  
}


// update player
exports.playerUpdate = (req, res) => {
  const _id = req.params.id;
  var firstName = req.body.firstName;
  var lastName = req.body.lastName;
  var PlayerJerseyNumber = req.body.PlayerJerseyNumber;
  db.query("update player SET firstName='"+firstName+"', lastName='"+lastName+"', PlayerJerseyNumber='"+PlayerJerseyNumber+"' where id = ? ",+ _id, (error,result,fields) => {
      if(error){
        res.status(401).send({
            success:false,
            message:error
        });
      }else{
        res.status(200).send({
          success:true,
          message:"record update successfully",
          result:result.affectedRows
        });
      }
  });
}



















