# MaliciousPKG-R
File exfiltration with an R Package

When an application allows the upload and execution of custom R libraries, use this and exfil for fun and profit. 

## Installation & Dependencies

Dependencies can be a bit of a pain to get working, devtools especially. If running Ubuntu, you will have to run:

`sudo apt-get install r-base r-cran-devtools libssl-dev`

Clone the repository:

`git clone https://github.com/softwaresecured/MaliciousPKG-R/ && cd MaliciousPKG-R/R`

Edit the fileSender.R and define your C2.

Enter an R shell with:

`R`

Run:

`devtools::build()`

Upload the file, and upon load of the library it will execute, exfiltrating the specified file. 


