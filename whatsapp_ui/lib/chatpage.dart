import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  List<Map<String, dynamic>> mchats = [
    {
      "name": "Rinky",
      "msg": "hii",
      "time": "1:02 PM",
      "unreadcount": 5,
      "ProfilePic":
          "https://images.creativemarket.com/0.1.0/ps/1834203/1360/2043/m1/fpnw/wm1/h7lejxiin3xlixt9fsobxom5ciegywnhtylbkttrvl0thzgurycjpjzwy4cilzxy-.jpg?1478007373&s=d20df8882f40814e10ff20c0cd796fa4"
    },
    {
      "name": "shinny",
      "msg": "when we will meet?",
      "time": "02:05 PM",
      "unreadcount": 6,
      "ProfilePic":
          "https://tse1.mm.bing.net/th?id=OIP.HS4Pb_i0I1tSDRVJ-luBDQHaEo&pid=Api&P=0&h=180"
    },
    {
      "name": "jajmi",
      "msg": "I love you too",
      "time": "Yesterday",
      "unreadcount": 6,
      "ProfilePic":
          "https://tse1.mm.bing.net/th?id=OIP.4rcUQQLODm5HntmhWoVz2AHaEo&pid=Api&P=0&h=180"
    },
    {
      "name": "Kirti",
      "msg": "I send you money right now",
      "time": "4:25 PM",
      "unreadcount": 6,
      "ProfilePic":
          "https://tse1.mm.bing.net/th?id=OIP.g0w_Y3FxgzoeDS6xJln0ngHaJQ&pid=Api&P=0&h=180"
    },
    {
      "name": "Pinky",
      "msg": "bye!",
      "time": "12:15 PM",
      "unreadcount": 6,
      "ProfilePic":
          "https://tse2.mm.bing.net/th?id=OIP.QVOFlzv29xCHbbRr0EEhGAHaEo&pid=Api&P=0&h=180"
    },
    {
      "name": "shinny",
      "msg": "Good night!",
      "time": "07:05 AM",
      "unreadcount": 6,
      "ProfilePic":
          "https://tse4.mm.bing.net/th?id=OIP.Nolz7WP6ihgX54G98AcWnAHaEo&pid=Api&P=0&h=180"
    },
    {
      "name": "Sweety",
      "msg": "Mummy a gyi",
      "time": "03:05 PM",
      "unreadcount": 6,
      "ProfilePic": "https://wallpapercave.com/wp/wp7142786.jpg"
    },
    {
      "name": "Rimmy",
      "msg": "Main nhi rah pungi tumahre bina",
      "time": "09:56 PM",
      "unreadcount": 6,
      "ProfilePic":
          "https://tse1.mm.bing.net/th?id=OIP.HS4Pb_i0I1tSDRVJ-luBDQHaEo&pid=Api&P=0&h=180"
    },
    {
      "name": "Monisha",
      "msg": "Maine recharge kr diya",
      "time": "05:15 PM",
      "unreadcount": 6,
      "ProfilePic":
          "https://1.bp.blogspot.com/-Z-5oKsJ7NDw/WhWp1EqvswI/AAAAAAAARlo/rHSNKX-NVG8AGHsFgk52qWD7sABnkxTNACLcBGAs/s1600/53.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        height: 150,
        width: double.infinity,
        color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Whatsapp",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets1/camera.png",
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    )),
                IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 30,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets1/verticaldots.png",
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    ))
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 110,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets1/audience.png",
              height: 30,
              width: 30,
              color: Colors.white,
            ),
            Text(
              "Chats",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Status",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Calls",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 140),
        child: ListView.builder(
            itemCount: mchats.length,
            itemBuilder: (BuildContext, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage("${mchats[index]["ProfilePic"]}"),
                ),
                title: Text("${mchats[index]["name"]}"),
                subtitle: Text("${mchats[index]["msg"]}"),
                trailing: Text("${mchats[index]["time"]}"),
              );
            }),
      ),
    ]));
  }
}
