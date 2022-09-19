import 'dart:async';
import 'package:flutter/material.dart';

class TimerApp extends StatefulWidget {
  const TimerApp ({Key? key}) : super(key: key);

  @override
  State<TimerApp> createState() => _TimerAppState();
}

class _TimerAppState extends State<TimerApp> {
  int seconds = 0, minutes = 0, hours = 0;
  String digitSeconds = '00', digitMinutes = '00', digitHours = '00';
  Timer? timer;
  bool started = false;
  List laps = [];

  void stop(){
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

  void reset(){
     timer!.cancel();
    setState(() {
      seconds = 0;
      minutes = 0;
      hours = 0;

      digitSeconds = '00';
      digitHours = '00';
      digitMinutes = '00';

      started = false;
      laps.clear();
    });
  }

  void addLaps(){
    String lap = "$digitHours:$digitMinutes:$digitSeconds";
    setState(() {
      laps.add(lap);
    });
  }

  void start(){
    started = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
        int localSeconds = seconds + 1;
        int localMinutes = minutes;
        int localHours = hours;

        if(localSeconds > 59){
          if(localMinutes > 59){
            localHours++;
            localMinutes = 0;
          }else{
            localMinutes++;
            localSeconds = 0;
          }
        }
        setState(() {
          seconds = localSeconds;
          minutes = localMinutes;
          hours = localHours;
          digitSeconds = (seconds >= 10) ?'$seconds':'0$seconds';
          digitMinutes = (minutes >= 10) ?'$minutes':'0$minutes';
          digitHours = (hours >= 10) ?'$hours':'0$hours';
        });
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.10),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Таймер',
                  style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontWeight: FontWeight.bold),
                  ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text('$digitHours:$digitMinutes:$digitSeconds', 
                style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                height: 200.0,
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(197, 76, 4, 117),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ListView.builder(
                  itemCount: laps.length,
                  itemBuilder: (context, index){
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Круг №${index + 1}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '${laps[index]}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RawMaterialButton(
                      onPressed: () {
                        (!started) ?start():stop();
                      },
                        shape: const StadiumBorder(
                          side: BorderSide(color: Colors.blue)
                          ),
                          child: Text(
                            style: TextStyle(color: Colors.white),
                            (!started) ? 'Старт' : 'Пауза',
                            ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
                      child: IconButton(
                      onPressed: (){
                        (started) ?addLaps(): '';
                      }, 
                      icon: Icon(Icons.flag, color: Colors.white,)
                      ),
                    ),
              
                    Expanded(
                      child: RawMaterialButton(
                        onPressed: () {
                          reset();
                        },
                          shape: const StadiumBorder(),
                          fillColor: Colors.blue,
                            child: Text(
                              style: TextStyle(color: Colors.white),
                              (laps.length >= 1) ?'Зупинити і очистити' :' Зупинити',
                              ),
                        ),
                      ),
                ],
              )
            ],
          ),
        ), 
        ),
    );

  }
}