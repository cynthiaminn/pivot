transform <- function(d) {
  pivot_longer(d, cols=starts_with('X'), names_to='year', names_prefix='X', values_to='mortality') |>
    mutate(year=as.numeric(year)) |>
    select(iso, year, mortality)
}

usethis::use_testthat()
usethis::use_test("transform")
usethis::use_data_raw("maternal_mortality")

usethis::use_git()
usethis::use_github()