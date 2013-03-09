# RVN: Rint Visual Novel Framework

##Basic

##Advanced

### Dependencies
#### rint.jquery.textWithInterval.js
https://github.com/rintiantta/rint.jquery.textWithInterval.js
#### rint.jquery.matchScreen.js
https://github.com/rintiantta/rint.jquery.matchScreen.js
### parser
`rint_to_eval_string()`
`rint_visual_novel_parser()`
```
#Configure:
    accel: 1
    width: 600
    height: 400
#Subject:
    name: "rintiantta"
    commit
    test: true
#BGM: 23
#Character: "rint"
#Say: "Hello World"
#Wait
#Quake:
    time: 300
    hmax: 5
    vmax: 5
```
```javascript
Configure({"accel":1,"width":600,"height":400})
Subject({"name":"rintiantta","commit":true,"test":true})
BGM(23)
Character("rint")
Say("Hello World")
Wait()
Quake({"time":300,"hmax":5,"vmax":5}) 
```