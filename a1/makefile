
all: texture shaders world

area_light_source.rib:
	python create_arealight.py > area_light_source.rib

texture:
	txmake textures/roof.tif textures/roof.tex
	txmake textures/wood.tif textures/wood.tex
	txmake textures/grass.tif textures/grass.tex
	txmake textures/velvet.tif textures/velvet.tex
	txmake textures/floor.tif textures/floor.tex
	txmake textures/bb8.jpg textures/bb8.tex

shaders:
	shader wall.sl
	shader metal.sl
	shader transparent.sl
	shader bb8.sl
	shader c3po.sl
	shader customlight.sl

world: caustics.cpm
	prman -progress world.rib
	cp prman.tif world.tif

caustics.cpm: area_light_source.rib
	prman -progress caustics.rib

clean:
	rm -f textures/*.tex
	rm -f *.slo
	rm -f *.cpm
	rm -f area_light_source.rib