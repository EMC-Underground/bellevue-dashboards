module Gdun

require 'json'

 def Gdun.random_gdun
  gduns =[
  ['081466849','Microsoft','http://i.imgur.com/8MuBOXp.jpg'],
  ['155366107','Starbucks','http://i.imgur.com/CRmvA1o.jpg'],
  ['009256819','Boeing','http://i.imgur.com/vtlZIjT.jpg'],
  ['092180517','Expedia','http://i.imgur.com/XfVdApY.png'],
  ['103391843','Costco','http://i.imgur.com/g6afQml.png'],
  ['048341267','Paccar','http://i.imgur.com/VsLQEoP.jpg'],
  ['831703157','PSE','http://i.imgur.com/CCktnis.jpg'],
  ['884727413','Providence Health','http://i.imgur.com/FcFl9TL.jpg'],
  ['327376653','T-Mobile','http://i.imgur.com/hZKFuvp.png'],
  ['047897855','Intel','http://i.imgur.com/iM9fgVZ.jpg'],
  ['007947146','Russell Investments','http://i.imgur.com/bpmX0XF.jpg']
  ]
  return gduns.sample
 end

 def Gdun.static_gdun
  config = JSON.parse(File.read('config/config.json'))
  gdun = [config['gdun'],config['gdun_name'],config['gdun_image']]

  return gdun
 end

 def Gdun.rotating_gdun(next_gdun)
  gduns =[
  ['081466849','Microsoft','http://i.imgur.com/8MuBOXp.jpg','1'],
  ['155366107','Starbucks','http://i.imgur.com/CRmvA1o.jpg','2'],
  ['009256819','Boeing','http://i.imgur.com/vtlZIjT.jpg','3'],
  ['092180517','Expedia','http://i.imgur.com/XfVdApY.png','4'],
  ['103391843','Costco','http://i.imgur.com/g6afQml.png','5'],
  ['048341267','Paccar','http://i.imgur.com/VsLQEoP.jpg','6'],
  ['831703157','PSE','http://i.imgur.com/CCktnis.jpg','7'],
  ['884727413','Providence Health','http://i.imgur.com/FcFl9TL.jpg','8'],
  ['327376653','T-Mobile','http://i.imgur.com/hZKFuvp.png','9'],
  ['047897855','Intel','http://i.imgur.com/iM9fgVZ.jpg','10'],
  ['007947146','Russell Investments','http://i.imgur.com/bpmX0XF.jpg','0']
  ]
  return gduns[next_gdun.to_i]
 end
end
