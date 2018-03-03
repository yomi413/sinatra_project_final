# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database - Users table, Cars table
- [x] Include more than one model class (list of model class names e.g. User, Post, Category) - I added a User model and Car model.
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Posts) - User has_many Cars
- [x] Include user accounts - I created 4 different users to help me play around with the different relationships created throughout the application. 
    (a) Username: yje, Password: password
    (b) Username: charlie, Password: birthday
    (c) Username: mira, Password: vacation
    (d) Username: danny, Password: lightning
- [x] Ensure that users can't modify content created by other users - Done. Users can only modify their entries, which appear as links. They can view other entries when they log in, but cannon modify them.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying - Done. The Cars Controller allows for the creation, reading/viewing, updating/editing and deleting of each car.
- [x] Include user input validations - Done. Users must fill in all blanks before proceeding. In addition, during login the user's input must correctly match what was saved to the database.
- [ ] Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code - Done. 

Confirm
- [x] You have a large number of small Git commits - Done.
- [x] Your commit messages are meaningful - Done.
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message - Done.
