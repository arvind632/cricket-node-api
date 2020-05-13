var db = require('./db/config'); 


exports.team = (req, res) => {
  db.query('select * from team', (error,result)=>{
    if(error) throw error;
    res.send(result);
  });
};

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












