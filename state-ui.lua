local state = {}

function use_state(element)
    SendNUIMessage({
        internal = "use_state",
        element = element
    })
    return {
        function() 
            return state[element]
        end,
        function(type, value)
            state[element][value]
            SendNUIMessage({
                type = element,
                state = state[element]
            })
        end
    }
end

local [get_tweets, set_tweets] = use_state("#tweets")

function update_tweet(message, tweet)
    set_tweets("value", "my tweet")
end

function update_tweets(message, tweet)
    set_tweets("html", [[
        <ul>
            <span id="message_738213">]] .. message .. [[</span>
        </ul>
    ]])
end