local Direction = require("scripts/libs/direction")
local create_custom_bot = require('scripts/bot/create_custom_bot')

--Local Variables--
-------------------

--local bot = create_custom_bot("test", {
  --name = "",
  --area_id = nil,
  --texture_path = "/server/assets/prog.png",
  --animation_path = "/server/assets/prog.animation",
  --x = 1.5,
  --y = 1.5,
  --z = 0,
  --solid = true
--})

--bot.mug_texture_path = "resources/ow/prog/prog_mug.png"
--bot.mug_animation_path = "resources/ow/prog/prog_mug.animation"

--bot.path = {
  --{ x=0.5, y=0.5 },
  --{ x=0.5, y=2.5 },
  --{ x=2.5, y=2.5 },
  --{ x=2.5, y=0.5 }
--}

--function bot.on_interact(player_id)
  --if bot.talking_to then
    --bot.message_player(player_id, "SORRY I'M BUSY TALKING TO SOMEONE RIGHT NOW.")
    --return
  --end

  --Net.lock_player_input(player_id)
  --bot.question_player(player_id, "HELLO! ARE YOU DOING WELL TODAY?")

  --bot.talking_to = player_id

  --local player_pos = Net.get_player_position(player_id)
  --Net.set_bot_direction(bot._id, Direction.from_points(bot, player_pos))
--end

--function bot.on_response(player_id, response)
  --if bot.talking_to ~= player_id then
    --return
  --end

  --if response == 1 then
    --bot.message_player(player_id, "THAT'S GREAT!");
  --else
    --bot.message_player(player_id, "OH NO! I HOPE YOUR DAY GETS BETTER.");
  --end

  --Net.unlock_player_input(player_id)

  --bot.talking_to = nil
--end

-- server events

function tick(delta_time)
  --bot._tick(delta_time)
end

--[[function handle_player_move(player_id, x, y, z)
local area = Net.get_player_area(player_id)
  print(x, y, z)
  if area == Area1 then --GenNet1
      if math.floor(x) == 4 and math.floor(y) == 1 then --to GenNet2
          Net.transfer_player(player_id, Area2, false, 13.5, 29.5, 2, "Up Right")-- Go To GenNet2
      end

      elseif area == Area2 then --GenNet2
        if math.floor(x) == 13 and math.floor(y) == 30 then --To GenNet1
          Net.transfer_player(player_id, Area1, false, 4.5, 2.5, 0, "Down Left")
      elseif math.floor(x) == 3 and math.floor(y) == 3 then -- CityNet1
          Net.transfer_player(player_id, Area3, false, 20.5, 23.5, 0, "Up Right")--
      end

      elseif area == Area3 then --CityNet1
        if math.floor(x) == 20 and math.floor(y) == 24 then --go back to GenNet2
          Net.transfer_player(player_id, Area2, false, 3.5, 4.5, 2, "Down Left")
      elseif math.floor(x) == 7 and math.floor(y) == 2  then -- CityNet2
          Net.transfer_player(player_id, Area4, false, 18.5, 33.5, 1, "Up Right")--
      elseif math.floor(x) == 8 and math.floor(y) == 2  then -- CityNet2
          Net.transfer_player(player_id, Area4, false, 19.5, 33.5, 1, "Up Right")--
      elseif math.floor(x) == 38 and math.floor(y) == 16  then -- CityNet3
          Net.transfer_player(player_id, Area5, false, 5.5, 27.5, 0, "Down Right")--
      elseif math.floor(x) == 38 and math.floor(y) == 17  then -- CityNet3
          Net.transfer_player(player_id, Area5, false, 5.5, 28.5, 0, "Down Right")--
      end

      elseif area == Area4 then --CityNet2
        if math.floor(x) == 18 and math.floor(y) == 34  then -- go back to CityNet1
          Net.transfer_player(player_id, Area3, false, 7.5, 3.5, 0, "Down Left")
      elseif math.floor(x) == 19 and math.floor(y) == 34  then -- go back to CityNet1
          Net.transfer_player(player_id, Area3, false, 8.5, 3.5, 0, "Down Left")
      end

    elseif area == Area5 then --CityNet3
      if math.floor(x) == 4 and math.floor(y) == 28  then -- go back to CityNet2
        Net.transfer_player(player_id, Area3, false, 37.5, 17.5, 1, "Up Left")
    elseif math.floor(x) == 4 and math.floor(y) == 27  then -- go back to CityNet2
        Net.transfer_player(player_id, Area3, false, 37.5, 16.5, 1, "Up Left")
    end

  end
end
--]]

function handle_textbox_response(player_id, response)
  --bot._handle_textbox_response(player_id, response)
return nil
end

function handle_player_disconnect(player_id)
  --bot._handle_player_disconnect(player_id)
return nil
end

function handle_player_transfer(player_id)
  --bot._handle_player_disconnect(player_id)
return nil
end

