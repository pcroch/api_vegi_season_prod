*This is an API to find the proper vegetables or fruits following the season or the month*. You can find the Api there: https://api-season-prod.herokuapp.com

For the sack of the understanding: I will use the word "item" to describe a fruit or a vegetable.
Actually no one can modify the db as I locked the modification via an Admin... I don't trust the user.

__For a normal user:__


1- Print all the items in the API - **all users**

  https://api-season-prod.herokuapp.com/api/v1/products

2- Show the item as per its id - **all users**

  :id is an integer

  https://api-season-prod.herokuapp.com/api/v1/products/:id
  
 3- Create an item - **admin only**
 
 **Upcoming** 
 
 4 - Update an item - **admin only**
  
  **Upcoming** 
  
 5- Destroy an item - **admin only**
 
 **Upcoming** 
  
  __Upcoming functionalities:__
  
  
  **1** - Issues: Show item per months instead of per :id
    - Solution: 
    
  **2** - Issues: Write down the doc for the admin
    - Solution: I just have to do it :)
  
  **3** - Issues: Restaure the uniqueness of each item. 
    - Solution: Some items can be cropped for more than one months. Actually, we have just one line per month. I must add a table managing that issue.
  
  **4** - Issues: Taking into account the multi user
    - Solution: For now, only the Admin can modify the DB. In the LT, some user could modify their own db or even modify the main db after approval of the admin.
    
  **5** - Issues: Improve the root page
    - Solution: working on it..
    
  And more will come...
  
  See you!


