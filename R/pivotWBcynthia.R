#' Transform World Bank Maternal Mortality Data
#'
#' @description
#' Converts World Bank maternal mortality data from wide format
#' to long format. Year columns beginning with "X" are pivoted
#' into rows with the "X" prefix removed and years converted
#' to numeric values.
#'
#' @param d A data frame containing an `iso` country code column
#'   and annual mortality columns named like `X2000`, `X2001`, etc.
#'
#' @return A data frame containing three columns:
#'   `iso` (country code), `year` (numeric year), and
#'   `mortality` (maternal mortality value).
#'
#' @examples
#' data("maternal_mortality")
#' maternal <- transform(maternal_mortality)
#'
#' @importFrom tidyr pivot_longer
#' @importFrom dplyr mutate select starts_with
#' @export

transform <- function(d) {
  pivot_longer(d, cols=starts_with('X'), names_to='year', names_prefix='X', values_to='mortality') |>
    mutate(year=as.numeric(year)) |>
    select(iso, year, mortality)
}
