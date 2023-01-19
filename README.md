# DigiPetsGo

## About our project
A fantastic world of virtual customizable animals that allows collectors to create, sell and buy unique
characters using *Blockchain*. Users can interact with their friends or players from everywhere in the
world to grow their collection of digital friends.

The application promises an easy-to-use design to
create unique in-game characters that can be traded with other users. It is a relaxing activity through
which one can unleash their imagination to create the most inventive and goofy characters in the
virtual zoo.


Each animal created in the application defines an *NFT*, a unique object with special characteristics. At
birth, each **DigiPetGo** will have a set of unique, randomly generated characteristics: animal breed,
personality and many others. Besides these, the user will add their own personalized details to the
character.

## Contributors
* Mara-Ioana Nicolae
* Radu Nichita
* Cristian-Petrisor Descultu

## InfluxDb tutorial
First, connect to the shell of the InfluxDB container. Start InfluxDB using command `influx`. To list all existent databases, use `show databases`; if not already present, crate the `digipetsgo` database using `create database digipetsgo`. 

## Requirements:
- apt-get install nodejs
- npm i cors
- npm i express
- npm i nodemon
- npm install --save influx

Hope I didn't forget anything. If so, add to the list.

- - -
## How to run:
- start the InfluxDB container separately
    - go the the `./backend` directory and start the container using the `run.sh` script
    - make sure that the container is up and running
    - update the database accordingly if necessary (connect to its shell and follow the *InfluxDB tutorial section*)
- in `./website` directory run : `npm run start`
- to access the frontend, use `localhost:3001`
- remember to do the clean up running `clean.sh`

