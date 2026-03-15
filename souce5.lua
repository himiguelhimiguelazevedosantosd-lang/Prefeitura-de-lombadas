-- Carregar Venyx UI
local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/StefanoTheDev/Venyx-UI-Library/main/source.lua"))()
local UI = Venyx.new("AstraUI") -- ← Nome visível no topo do menu

-- Criar páginas/abas
local Main = UI:addPage("Main", 5012544693)
local Player = UI:addPage("Player", 5012544693)
local Settings = UI:addPage("Settings", 5012544693)

-- Criar seções dentro das abas
local SectionMain = Main:addSection("Controles Main")
local SectionPlayer = Player:addSection("Controles Player")
local SectionSettings = Settings:addSection("Configurações")

-- 8 Toggles
SectionMain:addToggle("Toggle 1", false, function(val) print("Toggle 1:", val) end)
SectionMain:addToggle("Toggle 2", false, function(val) print("Toggle 2:", val) end)
SectionPlayer:addToggle("Toggle 3", false, function(val) print("Toggle 3:", val) end)
SectionPlayer:addToggle("Toggle 4", false, function(val) print("Toggle 4:", val) end)
SectionPlayer:addToggle("Toggle 5", false, function(val) print("Toggle 5:", val) end)
SectionSettings:addToggle("Toggle 6", false, function(val) print("Toggle 6:", val) end)
SectionSettings:addToggle("Toggle 7", false, function(val) print("Toggle 7:", val) end)
SectionSettings:addToggle("Toggle 8", false, function(val) print("Toggle 8:", val) end)

-- 9 Sliders
SectionMain:addSlider("Slider 1", 0, 100, 0, function(val) print("Slider 1:", val) end)
SectionMain:addSlider("Slider 2", 0, 100, 0, function(val) print("Slider 2:", val) end)
SectionPlayer:addSlider("Slider 3", 0, 100, 0, function(val) print("Slider 3:", val) end)
SectionPlayer:addSlider("Slider 4", 0, 100, 0, function(val) print("Slider 4:", val) end)
SectionPlayer:addSlider("Slider 5", 0, 100, 0, function(val) print("Slider 5:", val) end)
SectionSettings:addSlider("Slider 6", 0, 100, 0, function(val) print("Slider 6:", val) end)
SectionSettings:addSlider("Slider 7", 0, 100, 0, function(val) print("Slider 7:", val) end)
SectionSettings:addSlider("Slider 8", 0, 100, 0, function(val) print("Slider 8:", val) end)
SectionSettings:addSlider("Slider 9", 0, 100, 0, function(val) print("Slider 9:", val) end)

-- Abrir a página inicial
UI:SelectPage(UI.pages[1], true)
