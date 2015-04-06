User.create(username: "jim", password: "asdf")
User.create(username: "johnsmith100", password: "password")
User.create(username: "alcatraz", password: "password")
User.create(username: "harrisonford", password: "password")

Message.create(subject: "Important", body: "I think I left the oven on.", recipient_id: 1, sender_id: 2)
Message.create(subject: "Your Nigerian Friend", body: "I have inherited a fortune I would like to share with you.", recipient_id: 1, sender_id: 3 )
Message.create(subject: "To Do List", body: "Using every JS framework imagineable.", recipient_id: 1, sender_id: 3)

Message.create(subject: "Meetup", body: "Let's meet at this sweet meetup on Monday.", recipient_id: 2, sender_id: 1)
Message.create(subject: "Meeting Notes", body: "Very important changes to your retirement plan are happening now.", recipient_id: 2, sender_id: 1) 
Message.create(subject: "The Artist", body: "Prince is a rock god", recipient_id: 2, sender_id: 1)

Message.create(subject: "All Emails Have", body: "bodybodybodybodybodybodybodybodybody", recipient_id: 3, sender_id: 2)
Message.create(subject: "Links", body: "http://jimsuttondev.com", recipient_id: 3, sender_id: 1)

Message.create(subject: "Book List", body: "Read Kim Zetter's Countdown to Zero Day", recipient_id: 4, sender_id: 1 )
Message.create(subject: "Pensive Friend", body: "...", recipient_id: 4, sender_id: 1)
Message.create(subject: "Howdy", body: "Hellow from your inlaws in Dallas", recipient_id: 4, sender_id: 2  )

