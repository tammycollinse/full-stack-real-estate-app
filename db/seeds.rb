
#Ensuring that everything gets done and reseeded once the application is restarted

Listing.destroy_all
Broker.destroy_all
Agent.destroy_all

#This will be the brokers
puts "Creating our brokers..."
b1 = Broker.create(address:"49 E 10th St, New York, NY 10003",description: "A trusted and modern real estate firm with one of a kind real estate expertise and neighborhood fluency.",images:"https://www.leadersmag.com/issues/2015.3_Jul/Logos/2015.3Corcoran.png", link:"https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwj1g5Sx_P35AhWmkIkEHawaDWkQ-TAoAHoECHQQAQ&url=http%3A%2F%2Fwww.corcoran.com%2F&usg=AOvVaw02cFBi7wZm4OPmsdEEKyWw",phone_number: "278-353-4827",form:"Not entirely sure what is happening over here", name:"The Corcoran Group", username:"theceegroup")
b2 = Broker.create(address:"99 Park Ave 10th Floor, New York, NY 10016" ,description:"One of the major names in real estate in the USA. Join a brand of trusted real estate expertise",images:"https://p.kindpng.com/picc/s/120-1202293_keller-williams-realty-logo-hd-png-download.png", link:"https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwi0qLW5_v35AhUmmIkEHZ26B_IQFnoECAIQAQ&url=https%3A%2F%2Fkwnyc.com%2F&usg=AOvVaw22bgdTVfBp6JD7dLMcJaBA" ,phone_number:"987-238-2748", form:"Still not sure what is happening here", name: "Keller Williams NYC" , username:"kwrealty")
b3 = Broker.create(address: "980 Madison Ave, New York, NY 10021",description: "With Douglas Elliman, know that you will have all your real estate needs met, exceeding expectation",images:"https://searchlogovector.com/wp-content/uploads/2018/04/douglas-elliman-real-estate-logo-vector.png", link:"https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwjy5-_4gP75AhU2BYgJHf9xCFsYABAAGgJxbg&ohost=www.google.com&cid=CAESbOD2Khm-L_FNW1pCEuaxZEJVitPYW9bVzDBRiySPAdNoX7QTED7dUNqakR9njUNzXWKXUCXS36AM78fJCbVva95odJokp-c2QpW4HicfkVpXpcW-pOxeqfDeM5qGfUuJCONFos-qjHsWDOHeGA&sig=AOD64_171IzZp8ItmbAZo9h5V5NSNF592Q&q&adurl&ved=2ahUKEwii3-T4gP75AhWWkIkEHXbeDi4Q0Qx6BAgDEAE" ,phone_number:"234-566-8364",form:"need something in this space", name:"Douglas Elliman" , username:"DERealEstate")
b4 = Broker.create(address:"219B W 116th St, New York, NY 10026",description:"We will deliver real estate experiences beyond expectations to enhance our client's lifestyle. Coldwell Banker Values. Integrity and excellence in all things",images:"https://atlantaagentmagazine.com/wp-content/uploads/sites/6/2021/10/coldwell-banker-logo-blue-scaled.jpg.optimal.jpg", link:"https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwiPnbzhgf75AhWAkokEHamzAB4QFnoECAIQAQ&url=https%3A%2F%2Fcbwarburg.com%2F&usg=AOvVaw3w8uChrBLwUSiK9pRNkSc0",phone_number:"347-634-3857",form:"space filler", name:"Coldwell Banker Warburg Realty" , username:"thewardogs")
b5 = Broker.create(address:"149 5th Ave 4th floor, New York, NY 10010",description:"Our mission is to deliver the highest quality of service and results, that exceed the expectations of an elite clientele, every transaction, every day.",images:"https://mma.prnewswire.com/media/452508/SOTHEBY%27S_INTERNATIONAL_REALTY_LOGO.jpg?p=twitter", link:"https://www.sothebysrealty.com/eng",phone_number:"879-287-3742",form:"space filler in here", name:"Sotheby's International Realty" , username:"sothebyslogin")



# This will be the agents
puts "Creating our agents..."
a1 = Agent.create(full_name:"Daniel Morales",email:"daniel.b.morales95@gmail.com", phone_number:"347-274-2763", description_experience:"A passionate and meticulous real estate agent witha great understanding of the market. Dedication to clients and ensuring that they find the home of their dreams",image:"image url goes here", username:"dannymorales95")
a2 = Agent.create(full_name:"Tammy Collinse",email: "tlcollinse@gmail.com", phone_number:"914-353-2453", description_experience:"Talented and ambitious real estate agent with 4 years of experience, focusing primarily on the Greater NYC Metropolitan Area",image:"image url goes here", username: "tammywammy")
a3 = Agent.create(full_name:"Sandra Simons",email:"sandra890@gmail.com", phone_number: "914-243-2385", description_experience: "Sandra brings 10 years of Real Estate experience to the table and always devotes her utmost best to her clients",image: "image url goes here", username: "sunnysandra")
a4 = Agent.create(full_name: "William Collinse",email: "collinsew@gmail.com", phone_number: "347-879-2736", description_experience: "William has been in the industry for over 8 years and is extremely passionate about his craft in helping people find their dreams home!" ,image:"image url goes here", username:"williamtherealtor")
a5 = Agent.create(full_name:"Robbin Miller",email: "rm@gmail.com", phone_number:"349-273-1837" ,description_experience:"Robin is an awesome realtor! A perfectionist in all that he does, and it shows in his work as a realtor",image:"image url goes here", username:"robbinrealtor")



#This is going to be our listings
puts "Seeding our listings..."
Listing.create(pictures: "http://liphotos.a.stratusdata.com/Live/Default.ashx?type=ListingPhoto&entityName=Listing&entityID=3384160&index=1&size=250&label=form&t=1648215648", condition: "Great condition", address:"61-11 Catalpa Avenue, Flushing, NY 11385 ", description:"INVESTORS DREAM- 8 family corner Building. 7 Three bedroom boxed apartments and 1 One bedroom Apartment. One Unit is vacant -three bedroom. All up to code and DHCR all updated. Building has copper plumbing, Updated roof, and Excellent condition apartments. It is 2 Blocks from Fresh Pond Rd M Train.",type_of_home:"Multi-Family", bed:22, baths: 8 ,sq_feet:2000, for_sale: true, saves: 23 ,views:45 , price:1900000, est_payment:0.00, extras: "Not sure what happens", broker_id: b1.id , agent_id: a2.id)
Listing.create(pictures: "http://liphotos.a.stratusdata.com/Live/Default.ashx?type=ListingPhoto&entityName=Listing&entityID=3410827&index=3&size=250&label=form&t=1656078389", condition: "Very condition", address: "761 Seneca Avenue, Flushing, NY 11385 ", description:"Prime Ridgewood mid block location!! walking distance to m train and all shops. 6 family well maintained building with railroad style units, great investment opportunity with great tenats in place and only one vacancy (apartment 1r) for the new owner to move in or to rent it. The building also offers the opportunity to convert the first level from apartments to commercial stores 
", type_of_home:"Multi-Family", bed:12, baths: 6 ,sq_feet:2250, for_sale: true, saves: 4 ,views: 34 ,price:1328000, est_payment:0.00, extras:"not sure what happens here", broker_id: b5.id, agent_id: a1.id)

# Listing.create(pictures:, condition:, address:, description:,type_of_home:, bed:, baths:,sq_feet:, for_sale:, saves:,views: price:, est_payment:, extras:, broker_id:, agent_id)
# Listing.create(pictures:, condition:, address:, description:,type_of_home:, bed:, baths:,sq_feet:, for_sale:, saves:,views: price:, est_payment:, extras:, broker_id:, agent_id)
# Listing.create(pictures:, condition:, address:, description:,type_of_home:, bed:, baths:,sq_feet:, for_sale:, saves:,views: price:, est_payment:, extras:, broker_id:, agent_id)
# Listing.create(pictures:, condition:, address:, description:,type_of_home:, bed:, baths:,sq_feet:, for_sale:, saves:,views: price:, est_payment:, extras:, broker_id:, agent_id)

puts "Seeding done! Yay! You're doing great!"

