local tool = script.Parent
local active = false

local spinForce
local touchConn

-- SETTING (BISA DIUBAH)
local SPIN_SPEED = 100        -- kecepatan muter (80-120 aman)
local KNOCKBACK_POWER = 180   -- kekuatan mental samping
local KNOCKBACK_UP = 80       -- mental ke atas

tool.Activated:Connect(function()
	local char = tool.Parent
	local hrp = char:FindFirstChild("HumanoidRootPart")
	if not hrp then return end

	active = not active

	if active then
		print("ABILITY ON")

		-- MUTER KENCENG
		spinForce = Instance.new("BodyAngularVelocity")
		spinForce.AngularVelocity = Vector3.new(0, SPIN_SPEED, 0)
		spinForce.MaxTorque = Vector3.new(0, math.huge, 0)
		spinForce.Parent = hrp

		-- MANTULIN KALAU KENA
		touchConn = hrp.Touched:Connect(function(hit)
			local enemyChar = hit.Parent
			if enemyChar == char then return end

			local enemyHRP = enemyChar:FindFirstChild("HumanoidRootPart")
			local enemyHum = enemyChar:FindFirstChild("Humanoid")

			if enemyHRP and enemyHum then
				local direction = (enemyHRP.Position - hrp.Position).Unit
				enemyHRP.Velocity =
					(direction * KNOCKBACK_POWER)
					+ Vector3.new(0, KNOCKBACK_UP, 0)
			end
		end)

	else
		print("ABILITY OFF")

		if spinForce then
			spinForce:Destroy()
			spinForce = nil
		end

		if touchConn then
			touchConn:Disconnect()
			touchConn = nil
		end
	end
end)