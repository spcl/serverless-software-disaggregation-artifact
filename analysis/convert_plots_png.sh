#!/bin/bash

for plot in plots/*.pdf; do

  plot_name="${plot%.*}"
  convert -density 600 $plot $plot_name.png

done

