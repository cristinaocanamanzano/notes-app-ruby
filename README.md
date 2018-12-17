Notes App 
==========
This project consists of a small app where the user can add notes to a notebook and view them.

Features
-------
This notes app allows the user to:
1. Add a note with a title and a body
2. See a list of all note titles.
3. Pick a note and see its title and body.

Setup
-------
1. Download this repository
2. Run 'bundle' in the command line to make sure all gems are installed


How to run the tests
-------
1. Download this repository
2. Run 'rspec' in the command line

Approach to solve the challenge
-------
To solve this challenge, we have created three different classes:
- A Notebook class, responsible for allowing the user to create and save notes
- A Note class, responsible for storing the title and body of the note
- An Note_printer class, responsible for printing text to the screen (list of notes, note titles, note bodies, etc.)
