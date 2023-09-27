import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.all(0.0),
          child: Row(
            children: [
              // IconButton(
              //   icon: Icon(Icons.arrow_back),
              //   iconSize: 40,
              //   color: Colors.orange,
              //   onPressed: () {
              //     // Handle back button press
              //   },
              // ),
              SizedBox(width: 30),
              Image.asset(
                'assets/images/chat logo.png', // Replace with your app logo asset path
                width: 160,
              ),
              Spacer(),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1, // Add a 1px border
      ),
      body: Column(
        children: [
      const Divider (
            color: Colors.orange,
            thickness: 1,
          ),
          // Chat messages
          Expanded(
            child: ListView.builder(
              itemCount: 6, // Replace with the actual number of chat messages
              itemBuilder: (context, index) {
                // Replace with your chat message UI
                return ChatBubble(
                  isMe: index % 2 == 0, // Example: Alternating sides
                );
              },
            ),
          ),
          // Input field and send button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type your message',
                      contentPadding: EdgeInsets.all(16.0),
                      border: OutlineInputBorder(
                      
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color(0xFFFF5F1F), // Border color
                          width: 6.0, // Border width
                        ),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.send,color: Color(0xFFFF5F1F),),
                        onPressed: () {
                          // Handle send button press here
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Color(0xFFFF5F1F), // Set background color to orange
      //   unselectedItemColor: Colors.white,
      //   selectedItemColor: Colors.white,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.bus_alert_outlined),
      //       label: 'Bus',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_2),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final bool isMe;

  ChatBubble({required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
      margin: isMe
          ? EdgeInsets.only(left: 40, right: 10, top: 15)
          : EdgeInsets.only(right: 40, left: 10, top: 15),
      decoration: BoxDecoration(
        color: isMe ? Colors.white : const Color.fromRGBO(255, 255, 255, 1),
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(12),
        //   topRight: Radius.circular(12),
        //   bottomLeft: isMe ? Radius.circular(12) : Radius.circular(0),
        //   bottomRight: isMe ? Radius.circular(0) : Radius.circular(12),
        // ),
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
      ),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Padding(
            padding: isMe
                ? const EdgeInsets.only(
                    right: 300,
                    top: 0,
                  )
                : EdgeInsets.only(
                    left: 10,
                    top: 0,
                  ),
            child: Text(
              isMe ? 'you' : 'NXT BUS NOW ', // Replace with sender's name
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isMe ? Colors.black : const  Color(0xFFFF5F1F)),
            ),
          ),
          Padding(
            padding: isMe
                ? const EdgeInsets.only(right: 10, top: 15)
                : const EdgeInsets.only(left: 10, top: 15),
            child: Text(
              isMe
                  ? "Hello i have a question about bustrackign app."
                  : 'Hello, this is a chat message.', // Replace with message text
            ),
          ),
          Padding(
            padding: isMe
                ? const EdgeInsets.only(right: 5, top: 5)
                : EdgeInsets.only(left: 275, top: 5),
            child: Text(
              '12:34 PM', // Replace with message timestamp
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
