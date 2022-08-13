%.bin8: %.bdf Dockerfile convert.py
	docker build -t bdf-to-verilog .
	docker run -i --rm bdf-to-verilog < $< > $@

%.bdf:
	curl -O https://raw.githubusercontent.com/farsil/ibmfonts/master/bdf/$@
