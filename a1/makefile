
all: clean texture shaders world

area_light_source.rib:
	python create_arealight.py > area_light_source.rib

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
	shader custom_caustic_light.sl

world: caustics.cpm
	prman world.rib
	cp prman.tif world.tif

caustics.cpm: area_light_source.rib
	prman caustics.rib

clean:
	rm -f *.slo
	rm -f *.cpm
	rm -f area_light_source.rib