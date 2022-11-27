-- Server Specific Util Functions
local function writeToFile(temp_name, temp_config, temp_lineinfo, message)
    local fp = io.open(string.format(temp_config.file, GetCurrentResourceName()), "a")
    if not fp then
        os.execute("mkdir logs")
        fp = io.open(string.format(temp_config.file, GetCurrentResourceName()), "a")
    end

    local str = string.format("[%-6s%s] %s | %s\n",
        temp_name, os.date(), temp_lineinfo, message)
    fp:write(str)
    fp:close()
end

-- Create the exports for each debug level defined in the config file
for i, v in pairs(Config.Levels) do
    local temp_name = i

    i = function(file, line, message)
        if not v.enabled then return end

        local temp_lineinfo = file .. ':' .. line
        print(string.format("%s[%-6s%s]%s [%s] %s",
            v.color,
            temp_name,
            os.date('%H:%M:%S'),
            '\27[0m',
            temp_lineinfo,
            message
        ))

        if v.file then writeToFile(temp_name, v, temp_lineinfo, message) end
    end

    exports(string.format('%s', temp_name), i)
end