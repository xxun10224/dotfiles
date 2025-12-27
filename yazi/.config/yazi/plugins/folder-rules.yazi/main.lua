-- local function setup()
-- 	ps.sub("cd", function()
-- 		local cwd = cx.active.current.cwd
-- 		if cwd:ends_with("Downloads") then
-- 			ya.manager_emit("sort", { "mtime", reverse = true, dir_first = false })
-- 		else
-- 			ya.manager_emit("sort", { "natural", reverse = false, dir_first = true })
-- 		end
-- 	end)
-- end
--
-- return { setup = setup }

-- ~/.config/yazi/plugins/folder-rules.yazi/init.lua
return {
    setup = function()
        ps.sub("cd", function()
            local dir = tostring(cx.active.current.cwd)
            if string.find(dir, "Downloads") then
                ya.manager_emit("sort", { "mtime", reverse = true, dir_first = false })
            -- else
            --     ya.manager_emit("sort", { "natural", reverse = false, dir_first = true })
            end
        end)
    end,
}
