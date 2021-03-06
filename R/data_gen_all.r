# Creates the norway_locations, norway_municip_merging, and norway_population data.table
# @param base_loc Folder where data will be saved
gen_data_all <- function(base_loc) {
  old_wd <- getwd()
  on.exit(setwd(old_wd))
  setwd(base_loc)

  days <- gen_days()
  save(days, file = file.path(base_loc, "days.rda"), compress = "bzip2")

  # norway_fixing_merged_municips
  norway_fixing_merged_municips <- gen_norway_fixing_merged_municips(x_year_end = 2020)
  save(norway_fixing_merged_municips, file = file.path(base_loc, "norway_fixing_merged_municips.rda"), compress = "bzip2")

  # norway_municip_merging
  norway_municip_merging_b2020 <- gen_norway_municip_merging(x_year_end = 2020)
  save(norway_municip_merging_b2020, file = file.path(base_loc, "norway_municip_merging_b2020.rda"), compress = "bzip2")

  norway_municip_merging_b2019 <- gen_norway_municip_merging(x_year_end = 2019)
  save(norway_municip_merging_b2019, file = file.path(base_loc, "norway_municip_merging_b2019.rda"), compress = "bzip2")

  # norway_county_merging
  norway_county_merging_b2020 <- gen_norway_county_merging(x_year_end = 2020)
  save(norway_county_merging_b2020, file = file.path(base_loc, "norway_county_merging_b2020.rda"), compress = "bzip2")

  norway_county_merging_b2019 <- gen_norway_county_merging(x_year_end = 2019)
  save(norway_county_merging_b2019, file = file.path(base_loc, "norway_county_merging_b2019.rda"), compress = "bzip2")

  # norway_locations
  norway_locations_b2020 <- gen_norway_locations(x_year_end = 2020)
  save(norway_locations_b2020, file = file.path(base_loc, "norway_locations_b2020.rda"), compress = "bzip2")

  norway_locations_b2019 <- gen_norway_locations(x_year_end = 2019)
  save(norway_locations_b2019, file = file.path(base_loc, "norway_locations_b2019.rda"), compress = "bzip2")

  # norway_locations_long
  norway_locations_long_b2020 <- gen_norway_locations_long(x_year_end = 2020)
  save(norway_locations_long_b2020, file = file.path(base_loc, "norway_locations_long_b2020.rda"), compress = "bzip2")

  norway_locations_long_b2019 <- gen_norway_locations_long(x_year_end = 2019)
  save(norway_locations_long_b2019, file = file.path(base_loc, "norway_locations_long_b2019.rda"), compress = "bzip2")

  # norway_population
  norway_population_b2020 <- gen_norway_population(x_year_end = 2020)
  save(norway_population_b2020, file = file.path(base_loc, "norway_population_b2020.rda"), compress = "xz")

  norway_population_b2019 <- gen_norway_population(x_year_end = 2019)
  save(norway_population_b2019, file = file.path(base_loc, "norway_population_b2019.rda"), compress = "xz")

  # norway_childhood_vax
  norway_childhood_vax_b2019 <- gen_norway_childhood_vax(x_year_end = 2019)
  save(norway_childhood_vax_b2019, file = file.path(base_loc, "norway_childhood_vax_b2019.rda"), compress = "xz")

  # other

  countries_nb_to_en <- gen_countries_nb_to_en()
  save(countries_nb_to_en, file = file.path(base_loc, "countries_nb_to_en.rda"))

  norway_dates_holidays <- gen_norway_dates_holidays()
  save(norway_dates_holidays, file = file.path(base_loc, "norway_dates_holidays.rda"), compress = "xz")

  # map labels

  norway_map_counties_label_positions_b2019 <- gen_norway_map_counties_label_positions(x_year_end = 2019)
  save(norway_map_counties_label_positions_b2019, file = file.path(base_loc, "norway_map_counties_label_positions_b2019.rda"), compress = "xz")
  norway_map_counties_label_positions_b2020 <- gen_norway_map_counties_label_positions(x_year_end = 2020)
  save(norway_map_counties_label_positions_b2020, file = file.path(base_loc, "norway_map_counties_label_positions_b2020.rda"), compress = "xz")

  # norway_map_counties_b2019 <- gen_norway_map_counties(x_year_end=2019)
  # save(norway_map_counties_b2019, file=file.path("/git","/fhidata","data","norway_map_counties_b2019.rda"), compress = "xz")
  # norway_map_municips_b2019 <-  gen_norway_map_municips(x_year_end=2019)
  # save(norway_map_municips_b2019, file=file.path("/git","/fhidata","data","norway_map_municips_b2019.rda"), compress = "xz")

  # norway_map_counties_b2020 <- gen_norway_map_counties(x_year_end=2020)
  # save(norway_map_counties_b2020, file=file.path("/git","/fhidata","data","norway_map_counties_b2020.rda"), compress = "xz")
  # norway_map_municips_b2020 <-  gen_norway_map_municips(x_year_end=2020)
  # save(norway_map_municips_b2020, file=file.path("/git","/fhidata","data","norway_map_municips_b2020.rda"), compress = "xz")

  # load(file.path(base_loc,"norway_locations_b2019.rda"))
  # load(file.path(base_loc,"norway_map_municips_b2019.rda"))
  # senorge_b2019 <- gen_senorge(norway_locations_b2019, norway_map_municips_b2019)
  # save(senorge_b2019, file=file.path(base_loc,"senorge_b2019.rda"), compress = "xz")

  # load(file.path(base_loc,"norway_locations_b2020.rda"))
  # load(file.path(base_loc,"norway_map_municips_b2020.rda"))
  # senorge_b2020 <- gen_senorge(norway_locations_b2020, norway_map_municips_b2020)
  # save(senorge_b2020, file=file.path(base_loc,"senorge_b2020.rda"), compress = "xz")
}
