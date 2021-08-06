# Lab 3.1

The Lab 3.1 downloads realestate data and analizes it.

##  How to run the program
Instructions for windows Machine

You need to install wget in order to run the program.

 1. Open your terminal.
 2. Clone this repository:
 `git clone https://github.com/robiulalam82-BCg/Large-Scale-Apps-CISC3140.git`
 4. navigate to lab 4.3:
`cd Large-Scale-Apps-Labs/4.3/`
 5. Run the makefile: `make` <br>

### Requirements
- [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli "Heroku CLI")
- [Node](https://nodejs.org/en/download/ "Node")
- [Git ](https://git-scm.com/downloads "Git ")
- [Makefile](https://www.gnu.org/software/make/ "Makefile")


### Parameters
- If you want to remove lab4.2 and lab 4.3, you can run:
`make clean`
- If you only want to just clone the repositories (4.2 and 4.3)
`make download`
- If you want to login into your Heroku
`make login`
- If you want to deploy to Heroku for the first time (having Lab4.2 and 4.3 already installed)
`make create`
- If you want to manually deploy into heroku (to an existent heroku app)
`make deploy`


## What does program do?
The program clones the repository from Lab 4.2 (backend) and Lab 4.3 (frontend) from:
https://github.com/robiulalam82-BC/lab4.2
https://github.com/robiulalam82-BC/lab4.3
and deploy both labs in Heroku.
