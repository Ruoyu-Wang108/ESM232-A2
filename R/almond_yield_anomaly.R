#' Almond Yield
#'
#' @description
#'
#' @author
#'
#' @param
#'
#' @return
#'
#' @references
#'
#'
#' @examples
#'


almond_yield_anomaly <- function(feb_min_t,
                         jan_precip,
                         var_feb_min_t_1 = -0.015,
                         var_feb_min_t_2 = -0.0046,
                         var_jan_precip_1 = -0.07,
                         var_jan_precip_2 = 0.0043,
                         intercept = 0.28){

  yield = var_feb_min_t_1 * feb_min_t + var_feb_min_t_2 * feb_min_t^2 + var_jan_precip_1 *  jan_precip + var_jan_precip_2 * jan_precip^2 + intercept

  return(yield)


}
