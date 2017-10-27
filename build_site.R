#Set our working directory. 
#This helps avoid confusion if our working directory is 
#not our site because of other projects we were 
#working on at the time. 
setwd("~/ethnic_group_profiles/")
#render your sweet site. 
rmarkdown::render_site()

setwd("~/ethnic_group_profiles/")
groups = c("Asian Indian","Bangladeshi","Bhutanese","Burmese","Cambodian",
           "Chinese",
           "Filipino",
           "Hmong",
           "Indonesian",
           "Japanese",
           "Korean",
           "Laotian",
           "Malaysian",
           "Mongolian",
           "Nepalese",
           "Pakistani",
           "Sri Lankan",
           "Taiwanese",
           "Thai",
           "Vietnamese")
for(group in groups)
  rmarkdown::render(input = "report_template.Rmd", 
                    output_file = paste0("fact_sheets/",group,".html"),
                    params = list(group = group)
  )


