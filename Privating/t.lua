local cloneref = (cloneref or clonereference or function(instance: any)
    return instance
end)
local clonefunction = (clonefunction or copyfunction or function(func) 
    return func 
end)

local HttpService: HttpService = cloneref(game:GetService("HttpService"))
local isfolder, isfile, listfiles = isfolder, isfile, listfiles

if typeof(clonefunction) == "function" then
    -- Fix is_____ functions for shitsploits, those functions should never error, only return a boolean.

    local
        isfolder_copy,
        isfile_copy,
        listfiles_copy = clonefunction(isfolder), clonefunction(isfile), clonefunction(listfiles)

    local isfolder_success, isfolder_error = pcall(function()
        return isfolder_copy("test" .. tostring(math.random(1000000, 9999999)))
    end)

    if isfolder_success == false or typeof(isfolder_error) ~= "boolean" then
        isfolder = function(folder)
            local success, data = pcall(isfolder_copy, folder)
            return (if success then data else false)
        end

        isfile = function(file)
            local success, data = pcall(isfile_copy, file)
            return (if success then data else false)
        end

        listfiles = function(folder)
            local success, data = pcall(listfiles_copy, folder)
            return (if success then data else {})
        end
    end
end

local ThemeManager = {}
do
    local ThemeFields = { "FontColor", "MainColor", "AccentColor", "BackgroundColor", "OutlineColor" }
    ThemeManager.Folder = "ObsidianLibSettings"
    -- if not isfolder(ThemeManager.Folder) then makefolder(ThemeManager.Folder) end

    ThemeManager.Library = nil
    ThemeManager.AppliedToTab = false
    ThemeManager.BuiltInThemes = {
        ["Default"] = {
            1,
            { 
                FontColor = "ffffff",
                MainColor = "1a1a1a",
                AccentColor = "ff0000",
                BackgroundColor = "0f0f0f",
                OutlineColor = "000000"
            },
        },

        ["Red Neon"] = {
            2,
            {
                FontColor = "ffffff",
                MainColor = "1c1c1c",
                AccentColor = "ff1a1a",
                BackgroundColor = "121212",
                OutlineColor = "400000"
            },
        },

        ["Crimson Future"] = {
            3,
            {
                FontColor = "ffffff",
                MainColor = "201214",
                AccentColor = "dc143c",
                BackgroundColor = "140a0c",
                OutlineColor = "4a0f18"
            },
        },

        ["Scarlet Dark"] = {
            4,
            {
                FontColor = "ffffff",
                MainColor = "242424",
                AccentColor = "ff3b3b",
                BackgroundColor = "1a1a1a",
                OutlineColor = "3d0d0d"
            },
        },

        ["Ruby Tech"] = {
            5,
            {
                FontColor = "ffffff",
                MainColor = "1e1e1e",
                AccentColor = "e0115f",
                BackgroundColor = "141414",
                OutlineColor = "4b0a24"
            },
        },

        ["Tokyo Red Night"] = {
            6,
            {
                FontColor = "ffffff",
                MainColor = "191919",
                AccentColor = "ff004c",
                BackgroundColor = "121212",
                OutlineColor = "330014"
            },
        },

        ["Inferno"] = {
            7,
            {
                FontColor = "ffffff",
                MainColor = "2a2a2a",
                AccentColor = "ff4500",
                BackgroundColor = "1b1b1b",
                OutlineColor = "4a1a00"
            },
        },

        ["Blood Quartz"] = {
            8,
            {
                FontColor = "ffffff",
                MainColor = "232330",
                AccentColor = "b11226",
                BackgroundColor = "1b1b26",
                OutlineColor = "3a1b22"
            },
        },

        ["Nord Red"] = {
            9,
            {
                FontColor = "eceff4",
                MainColor = "3b2a2a",
                AccentColor = "bf616a",
                BackgroundColor = "2a1f1f",
                OutlineColor = "5a3030"
            },
        },

        ["Dracula Red"] = {
            10,
            {
                FontColor = "f8f8f2",
                MainColor = "44475a",
                AccentColor = "ff5555",
                BackgroundColor = "282a36",
                OutlineColor = "6a2b2b"
            },
        },

        ["Monokai Red"] = {
            11,
            {
                FontColor = "f8f8f2",
                MainColor = "272822",
                AccentColor = "ff2e63",
                BackgroundColor = "1e1f1c",
                OutlineColor = "4b1a2a"
            },
        },

        ["Gruvbox Red"] = {
            12,
            {
                FontColor = "ebdbb2",
                MainColor = "3c3836",
                AccentColor = "cc241d",
                BackgroundColor = "282828",
                OutlineColor = "5a1f1a"
            },
        },

        ["Solarized Red"] = {
            13,
            {
                FontColor = "93a1a1",
                MainColor = "073642",
                AccentColor = "dc322f",
                BackgroundColor = "002b36",
                OutlineColor = "5a1f1a"
            },
        },

        ["Catppuccin Red"] = {
            14,
            {
                FontColor = "d9e0ee",
                MainColor = "302d41",
                AccentColor = "f38ba8",
                BackgroundColor = "1e1e2e",
                OutlineColor = "4a2730"
            },
        },

        ["One Dark Red"] = {
            15,
            {
                FontColor = "abb2bf",
                MainColor = "282c34",
                AccentColor = "e06c75",
                BackgroundColor = "21252b",
                OutlineColor = "5a2a2a"
            },
        },

        ["Cyber Red"] = {
            16,
            {
                FontColor = "ffffff",
                MainColor = "1f1b29",
                AccentColor = "ff073a",
                BackgroundColor = "14121c",
                OutlineColor = "4a0014"
            },
        },

        ["Oceanic Red"] = {
            17,
            {
                FontColor = "d8dee9",
                MainColor = "1b2b34",
                AccentColor = "ff4d4d",
                BackgroundColor = "16232a",
                OutlineColor = "4a1f1f"
            },
        },

        ["Material Red"] = {
            18,
            {
                FontColor = "ffffff",
                MainColor = "212121",
                AccentColor = "f44336",
                BackgroundColor = "151515",
                OutlineColor = "4a1a1a"
            },
        },
    }

    function ThemeManager:SetLibrary(library)
        self.Library = library
    end

    --// Folders \\--
    function ThemeManager:GetPaths()
        local paths = {}

        local parts = self.Folder:split("/")
        for idx = 1, #parts do
            paths[#paths + 1] = table.concat(parts, "/", 1, idx)
        end

        paths[#paths + 1] = self.Folder .. "/themes"

        return paths
    end

    function ThemeManager:BuildFolderTree()
        local paths = self:GetPaths()

        for i = 1, #paths do
            local str = paths[i]
            if isfolder(str) then
                continue
            end
            makefolder(str)
        end
    end

    function ThemeManager:CheckFolderTree()
        if isfolder(self.Folder) then
            return
        end
        self:BuildFolderTree()

        task.wait(0.1)
    end

    function ThemeManager:SetFolder(folder)
        self.Folder = folder
        self:BuildFolderTree()
    end

    --// Apply, Update theme \\--
    function ThemeManager:ApplyTheme(theme)
        local customThemeData = self:GetCustomTheme(theme)
        local data = customThemeData or self.BuiltInThemes[theme]

        if not data then
            return
        end

        local scheme = data[2]
        for idx, val in pairs(customThemeData or scheme) do
            if idx == "VideoLink" then
                continue
            elseif idx == "FontFace" then
                self.Library:SetFont(Enum.Font[val])

                if self.Library.Options[idx] then
                    self.Library.Options[idx]:SetValue(val)
                end
            else
                self.Library.Scheme[idx] = Color3.fromHex(val)

                if self.Library.Options[idx] then
                    self.Library.Options[idx]:SetValueRGB(Color3.fromHex(val))
                end
            end
        end

        self:ThemeUpdate()
    end

    function ThemeManager:ThemeUpdate()
        for i, field in ThemeFields do
            if self.Library.Options and self.Library.Options[field] then
                self.Library.Scheme[field] = self.Library.Options[field].Value
            end
        end

        self.Library:UpdateColorsUsingRegistry()
    end

    --// Get, Load, Save, Delete, Refresh \\--
    function ThemeManager:GetCustomTheme(file)
        local path = self.Folder .. "/themes/" .. file .. ".json"
        if not isfile(path) then
            return nil
        end

        local data = readfile(path)
        local success, decoded = pcall(HttpService.JSONDecode, HttpService, data)

        if not success then
            return nil
        end

        return decoded
    end

    function ThemeManager:LoadDefault()
        local theme = "Default"
        local content = isfile(self.Folder .. "/themes/default.txt") and readfile(self.Folder .. "/themes/default.txt")

        local isDefault = true
        if content then
            if self.BuiltInThemes[content] then
                theme = content
            elseif self:GetCustomTheme(content) then
                theme = content
                isDefault = false
            end
        elseif self.BuiltInThemes[self.DefaultTheme] then
            theme = self.DefaultTheme
        end

        if isDefault then
            self.Library.Options.ThemeManager_ThemeList:SetValue(theme)
        else
            self:ApplyTheme(theme)
        end
    end

    function ThemeManager:SaveDefault(theme)
        writefile(self.Folder .. "/themes/default.txt", theme)
    end

    function ThemeManager:SetDefaultTheme(theme)
        assert(self.Library, "Must set ThemeManager.Library first!")
        assert(not self.AppliedToTab, "Cannot set default theme after applying ThemeManager to a tab!")

        local FinalTheme = {}
        local LibraryScheme = {}
        for _, field in ThemeFields do
            if typeof(theme[field]) == "Color3" then
                FinalTheme[field] = "#" .. theme[field]:ToHex()
                LibraryScheme[field] = theme[field]

            elseif typeof(theme[field]) == "string" then
                FinalTheme[field] = if theme[field]:sub(1, 1) == "#" then theme[field] else ("#" .. theme[field])
                LibraryScheme[field] = Color3.fromHex(theme[field])

            else
                FinalTheme[field] = ThemeManager.BuiltInThemes["Default"][2][field]
                LibraryScheme[field] = Color3.fromHex(ThemeManager.BuiltInThemes["Default"][2][field])
            end
        end

        if typeof(theme["FontFace"]) == "EnumItem" then
            FinalTheme["FontFace"] = theme["FontFace"].Name
            LibraryScheme["Font"] = Font.fromEnum(theme["FontFace"])

        elseif typeof(theme["FontFace"]) == "string" then
            FinalTheme["FontFace"] = theme["FontFace"]
            LibraryScheme["Font"] = Font.fromEnum(Enum.Font[theme["FontFace"]])

        else
            FinalTheme["FontFace"] = "Code"
            LibraryScheme["Font"] = Font.fromEnum(Enum.Font.Code)
        end

        for _, field in { "RedColor", "DarkColor", "WhiteColor" } do
            LibraryScheme[field] = self.Library.Scheme[field]
        end

        self.Library.Scheme = LibraryScheme
        self.BuiltInThemes["Default"] = { 1, FinalTheme }

        self.Library:UpdateColorsUsingRegistry()
    end

    function ThemeManager:SaveCustomTheme(file)
        if file:gsub(" ", "") == "" then
            self.Library:Notify("Invalid file name for theme (empty)", 3)
            return
        end

        local theme = {}
        for _, field in ThemeFields do
            theme[field] = self.Library.Options[field].Value:ToHex()
        end
        theme["FontFace"] = self.Library.Options["FontFace"].Value

        writefile(self.Folder .. "/themes/" .. file .. ".json", HttpService:JSONEncode(theme))
    end

    function ThemeManager:Delete(name)
        if not name then
            return false, "no config file is selected"
        end

        local file = self.Folder .. "/themes/" .. name .. ".json"
        if not isfile(file) then
            return false, "invalid file"
        end

        local success = pcall(delfile, file)
        if not success then
            return false, "delete file error"
        end

        return true
    end

    function ThemeManager:ReloadCustomThemes()
        local list = listfiles(self.Folder .. "/themes")

        local out = {}
        for i = 1, #list do
            local file = list[i]
            if file:sub(-5) == ".json" then
                -- i hate this but it has to be done ...

                local pos = file:find(".json", 1, true)
                local start = pos

                local char = file:sub(pos, pos)
                while char ~= "/" and char ~= "\\" and char ~= "" do
                    pos = pos - 1
                    char = file:sub(pos, pos)
                end

                if char == "/" or char == "\\" then
                    table.insert(out, file:sub(pos + 1, start - 1))
                end
            end
        end

        return out
    end

    --// GUI \\--
    function ThemeManager:CreateThemeManager(groupbox)
        groupbox
            :AddLabel("Background color")
            :AddColorPicker("BackgroundColor", { Default = self.Library.Scheme.BackgroundColor })
        groupbox:AddLabel("Main color"):AddColorPicker("MainColor", {Default = self.Library.Scheme.MainColor})
        groupbox:AddLabel("Accent color"):AddColorPicker("AccentColor", {Default = Color3.new(255, 0, 0)})
        groupbox
            :AddLabel("Outline color")
            :AddColorPicker("OutlineColor", { Default = self.Library.Scheme.OutlineColor })
        groupbox:AddLabel("Font color"):AddColorPicker("FontColor", { Default = self.Library.Scheme.FontColor })
        groupbox:AddDropdown("FontFace", {
            Text = "Font Face",
            Default = "Code",
            Values = { "BuilderSans", "Code", "Fantasy", "Gotham", "Jura", "Roboto", "RobotoMono", "SourceSans" },
        })

        local ThemesArray = {}
        for Name, Theme in pairs(self.BuiltInThemes) do
            table.insert(ThemesArray, Name)
        end

        table.sort(ThemesArray, function(a, b)
            return self.BuiltInThemes[a][1] < self.BuiltInThemes[b][1]
        end)

        groupbox:AddDivider()

        groupbox:AddDropdown("ThemeManager_ThemeList", { Text = "Theme list", Values = ThemesArray, Default = 1 })
        groupbox:AddButton("Set as default", function()
            self:SaveDefault(self.Library.Options.ThemeManager_ThemeList.Value)
            self.Library:Notify(
                string.format("Set default theme to %q", self.Library.Options.ThemeManager_ThemeList.Value)
            )
        end)

        self.Library.Options.ThemeManager_ThemeList:OnChanged(function()
            self:ApplyTheme(self.Library.Options.ThemeManager_ThemeList.Value)
        end)

        groupbox:AddDivider()

        groupbox:AddInput("ThemeManager_CustomThemeName", { Text = "Custom theme name" })
        groupbox:AddButton("Create theme", function()
            local name = self.Library.Options.ThemeManager_CustomThemeName.Value

            if name:gsub(" ", "") == "" then
                self.Library:Notify("Invalid theme name (empty)", 2)
                return
            end

            self:SaveCustomTheme(name)

            self.Library:Notify(string.format("Created theme %q", name))
            self.Library.Options.ThemeManager_CustomThemeList:SetValues(self:ReloadCustomThemes())
            self.Library.Options.ThemeManager_CustomThemeList:SetValue(nil)
        end)

        groupbox:AddDivider()

        groupbox:AddDropdown(
            "ThemeManager_CustomThemeList",
            { Text = "Custom themes", Values = self:ReloadCustomThemes(), AllowNull = true, Default = 1 }
        )
        groupbox:AddButton("Load theme", function()
            local name = self.Library.Options.ThemeManager_CustomThemeList.Value

            self:ApplyTheme(name)
            self.Library:Notify(string.format("Loaded theme %q", name))
        end)
        groupbox:AddButton("Overwrite theme", function()
            local name = self.Library.Options.ThemeManager_CustomThemeList.Value

            self:SaveCustomTheme(name)
            self.Library:Notify(string.format("Overwrote config %q", name))
        end)
        groupbox:AddButton("Delete theme", function()
            local name = self.Library.Options.ThemeManager_CustomThemeList.Value

            local success, err = self:Delete(name)
            if not success then
                self.Library:Notify("Failed to delete theme: " .. err)
                return
            end

            self.Library:Notify(string.format("Deleted theme %q", name))
            self.Library.Options.ThemeManager_CustomThemeList:SetValues(self:ReloadCustomThemes())
            self.Library.Options.ThemeManager_CustomThemeList:SetValue(nil)
        end)
        groupbox:AddButton("Refresh list", function()
            self.Library.Options.ThemeManager_CustomThemeList:SetValues(self:ReloadCustomThemes())
            self.Library.Options.ThemeManager_CustomThemeList:SetValue(nil)
        end)

        self:LoadDefault()
        self.AppliedToTab = true

        local function UpdateTheme()
            self:ThemeUpdate()
        end

        self.Library.Options.BackgroundColor:OnChanged(UpdateTheme)
        self.Library.Options.MainColor:OnChanged(UpdateTheme)
        self.Library.Options.AccentColor:OnChanged(UpdateTheme)
        self.Library.Options.OutlineColor:OnChanged(UpdateTheme)
        self.Library.Options.FontColor:OnChanged(UpdateTheme)
        self.Library.Options.FontFace:OnChanged(function(Value)
            self.Library:SetFont(Enum.Font[Value])
            self.Library:UpdateColorsUsingRegistry()
        end)
    end

    function ThemeManager:CreateGroupBox(tab)
        assert(self.Library, "Must set ThemeManager.Library first!")
        return tab:AddLeftGroupbox("Themes", "paintbrush")
    end

    function ThemeManager:ApplyToTab(tab)
        assert(self.Library, "Must set ThemeManager.Library first!")
        local groupbox = self:CreateGroupBox(tab)
        self:CreateThemeManager(groupbox)
    end

    function ThemeManager:ApplyToGroupbox(groupbox)
        assert(self.Library, "Must set ThemeManager.Library first!")
        self:CreateThemeManager(groupbox)
    end

    ThemeManager:BuildFolderTree()
end

getgenv().ObsidianThemeManager = ThemeManager
return ThemeManager
