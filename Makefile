run:
	rm -rf data
	mkdir -p data
	b create  --download --wait --output-dir data/ ./module.json 