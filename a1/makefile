
all: texture shaders world

area_light_source.rib:
	python create_arealight.py > area_light_source.rib

texture:
	txmake textures/roof.tif textures/roof.tex
	txmake textures/wood.tif textures/wood.tex
	txmake textures/woods.tif textures/woods.tex
	txmake textures/velvet.tif textures/velvet.tex
	txmake textures/floor.tif textures/floor.tex
	txmake textures/chest.jpg textures/chest.tex
	txmake textures/bb8_body.jpg textures/bb8_body.tex

shaders:
	shader floor.sl
	shader fabric.sl
	shader roof.sl
	shader wood.sl
	shader metal.sl
	shader transparent.sl
	shader bb8_body.sl
	shader c3po.sl
	shader custom_caustic_light.sl

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