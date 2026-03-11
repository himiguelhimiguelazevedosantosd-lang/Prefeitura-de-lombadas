-- Carregar Sirius.menu (Solaris UI)
local Sirius = loadstring(game:HttpGet("https://sirius.menu"))()  -- link oficial da Solaris UI

-- Criar janela
local Window = Sirius:CreateWindow({
    Name = "CristalUI Pro",
    LoadingTitle = "CristalUI Pro",
    LoadingSubtitle = "by Sagax Studio"
})

-- Criar abas
local MainTab = Window:CreateTab("Main")
local SettingsTab = Window:CreateTab("Settings")
local PlayerTab = Window:CreateTab("Player")
local ExtrasTab = Window:CreateTab("Extras")

-- Função para criar sliders
local function createSlider(tab, name)
    tab:CreateSlider({
        Name = name,
        Min = 0,
        Max = 100,
        Value = 50,
        Callback = function(value)
            print(name.." ajustado para:", value)
        end
    })
end

-- Função para criar toggles
local function createToggle(tab, name)
    tab:CreateToggle({
        Name = name,
        Callback = function(state)
            print(name.." está:", state)
        end
    })
end

-- Adicionar 23 sliders distribuídos entre abas
for i = 1, 6 do createSlider(MainTab, "Slider "..i) end
for i = 7, 12 do createSlider(SettingsTab, "Slider "..i) end
for i = 13, 18 do createSlider(PlayerTab, "Slider "..i) end
for i = 19, 23 do createSlider(ExtrasTab, "Slider "..i) end

-- Adicionar 8 toggles distribuídos entre abas
for i = 1, 2 do createToggle(MainTab, "Toggle "..i) end
for i = 3, 4 do createToggle(SettingsTab, "Toggle "..i) end
for i = 5, 6 do createToggle(PlayerTab, "Toggle "..i) end
for i = 7, 8 do createToggle(ExtrasTab, "Toggle "..i) end
