y = 5

startX = 15
endX = 20
numberX = 5

startZ = 10
endZ = 15
numberZ = 5 

position = 1
for posx in range(numberX):
	x = startX + posx * (endX - startX) * 1.0 / numberX
	for posz in range(numberZ):
		z = startZ + posz * (endZ - startZ) * 1.0 / numberZ
		print('LightSource "custom_caustic_light" ' + str(position) + ' "intensity" 10 "lightcolor" [1 1 1] "from" [' 
			+ str(x) + ' ' + str(y) + ' ' + str(z) +']')
		position += 1

z = -20

startX = -20
endX = 20
numberX = 10

startY = -20
endY = 20
numberY = 10

for posx in range(numberX):
	x = startX + posx * (endX - startX) * 1.0 / numberX
	for posy in range(numberY):
		y = startY + posy * (endY - startY) * 1.0 / numberY
		print('LightSource "custom_caustic_light" ' + str(position) + ' "intensity" 10 "lightcolor" [1 1 1] "from" [' 
			+ str(x) + ' ' + str(y) + ' ' + str(z) +']')
		position += 1