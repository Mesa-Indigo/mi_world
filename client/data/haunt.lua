
-- single ghost object
local ghost = { obj = nil, spawned = false }

-- different object models
local forms = {
    'm23_1_prop_m31_ghostsalton_01a', 'm23_1_prop_m31_ghostrurmeth_01a',
    'm24_1_prop_m41_ghost_dom_01a', 'm23_1_prop_m31_ghostjohnny_01a',
    'm24_1_prop_m41_ghost_cop_01a', 'm23_1_prop_m31_ghostskidrow_01a'
}

-- different locations to spawn
local points = {
    [1] = vec3(0,0,0)
}