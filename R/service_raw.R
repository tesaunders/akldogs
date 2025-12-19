#' Raw Auckland Council Animal Management request for service (dogs) data
#'
#' Raw data relating to request for service for Animal Management officers to attend dog-related call outs in Auckland as at FY 2025, provided by Auckland Council Animal Management via a LGOIA request.
#'
#' @format A dataframe with 47,178 rows and 7 columns:
#' \describe{
#'   \item{rfs_id}{Request for service ID}
#'   \item{rfs_date}{Date request for service received} 
#'   \item{suburb}{Suburb where request for service took place}
#'   \item{street}{Street where request for service took place}
#'   \item{team}{Animal Management field team responding to request for service}
#'   \item{local board}{Local Board covering area of request for service}
#'   \item{rfs_type}{Type of request for service}
#' }
#' @source Auckland Council Animal Management, LGOIA request number 8140017948
"service_raw"
