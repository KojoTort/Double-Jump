

local maxJumps = 2

hook.Add("KeyPress", "DoubleJump", function(pl, k)
    if not pl:HasPurchase("doublejump") then return end
    if pl:IsOnGround() then
        pl.Jumps = 0
        return
    end

    if k ~= IN_JUMP then
        return
    end
    
    pl.Jumps = pl.Jumps + 1
    if pl.Jumps <= maxJumps then
        local vel = Vector( 0, 0, 0 )
        vel.z = -pl:GetVelocity().z + (pl:GetJumpPower() * 1.2) 
        
        pl:SetVelocity( vel )
    end
end)

