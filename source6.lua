-- OraxUI usando sirius.menu da Orion
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({Name = "OraxUI", HidePremium = true, SaveConfig = true, IntroText = "OraxUI v1"})

-- Criando a aba principal
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998", -- exemplo de ícone
    PremiumOnly = false
})

-- Função para criar 23 sliders
for i = 1, 23 do
    Tab:AddSlider({
        Name = "Slider "..i,
        Min = 0,
        Max = 100,
        Increment = 1,
        Value = 50,
        Callback = function(Value)
            print("Slider "..i.." mudou para:", Value)
        end
    })
end

-- Função para criar 10 toggles
for i = 1, 10 do
    Tab:AddToggle({
        Name = "Toggle "..i,
        Default = false,
        Callback = function(Value)
            print("Toggle "..i.." está agora:", Value)
        end
    })
end

-- Botão de teste
Tab:AddButton({
    Name = "Test Button",
    Callback = function()
        print("Botão pressionado!")
    end
})

-- Finalizando e mostrando o menu
OrionLib:Init()
