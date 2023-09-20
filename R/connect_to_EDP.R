
#' Connect to EDP on AWS
#'
#' @param user      A Character String, The User ID/SLID that needed to connect to EDP.
#' @param password  A Character String, User's Password needed to Authenticate and
#' connect to the EDP database.
#'
#' @return Returns A connection string of user ID and password to AWS which allows a user access to the EDP database.
#'  Must have packages DBI and odbc installed in your Library.
#' @export
#'
#' @examples
#' con <- connect_to_EDP(user, password)
connect_to_EDP <- function(user, password){

  # 1.0 Establish Connection with EDP ----

  print("Connecting to Database!")

  # Connection Script
  con <-   DBI::dbConnect(odbc::odbc(),
                          Driver   = "{Amazon Redshift (x64)}",
                          Server   = "edprsdwpdb1",
                          Port     = "5610",
                          Database = "edp",
                          Uid      = user,
                          Pwd      = password)
  # Error Msg:
  if(!exists("con")){
    print("Someting is WRONG! Unable to Establish Connection.")
  }else{
    print("-- Connection Successfull --")
  }

  # Set SQL Time Zone
  DBI::dbExecute(con, "set timezone = 'America/New_York';")

  return(con)


}
