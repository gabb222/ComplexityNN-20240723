#!/bin/bash

python metrics.py --processes 2 --directory research_v1/ --output output

python metrics.py --processes 2 --directory VISCHEMA-data/VISC-C/scenes_grey/ --output scene_output_grey
