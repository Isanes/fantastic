local WindowTable = {}

function WindowTable:createWindow()

	local Tutorial = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local mainCorner = Instance.new("UICorner")
	local SideBar = Instance.new("Frame")
	local sideCorner = Instance.new("UICorner")
	local coverCorner = Instance.new("Frame")
	local allTabs = Instance.new("Frame")
	local tabButton = Instance.new("TextButton") -- Our tab | take this
	local tabCorner = Instance.new("UICorner") -- Our tab | take this
	local tabListing = Instance.new("UIListLayout")
	local allPages = Instance.new("Frame")
	local mainCorner_2 = Instance.new("UICorner")
	local pagesFolder = Instance.new("Folder")
	local newPage = Instance.new("ScrollingFrame") -- Our page | take this
	local elementsListing = Instance.new("UIListLayout") -- Our page | take this

	--Properties:

	Tutorial.Name = "Tutorial"
	Tutorial.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	Tutorial.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Tutorial.ResetOnSpawn = false

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = Tutorial
	MainFrame.BackgroundColor3 = Color3.fromRGB(45, 48, 53)
	MainFrame.Position = UDim2.new(0.396969676, 0, 0.302184463, 0)
	MainFrame.Size = UDim2.new(0, 430, 0, 260)

	mainCorner.CornerRadius = UDim.new(0, 3)
	mainCorner.Name = "mainCorner"
	mainCorner.Parent = MainFrame

	SideBar.Name = "SideBar"
	SideBar.Parent = MainFrame
	SideBar.BackgroundColor3 = Color3.fromRGB(35, 38, 42)
	SideBar.BorderSizePixel = 0
	SideBar.Size = UDim2.new(0, 110, 0, 260)

	sideCorner.CornerRadius = UDim.new(0, 3)
	sideCorner.Name = "sideCorner"
	sideCorner.Parent = SideBar

	coverCorner.Name = "coverCorner"
	coverCorner.Parent = SideBar
	coverCorner.BackgroundColor3 = Color3.fromRGB(35, 38, 42)
	coverCorner.BorderSizePixel = 0
	coverCorner.Position = UDim2.new(0.943925261, 0, 0, 0)
	coverCorner.Size = UDim2.new(0, 6, 0, 260)

	allTabs.Name = "allTabs"
	allTabs.Parent = SideBar
	allTabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	allTabs.BackgroundTransparency = 1.000
	allTabs.Position = UDim2.new(0.0500000007, 0, 0.0299999993, 0)
	allTabs.Size = UDim2.new(0, 98, 0, 246)

	tabButton.Name = "tabButton"
	tabButton.Parent = allTabs
	tabButton.BackgroundColor3 = Color3.fromRGB(255, 109, 83)
	tabButton.Size = UDim2.new(0, 99, 0, 25)
	tabButton.Font = Enum.Font.Gotham
	tabButton.Text = "Example"
	tabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	tabButton.TextSize = 14.000

	tabCorner.CornerRadius = UDim.new(0, 3)
	tabCorner.Name = "tabCorner"
	tabCorner.Parent = tabButton

	tabListing.Name = "tabListing"
	tabListing.Parent = allTabs
	tabListing.SortOrder = Enum.SortOrder.LayoutOrder
	tabListing.Padding = UDim.new(0, 2)

	allPages.Name = "allPages"
	allPages.Parent = MainFrame
	allPages.BackgroundColor3 = Color3.fromRGB(39, 42, 47)
	allPages.Position = UDim2.new(0.274418592, 0, 0.0269230772, 0)
	allPages.Size = UDim2.new(0, 306, 0, 245)

	mainCorner_2.CornerRadius = UDim.new(0, 3)
	mainCorner_2.Name = "mainCorner"
	mainCorner_2.Parent = allPages

	pagesFolder.Name = "pagesFolder"
	pagesFolder.Parent = allPages

	newPage.Name = "newPage"
	newPage.Parent = allPages
	newPage.Active = true
	newPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	newPage.BackgroundTransparency = 1.000
	newPage.Size = UDim2.new(1, 0, 1, 0)
	newPage.ScrollBarThickness = 5

	elementsListing.Name = "elementsListing"
	elementsListing.Parent = newPage
	elementsListing.HorizontalAlignment = Enum.HorizontalAlignment.Center
	elementsListing.SortOrder = Enum.SortOrder.LayoutOrder
	elementsListing.Padding = UDim.new(0, 5)
	
	local TabHandler = {}
	
	function TabHandler:CreateTab(tabname)
		tabname = tabname or "New Tab"
		local tabButton = Instance.new("TextButton") -- Our tab | take this
		local tabCorner = Instance.new("UICorner") -- Our tab | take this
		local newPage = Instance.new("ScrollingFrame") -- Our page | take this
		local elementsListing = Instance.new("UIListLayout") -- Our page | take this
		
		tabButton.Name = "tabButton"
		tabButton.Parent = allTabs 
        tabButton.BackgroundColor3 = color3.fromRGB(255,109,83)
        tabButton.size = UDim2.new(0, 99, 0, 25)
        tabButton.Enum.Font.Gotham
        tabButton.Text = tabname
        tabButton.TextColor3 = color3.fromRGB(255, 255, 255)
        tabButton.TextSize = 14.000

        tabCorner.CornerRadius = =Udim.new(0, 3)
        tabCorner.Name = "sideCorner"
        tabCorner.Parent = tabButton

        newPage.Name = "newPage"
        newPage.Parent = pagesFolder
        newPage.Active = true
        newPage.BackgroundColor3 = color3.fromRGB(255, 255, 255)
        newPage.BackgroundTransparency = 1.000
        newPage.Size = Udim.new(1, 0, 1, 0)
        newPage.ScrollBarThickness = 5

        elementsListing.Name = "elementsListing"
        elementsListing.Parent = newPage
        elementsListing.HorizontalAlignment = Enum.HorizontalAlignment.Center
        elementsListing.SortOrder = Enum.SortOrder.LayoutOrder
        elementsListing.Padding = UDim2.new(0, 5)
	end
	
	return TabHandler
end

tabButton.MouseButton1Click:Connect(function()
    for i,v in next, pagesFolder:GetChildren() do 
        v.Visible = false
    end
    newPage.Visible = true
)

return WindowTable  