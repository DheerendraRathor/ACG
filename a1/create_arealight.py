y = 15

startX = 10
endX = 20
numberX = 10

startZ = -20
endZ = -15
numberZ = 10

position = 1
for posx in range(numberX):
	x = startX + posx * (endX - startX) * 1.0 / numberX
	for posz in range(numberZ):
		z = startZ + posz * (endZ - startZ) * 1.0 / numberZ
		print('LightSource "customlight" ' + str(position) + ' "intensity" 1 "lightcolor" [1 1 1] "from" [' 
			+ str(x) + ' ' + str(y) + ' ' + str(z) +']')
		position += 1

z = -20

startX = -10
endX = 20
numberX = 10

startY = 10
endY = 20
numberY = 10

for posx in range(numberX):
	x = startX + posx * (endX - startX) * 1.0 / numberX
	for posy in range(numberY):
		y = startY + posy * (endY - startY) * 1.0 / numberY
		print('LightSource "customlight" ' + str(position) + ' "intensity" 1 "lightcolor" [1 1 1] "from" [' 
			+ str(x) + ' ' + str(y) + ' ' + str(z) +']')
		position += 1