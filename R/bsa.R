#' Estimate the body surface area (BSA)
#'
#' Estimate the body surface area (BSA), according to Monsteller or Du Bois.
#'
#' @references Monsteller: \url{https://doi.org/10.1056\%2FNEJM198710223171717};
#' Du Bois: \url{https://doi.org/10.1001\%2Farchinte.1916.00080130010002}.
#'
#' @section Caveats: None at this time.
#'
#' @param weight Weight (kg).
#' @param height Height (cm).
#' @param method Formula to estimate BSA. Options are: "Monsteller" (default),
#'   "Du Bois".
#' @return BSA (\eqn{m^2}).
#' @export
#' @seealso \code{\link[units]{set_units}}, \code{\link[units]{drop_units}}
estimate_bsa <- function(weight, height, method = "Monsteller") {
  switch(
    method,
    "Monsteller" = estimate_bsa_monsteller(weight, height),
    "Du Bois" = estimate_bsa_du_bois(weight, height),
    stop("Illegal value for argument method in calculate_bsa().")
  )
}

#' @describeIn estimate_bsa Estimate the body surface area (BSA) according to Monsteller.
#' @noRd
estimate_bsa_monsteller <- function(weight, height) {
  assertthat::assert_that(assertthat::is.number(weight) |
                            is.na(weight))
  assertthat::assert_that(assertthat::is.number(height) |
                            is.na(height))
  ((weight * height / 3600) ^ (0.5)) %>%
    units::set_units("m-2", mode = "standard")
}

#' @describeIn estimate_bsa Estimate the body surface area (BSA) according to Du Bois
#' @noRd
estimate_bsa_du_bois <- function(weight, height) {
  assertthat::assert_that(assertthat::is.number(weight) |
                            is.na(weight))
  assertthat::assert_that(assertthat::is.number(height) |
                            is.na(height))
  (0.007184 * (weight ^ 0.425) * (height ^ 0.725)) %>%
    units::set_units("m-2", mode = "standard")
}
