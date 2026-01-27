Pemain lokal = game:GetService("Pemain")
RunService lokal = permainan:GetService("RunService")
Layanan Input Pengguna lokal = game:GetService("Layanan Input Pengguna")
Layanan Suara lokal = game:GetService("Layanan Suara")
StarterGui lokal = game:GetService("StarterGui")
HttpService lokal = game:GetService("HttpService")
 
Pemain Lokal = Pemain.Pemain Lokal
 
-- Efek Suara
fungsi lokal playSound(soundId)
    suara lokal = Instance.new("Suara")
    sound.SoundId = "rbxassetid://" .. soundId
    Suara.Induk = Layanan Suara
    suara:Putar()
    suara.Berakhir:Hubungkan(fungsi())
        suara:Hancurkan()
    akhir)
akhir
 
-- Putar suara awal
playSound("2865227271")
 
-- Pembuatan GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SuperRingPartsGUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
 
MainFrame lokal = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 300, 0, 500)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -250)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui
 
-- Buat GUI menjadi bulat
UICorner lokal = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = MainFrame
 
Judul lokal = Instance.new("TextLabel")
Ukuran Judul = UDim2.new(1, 0, 0, 40)
Judul.Posisi = UDim2.baru(0, 0, 0, 0)
Judul.Teks = "Super Ring Parts V6 oleh lukas"
Judul.TeksWarna3 = Warna3.dariRGB(0, 0, 0)
Judul.WarnaLatarBelakang3 = Warna3.dariRGB(0, 204, 204)
Judul.Font = Enum.Font.Fondamento
Judul.UkuranTeks = 22
Judul.Induk = MainFrame
 
-- Bulatkan judul
local TitleCorner = Instance.new("UICorner")
SudutJudul.RadiusSudut = UDim.baru(0, 20)
SudutJudul.Induk = Judul
 
Tombol Toggle lokal = Instance.new("TombolTeks")
Ukuran Tombol Toggle = UDim2.baru(0.8, 0, 0, 40)
ToggleButton.Position = UDim2.new(0.1, 0, 0.1, 0)
ToggleButton.Text = "Matikan Dering"
ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ToggleButton.Font = Enum.Font.Fondamento
ToggleButton.TextSize = 18
ToggleButton.Parent = MainFrame
 
-- Bulatkan tombol pengalih
local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(0, 10)
ToggleCorner.Parent = ToggleButton
 
-- Tabel konfigurasi
konfigurasi lokal = {
    jari-jari = 50,
    tinggi = 100,
    Kecepatan rotasi = 10,
    kekuatan daya tarik = 1000,
}
 
-- Fungsi simpan dan muat
fungsi lokal saveConfig()
    local configStr = HttpService:JSONEncode(config)
    tulis file("SuperRingPartsConfig.txt", configStr)
akhir
 
fungsi lokal loadConfig()
    jika isfile("SuperRingPartsConfig.txt") maka
        local configStr = readfile("SuperRingPartsConfig.txt")
        konfigurasi = HttpService:JSONDecode(configStr)
    akhir
akhir
 
loadConfig()
 
-- Fungsi untuk membuat tombol kontrol dan kotak teks
fungsi lokal createControl(nama, posisiY, warna, labelText, nilai default, callback)
    local DecreaseButton = Instance.new("TextButton")
    KurangiUkuranTombol = UDim2.baru(0.2, 0, 0, 40)
    DecreaseButton.Position = UDim2.new(0.1, 0, positionY, 0)
    TombolKurangi.Teks = "-"
    TombolKurangi.WarnaLatarBelakang3 = warna
    DecreaseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    DecreaseButton.Font = Enum.Font.Fondamento
    Ukuran Teks Tombol Kurangi = 18
    Tombol Kurangi.Induk = MainFrame
 
    local IncreaseButton = Instance.new("TextButton")
    IncreaseButton.Size = UDim2.new(0.2, 0, 0, 40)
    IncreaseButton.Position = UDim2.new(0.7, 0, positionY, 0)
    IncreaseButton.Text = "+"
    IncreaseButton.BackgroundColor3 = warna
    MeningkatkanButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    KenaikanButton.Font = Enum.Font.Fondamento
    TingkatkanUkuranTeksTombol = 18
    IncreaseButton.Parent = MainFrame
 
    Tampilan lokal = Instance.new("TextLabel")
    Ukuran Tampilan = UDim2.baru(0.4, 0, 0, 40)
    Display.Position = UDim2.new(0.3, 0, positionY, 0)
    Display.Text = labelText .. ": " .. defaultValue
    Tampilan.WarnaLatarBelakang3 = Warna3.dariRGB(255, 153, 51)
    Display.TextColor3 = Color3.fromRGB(0, 0, 0)
    Display.Font = Enum.Font.Fondamento
    Ukuran Teks Tampilan = 18
    Display.Parent = MainFrame
 
    -- Tambahkan Kotak Teks untuk input
    Kotak Teks lokal = Instance.new("Kotak Teks")
    Ukuran Kotak Teks = UDim2.baru(0.8, 0, 0, 35)
    TextBox.Position = UDim2.new(0.1, 0, positionY + 0.1, 0)
    TextBox.PlaceholderText = "Masukkan " .. labelText
    TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
    TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    Kotak Teks.Font = Enum.Font.Fondamento
    Ukuran Teks Kotak Teks = 18
    TextBox.Parent = MainFrame
 
    local TextBoxCorner = Instance.new("UICorner")
    SudutKotakTeks.RadiusSudut = UDim.baru(0, 10)
    SudutKotakTeks.Induk = KotakTeks
 
    KurangiTombol.MouseButton1Klik:Hubungkan(fungsi())
        nilai lokal = tonumber(Display.Text:match("%d+")
        nilai = math.max(0, nilai - 10)
        Display.Text = labelText .. ": " .. value
        callback(value)
        playSound("12221967")
        saveConfig()
    akhir)
 
    IncreaseButton.MouseButton1Click:Connect(function()
        nilai lokal = tonumber(Display.Text:match("%d+")
        nilai = math.min(10000, nilai + 10)
        Display.Text = labelText .. ": " .. value
        callback(value)
        playSound("12221967")
        saveConfig()
    akhir)
 
    TextBox.FokusHilang:Hubungkan(fungsi(enterPressed))
        jika tombol enter ditekan maka
            Nilai baru lokal = tonumber(TextBox.Text)
            jika newValue maka
                newValue = math.clamp(newValue, 0, 10000)
                Display.Text = labelText .. ": " .. newValue
                TextBox.Text = ""
                callback(newValue)
                playSound("12221967")
                saveConfig()
            kalau tidak
                TextBox.Text = ""
            akhir
        akhir
    akhir)
akhir
 
createControl("Radius", 0.2, Color3.fromRGB(153, 153, 0), "Radius", config.radius, function(value)
    config.radius = nilai
    saveConfig()
akhir)
 
createControl("Tinggi", 0.4, Color3.fromRGB(153, 0, 153), "Tinggi", config.height, function(value)
    config.height = nilai
    saveConfig()
akhir)
 
createControl("RotationSpeed", 0.6, Color3.fromRGB(0, 153, 153), "Kecepatan Rotasi", config.rotationSpeed, function(value)
    config.rotationSpeed ​​= nilai
    saveConfig()
akhir)
 
createControl("AttractionStrength", 0.8, Color3.fromRGB(153, 0, 0), "Attraction Strength", config.attractionStrength, function(value))
    config.attractionStrength = nilai
    saveConfig()
akhir)
 
-- Tambahkan tombol minimalkan
local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Size = UDim2.new(0, 30, 0, 30)
MinimizeButton.Position = UDim2.new(1, -35, 0, 5)
MinimizeButton.Text = "-"
MinimizeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
MinimalkanButton.TextColor3 = Color3.fromRGB(0, 0, 0)
MinimizeButton.Font = Enum.Font.Fondamento
MinimizeButton.TextSize = 15
MinimizeButton.Parent = MainFrame
 
-- Bulatkan tombol minimalkan
local MinimizeCorner = Instance.new("UICorner")
MinimizeCorner.CornerRadius = UDim.new(0, 15)
MinimizeCorner.Parent = MinimizeButton
 
-- Fungsi minimalkan
local minimized = false
MinimizeButton.MouseButton1Click:Connect(function()
    diminimalkan = tidak diminimalkan
    jika diminimalkan maka
        MainFrame:TweenSize(UDim2.new(0, 300, 0, 40), "Out", "Quad", 0.3, true)
        MinimizeButton.Text = "+"
        untuk _, anak dalam pasangan (MainFrame:GetChildren()) lakukan
            jika child:IsA("GuiObject") dan child ~= Title dan child ~= MinimizeButton maka
                anak.Terlihat = salah
            akhir
        akhir
    kalau tidak
        MainFrame:TweenSize(UDim2.new(0, 300, 0, 500), "Out", "Quad", 0.3, true)
        MinimizeButton.Text = "-"
        untuk _, anak dalam pasangan (MainFrame:GetChildren()) lakukan
            jika child:IsA("GuiObject") maka
                anak.Terlihat = benar
            akhir
        akhir
    akhir
    playSound("12221967")
akhir)
 
-- Jadikan GUI dapat diseret
seret lokal
seret input lokal
seret awal lokal
posisi awal lokal
 
fungsi lokal perbarui(masukan)
    delta lokal = masukan.Posisi - dragStart
    MainFrame.Posisi = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
akhir
 
MainFrame.InputBegan:Connect(function(input)
    jika input.UserInputType == Enum.UserInputType.MouseButton1 atau input.UserInputType == Enum.UserInputType.Touch maka
        menyeret = benar
        dragStart = input.Posisi
        startPos = MainFrame.Posisi
 
        input.Changed:Connect(function()
            jika input.UserInputState == Enum.UserInputState.End maka
                menyeret = salah
            akhir
        akhir)
    akhir
akhir)
 
MainFrame.InputChanged:Connect(function(input)
    jika input.UserInputType == Enum.UserInputType.MouseMovement atau input.UserInputType == Enum.UserInputType.Touch maka
        dragInput = input
    akhir
akhir)
 
UserInputService.InputChanged:Connect(function(input)
    jika input == dragInput dan sedang menyeret maka
        perbarui(masukan)
    akhir
akhir)
 
-- Klaim Komponen Cincin
Ruang Kerja lokal = game:GetService("Ruang Kerja")
 
karakter lokal = LocalPlayer.Character atau LocalPlayer.CharacterAdded:Wait()
Bagian Akar Humanoid lokal = karakter:TungguAnak("Bagian Akar Humanoid")
 
Folder lokal = Instance.new("Folder", Ruang Kerja)
Bagian lokal = Instance.new("Bagian", Folder)
local Attachment1 = Instance.new("Attachment", Part)
Bagian.Terjangkar = benar
Bagian.DapatBertabrakan = salah
Bagian.Transparansi = 1
 
jika tidak ada jaringan getgenv() maka
    getgenv().Jaringan = {
        Komponen Dasar = {},
        Kecepatan = Vector3.new(14.46262424, 14.46262424, 14.46262424)
    }
 
    Jaringan.PertahankanBagian = fungsi(Bagian)
        jika tipe(Part) == "Instance" dan Part:IsA("BasePart") dan Part:IsDescendantOf(Workspace) maka
            table.insert(Network.BaseParts, Part)
            Part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
            Part.CanCollide = false
        akhir
    akhir
 
    fungsi lokal EnablePartControl()
        LocalPlayer.ReplicationFocus = Ruang Kerja
        RunService.Heartbeat:Connect(function()
            sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
            untuk _, Bagian berpasangan (Jaringan.Bagian Dasar) lakukan
                jika Part:IsDescendantOf(Workspace) maka
                    Kecepatan Partikel = Kecepatan Jaringan
                akhir
            akhir
        akhir)
    akhir
 
    AktifkanKontrolBagian()
akhir
 
fungsi lokal ForcePart(v)
    jika v:IsA("Part") dan bukan v.Anchored dan bukan v.Parent:FindFirstChild("Humanoid") dan bukan v.Parent:FindFirstChild("Head") dan v.Name ~= "Handle" maka
        untuk _, x di next, v:GetChildren() lakukan
            jika x:IsA("KecepatanSudutTubuh") atau x:IsA("GayaTubuh") atau x:IsA("GiroskopTubuh") atau x:IsA("PosisiTubuh") atau x:IsA("DayaDorongTubuh") atau x:IsA("KecepatanTubuh") atau x:IsA("PropulsiRoket") maka
                x:Hancurkan()
            akhir
        akhir
        jika v:FindFirstChild("Attachment") maka
            v:FindFirstChild("Attachment"):Destroy()
        akhir
        jika v:FindFirstChild("AlignPosition") maka
            v:FindFirstChild("AlignPosition"):Destroy()
        akhir
        jika v:FindFirstChild("Torque") maka
            v:FindFirstChild("Torque"):Destroy()
        akhir
        v.CanCollide = false
        Torsi lokal = Instance.new("Torsi", v)
        Torsi.Torsi = Vector3.new(100000, 100000, 100000)
        local AlignPosition = Instance.new("AlignPosition", v)
        local Attachment2 = Instance.new("Attachment", v)
        Torsi.Lampiran0 = Lampiran2
        AlignPosition.MaxForce = 9999999999999999999999999999999
        AlignPosition.MaxVelocity = math.huge
        AlignPosition.Responsiveness = 200
        AlignPosition.Attachment0 = Attachment2
        AlignPosition.Attachment1 = Attachment1
    akhir
akhir
 
-- Suntingan
ringPartsEnabled lokal = false
 
fungsi lokal RetainPart(Part)
    jika Part:IsA("BasePart") dan Part.Anchored tidak ada dan Part:IsDescendantOf(workspace) maka
        jika Part.Parent == LocalPlayer.Character atau Part:IsDescendantOf(LocalPlayer.Character) maka
            kembalikan false
        akhir
 
        Part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
        Part.CanCollide = false
        kembalikan nilai benar
    akhir
    kembalikan false
akhir
 
bagian lokal = {}
fungsi lokal addPart(part)
    jika RetainPart(part) maka
        jika tidak table.find(parts, part) maka
            tabel.sisipkan(bagian, bagian)
        akhir
    akhir
akhir
 
fungsi lokal removePart(part)
    indeks lokal = tabel.find(parts, part)
    jika indeks maka
        tabel.hapus(bagian, indeks)
    akhir
akhir
 
untuk _, bagian dalam pasangan(ruang kerja:GetDescendants()) lakukan
    tambahBagian(bagian)
akhir
 
workspace.DescendantAdded:Connect(addPart)
workspace.DescendantRemoving:Connect(removePart)
 
RunService.Heartbeat:Connect(function()
    jika ringPartsEnabled tidak diaktifkan maka kembalikan akhir
 
    local humanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    jika humanoidRootPart maka
        Pusat tornado lokal = humanoidRootPart.Posisi
        untuk _, bagian berpasangan (bagian) lakukan
            jika part.Parent dan bukan part.Anchored maka
                posisi lokal = bagian.Posisi
                jarak lokal = (Vector3.new(pos.X, pusat tornado.Y, pos.Z) - pusat tornado).Magnitudo
                sudut lokal = math.atan2(pos.Z - tornadoCenter.Z, pos.X - tornadoCenter.X)
                Sudut baru lokal = sudut + math.rad(config.rotationSpeed)
                targetPos lokal = Vector3.baru(
                    tornadoCenter.X + math.cos(newAngle) * math.min(config.radius, distance),
                    tornadoCenter.Y + (config.height * (math.abs(math.sin((pos.Y - tornadoCenter.Y) / config.height)))),
                    tornadoCenter.Z + math.sin(newAngle) * math.min(config.radius, distance)
                )
                arah lokal ke target = (targetPos - part.Position).unit
                part.Velocity = directionToTarget * config.attractionStrength
            akhir
        akhir
    akhir
akhir)
 
-- Fungsionalitas tombol
ToggleButton.MouseButton1Click:Connect(function()
    ringPartsEnabled = bukan ringPartsEnabled
    ToggleButton.Text = ringPartsEnabled dan "Tornado Aktif" atau "Tornado Nonaktif"
    ToggleButton.BackgroundColor3 = ringPartsEnabled dan Color3.fromRGB(50, 205, 50) atau Color3.fromRGB(160, 82, 45)
    playSound("12221967")
akhir)
 
-- Dapatkan thumbnail pemain
local userId = Players:GetUserIdFromNameAsync("Robloxlukasgames")
Tipe thumbnail lokal = Enum.Tipe Thumbnail.HeadShot
Ukuran thumbnail lokal = Enum.Ukuran Thumbnail.Ukuran 420x420
konten lokal, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
 
StarterGui:SetCore("SendNotification", {
    Judul = "Hai",
    Teks = "Nikmati Naskahnya!",
    Ikon = konten,
    Durasi = 5
})
 
StarterGui:SetCore("SendNotification", {
    Judul = "TIPS",
    Teks = "Klik Kotak Teks untuk Mengedit Salah Satunya",
    Ikon = konten,
    Durasi = 5
})
 
StarterGui:SetCore("SendNotification", {
    Judul = "Kredit",
    Teks = "Di scriptblox!",
    Ikon = konten,
    Durasi = 5
})
 
 
-- Efek Latar Belakang Pelangi
warna lokal = 0
RunService.Heartbeat:Connect(function()
    hue = (hue + 0.01) % 1
    MainFrame.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
akhir)
 
-- Label Teks Pelangi
local textHue = 0
RunService.Heartbeat:Connect(function()
    textHue = (textHue + 0.01) % 1
    Judul.TextColor3 = Color3.fromHSV(textHue, 1, 1)
akhir)
 
 
-- GUI terbang
 
local TextButton1 = Instance.new("TextButton") 
TextButton1.Parent = MainFrame
TextButton1.Name = "Gui Terbang"
TextButton1.BackgroundColor3 = Color3.fromRGB(0,0,255)
TextButton1.BackgroundTransparency = 0
TextButton1.BorderSizePixel = 1
TextButton1.BorderColor3 = Color3.fromRGB(17,17,17)
TextButton1.Posisi = UDim2.baru(1,0,1)
TextButton1.Ukuran = UDim2.baru(0.08,0,0.1)
TextButton1.Font = Enum.Font.Legacy
TextButton1.TextColor3 = Color3.fromRGB(242,243,243)
TextButton1.Text = "Fly Gui"
Ukuran Teks Tombol Teks1 = 18
Skala Teks Tombol Teks1 = true
Teks Tombol Teks1. Terbungkus = true
TextButton1.Visible = true
TextButton1.Active = true
 
TextButton1.MouseButton1Click:Connect(function() 
loadstring(game:HttpGet('https://pastebin.com/raw/YSL3xKYU'))()
akhir)
 
-- tidak ada kerusakan akibat jatuh
local TextButton1 = Instance.new("TextButton") 
TextButton1.Parent = MainFrame
TextButton1.Name = "tidak ada kerusakan akibat jatuh"
TextButton1.BackgroundColor3 = Color3.fromRGB(255,0,0)
TextButton1.BackgroundTransparency = 0
TextButton1.BorderSizePixel = 1
TextButton1.BorderColor3 = Color3.fromRGB(17,17,17)
TextButton1.Position = UDim2.new(0.9,0,1)
TextButton1.Ukuran = UDim2.baru(0.08,0,0.1)
TextButton1.Font = Enum.Font.Legacy
TextButton1.TextColor3 = Color3.fromRGB(242,243,243)
TextButton1.Text = "Tidak ada kerusakan akibat jatuh"
Ukuran Teks Tombol Teks1 = 18
Skala Teks Tombol Teks1 = true
Teks Tombol Teks1. Terbungkus = true
TextButton1.Visible = true
TextButton1.Active = true
 
TextButton1.MouseButton1Click:Connect(function() 
-- Tidak Ada Kerusakan Akibat Jatuh oleh Pio (Discord: piomanly atau ID: 311397526399877122) --
runvc lokal = permainan:GetService("RunService")
detak jantung lokal = runsvc.Heartbeat
rstepped lokal = runsvc.RenderStepped
 
local lp = game.Players.LocalPlayer
 
novel lokal = Vector3.zero
 
fungsi lokal nofalldamage(chr)
    root lokal = chr:WaitForChild("HumanoidRootPart")
 
    jika root maka
        kon lokal
        con = heartbeat:Connect(function()
            jika bukan root.Parent maka
                con:Disconnect()
            akhir
 
            local oldvel = root.AssemblyLinearVelocity
            root.AssemblyLinearVelocity = novel
 
            rstepped:Wait()
            root.AssemblyLinearVelocity = oldvel
        akhir)
    akhir
akhir
 
nofalldamage(lp.Character)
    lp.CharacterAdded:Connect(nofalldamage)
akhir)
 
-- noclip
local TextButton1 = Instance.new("TextButton") 
TextButton1.Parent = MainFrame
TextButton1.Name = "noclip"
TextButton1.BackgroundColor3 = Color3.fromRGB(0,0,0)
TextButton1.BackgroundTransparency = 0
TextButton1.BorderSizePixel = 1
TextButton1.BorderColor3 = Color3.fromRGB(17,17,17)
TextButton1.Posisi = UDim2.baru(0.8,0,1)
TextButton1.Ukuran = UDim2.baru(0.08,0,0.1)
TextButton1.Font = Enum.Font.Legacy
TextButton1.TextColor3 = Color3.fromRGB(242,243,243)
TextButton1.Teks = "Tidak Terjepit"
Ukuran Teks Tombol Teks1 = 18
Skala Teks Tombol Teks1 = true
Teks Tombol Teks1. Terbungkus = true
TextButton1.Visible = true
TextButton1.Active = true
 
TextButton1.MouseButton1Click:Connect(function() 
Noclip lokal = nil
Klip lokal = nil
 
fungsi noclip()
	Klip = false
	fungsi lokal Nocl()
		jika Klip == false dan game.Players.LocalPlayer.Character ~= nil maka
			untuk _,v dalam pasangan(game.Players.LocalPlayer.Character:GetDescendants()) lakukan
				jika v:IsA('BasePart') dan v.CanCollide dan v.Name ~= floatName maka
					v.CanCollide = false
				akhir
			akhir
		akhir
		tunggu(0.21) -- optimasi dasar
	akhir
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
akhir
 
fungsi clip()
	jika Noclip maka Noclip:Disconnect() berakhir
	Klip = benar
akhir
 
noclip() -- untuk mengaktifkan/menonaktifkan noclip() dan klip()
akhir)
 
-- Lompatan tak terbatas
 
local TextButton1 = Instance.new("TextButton") 
TextButton1.Parent = MainFrame
TextButton1.Name = "Lompatan tak terbatas"
TextButton1.BackgroundColor3 = Color3.fromRGB(0,255,0)
TextButton1.BackgroundTransparency = 0
TextButton1.BorderSizePixel = 1
TextButton1.BorderColor3 = Color3.fromRGB(17,17,17)
TextButton1.Position = UDim2.new(0.7,0,1)
TextButton1.Ukuran = UDim2.baru(0.08,0,0.1)
TextButton1.Font = Enum.Font.Legacy
TextButton1.TextColor3 = Color3.fromRGB(242,243,243)
TextButton1.Text = "Lompatan tak terbatas"
Ukuran Teks Tombol Teks1 = 18
Skala Teks Tombol Teks1 = true
Teks Tombol Teks1. Terbungkus = true
TextButton1.Visible = true
TextButton1.Active = true
 
TextButton1.MouseButton1Click:Connect(function() 
local InfiniteJumpEnabled = true game:GetService("UserInputService").JumpRequest:connect(function() if InfiniteJumpEnabled then game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping") end end)
akhir)
 
-- Hasil tak terbatas
 
local TextButton1 = Instance.new("TextButton") 
TextButton1.Parent = MainFrame
TextButton1.Name = "Hasil tak terbatas"
TextButton1.BackgroundColor3 = Color3.fromRGB(0,255,255)
TextButton1.BackgroundTransparency = 0
TextButton1.BorderSizePixel = 1
TextButton1.BorderColor3 = Color3.fromRGB(17,17,17)
TextButton1.Posisi = UDim2.baru(0.6,0,1)
TextButton1.Ukuran = UDim2.baru(0.08,0,0.1)
TextButton1.Font = Enum.Font.Legacy
TextButton1.TextColor3 = Color3.fromRGB(242,243,243)
TextButton1.Text = "Inf hasil"
Ukuran Teks Tombol Teks1 = 18
Skala Teks Tombol Teks1 = true
Teks Tombol Teks1. Terbungkus = true
TextButton1.Visible = true
TextButton1.Active = true
 
TextButton1.MouseButton1Click:Connect(function() 
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
akhir)
 
-- admin tanpa nama
 
local TextButton1 = Instance.new("TextButton") 
TextButton1.Parent = MainFrame
TextButton1.Name = "admin tanpa nama"
TextButton1.BackgroundColor3 = Color3.fromRGB(0,0,0)
TextButton1.BackgroundTransparency = 0
TextButton1.BorderSizePixel = 1
TextButton1.BorderColor3 = Color3.fromRGB(17,17,17)
TextButton1.Posisi = UDim2.baru(0.5,0,1)
TextButton1.Ukuran = UDim2.baru(0.08,0,0.1)
TextButton1.Font = Enum.Font.Legacy
TextButton1.TextColor3 = Color3.fromRGB(242,243,243)
TextButton1.Teks = "TANPA NAMA"
Ukuran Teks Tombol Teks1 = 18
Skala Teks Tombol Teks1 = true
Teks Tombol Teks1. Terbungkus = true
TextButton1.Visible = true
TextButton1.Active = true
 
TextButton1.MouseButton1Click:Connect(function() 
loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Nameless-Admin-FE-11243")))()
akhir)
 
-- fps
 
local TextButton1 = Instance.new("TextButton") 
TextButton1.Parent = MainFrame
TextButton1.Name = "FPS"
TextButton1.BackgroundColor3 = Color3.fromRGB(0,0,0)
TextButton1.BackgroundTransparency = 0
TextButton1.BorderSizePixel = 1
TextButton1.BorderColor3 = Color3.fromRGB(17,17,17)
TextButton1.Position = UDim2.new(0.4,0,1)
TextButton1.Ukuran = UDim2.baru(0.08,0,0.1)
TextButton1.Font = Enum.Font.Legacy
TextButton1.TextColor3 = Color3.fromRGB(242,243,243)
TextButton1.Text = "FPS"
Ukuran Teks Tombol Teks1 = 18
Skala Teks Tombol Teks1 = true
Teks Tombol Teks1. Terbungkus = true
TextButton1.Visible = true
TextButton1.Active = true
 
TextButton1.MouseButton1Click:Connect(function() 
loadstring(game:HttpGet("https://pastebin.com/raw/ySHJdZpb",true))()
akhir)