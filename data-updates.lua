local bridges = {"wood", "iron", "brick"}
-- bbr-rail-

for _,name in pairs(bridges) do
    local recipe = table.deepcopy(data.raw["recipe"]["production-science-pack"])
    recipe.name = recipe.name .. "-" .. name
    for _,ing in pairs(recipe.ingredients) do
        if ing[1] == "rail" then
            ing[1] = "bbr-rail-" .. name
        end
    end
    data:extend{recipe}
    table.insert(data.raw["technology"]["production-science-pack"].effects,{type="unlock-recipe",recipe = recipe.name})
end