#' Auckland Council Animal Management Request For Service (RFS) data
#'
#' Data compiled by Auckland Council's Animal Management division relating to Requests For Service (Animal Management call-outs) in Auckland for financial years 2020-2025, and the second half of FY2019.
#'
#' @source Auckland Council, official information request (#8140017948).
#' @format Data frame with columns
#' \describe{
#' \item{sheet_name}{Excel sheet from which the row originates in the raw workbook.}
#' \item{rfs_no}{Request for Service ID number.}
#' \item{rfs_date}{Date the RFS was lodged.}
#' \item{location_suburb_name}{Suburb of request.}
#' \item{location_street_name}{Street of request.}
#' \item{team}{Animal Management team responsible for request.}
#' \item{local_board}{Auckland Council Local Board with jurisdiction over the suburb.}
#' \item{rfs_type}{Request type.}
#' }
"rfs"