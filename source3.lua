-- Carregar Rayfield UI
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Criar janela
local Window = Rayfield:CreateWindow({
   Name = "Sagax UI",
   LoadingTitle = "Sagax UI",
   LoadingSubtitle = "by maninhomiguel"
})

-- Criar abas
local Tab1 = Window:CreateTab("Main")
local Tab2 = Window:CreateTab("Settings")
local Tab3 = Window:CreateTab("Player")
local Tab4 = Window:CreateTab("Extras")

-- Função para criar sliders
local function createSlider(tab, name)
    tab:CreateSlider({
        Name = name,
        Range = {0, 100},
        Increment = 1,
        Suffix = "pts",
        Callback = function(val)
            print(name.." set to:", val)
        end
    })
end

-- Função para criar toggles
local function createToggle(tab, name)
    tab:CreateToggle({
        Name = name,
        Callback = function(state)
            print(name.." is:", state)
        end
    })
end

-- Adicionar 10 sliders
createSlider(Tab1, "Slider 1")
createSlider(Tab1, "Slider 2")
createSlider(Tab2, "Slider 3")
createSlider(Tab2, "Slider 4")
createSlider(Tab2, "Slider 5")
createSlider(Tab3, "Slider 6")
createSlider(Tab3, "Slider 7")
createSlider(Tab3, "Slider 8")
createSlider(Tab4, "Slider 9")
createSlider(Tab4, "Slider 10")

-- Adicionar 6 toggles
createToggle(Tab1, "Toggle 1")
createToggle(Tab2, "Toggle 2")
createToggle(Tab2, "Toggle 3")
createToggle(Tab3, "Toggle 4")
createToggle(Tab3, "Toggle 5")
createToggle(Tab4, "Toggle 6")
