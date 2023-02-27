raw_dat = here::here("results/MIKK_genome/20210212_inbreeding.csv")
inbreed_df = readr::read_csv(raw_dat)

total_crosses = 253

inbreed_df_tidy = inbreed_df %>%
  # Remove final row, which makes `N of strains lost` character
  dplyr::slice(-c(11,12)) %>% 
  # Change column names
  dplyr::select(GENERATION = `Inbreeding (Generation)`,
                N_LOST_TOTAL = `N of strains lost`,
                everything()) %>% 
  # Make N_LOST integer
  dplyr::mutate(N_LOST_TOTAL = as.integer(N_LOST_TOTAL)) %>% 
  # Remove MIKK column
  dplyr::select(-MIKK) %>% 
  # Get cumulative lost and N_SURVIVING
  dplyr::mutate(N_LOST_CUM = cumsum(N_LOST_TOTAL),
                N_SURVIVING = total_crosses - N_LOST_CUM) %>% 
  # Replace 
  dplyr::mutate(dplyr::across(c(`not productive`,
                                `infertile male`,
                                `no males`,
                                `no females`,
                                `all cause death`),
                              ~tidyr::replace_na(.x, 0))) %>% 
  # Get cumulative lost for each category
  dplyr::mutate(dplyr::across(c(`not productive`,
                                `infertile male`,
                                `no males`,
                                `no females`,
                                `all cause death`),
                              ~cumsum(.x))) %>% 
  # Amend GENERATION column
  dplyr::mutate(GENERATION = stringr::str_extract(GENERATION, "(?:F\\d{1,2})")) %>% 
  # Add first row
  rbind(., c("F1", rep(0,7), total_crosses)) %>% 
  # Add rows for F12-14
  rbind(., dplyr::filter(., GENERATION == "F11") %>%
          dplyr::slice(rep(1:n(), each = 3)) %>%
          dplyr::mutate(GENERATION = c("F12", "F13", "F14"))) %>% 
  # Factorise GENERATION
  dplyr::mutate(GENERATION = factor(GENERATION, levels = paste("F", seq(1:14), sep = ""))) %>% 
  # Order
  .[order(.$GENERATION), ] %>% 
  # Gather 
  tidyr::pivot_longer(cols = c(`not productive`,
                               `infertile male`,
                               `no males`, 
                               `no females`,
                               `all cause death`,
                               N_SURVIVING),
                      names_to = "STATUS",
                      values_to = "N") %>% 
  # Convert `N` to integer
  dplyr::mutate(N = as.integer(N))
