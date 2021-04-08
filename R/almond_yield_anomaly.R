#' Almond Yield
#'
#' @description
#' This function calculates the anomaly Almond yield based on minimum temperature in February and total precipitation in January.
#'
#' @author Margaret Brickner, Nathalie Eegholm, Ruoyu Wang
#'
#' @param feb_min_t The minimum temperature in February. Unit: Celcius.
#' @param jan_precip The total precipitation in January. Unit: millimeter.
#' @param var_feb_min_t_1 The coefficient associated with feb_min_t. Default: -0.015
#' @param var_feb_min_t_2 The coefficient associated with feb_min_t square. Default: -0.0046
#' @param var_jan_precip_1 The coefficient associated with jan_precip. Default: -0.07
#' @param var_jan_precip_2 The coefficient associated with jan_precip square. Default: 0.0043
#' @param intercept The intercept of this statistic model. Default: 0.28
#'
#' @return Almond yield anomaly. Unit: ton/acre.
#'
#' @references Lobell et al., 2006
#' @examples almond_yield_anomaly(3, 5)


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
