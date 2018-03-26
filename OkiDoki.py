import discord
import asyncio
import safygiphy
import random
import requests
import io

bot = discord.Client()
g = safygiphy.Giphy()



@bot.event
async def on_ready():
 
   print("Witam")
   @bot.event
   async def on_message(message):
      if message.content.lower().startswith("-siema"):
        await bot.send_message(message.channel, "Konichiwa <3")
        
      if message.content.lower().startswith("-help"):
        await bot.send_message(message.channel, "prefix: -, -siema (Więcej komend wkrótce)")
                           



                                  

        if message.content.lower().startswith("-rias"):
         response = requests.get(message.channel, "https://media.giphy.com/media/ZgGVd3lP9MVQk/giphy.gif", stream=True)
         await bot.send_file(message.channel, io.BytesIO(response.raw.read()), filename="bild.gif", content="Test Bild.")


      if message.content.lower().startswith("-gif"):
        gif_tag = message.content[5:]
        rgif = g.random(tag=str(gif_tag))
        response = requests.get(
          str(rgif.get("data", {}).get("image_orginal_url")), stream=True
           )
        await bot.send_file(message.channel, io.BytesIO(response.raw.read()), filename="video.gif")
        
    
   
    
    
    

bot.run("NDI3ODA5OTEzOTgxNjMyNTMz.DZp8jg.Yux62MkEiIMmw2jQGQfPrBl13m8")
        
     
