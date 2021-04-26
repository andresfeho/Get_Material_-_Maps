clearListener()
materialValid = #()

for i in 1 to $.material.count do (
	--if cadamaterial.numsubs != 92 do
		
	if ($.material.materialList[i]) != undefined do (
		print ($.material.materialList[i])
		append materialValid ($.material.materialList[i]) 
	)
	for v = 1 to (getNumSubTexmaps materialValid[i]) do (
		--format "I= % " i
		--format "V= % " v
		if (getSubTexmap materialValid[i] v) != undefined do (
			--print (getSubTexmap materialValid[i] v)
			--format "not undefined"
			format "Material: % Maps: % " ($.material.materialList[i]) (getSubTexmap materialValid[i] v)

		)
	)
)
