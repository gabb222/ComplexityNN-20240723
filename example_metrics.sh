#!/bin/bash

# example
python metrics.py --processes 2 --directory samples/ --output output

# synthetic cavities on experimental backgrounds
python metrics.py --processes 2 --directory synthetic_v1/ --output output_synthetic

# full scenic dataset in color
python metrics.py --processes 2 --directory VISCHEMA-data/VISC-C/scenes/ --output output_scenic_rgb

# full scenic dataset in grayscale
python metrics.py --processes 2 --directory VISCHEMA-data/VISC-C/scenes_grey/ --output output_scenic_grey

# NOME background dataset
python metrics.py --processes 2 --directory Backgrounds_NOME_v1/ --output output_backgrounds_NOME
