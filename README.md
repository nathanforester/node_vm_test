# Vagrant provision class :taco:

Today's learning objectives:
- provisioning 
- setting up a working app



### Sudo code of what we want to do: 

#### Question you might ask
Someone from the team is hadding you code. Don't just accpet, ask for context. Examples:
- what language
- what frameworks?
- are there tests? 
- is a specific package that need to be installed? is the a package list of some sort? 
- specific versions?
- specific packages or versions that don't work? 
- any other info? 

### Running

- Open a bash terminal in the destination path folder, saved to your hard drive
- This is the same folder you have done a 'git pull' to
- type in the command 'vagrant ssh'
- After a short time, you should be in the virtual environment machine
- Follow these commands step-by-step:
  ````cd home/ubuntu/app/seeds/
      seed node.js
      cd home/ubuntu/app/
      pm2 start app.js*````
      
- If the 'pm2 start' command does not work, try 'npm start'
- if the above does not work, try 'npm forever'
- if the above still does not work, try 'npm install forever' then 'npm start'

- Access a web browser (preferably FireFox or Chrome)
- type in 'development.local:80' or 'development.local:3000'. Ideally, you should be testing through port 80, as this is the standard HTTP port. The standard port for HTTPS is 443.

- If the company logo appears, the app is working properly



