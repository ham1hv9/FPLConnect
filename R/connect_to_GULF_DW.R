
#' Connect to Gulf Power Data Warehouse on AWS
#'
#' @param user    A Character String, The User ID/SLID that needed to connect to EDP.
#' @param passwd  A Character String, User's Password needed to Authenticate and
#' connect to the Gulf Power Data Warehouse.
#'
#' @return Returns A connection string of user ID and password to AWS which allows a user access to the Gulf Power Data Warehouse.
#'  Must have packages DBI and odbc installed in your Library.
#' @export
#'
#' @examples
#' con1 <- connect_to_GULF_DW(user, passwd)
connect_to_GULF_DW <- function(user, passwd){

  # 1.0 Establish Connection with Gulf Power Data Warehouse ----

  print("Connecting to Gulf Power Data Warehouse!")

  # Connection Script
  con1 <-   DBI::dbConnect(odbc::odbc(),
                           Driver   = "{Amazon Redshift (x64)}",
                           Server   = "aws-lpv-sm320-sggdl-redshift.c6bvnytooojc.us-east-1.redshift.amazonaws.com",
                           Port     = "5610",
                           Database = "sggdlp",
                           Uid      = user,
                           Pwd      = passwd )
  # Error Msg:
  if(!exists("con1")){
    print("Someting is WRONG! Unable to Establish Connection.")
  }else{
    print("-- Connection Successfull --")
  }

  # Set SQL Time Zone
  DBI::dbExecute(con1, "set timezone = 'America/New_York';")
  print("* Tmezone set to America/New_York *")

  return(con1)
}
