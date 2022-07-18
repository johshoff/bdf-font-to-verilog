ib8x8u.bin: ib8x8u.bdf Dockerfile convert.py
	docker build -t bdf-to-verilog .
	docker run --rm bdf-to-verilog > ib8x8u.bin

ib8x8u.bdf:
	curl -O https://raw.githubusercontent.com/farsil/ibmfonts/master/bdf/ib8x8u.bdf
