Config = {}

-- Variables used to determine how much food, water, or stress relief items give when consumed

Low = math.random(10, 20) -- Gives small amount of Food, Water, or Stress Relief
Medium = math.random(30, 50) -- Gives decent amout of Food, Water, or Stress Relief
High = math.random(90, 100) -- Gives high amount of Food, Water, or Stress Relief


--------------------------------------------------------
-------------------------FOOD---------------------------
--------------------------------------------------------


Config.EatProgressMessage = '' -- Configure the message that will show on the progress bar when eating

Config.EatStress = Low -- Determines how much stress releif your FOOD items give (Set to 'Low' by default) 

-- Food Items Here (Add as many items as you want)
Config.GoodEats = {
    ["itemname"] = Medium -- Determines how much FOOD the items give (Set to 'Medium' by default)
 -- ["itemname"] = Medium
}


--------------------------------------------------------
------------------------DRINKS--------------------------
--------------------------------------------------------


Config.DrinkProgressMessage = '' -- Configure the message that will show on the progress bar when drinking

Config.DrinkStress = Low -- Determines how much stress releif your DRINK items give (Set to 'Low' by default)

-- Drink Items Here (Add as many as you want)
Config.GoodBevs = {
    ["itemname"] = Medium -- Determines how much DRINK the items give (Set to 'Medium' by default)
 -- ["itemname"] = Medium    
}
