--[[
    Copyright 2017 Matthew Hesketh <wrxck0@gmail.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local doggo = {}
local mattata = require('mattata')

function doggo:init()
    doggo.commands = mattata.commands(self.info.username)
    :command('doggo')
    :command('dog')
    :command('josh').table -- Josh likes dogs!
    doggo.help = '/doggo - Sends a random photo of a dog. Aliases: /dog, /josh.'
end

function doggo:on_message(message, configuration, language)
    mattata.send_chat_action(
        message.chat.id,
        'upload_photo'
    )
    local success = mattata.send_video(
        message.chat.id,
        'http://nosebleed.alienmelon.com/porn/FaciallyDistraughtDogs/dog' .. math.random(62) .. '.gif'
    )
    if not success
    then
        return mattata.send_reply(
            message,
            language['errors']['connection']
        )
    end
end

return doggo