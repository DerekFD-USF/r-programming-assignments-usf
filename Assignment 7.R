
# This is a S3 function as you can make a list into a S3 object without
#much issues. S4 is way more rigorous and strict with its OOP system.

game_info <- list(gamename = "GameofExpedition", edition = 2, releaseyear = 2024)

class(game_info) <- "Game"
game_info

#For S4, I have to set the class and the characteristics for each attribute of the object such as is the doctor's name
#A character or a numeral?
setClass("DoctorsinOffice", slots = list(DoctorName = "character", tenureyears = "numeric", study = "character"))

angela_record <- new("DoctorsinOffice", DoctorName = "Angela", tenureyears = 5, study = "Biology")


