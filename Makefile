# Martin Guo
# martin.guo@irdeto.com
# 2016-06-13

Phony: build

build: 
	docker build -t migu_r_shiny .

# -v <host_dir>:<container_dir>
run:
	docker run -d \
	-p 3838:3838 \
	-v ~/projects/MIGU/shiny/mock_srv/shinyapps/:/srv/shiny-server/ \
	-v ~/projects/MIGU/shiny/mock_srv/shinylog/:/var/log/ \
	-t migu_r_shiny
