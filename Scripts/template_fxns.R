unqSort <- function(x, ceil.n = 20){
	unqSort.x <- sort(unique(x))
	if(length(unqSort.x) > ceil.n) return(NULL)
	return(unqSort.x)
}

countNA <- function(x) sum(is.na(x))

theme_basic <- function(...){
	require(ggplot2)
	theme(
		panel.background = element_blank(),
		axis.line = element_line(colour = "black"),
		strip.background = element_rect(colour = NA, fill = rgb(120, 124, 132, maxColorValue = 255)),
		strip.text = element_text(colour = "white"),
		...
	)
}

drive_ls_from_id <- function(drive.id){
	require(googledrive)
	
	# drive.id := as.character()
	
	x.id <- as_id(drive.id)
	x.dribble <- drive_get(x.id)
	x.ls <- drive_ls(x.dribble)
	
	return(x.ls)
}

drive_sub_id <- function(drive.id, sub.name){
	require(googledrive)
	require(magrittr)
	require(dplyr)
	
	# drive.id := id of GDrive directory to navigate from
	# sub.name := name of subdirectory or file
	
	drive.dribble <- drive_ls_from_id(drive.id)
	subdir.id <- drive.dribble %>% filter(name == sub.name) %>% use_series(id)
	return(subdir.id)
}