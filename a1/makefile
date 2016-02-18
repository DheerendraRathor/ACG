
all: texture shaders world

texture:
	txmake textures/roof.tif textures/roof.tex
	txmake textures/wood.tif textures/wood.tex
	txmake textures/woods.tif textures/woods.tex
	txmake textures/velvet.tif textures/velvet.tex
	txmake textures/floor.tif textures/floor.tex

shaders:
	shader floor.sl
	shader fabric.sl
	shader roof.sl
	shader wood.sl
	shader metal.sl
	shader transparent.sl
	shader shadowlight.sl

world: caustics.cpm
	prman world.rib

caustics.cpm:
	prman caustics.rib

clean:
	rm -f *.slo
	rm -f *.cpm