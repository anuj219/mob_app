// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:share_plus/share_plus.dart';

class Cards1 extends StatelessWidget {
  const Cards1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 30, 85),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 9, 12, 47),
                Color.fromARGB(255, 11, 53, 117),
                Color(0xFF01579B),
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                  gradient: LinearGradient(
                    colors: [Colors.black, Color.fromARGB(255, 18, 23, 86)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 40,
                      left: 0,
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 20,
                      child: Text(
                        "Tube Mate",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    Positioned(
                      top: 35,
                      right: 20,
                      child: Container(
                        height: 60,
                        width: 60,
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/logo.png', // Make sure to add your logo image to assets
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Center(
                      child: Wrap(
                        spacing: 50,
                        runSpacing: 30,
                        children: [
                          _Card(
                            description:
                                "In this video we will talk about How to be handsome and How to look attractive or Handsome kaise bane tips. 🙂 यह भी पढ़ें👉 https://bit.ly/3dPBWKN",
                            imageUrl:
                                "https://i.ytimg.com/vi/vHY6xCmla2Y/maxresdefault.jpg",
                            mainTitle: "How to look handsome",
                            subTitle: "RandomGuy",
                            link:
                                "https://www.bigbuckbunny.org/",
                          ),
                          _Card(
                            description:
                                "Maximize your JEE Main 2025 score with our Exclusive Tricks Course! 🚀 Designed to help you increase your marks by 60-80 in no time, this course is packed with scientific and logical tukka tricks for exam success.",
                            imageUrl:
                                "https://i.ytimg.com/vi/LxtjIP_1v7o/sddefault.jpg",
                            mainTitle:
                                "Tukka Strategy for JEE MAIN 2025 🎯 50% OFF on Tricks COURSE⌛ #jeemain2025 #arsquad",
                            subTitle: "AR SQUAD",
                            link:
                                "https://www.bigbuckbunny.org/",
                          ),
                          _Card(
                            description:
                                "learn how to make visually appealing and imapctful powerpoint presentation in just 5 minutes using Gamma AI and prezi",
                            imageUrl:
                                "https://i.ytimg.com/vi/T3gf6MlkcbE/maxresdefault.jpg",
                            mainTitle: "How i made these Viral Powerpoints",
                            subTitle: "ShinoThomas",
                            link:
                                "https://r5---sn-cvh76nll.googlevideo.com/videoplayback?expire=1739477669&ei=Rf6tZ9iwAuWH6dsPq76EiQk&ip=176.6.128.96&id=o-ANeNUw0sRtR47Ci6KoP_y3ZAi7AsUn0ykRJGLiujVrko&itag=18&source=youtube&requiressl=yes&xpc=EgVo2aDSNQ%3D%3D&bui=AUWDL3zdt-XOabOSlr7UOo-YpvFRvNHVMxwqof-XKOnsIywORamsm_zTmFNpwyOVQC8QtMWMdlBvc0Oy&spc=RjZbSfL5O9q3-XN2YTT8Dh2uVpKcbf7dCn48iyOtRYqlumxvHezP&vprv=1&svpuc=1&mime=video%2Fmp4&ns=HeTtpPgV9djrgQT0HvE0vQwQ&rqh=1&cnr=14&ratebypass=yes&dur=455.389&lmt=1738337664322631&fexp=24350590,24350737,24350827,24350961,24350977,24350979,24351082,24351092,24351131,24351183,51326932,51355912,51387516&c=WEB&sefc=1&txp=5438534&n=tYJpl6wgCIojww&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cxpc%2Cbui%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cns%2Crqh%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AJfQdSswRQIhAL9qwlbm0MWxLduWQXFMn57jCGIz0Lc2fNoWtoWgm5zMAiATyub9WqwxxxNCyE2TIgz4bXEqEeMUb-zWMWcvJDQYqA%3D%3D&pot=MnTWzx7YXyHNYtbzvR7M-8TzSc8KUluY2YefNkcBRE7Dps8X1N9RRirinuwBL3HbwG89tHtpRHsLM1k5iArubFDdl5dzb9BQ4Zs85yx12n2rp9HmCdc98KLJ1Y86ebXIF2Jt7s-8wThwXKEsJ9vjN0c4he9bqA==&redirect_counter=1&cm2rm=sn-gwpa-cvhes7l&rrc=80&req_id=7812045da7e1a3ee&cms_redirect=yes&cmsv=e&met=1739456072,&mh=EM&mip=2405:201:11:d08d:70f0:3627:9835:9019&mm=29&mn=sn-cvh76nll&ms=rdu&mt=1739455763&mv=m&mvi=5&pl=50&rms=rdu,au&lsparams=met,mh,mip,mm,mn,ms,mv,mvi,pl,rms&lsig=AGluJ3MwRQIhANamFmcXDCpRAP8Fg9uqqfxUjBCpVvd0dS71956I8sCJAiBeVzkthBdyiL8MEsyDnYwAfeovGOjR8pHv1ttkebFyOg%3D%3D",
                          ),
                          _Card(
                            description:
                                "Learn HTML in One Video: In this video, we will see how to create beautiful websites using Html. HTML is the language used for website design. This hindi course on html will teach you everything you need to learn about html tags, lists, tables, seo etc.",
                            imageUrl:
                                "https://imgs.search.brave.com/umyCNuiHS5gJ95jWM8J6tRmHXDGGLHqq2w4YOoXT_Qs/rs:fit:200:200:1:0/g:ce/aHR0cHM6Ly9pLnl0/aW1nLmNvbS92aS9C/c0RvTFZNbm1acy9t/YXhyZXNkZWZhdWx0/LmpwZw",
                            mainTitle:
                                "HTML Tutorial For Beginners In Hindi (With Notes)",
                            subTitle: "Code With  Harry",
                            link:
                                "https://r5---sn-gwpa-cvhes.googlevideo.com/videoplayback?expire=1739478477&ei=bQGuZ4-BDPeJ6dsPhcqr8Aw&ip=176.1.206.66&id=o-ABg0GltRcST6nE4s1ynK5DCGLwb4QLSENYvCwqkRL9UD&itag=18&source=youtube&requiressl=yes&xpc=EgVo2aDSNQ%3D%3D&rms=au%2Cau&bui=AUWDL3wrUtxjORPhqhziKV5yLvpnRnKwMvxbGxRYsE1RVokF3mp83hda9FrCQvIHCRX2qCC1mibadPAc&spc=RjZbSS03Fx38UICerj_8BsRgelhEazU4X4aAcrKdBz86KD6J1uEy&vprv=1&svpuc=1&mime=video%2Fmp4&ns=H8bp9ob-D6_m-kb_Y7JoQuQQ&rqh=1&cnr=14&ratebypass=yes&dur=11471.911&lmt=1697774869136968&fexp=51326932%2C51355912&c=WEB&sefc=1&txp=4438434&n=x36yCxj2CfA53A&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cxpc%2Cbui%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cns%2Crqh%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AJfQdSswRQIhAOcArfQwaceWHlNVlJe-J1P0scyMPnz08wu3rocgGjeAAiBe41if3lsR53bE0nwY6xAbKN2T506ehkfPvB7TbsNg5g%3D%3D&pot=MnQXp0HDb6WoFxeb9ds3bpu-TjA1t-qsJaMFndj61xBtnP53glsvJ87IxhXhJ-JuwX8on4bdUHsx5g2mWeaSYjxqP1c3294KmibfgfVaefW9HRPnZtXKqHS9JKxNy75UDLgzomthMFM9Uxr6yO4ODOVhawvx-w==&cms_redirect=yes&met=1739456880,&mh=8J&mip=2405:201:11:d08d:70f0:3627:9835:9019&mm=31&mn=sn-gwpa-cvhes&ms=au&mt=1739456474&mv=m&mvi=5&pl=50&lsparams=met,mh,mip,mm,mn,ms,mv,mvi,pl,rms&lsig=AGluJ3MwRgIhALtINE-LqgAVtu6LYuu4tFrGFDG87_5E6eDdKwFj5dq7AiEAmvLZVUv1gQbZ2ebtZ3h8pglYxMS2CW4ZH9YE3yIpcFk%3D",
                          ),
                          _Card(
                            description:
                                "Python is one of the most demanded programming languages in the job market. Surprisingly, it is equally easy to learn and master  Python. This Python tutorial for absolute beginners in Hindi series will focus on teaching you Python concepts from the ground up.",
                            imageUrl:
                                "https://imgs.search.brave.com/34rTFAR2uBjuqzUmrv7GsLaZFpwQGvNOSnDaArnTWoI/rs:fit:200:200:1:0/g:ce/aHR0cHM6Ly9pLnl0/aW1nLmNvbS92aS83/d25vdmU3Sy1aUS9t/YXhyZXNkZWZhdWx0/LmpwZw",
                            mainTitle:
                                "Introduction to Programming & Python | Python Tutorial - Day #1",
                            subTitle: "Code With Harry",
                            link:
                                "https://r6---sn-gwpa-cvhez.googlevideo.com/videoplayback?expire=1739478650&ei=GgKuZ8SbH-i8mLAP8sGowAo&ip=176.1.212.106&id=o-AMNTneDV2zl6ue06TtaHadU1_9jDzP03rYEnvaUjOrkF&itag=18&source=youtube&requiressl=yes&xpc=EgVo2aDSNQ%3D%3D&rms=au%2Cau&bui=AUWDL3wCQN8fKqgc-kbQS_TsAcZn1MPkCmpc1AAYbjim9XenEUBfc-KsvjowCGNq3zA_THsYsJF153CB&spc=RjZbSWwSo2DghVJ-gslzbmiyQ9E7_1wlLLQ4Ve6leMpuKs903E7C&vprv=1&svpuc=1&mime=video%2Fmp4&ns=yTRB_vHFz5IdFxQK3Gx2lwMQ&rqh=1&gir=yes&clen=24215256&ratebypass=yes&dur=709.717&lmt=1729485196784691&fexp=51326932%2C51355912&c=WEB&sefc=1&txp=4538434&n=to7SWsqDi7lnfQ&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cxpc%2Cbui%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cns%2Crqh%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AJfQdSswRAIgOGM7vvrpe6su96zlqbrbDaQgaBszZb5-sV5Z_oUYlFUCIEn4Y94uSI6XbSvbHE_x37wHY565mJrItxYd_13Va3ga&pot=MnTEPcZZUVDCGsQBuOdE_zqV_u7Rs_BddI8Bj95yLBsC2zH36VYN5DmKZM8jhYjjDWOqVgJVQiSIQpiBP-BHiD415yMFBY6NH5dRcyZVSTJ5Ml746w4EN6CAEE1zK5Y5GY1Pywnp97trWPAT7h80NxcxqV9eKQ==&cms_redirect=yes&met=1739457054,&mh=No&mip=2405:201:11:d08d:70f0:3627:9835:9019&mm=31&mn=sn-gwpa-cvhez&ms=au&mt=1739456474&mv=m&mvi=6&pl=50&lsparams=met,mh,mip,mm,mn,ms,mv,mvi,pl,rms&lsig=AGluJ3MwRQIgHxC_v24nDY1OYjAJ5ujd5T6YGOnDKUdCIXrptLcB8kkCIQD4j2OgToKCkZ70D_kFI4nN9aHF9pcBZEhrDzmB-T-BLg%3D%3D",
                          ),
                          _Card(
                            description:
                                "⏰️ Save Time, Let Ai Write Your Website Content -  https://gravitywrite.com/👉 get 50% ➜ https://go.webspacekit.com/Website10M...",
                            imageUrl:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJo8J-VDGPeRkrk3JZW-fYMsdFSmpkL-M5Yg&s",
                            mainTitle:
                                "How to Make a Website in 10 mins - Simple & Easy",
                            subTitle: "Website Learners",
                            link:
                                "https://r1---sn-cvh7knzk.googlevideo.com/videoplayback?expire=1739477075&ei=8_utZ_-mDMSCi9oPmd7z6A4&ip=37.49.149.56&id=o-ANTwuZZUXLtVNJqT7kSBzyx2RJ2k4qbqrV_olX9t3RQy&itag=18&source=youtube&requiressl=yes&xpc=EgVo2aDSNQ%3D%3D&bui=AUWDL3xX1RbMXvjIV_Jj7hMLOyLOaTXNS2r2gRj6vpZG33I2_YtmnkAY6--o9eUPj3tbwPQY-PRMP4Fm&spc=RjZbSVea8VjVRhXbI4qJBz4Qc08NSF0dtm49E88L0VKyg7NanfJr&vprv=1&svpuc=1&mime=video%2Fmp4&ns=hysLvMsLYZa5tul5YfAAi8sQ&rqh=1&cnr=14&ratebypass=yes&dur=741.923&lmt=1708918972830911&fexp=24350590,24350737,24350827,24350961,24350977,24350979,24351082,24351130,24351132,24351183,51326932,51355912&c=WEB&sefc=1&txp=4438434&n=FXhIJICCoDwqpA&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cxpc%2Cbui%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cns%2Crqh%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AJfQdSswRQIhAPSTDujxLaEN9UnD_8TWF4ZPUQybTQxVsqmrW9Ubu4l0AiBOp5IUqtXzIHFFhOCy7MYpv-VIwTtsO1vkV2D4ivLfiw%3D%3D&pot=MpQBVdbK7nNtDNlV6vTw8Rzb-dLUK10kFjXQzTeXdzUYsD9wJmc-i_4kh6MoSOxYk3T-q-uhe9AbtT-dCDJF2Me1R3ezc2osLXHJQk19AEKnGy9k2uZjqDanyOyROi0K0bEEU--yjX07r13bHhJqQjzV82SbazRBXX2juaxLTuSrqUt8HtupbJkTHeZuPJ21Ac6vkKnxpA==&cm2rm=sn-gwpa-cvhes7z,sn-gwpa-cvhz7d&rrc=80,80&req_id=3bad02aea4e4a3ee&redirect_counter=2&cms_redirect=yes&cmsv=e&met=1739455492,&mh=u-&mip=2405:201:11:d08d:70f0:3627:9835:9019&mm=30&mn=sn-cvh7knzk&ms=nxu&mt=1739454996&mv=m&mvi=1&pl=50&rms=nxu,au&lsparams=met,mh,mip,mm,mn,ms,mv,mvi,pl,rms&lsig=AGluJ3MwRQIgPrqGqUSo7tuiYEHFA83cqI6yvxmvSY_iv7WbhOkwaD8CIQC4eOEceD2xk-VjcN8mLRLSKzGUJchqHiswRQiRHA-8Rw%3D%3D",
                          ),
                          _Card(
                            description:
                                "Maximize your JEE Main 2025 score with our Exclusive Tricks Course! 🚀 Designed to help you increase your marks by 60-80 in no time, this course is packed with scientific and logical tukka tricks for exam success.",
                            imageUrl:
                                "https://i.ytimg.com/vi/LxtjIP_1v7o/sddefault.jpg",
                            mainTitle:
                                "🥳Tukka Strategy for JEE MAIN 2025 🎯 50% OFF on Tricks COURSE⌛ #jeemain2025 #arsquad",
                            subTitle: "AR SQUAD",
                            link:
                                "https://r1---sn-cvh76nlz.googlevideo.com/videoplayback?expire=1739477339&ei=-_ytZ_wlybfp2w-AxuVw&ip=176.6.131.241&id=o-AOEsCbdxW5_MuT4jC4JriHjwx3WDSpIgmQoSE7ijdp2d&itag=18&source=youtube&requiressl=yes&xpc=EgVo2aDSNQ%3D%3D&bui=AUWDL3z60A6FlLMh4C4gsfq3AjeAmIj59PumMVOSg-nRS8BO0alt-gFyzoJZvakOR8_fMctSX99bdEYP&spc=RjZbSRFNHN9WZegZGeVYfJj0nkLTTqEdYNPRTUQvnpvJNfW5lGrt&vprv=1&svpuc=1&mime=video%2Fmp4&ns=2cdXp2wRAU1gEU8USyj4VWMQ&rqh=1&gir=yes&clen=63560154&ratebypass=yes&dur=1215.750&lmt=1737497239118040&fexp=24350590,24350737,24350827,24350961,24350977,24350978,24351082,24351132,24351184,51326932,51355912&c=WEB&sefc=1&txp=5438534&n=alzTXfdUUPJYgw&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cxpc%2Cbui%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cns%2Crqh%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AJfQdSswRAIgEtwwHzBM7daqz-4GDzrk50_HILurqPZ-ybBsAMp9K8sCIHHRBJVMhkwQWq4pzxZ43FQTysNg4h5d8v_cYlZJTFbK&pot=MnTHLdPJVcuCdscRWC6PZlsPucomAVICpfBugxhDTPTxNvYDESGf5kR4mBUMl9Qgijy7-k6Li0AiFGaApR7zASKnizlAZcjWwwOWN4Vwa1YIroP2Rllfr7FggYZcZCBojY42ZrwxyjtC-t67sWHRImOy-Xjrzw==&cm2rm=sn-gwpa-pmhd7e,sn-gwpa-cvhee7s&rrc=80,80&req_id=aebe1a7d566aa3ee&redirect_counter=2&cms_redirect=yes&cmsv=e&met=1739455744,&mh=ek&mip=2405:201:11:d08d:70f0:3627:9835:9019&mm=30&mn=sn-cvh76nlz&ms=nxu&mt=1739455231&mv=m&mvi=1&pl=50&rms=nxu,au&lsparams=met,mh,mip,mm,mn,ms,mv,mvi,pl,rms&lsig=AGluJ3MwRQIgQMSokic-Pz-N728wFFaF0cAvvzHQ7k1Dl41iQkSLkDMCIQCP4wHzatfG2qy02Li0RVGqfEjjxHpclA2lnPhFy1KO6A%3D%3D",
                          ),
                          _Card(
                            description:
                                "learn how to make visually appealing and imapctful powerpoint presentation in just 5 minutes using Gamma AI and prezi",
                            imageUrl:
                                "https://i.ytimg.com/vi/T3gf6MlkcbE/maxresdefault.jpg",
                            mainTitle: "How i made these Viral Powerpoints",
                            subTitle: "ShinoThomas",
                            link:
                                "https://r5---sn-cvh76nll.googlevideo.com/videoplayback?expire=1739477669&ei=Rf6tZ9iwAuWH6dsPq76EiQk&ip=176.6.128.96&id=o-ANeNUw0sRtR47Ci6KoP_y3ZAi7AsUn0ykRJGLiujVrko&itag=18&source=youtube&requiressl=yes&xpc=EgVo2aDSNQ%3D%3D&bui=AUWDL3zdt-XOabOSlr7UOo-YpvFRvNHVMxwqof-XKOnsIywORamsm_zTmFNpwyOVQC8QtMWMdlBvc0Oy&spc=RjZbSfL5O9q3-XN2YTT8Dh2uVpKcbf7dCn48iyOtRYqlumxvHezP&vprv=1&svpuc=1&mime=video%2Fmp4&ns=HeTtpPgV9djrgQT0HvE0vQwQ&rqh=1&cnr=14&ratebypass=yes&dur=455.389&lmt=1738337664322631&fexp=24350590,24350737,24350827,24350961,24350977,24350979,24351082,24351092,24351131,24351183,51326932,51355912,51387516&c=WEB&sefc=1&txp=5438534&n=tYJpl6wgCIojww&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cxpc%2Cbui%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cns%2Crqh%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AJfQdSswRQIhAL9qwlbm0MWxLduWQXFMn57jCGIz0Lc2fNoWtoWgm5zMAiATyub9WqwxxxNCyE2TIgz4bXEqEeMUb-zWMWcvJDQYqA%3D%3D&pot=MnTWzx7YXyHNYtbzvR7M-8TzSc8KUluY2YefNkcBRE7Dps8X1N9RRirinuwBL3HbwG89tHtpRHsLM1k5iArubFDdl5dzb9BQ4Zs85yx12n2rp9HmCdc98KLJ1Y86ebXIF2Jt7s-8wThwXKEsJ9vjN0c4he9bqA==&redirect_counter=1&cm2rm=sn-gwpa-cvhes7l&rrc=80&req_id=7812045da7e1a3ee&cms_redirect=yes&cmsv=e&met=1739456072,&mh=EM&mip=2405:201:11:d08d:70f0:3627:9835:9019&mm=29&mn=sn-cvh76nll&ms=rdu&mt=1739455763&mv=m&mvi=5&pl=50&rms=rdu,au&lsparams=met,mh,mip,mm,mn,ms,mv,mvi,pl,rms&lsig=AGluJ3MwRQIhANamFmcXDCpRAP8Fg9uqqfxUjBCpVvd0dS71956I8sCJAiBeVzkthBdyiL8MEsyDnYwAfeovGOjR8pHv1ttkebFyOg%3D%3D",
                          ),
                          _Card(
                            description:
                                "Learn HTML in One Video: In this video, we will see how to create beautiful websites using Html. HTML is the language used for website design. This hindi course on html will teach you everything you need to learn about html tags, lists, tables, seo etc.",
                            imageUrl:
                                "https://imgs.search.brave.com/umyCNuiHS5gJ95jWM8J6tRmHXDGGLHqq2w4YOoXT_Qs/rs:fit:200:200:1:0/g:ce/aHR0cHM6Ly9pLnl0/aW1nLmNvbS92aS9C/c0RvTFZNbm1acy9t/YXhyZXNkZWZhdWx0/LmpwZw",
                            mainTitle:
                                "HTML Tutorial For Beginners In Hindi (With Notes)",
                            subTitle: "Code With  Harry",
                            link:
                                "https://r5---sn-gwpa-cvhes.googlevideo.com/videoplayback?expire=1739478477&ei=bQGuZ4-BDPeJ6dsPhcqr8Aw&ip=176.1.206.66&id=o-ABg0GltRcST6nE4s1ynK5DCGLwb4QLSENYvCwqkRL9UD&itag=18&source=youtube&requiressl=yes&xpc=EgVo2aDSNQ%3D%3D&rms=au%2Cau&bui=AUWDL3wrUtxjORPhqhziKV5yLvpnRnKwMvxbGxRYsE1RVokF3mp83hda9FrCQvIHCRX2qCC1mibadPAc&spc=RjZbSS03Fx38UICerj_8BsRgelhEazU4X4aAcrKdBz86KD6J1uEy&vprv=1&svpuc=1&mime=video%2Fmp4&ns=H8bp9ob-D6_m-kb_Y7JoQuQQ&rqh=1&cnr=14&ratebypass=yes&dur=11471.911&lmt=1697774869136968&fexp=51326932%2C51355912&c=WEB&sefc=1&txp=4438434&n=x36yCxj2CfA53A&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cxpc%2Cbui%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cns%2Crqh%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AJfQdSswRQIhAOcArfQwaceWHlNVlJe-J1P0scyMPnz08wu3rocgGjeAAiBe41if3lsR53bE0nwY6xAbKN2T506ehkfPvB7TbsNg5g%3D%3D&pot=MnQXp0HDb6WoFxeb9ds3bpu-TjA1t-qsJaMFndj61xBtnP53glsvJ87IxhXhJ-JuwX8on4bdUHsx5g2mWeaSYjxqP1c3294KmibfgfVaefW9HRPnZtXKqHS9JKxNy75UDLgzomthMFM9Uxr6yO4ODOVhawvx-w==&cms_redirect=yes&met=1739456880,&mh=8J&mip=2405:201:11:d08d:70f0:3627:9835:9019&mm=31&mn=sn-gwpa-cvhes&ms=au&mt=1739456474&mv=m&mvi=5&pl=50&lsparams=met,mh,mip,mm,mn,ms,mv,mvi,pl,rms&lsig=AGluJ3MwRgIhALtINE-LqgAVtu6LYuu4tFrGFDG87_5E6eDdKwFj5dq7AiEAmvLZVUv1gQbZ2ebtZ3h8pglYxMS2CW4ZH9YE3yIpcFk%3D",
                          ),
                          _Card(
                            description:
                                "Python is one of the most demanded programming languages in the job market. Surprisingly, it is equally easy to learn and master  Python. This Python tutorial for absolute beginners in Hindi series will focus on teaching you Python concepts from the ground up.",
                            imageUrl:
                                "https://imgs.search.brave.com/34rTFAR2uBjuqzUmrv7GsLaZFpwQGvNOSnDaArnTWoI/rs:fit:200:200:1:0/g:ce/aHR0cHM6Ly9pLnl0/aW1nLmNvbS92aS83/d25vdmU3Sy1aUS9t/YXhyZXNkZWZhdWx0/LmpwZw",
                            mainTitle:
                                "Introduction to Programming & Python | Python Tutorial - Day #1",
                            subTitle: "Code With Harry",
                            link:
                                "https://r6---sn-gwpa-cvhez.googlevideo.com/videoplayback?expire=1739478650&ei=GgKuZ8SbH-i8mLAP8sGowAo&ip=176.1.212.106&id=o-AMNTneDV2zl6ue06TtaHadU1_9jDzP03rYEnvaUjOrkF&itag=18&source=youtube&requiressl=yes&xpc=EgVo2aDSNQ%3D%3D&rms=au%2Cau&bui=AUWDL3wCQN8fKqgc-kbQS_TsAcZn1MPkCmpc1AAYbjim9XenEUBfc-KsvjowCGNq3zA_THsYsJF153CB&spc=RjZbSWwSo2DghVJ-gslzbmiyQ9E7_1wlLLQ4Ve6leMpuKs903E7C&vprv=1&svpuc=1&mime=video%2Fmp4&ns=yTRB_vHFz5IdFxQK3Gx2lwMQ&rqh=1&gir=yes&clen=24215256&ratebypass=yes&dur=709.717&lmt=1729485196784691&fexp=51326932%2C51355912&c=WEB&sefc=1&txp=4538434&n=to7SWsqDi7lnfQ&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cxpc%2Cbui%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cns%2Crqh%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AJfQdSswRAIgOGM7vvrpe6su96zlqbrbDaQgaBszZb5-sV5Z_oUYlFUCIEn4Y94uSI6XbSvbHE_x37wHY565mJrItxYd_13Va3ga&pot=MnTEPcZZUVDCGsQBuOdE_zqV_u7Rs_BddI8Bj95yLBsC2zH36VYN5DmKZM8jhYjjDWOqVgJVQiSIQpiBP-BHiD415yMFBY6NH5dRcyZVSTJ5Ml746w4EN6CAEE1zK5Y5GY1Pywnp97trWPAT7h80NxcxqV9eKQ==&cms_redirect=yes&met=1739457054,&mh=No&mip=2405:201:11:d08d:70f0:3627:9835:9019&mm=31&mn=sn-gwpa-cvhez&ms=au&mt=1739456474&mv=m&mvi=6&pl=50&lsparams=met,mh,mip,mm,mn,ms,mv,mvi,pl,rms&lsig=AGluJ3MwRQIgHxC_v24nDY1OYjAJ5ujd5T6YGOnDKUdCIXrptLcB8kkCIQD4j2OgToKCkZ70D_kFI4nN9aHF9pcBZEhrDzmB-T-BLg%3D%3D",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class _Card extends StatelessWidget {
  final String imageUrl;
  final String mainTitle;
  final String subTitle;
  final String description;
  final String link;
  final bool animate = true;

  const _Card({
    Key? key,
    required this.imageUrl,
    required this.mainTitle,
    required this.subTitle,
    required this.description,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        height: 404,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VideoPlayerPage(
                  description: mainTitle,
                  link: link,
                ),
              ),
            );
          },
          child: Card(
            elevation: 20,
            color: const Color.fromARGB(255, 33, 71, 184),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 203, 230, 255),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image at the top
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      imageUrl,
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Content below image
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            mainTitle,
                            style: TextStyle(
                              fontSize: 25,
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Center(
                          child: Text(
                            subTitle,
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color.fromARGB(255, 60, 60, 60),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Divider(color: Colors.black),
                        Text(
                          description,
                          style: TextStyle(fontSize: 12, color: Colors.black87),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:[IconButton(
                          icon: Icon(Icons.share, color: Colors.blue),
                          onPressed: () {
                            Share.share(link);
                          },
                        ),])
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class VideoPlayerPage extends StatefulWidget {
  final String description;
  final String link;

  const VideoPlayerPage({
    Key? key,
    required this.description,
    required this.link,
  }) : super(key: key);

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;
  bool isMinimized = true;


  void toggleMiniPlayer() {
    setState(() {
      isMinimized = !isMinimized;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.link))
      ..initialize().then((_) {
        setState(() {});
      }).catchError((error) {
        print("Error loading video: $error");
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _seekRelative(Duration duration) {
    final newPosition = _controller.value.position + duration;
    _controller.seekTo(newPosition);
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return duration.inHours > 0
        ? '$hours:$minutes:$seconds'
        : '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.description,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child: _controller.value.isInitialized
                    ? Stack(
                        alignment: Alignment.center,
                        children: [
                          AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onDoubleTap: () => _seekRelative(
                                      const Duration(seconds: -10)),
                                  child: Container(
                                    color: Colors.transparent,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                               DraggableScrollableSheet(
            initialChildSize: isMinimized ? 0.1 : 0.6, // Start minimized
            minChildSize: 0.1, // Mini player size
            maxChildSize: 0.6, // Expanded player size
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: toggleMiniPlayer,
                      child: Container(
                        height: 50,
                        color: Colors.black,
                        child: Row(
                          children: [
                            Icon(Icons.arrow_drop_up, color: Colors.white),
                            Text(
                              "Now Playing",
                              style: TextStyle(color: Colors.white),
                            ),
                            Spacer(),
                            IconButton(
                              icon: Icon(Icons.close, color: Colors.white),
                              onPressed: () {
                                setState(() {
                                  isMinimized = true;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: _controller.value.isInitialized
                          ? AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            )
                          : Center(child: CircularProgressIndicator()),
                    ),
                    VideoProgressIndicator(_controller, allowScrubbing: true),
                  ],
                ),
              );
            },
          ),
                              Expanded(
                                child: GestureDetector(
                                  onDoubleTap: () => _seekRelative(
                                      const Duration(seconds: 10)),
                                  child: Container(
                                    color: Colors.transparent,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              
                            ],
                          ),
                        ],
                      )
                    : const Center(child: CircularProgressIndicator()),
              ),
              const SizedBox(height: 8),
              if (_controller.value.isInitialized) ...[
                // Video progress
                ValueListenableBuilder(
                  valueListenable: _controller,
                  builder: (context, VideoPlayerValue value, child) {
                    return SizedBox(
                      width: 1000,
                      child: Column(
                        children: [
                          Slider(
                            value: value.position.inMilliseconds.toDouble(),
                            min: 0,
                            max: value.duration.inMilliseconds.toDouble(),
                            onChanged: (newPosition) {
                              _controller.seekTo(
                                  Duration(milliseconds: newPosition.toInt()));
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(_formatDuration(value.position)),
                                Text(_formatDuration(value.duration)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                // const SizedBox(height: 8),
              ],
              IconButton(
                icon: Icon(
                  _isPlaying ? Icons.pause : Icons.play_arrow,
                  size: 32,
                ),
                onPressed: () {
                  setState(() {
                    _isPlaying = !_isPlaying;
                    _isPlaying ? _controller.play() : _controller.pause();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
