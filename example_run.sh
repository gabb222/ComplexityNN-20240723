#!/bin/bash

# example
python run.py --model model/complexity_net.pt --directory samples/ --output output

# synthetic cavities on experimental backgrounds
python run.py --model model/complexity_net.pt --directory synthetic_v1/ --output output_synthetic

# full scenic dataset in color
python run.py --model model/complexity_net.pt --directory VISCHEMA-data/VISC-C/scenes/ --output output_scenic_rgb

# full scenic dataset in grayscale
python run.py --model model/complexity_net.pt --directory VISCHEMA-data/VISC-C/scenes_grey/ --output output_scenic_grey
