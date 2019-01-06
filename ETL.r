

##etl
#######################################################
## csv file : read  with header

setwd("C:\\Users\\vkumar15\\Desktop")

d = read.csv("Book1.csv",header = FALSE)


X = read.csv("Book1.csv",header = TRUE)

write.csv(d,"datacsv_copy.csv")


write.csv(d,"datacsv_copy.csv")

##without header
d = read.csv("C:\\Users\\vkumar15\\Desktop\\datacsv_1.csv",header = FALSE)
d$V1

##write to file 
write.csv(d,"C:\\Users\\vkumar15\\Desktop\\datacsv_2.csv")

################# read from excel
install.packages("xlsx")

library(xlsx)

dd = read.xlsx("C:\\Users\\vkumar15\\Desktop\\dataexcel.xlsx",sheetIndex = 1)




### from database 

#install.packages("RODBC")
library("RODBC")


myconn <-odbcConnect("mydatabase")

#crimedat <- sqlFetch(myconn, "product")

pundat <- sqlQuery(myconn, "select * from product where pid =10")


pundat <- sqlQuery(myconn, "select * from product")

pundat$pid

close(myconn)


#A binary file is a file that contains information stored only in form of bits and bytes.(0's and 1's). They are not human readable as the bytes in it translate to characters and symbols which contain many other non-printable characters. Attempting to read a binary file using any text editor will show characters like Ø and ð.


# Read the "mtcars" data frame as a csv file and store only the columns  "cyl", "am" and "gear".

write.table(mtcars, file = "mtcars.csv",row.names = FALSE, na = "", 
            col.names = TRUE, sep = ",")

# Store 5 records from the csv file as a new data frame.
new.mtcars <- read.table("mtcars.csv",sep = ",",header = TRUE,nrows = 5)

# Create a connection object to write the binary file using mode "wb".
write.filename = file("binmtcars.dat", "wb")

# Write the column names of the data frame to the connection object.
writeBin(colnames(new.mtcars), write.filename)

# Write the records in each of the column to the file.
writeBin(c(new.mtcars$cyl,new.mtcars$am,new.mtcars$gear), write.filename)

# Close the file for writing so that it can be read by other program.
close(write.filename)


##
# Create a connection object to read the file in binary mode using "rb".
read.filename <- file("c:\\abc\\binmtcars.dat", "rb")

# First read the column names. n = 3 as we have 3 columns.
column.names <- readBin(read.filename, character(),  n = 3)

# Next read the column values. n = 18 as we have 3 column names and 15 values.
read.filename <- file("/web/com/binmtcars.dat", "rb")
bindata <- readBin(read.filename, integer(),  n = 18)

# Print the data.
print(bindata)

# Read the values from 4th byte to 8th byte which represents "cyl".
cyldata = bindata[4:8]
print(cyldata)

# Read the values form 9th byte to 13th byte which represents "am".
amdata = bindata[9:13]
print(amdata)

# Read the values form 9th byte to 13th byte which represents "gear".
geardata = bindata[14:18]
print(geardata)

# Combine all the read values to a dat frame.
finaldata = cbind(cyldata, amdata, geardata)
colnames(finaldata) = column.names
print(finaldata)



#############################
install.packages("XML")

<RECORDS>
  <EMPLOYEE>
  <ID>1</ID>
  <NAME>Rick</NAME>
  <SALARY>623.3</SALARY>
  <STARTDATE>1/1/2012</STARTDATE>
  <DEPT>IT</DEPT>
  </EMPLOYEE>
  
  <EMPLOYEE>
  <ID>2</ID>
  <NAME>Dan</NAME>
  <SALARY>515.2</SALARY>
  <STARTDATE>9/23/2013</STARTDATE>
  <DEPT>Operations</DEPT>
  </EMPLOYEE>
  
  <EMPLOYEE>
  <ID>3</ID>
  <NAME>Michelle</NAME>
  <SALARY>611</SALARY>
  <STARTDATE>11/15/2014</STARTDATE>
  <DEPT>IT</DEPT>
  </EMPLOYEE>
  
  <EMPLOYEE>
  <ID>4</ID>
  <NAME>Ryan</NAME>
  <SALARY>729</SALARY>
  <STARTDATE>5/11/2014</STARTDATE>
  <DEPT>HR</DEPT>
  </EMPLOYEE>
  
  <EMPLOYEE>
  <ID>5</ID>
  <NAME>Gary</NAME>
  <SALARY>843.25</SALARY>
  <STARTDATE>3/27/2015</STARTDATE>
  <DEPT>Finance</DEPT>
  </EMPLOYEE>
  
  <EMPLOYEE>
  <ID>6</ID>
  <NAME>Nina</NAME>
  <SALARY>578</SALARY>
  <STARTDATE>5/21/2013</STARTDATE>
  <DEPT>IT</DEPT>
  </EMPLOYEE>
  
  <EMPLOYEE>
  <ID>7</ID>
  <NAME>Simon</NAME>
  <SALARY>632.8</SALARY>
  <STARTDATE>7/30/2013</STARTDATE>
  <DEPT>Operations</DEPT>
  </EMPLOYEE>
  
  <EMPLOYEE>
  <ID>8</ID>
  <NAME>Guru</NAME>
  <SALARY>722.5</SALARY>
  <STARTDATE>6/17/2014</STARTDATE>
  <DEPT>Finance</DEPT>
  </EMPLOYEE>
  
  </RECORDS>
  
  
  
  
  # Load the package required to read XML files.
  library("XML")

# Also load the other required package.
library("methods")

# Give the input file name to the function.s
result <- xmlParse(file = "xmldata.xml")

# Print the result.


print(result)


# Load the packages required to read XML files.
library("XML")
library("methods")

# Give the input file name to the function.
result <- xmlParse(file = "input.xml")

# Exract the root node form the xml file.
rootnode <- xmlRoot(result)

# Print the result.
print(rootnode[1])



###data frame
# Load the packages required to read XML files.
library("XML")
library("methods")

# Convert the input xml file to a data frame.
xmldataframe <- xmlToDataFrame("xmldata.xml")

print(xmldataframe)
###############json
install.packages("rjson")



#Input Data
#Create a JSON file by copying the below data into a text editor like notepad. Save the file with a .json extension and choosing the file type as all files(*.*).

{ 
  "ID":["1","2","3","4","5","6","7","8" ],
  "Name":["Rick","Dan","Michelle","Ryan","Gary","Nina","Simon","Guru" ],
  "Salary":["623.3","515.2","611","729","843.25","578","632.8","722.5" ],
  
  "StartDate":[ "1/1/2012","9/23/2013","11/15/2014","5/11/2014","3/27/2015","5/21/2013",
                "7/30/2013","6/17/2014"],
  "Dept":[ "IT","Operations","IT","HR","Finance","IT","Operations","Finance"]
}




# Load the package required to read JSON files.
library("rjson")

# Give the input file name to the function.
result <- fromJSON(file = "jsondata.json")

# Print the result.
print(result)






# Load the package required to read JSON files.
library("rjson")

# Give the input file name to the function.
result <- fromJSON(file = "C:\\Users\\vkumar15\\Desktop\\datajson.json")

# Convert JSON file to a data frame.
json_data_frame <- as.data.frame(result)

print(json_data_frame)





### web 
install.packages("RCurl")
install.packages("XML")
install.packages("stringr")
install.packages("plyr")

library(RCurl)
library(stringr)
library(plyr)

# Read the URL.
url <- "https://www.geos.ed.ac.uk/~weather/jcmb_ws/"

# Gather the html links present in the webpage.
links <- getHTMLLinks(url)
  

# Identify only the links which point to the JCMB 2015 files. 
filenames <- links[str_detect(links, "JCMB_2015")]

# Store the file names as a list.
filenames_list <- as.list(filenames)

# Create a function to download the files by passing the URL and filename list.
downloadcsv <- function (mainurl,filename) {
  filedetails <- str_c(mainurl,filename)
  download.file(filedetails,filename)
}

# Now apply the l_ply function and save the files into the current R working directory.
l_ply(filenames,downloadcsv,mainurl = "https://www.geos.ed.ac.uk/~weather/jcmb_ws/")



"JCMB_2015.csv" "JCMB_2015_Apr.csv" "JCMB_2015_Feb.csv" "JCMB_2015_Jan.csv"
"JCMB_2015_Mar.csv"

 

X <- read.csv(url("https://www.geos.ed.ac.uk/~weather/jcmb_ws/JCMB_2007_Apr.csv"))


