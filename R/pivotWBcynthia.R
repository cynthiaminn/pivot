transform <- function(d) {
  pivot_longer(d, cols=starts_with('X'), names_to='year', names_prefix='X', values_to='mortality') |>
    mutate(year=as.numeric(year)) |>
    select(iso, year, mortality)
}