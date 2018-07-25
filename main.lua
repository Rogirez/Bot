
local DiscordModule = require('discordia')
local Date = DiscordModule.Date
local Date = DiscordModule.Time
local Stop = true
local Client = DiscordModule.Client()
local commandPrefix = "."
local RanNN
local clock = os.clock
local Granie = false
local GUZF = 405302269307912192
local CGUZF = 440392565674737664

function sleep(n)  -- seconds
  local t0 = clock()
  while clock() - t0 <= n do end
end
Client:on('messageCreate', function(message)
     local content = message.content
     print(message.author.username..": "..content)
     if content:sub(1,#commandPrefix+12) == commandPrefix.."przytul" then
      
      message.channel:send {file = 'hug.gif'}

  end
    if content:sub(1,#commandPrefix+12) == commandPrefix.."flip" then
    	local moneta = math.random(2)
    	if moneta == 1 then
    	message.channel:send("Orzeł!")
    	elseif moneta == 2 then
    	message.channel:send("Resztka!")
	end
		
	
end
     if content:sub(1,#commandPrefix+12) == commandPrefix.."serwer" then
     	local guild = message.guild
     	local owner = guild.owner
     	message.channel:send {
		embed = {
			thumbnail = {url = guild.iconURL},
			fields = {
				{name = 'Nazwa', value = guild.name, inline = true},
				{name = 'ID', value = guild.id, inline = true},
				{name = 'Kreator', value = owner.fullname, inline = true},
				
				
				{name = 'Kategorie', value = tostring(#guild.categories), inline = true},
				{name = 'Tekstowe kanały', value = tostring(#guild.textChannels), inline = true},
				{name = 'Głosowe kanały', value = tostring(#guild.voiceChannels), inline = true},
				{name = 'Role', value = tostring(#guild.roles), inline = true},
				{name = 'Emoji', value = tostring(#guild.emojis), inline = true},
			}
		}
	}
     end
     	if content:sub(1,#commandPrefix+12) == commandPrefix.."ikona" then
     	message.channel:send {embed = {image = {url = message.guild.iconURL}}}
     end
     if content:sub(1,#commandPrefix+12) == commandPrefix.."ping" then
     	message.channel:send("Pong")

     end
    if content:sub(1,#commandPrefix+12) == commandPrefix.."oof" then
     	message.channel:send {file = 'oof.png'}

     end
    if content:sub(1,#commandPrefix+12) == commandPrefix.."RN" then
    	Stop = false
    	local Min, Max = math.random(1,50), math.random(99999,1000000)

    		
    	RanNN = math.random(Min, Max)
    	print(RanNN)
     	message.channel:send("Myśle o numerze pomiędzy "..Min.." a "..Max..", Zgadnij numer, wpisz 0 by anulować")
     end
     if tonumber(content) then
     	if tonumber(content) == RanNN and Stop == false then
     		message.channel:send('Gratulacje '..RanNN.." to poprawny numer")
     		Stop = true
  
     elseif tonumber(content) == 0 and Stop == false  then
     	message.channel:send("Skończono grę!")
     	Stop = true
     elseif tonumber(content) and Stop == false then
     message.channel:send("zły numer")

     end
     end   
     if content:sub(1,#commandPrefix+12) == commandPrefix.."kot" then
     	local RCat = math.random(10)
     	if RCat == 1 then
           message.channel:send("https://tenor.com/view/kitty-gif-7245759 oto twój randomowy kotek") -- 1
        elseif RCat == 2 then
           message.channel:send("https://tenor.com/view/kitten-love-gif-7961808 oto twój randomowy kotek") -- 2
        elseif RCat == 3 then
           message.channel:send("https://tenor.com/view/kitten-gif-7660902 oto twój randomowy kotek") -- 3
        elseif RCat == 4 then
           message.channel:send("https://tenor.com/view/kitten-cute-icecream-funny-animals-cats-gif-9831974 oto twój randomowy kotek") -- 4
           elseif RCat == 5 then
           message.channel:send("https://tenor.com/view/cute-tickle-kitty-kitten-cat-gif-7212020 oto twój randomowy kotek") -- 5
           elseif RCat == 6 then
           message.channel:send("https://tenor.com/view/cat-kitten-cats-nap-napping-gif-4402779 oto twój randomowy kotek") -- 6
           elseif RCat == 7 then
           message.channel:send("https://tenor.com/view/cat-cats-kitten-kitty-kittens-gif-4577739 oto twój randomowy kotek") -- 7
           elseif RCat == 8 then
           message.channel:send("https://tenor.com/view/cat-funny-shocking-animals-pets-gif-3453883 oto twój randomowy kotek") -- 8
           elseif RCat == 9 then
           message.channel:send("https://tenor.com/view/cat-shocked-gif-5697498 oto twój randomowy kotek") -- 9
           elseif RCat == 10 then
           message.channel:send("https://tenor.com/view/cat-cute-gif-9385264 oto twój randomowy kotek") -- 10
     	end
     
end



end)

   Client:run("Bot NDYwMDU4MjQzNzAwNjIxMzEz.DhfGag.Og-UJ2wOM6ND_-5J1eW2RUp4jJI") -- luvit C:\Users\Igor\Desktop\DDDBot.lua
  Client:on('ready', function()
  	Client:getGuild(466605826463891466):getChannel(466605826463891468):send("Botu Startu, bot jest teraz online!")
  	Client:setGame("...")
  	
end)
