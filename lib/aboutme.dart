import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5c5344),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                FotoAboutMe(),
                DeskripsiAboutMe(),
                SocialMedia()
              ],
            ),

          ],
        ),
      ),
      
    );
  }

  Widget FotoAboutMe(){
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: Image.asset(
            'assets/photos/profile_photo.png'
            ),
          )
        ),

        Positioned(
          bottom: -40,
          left: 0,
          right: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Card(
                  color: Color(0xffa29689), // Background color of the Card
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16), // Border radius for the Card
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0), // Padding inside the Card
                    child: Text(
                      "About Me",
                      textAlign: TextAlign.center, // Center the text
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Text color
                        fontSize: 45, // Font size
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Column DeskripsiAboutMe(){
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                left: 10,
                right: 10
              ),
              child: Card(
                color: Color(0xffa29689), // Background color of the Card
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16), // Border radius for the Card
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),// Padding inside the Card
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Muhammad Rafi Widya Danendra",
                        textAlign: TextAlign.start, // Center the text
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Text color
                          fontSize: 18, // Font size
                        ),
                      ),
                      Text(
                        "5026221088",
                        textAlign: TextAlign.start, // Center the text
                        style: TextStyle(
                          color: Colors.white, // Text color
                          fontSize: 16,
                        )
                      ),
                      Text(
                        "Perkenalkan nama saya  Rafi.\nBiasanya itu saya dipanggil nyaut balik kok, soalnya saya baik hati dan tidak sombong.",
                        textAlign: TextAlign.justify, // Center the text
                        style: TextStyle(
                          color: Colors.black, // Text color
                          fontSize: 18,
                        )
                      )
                    ],
                  )
                ),  
              ),
            )
          ],
        ),
      ],
    );
  }

  Column SocialMedia(){
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0),
              child: Text(
                "Get to Know Me",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0
                  )
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: ()=>() ,
                      child: CircleAvatar(
                        backgroundColor: Color(0xffa29689),
                        radius: 35,
                        child: Image.asset(
                          'assets/photos/spotify.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),  
                    GestureDetector(
                      onTap: ()=>() ,
                      child: CircleAvatar(
                        backgroundColor: Color(0xffa29689),
                        radius: 35,
                        child: Image.asset(
                          'assets/photos/instagram.png',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()=>() ,
                      child: CircleAvatar(
                        backgroundColor: Color(0xffa29689),
                        radius: 35,
                        child: Image.asset(
                          'assets/photos/whatsapp.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ) 
              ],
            )
          ],
          
        )
      ],
    );
  }
}