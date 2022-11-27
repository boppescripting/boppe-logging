Config = {
    Levels = {
        Debug = {
            enabled = true,
            color = '\27[36m',
        },
        Trace = {
            enabled = true,
            color = '\27[34m',
        },
        Info = {
            enabled = true,
            color = '\27[33m',
        },
        Warn = {
            enabled = true,
            color = '\27[35m',
        },
        Error = {
            enabled = true,
            color = '\27[31m',
            file = 'logs/%s.txt',
        },
        Fatal = {
            enabled = true,
            color = '\27[41m',
            file = 'logs/%s.txt',
        },
    }
}