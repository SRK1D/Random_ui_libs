local Twinkies = loadstring(game:HttpGet("https://raw.githubusercontent.com/SRK1D/Random_ui_libs/main/TwinkLib.lua", true))()

-- // Loads the UI library and gives the functions necessary
-- // local <str> = UILibrary.Load(<str> gui_title)
local Main = Twinkies.Load("Exploitz fr 100%")

-- // Add a new page
-- // local <str> = Main.AddPage(<str> name, <bool> search_bar_enabled)
local FirstPage = Main.AddPage("Example", true)


-- // Adds a label
-- // local <str> = FirstPage.AddLabel(<str> text)
local FirstLabel = FirstPage.AddLabel("Yo mother")

-- // Label functions:
--[=[
    -> Changes the text to something else:
    FirstLabel.ChangeText(<str> text) 

    -> Destroys the label:
    FirstLabel.Destroy()
]=]

-- // Adds a button
-- // local <str> = FirstPage.AddButton(<str> text, <function> callback)
local FirstButton = FirstPage.AddButton("Do not press me", function()
    print("Activated the button")
end)

-- // Button functions:
--[=[
    -> Destroys the button:
    FirstButton.Destroy()
]=]

-- // Adds a toggle (switch)
-- // local <str> = FirstPage.AddToggle(<str> text, <bool> default_status, <function> callback => value)
local FirstToggle = FirstPage.AddToggle("Da real toggal, original", false, function(val)
    print(("Status: %s"):format(tostring(val)))
end)

-- // Toggle functions:
--[=[
    -> Changes the state of the toggle
    FirstToggle.Set(<bool> value, <bool> call_callback)

    -> Gets the status of the toggle (true / false)
    local <bool> = FirstToggle.Status()

    -> Destroys the toggle
    FirstToggle.Destroy()
]=]

-- // Adds a slider
-- // local <str> = FirstPage.AddSlider(<str> text, <table> configuration => {Min = <int>, Max = <int>, Default = <int>}, <function> callback => value)
local FirstSlider = FirstPage.AddSlider("Walkspeed", {Min = 1, Max = 10, Default = 5}, function(var)
    print(var)
end)

-- // Slider functions:
--[=[
    -> Set the slider to a specific value
    FirstSlider.Set(<int> value, <bool> call_callback)

    -> Destroys the slider
    FirstSlider.Destroy()
]=]

-- // Add a colourpicker
-- // local <str> = FirstPage.AddColourPicker(<str> text, <color3> default_color, <function> callback => value)
local FirstPicker = FirstPage.AddColourPicker("Im a colour picker", Color3.fromRGB(255, 0, 0), function(yee)
    print(yee)
end)

-- // ColourPicker functions:
--[=[
    -> Set the colour picker to a specific colour
    FirstPicker.Set(<int> r, <int> g, <int> b)

    -> Destroys the colour picker
    FirstPicker.Destroy()
]=]

-- // Add a dropdown
-- // local <str> = FirstPage.AddDropdown(<str> text, <table> options, <function> callback => value)
local FirstDropdown = FirstPage.AddDropdown("Im a dropdown", {"You", "Are", "Gay"}, function(var)
    print(var)
end)

-- // Dropdown functions:
--[=[
    -> Set the dropdown selected to something else
    FirstDropdown.Set(<str> text, <bool> call_callback)

    -> Add a new dropdown choice
    FirstDropdown.Add(<str> text)

    -> Remove a dropdown choice
    FirstDropdown.Remove(<str> text)

    -> Clear the dropdown choices
    FirstDropdown.Clear()

    -> Return the selected dropdown (choice)
    local <str> = FirstDropdown.Status()

    -> Destroys the dropdown
    FirstDropdown.Destroy()
]=]

-- // Add a textbox (CUSTOM MADE)
-- // local <str> = FirstPage.AddTextbox(<str> text, <bool> clear_text_on_focus, <str> textbox_default_text, <function> callback => value)
local FirstTextbox = FirstPage.AddTextbox("Im a textbox?", false, "Yep I am", function(val)
    print(val)
end)

-- // Textbox functions:
--[=[
    -> Set the textbox value to something else
    FirstTextbox.Set(<str> text)

    -> Changes the text to something else (label)
    FirstTextbox.ChangeText(<str> text)

    -> Destroys the textbox
    FirstTextbox.Destroy()
]=]
