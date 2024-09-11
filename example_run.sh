#!/bin/bash

python run.py --model model/complexity_net.pt --directory research_v1/ --output output

python run.py --model model/complexity_net.pt --directory VISCHEMA-data/VISC-C/scenes_grey/ --output scene_output_grey
