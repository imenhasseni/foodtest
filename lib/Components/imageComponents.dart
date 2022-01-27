
import 'package:flutter/material.dart';


class imageComponent extends StatelessWidget {
  const imageComponent({
    Key? key,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final urlImage =
        'https://lh3.googleusercontent.com/GrQx2bXJfqWsY5J9YVQdjixy0Mi675_bCLmV10_jSPJeVLLBgHuBk3or8gb95lsMYTmZMiYT8omiZYdB_64crHtCxVdL8dEpKd1m';
    final urlImage1 =
        'https://lh3.googleusercontent.com/6gidAEevFeE6xiMpD7YWKMnFlKwtUQSUZyiWg0d390kpCZ88ttg1Wa1VXbWe5dIz10_jT1392PBFtpanls76';
    final urlImage2 =
        'https://lh3.googleusercontent.com/IcoIwfNbn7OhI-GWj_WpK8Bc7ivTgCcoZeb0geCW0bB0KPZ0vUzGv8PFYG7c3Cxwx98I7HaGAVUGJ676LH0abGHar0SfEF6VjNN3';
    final urlImage3 =
        'https://lh3.googleusercontent.com/6Kl0pJeahIyMrT32buIMoaUZ_lUrqhVSqlSbh8ZdmWDrI614tFWOfFYKYre3zhmCEUUEFVeY1PlWli3TFa41NYpLZ6EUXUafRyY';
    final urlImage4 =
        'https://lh3.googleusercontent.com/z7jNUZH4FkOZNwgB1yloPvacmlhmI5-h1ftZkisNcptFDOGDI9Azm36uZOSgOQr9HGvKedvqHZ7Na7CSX4sLYQ5a9ecY3c0ubOk';
    final urlImage5 =
    'https://lh3.googleusercontent.com/rHSCbj--ESaW5NtsT4az7bIfcFpnb_ziTptGuXfzz89BxObu7enaV8oVxATIYHdiNNSJqUV5Us0dkHaXYp3pcIqb6BeY_Xwj-A';
    final urlImage6 =
        'https://lh3.googleusercontent.com/HTb0hCoDECkzD83V9MT_p7NgzDVWhcrJTIoGCksRW1WWNA57LpmiqOPzMOY6nxRUWzQBlnqFbOtqmobaoI119sHr8rXzn9opfe0';
    final urlImage7 =
        'https://lh3.googleusercontent.com/_ek9AJ4q4nATOdeJebre05IMUyiMVktVhH17XXEqSAClpZ25WxTaDdQB2mPAMmnFq0iKmklLkP_J-En0CdRncJe8TXlhhujq8MBH';
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          height: 350,
          width: 350,
          color: Colors.transparent,
        ),
        Positioned(
          left: 80,
          bottom: 150,
          child: Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(
                  urlImage1,
              ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        Positioned(
          left: 148,
          bottom: 0,
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(
                  urlImage)
            ),
                borderRadius: BorderRadius.circular(80),

            ),
          ),
        ),
        Positioned(
          left: 200,
          bottom: -120,
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(
                urlImage2,
              ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        Positioned(
          left: 20,
          bottom: 10,
          child: Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(
                urlImage3,
              ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(50),

            ),
          ),
        ),
        Positioned(
          left: 80,
          bottom: -100,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(
                urlImage4,
              ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(50),

            ),
          ),
        ),
        Positioned(
          left: 320,
          bottom: -30,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(
                urlImage5,
              ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(50),

            ),
          ),
        ),
        Positioned(
          left: 340,
          bottom: 90,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(
                urlImage6,
              ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(50),

            ),
          ),
        ),
        Positioned(
          left: 230,
          bottom: 180,
          child: Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(
                urlImage7,
              ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(50),

            ),
          ),
        ),
      ],
    );
  }
}