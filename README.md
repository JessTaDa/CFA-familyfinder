#  Family Finder - CFA Major Project 2

Deployed at https://familyfinder.herokuapp.com/
Example user:
  login: mummy@email.com
  password: asdasd

# Overview
- Setup
- Usage
- Project Brief
- Technology Stack
- Problem to solve
- Solution provided by application
- Design process
- Future features


# Setup
Create a new folder where you would like the app to be located.
Next, git clone the application (https://github.com/JessTaDa/CFA-familyfinder)
``` git clone https://github.com/JessTaDa/CFA-familyfinder```

Next we need to run a migration for the database
```rake db:migrate```

Install required gems with the following command
```bundle install```

Optional: Some seed files have been set up for demonstration of the app
```rake db:seed```

The application should be all set up and ready to go!

# Usage
All users must create an account to access the application.

![alt tag](http://i.imgur.com/iXkRCfY.png)

Once an account is created, users will be prompted to provide information about themselves. Users will then be redirected to their personal profile page. Here, users can create 'people files' to search for their missing relatives.

![alt tag](http://i.imgur.com/yjmFpf3.png)



Once created, users can choose to edit their 'people files' and their own details at anytime. Users can also perform a search function, which queries their 'person file' against all entries in the database.

![alt tag](http://i.imgur.com/DMpzyPU.png)


Users with 'admin' privilages are able to search through the entire directory for matches. This feature is restricted to only admins for now.

![alt tag](http://i.imgur.com/MRJ4f4R.png)

# Project brief
To design, build, deploy and present a Ruby on Rails application that must impress one person/group from this list:
- Barack Obama (politics)
- Rupert Murdoch (journalism)
- Bill & Melinda Gates (social causes/global development)

# Technology stack
The web application was to be built to the best of our ability using tools and skills we have learnt during our 9 weeks at Coder Factory Academy. These included:
- Ruby
- Rails
- HTML
- CSS
- Rspec for testing
- Postgres database

# Problem to solve
The tragedy of the Khmer Rouge regime in Cambodia from 1975-79 resulted in the death of millions. As we draw closer to the 40th year anniversary to the end of the regime, many survivors who were separated from their families still do not know if their loved ones are alive and if so, how to contact them.  

The Documentation Centre of Cambodia aimed to create a comprehensive list of missing persons by the end of 2014. This database is an unsorted collection of emails from survivors, uncategorised and hard to sort through.

Most survivors contacting the centre are those who have escaped overseas, with greater literacy skills and Internet access. Many survivors who remain in Cambodia with lower literacy and scarce Internet access may never have their records created in the database. This runs the risk of surviving family members not reuniting within their lifetime.

Cambodia has the second highest number of NGO’s per capita in the world, but reuniting survivors is a lower priority than food, water, shelter, education and many other issues. Because of this, efforts to reunite survivors have been less successful.

# Solution provided by application
The solution is to create an easy to use database to document current survivors. The application will be used by overseas survivors (who have greater access to the internet) and by visiting volunteers in Cambodia. Volunteers visiting rural areas to carry out humanitarian work for other organisations will be encouraged to assist local community members and residents to use the application.

The application is minimalistic in design as to facilitate ease of use and slow Internet connectivity.

The application will create a database containing names, hometowns, age, stories and missing status of many Cambodians. Image upload is also an available function, although it is not expected to be used by everyone, as many survivors do not have photos from before and during the time.

The database also provides an easy to use and accurate search function that allows the survivor to search for missing loved ones without typing. This is to reduce the need for typing and literacy skills to use the application, making it more accessible to the whole population.

As the application matures, search functions will become more customised and search accuracy will be improved.


# Design process
Several brainstorming sessions were conducted to estabish the core functionality requirements and entity relationships for the application.

User and developer stories are important in the beginning of any design process, as to ensure the end product being developed meets its necessary requirements. User and developer stories were brainstormed and fleshed out in 'trello'. A snapshot of the process can be seen below.

![alt tag](http://i.imgur.com/Wmz8kYq.png)

Several brainstorming sessions were conducted to estabish the core functionality requirements and entity relationships for the application.

First draft:
![alt tag](http://i.imgur.com/PTFfUgg.jpg)

Entity Relationship Diagram:
![alt tag](http://i.imgur.com/tmsB1dW.png)

Below are several examples of early wireframe designs.

![alt tag](http://i.imgur.com/5GSYmpM.png)
![alt tag](http://i.imgur.com/IKogkVs.png)
![alt tag](http://i.imgur.com/SXJP89c.png)

# Testing
Testing was implemented throughout the app using 'rspec'. Code quality was assessed on 'CodeClimte'

![alt tag](http://i.imgur.com/EMXEt7y.png)

# Future features
- Improved search algorithms for increased accuracy and higher match rates
- Collection of good quality data
- Increased privacy features and security
- Offline mode to allow for data input when internet is not available




# Author
Jess Ngo
