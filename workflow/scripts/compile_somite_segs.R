library(tidyverse)

# Set variables

IN = list.files(here::here("book/figs/somites"),
                pattern = "ali_fish2nicestackslice",
                full.names = T)
OUT_PNG = here::here("book/figs/somites/ali_fish_seg_compiled.png")
OUT_PDF = here::here("book/figs/somites/ali_fish_seg_compiled.pdf")


dat_list = purrr::map(IN, function(FILE){
  magick::image_read(FILE)
})

top = c(dat_list[[1]], dat_list[[2]], dat_list[[3]])
bottom = c(dat_list[[4]], dat_list[[5]], dat_list[[6]])
top_out = magick::image_append(top)
bottom_out = magick::image_append(bottom)
final = magick::image_append(c(top_out, bottom_out),
                             stack = T)

magick::image_write(final, OUT_PNG, format = "png")
magick::image_write(final, OUT_PDF, format = "pdf")
