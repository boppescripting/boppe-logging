-- Create the exports for each debug level defined in the config file
for i, v in pairs(Config.Levels) do
    local temp_name = i

    i = function(file, line, message)
        if not v.enabled then return end

        local temp_lineinfo = file .. ':' .. line
        print(string.format("[%-6s] [%s] %s",
            temp_name,
            temp_lineinfo,
            message
        ))

        -- Writing to file is disabled on client side
    end

    exports(string.format('%s', temp_name), i)
end