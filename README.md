# README

Realtalk

This is a chat application I made to test some things in Rails that I really wanted to try out.

1. Login with Devise
2. Custom input fields with css animations.
3. A mailer for user registration etc.
4. Mobile first design.
5. Realtime updates with ActionCable and Redis.

DEMO (https://realtalkchat.herokuapp.com/)
For the demo, I have made some fake users. If you don't feel like creating your own user, log in an existing account:

email: test1@test.com, password: test123
email: test2@test.com, password: test123
email: test3@test.com, password: test123 ... and so on, there are 11 in total.

When you load a page, the client creates a subscription to all of the current user's existing chat channels. While this works fine for a test app, it has one disadvantage. There is no subscription for new chats created between page reloads. To set this up properly, there should be a channel for each users chat list as well. This way, users could be notified of any new chats. But it's still a decent demo.