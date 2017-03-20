# generate dummy data 

set.seed(2)

data = data.frame(dates = sample(seq(as.Date('2014-01-01'), as.Date('2016-04-01'), by="day"), 200, replace = T),
                  sex = c("Male", "Female"),
                  conf = sample(c("Confirmed", "Probable", "possible"), 200, replace = T),
                  status = sample(c("Student", "Staff"), 200, replace = T))


data$dates.year.month = factor(format(data$dates, "%Y_%m"),
                               levels = unique(format(seq(min(data$dates), max(data$dates), 1), "%Y_%m")))




# use function

epicurve(data, date.col = "dates", time.period = "iso.year.week", 
         fill.by="sex", split.by=NULL, shade.by=NULL,
         start.at = "2014-01-01", stop.at = "2015-06-22",
         xlab="Year week", ylab="Count", 
         fill.by.legend.title = "Sex", shade.by.legend.title = NULL, angle=90, 
         col.pal="phe", label.breaks = 1, epi.squares = FALSE, na.rm = TRUE) 

epicurve(x = data, date.col = "dates.year.month", time.period = "use.date.col.as.is", 
         fill.by="sex", split.by=NULL, shade.by=NULL,
         start.at = "2014-01-01", stop.at = "2015-06-22",
         xlab="Year week", ylab="Count", 
         fill.by.legend.title = "Sex", shade.by.legend.title = NULL, angle=90, 
         col.pal=7, label.breaks = 0, epi.squares = FALSE, na.rm = TRUE)


epicurve(data, date.col = "dates", time.period = "year.quarter", 
         fill.by="sex", split.by=NULL, shade.by=NULL,
         start.at = "2014-01-01", stop.at = "2015-06-22",
         xlab=NULL, ylab="Count", 
         fill.by.legend.title = NULL, shade.by.legend.title = NULL, angle=90, 
         col.pal=8, label.breaks = 0, epi.squares = FALSE, na.rm = TRUE)

epicurve(data, date.col = "dates", time.period = "year.month", 
         fill.by="sex", split.by=NULL, shade.by=NULL,
         start.at = "2014-01-01", stop.at = "2016-01-31",
         xlab=NULL, ylab="Count", 
         fill.by.legend.title = "Sex", shade.by.legend.title = NULL, angle=90, 
         col.pal=2, label.breaks = 0, epi.squares = FALSE, na.rm = FALSE)

epicurve(data, date.col = "dates", time.period = "day", 
         fill.by="sex", split.by=NULL, shade.by=NULL,
         start.at = "2014-01-01", stop.at = "2014-02-19",
         xlab=NULL, ylab="Count", fill.by.legend.title = NULL, angle=90, 
         col.pal=4, label.breaks = 3, epi.squares = FALSE, na.rm = TRUE)

epicurve(data, date.col = "dates.year.month", time.period = "use.date.col.as.is", 
         fill.by="sex", split.by=NULL, shade.by=NULL,
         start.at = "2014-01-01", stop.at = "2014-02-19",
         xlab=NULL, ylab="Count", fill.by.legend.title = NULL, angle=90, 
         col.pal=4, label.breaks = 3, epi.squares = FALSE, na.rm = TRUE)



epicurve(data, date.col = "dates", time.period = "month",
         fill.by="sex", split.by=NULL, shade.by="conf",
         start.at = "2014-01-01", stop.at = "2016-04-20",
         xlab=NULL, ylab="Count", 
         fill.by.legend.title = NULL, shade.by.legend.title = NULL, angle=0, 
         col.pal=6, label.breaks = 0, epi.squares = FALSE, na.rm = TRUE)


epicurve(data, date.col = "dates", time.period = "month",
         fill.by="conf", split.by="conf", shade.by="sex",
         start.at = "2014-01-01", stop.at = "2016-04-20",
         xlab=NULL, ylab="Count", 
         fill.by.legend.title = "Confirmed status", shade.by.legend.title = "Sex", 
         angle=0, col.pal="phe", label.breaks = 0, epi.squares = TRUE, na.rm = TRUE)

epicurve(data, date.col = "dates", time.period = "month", 
         fill.by="sex", split.by="conf", shade.by=NULL,
         start.at = "2014-01-01", stop.at = "2016-04-20",
         xlab=NULL, ylab="Count", 
         fill.by.legend.title = NULL, shade.by.legend.title = NULL, angle=0, 
         col.pal=7, label.breaks = 0, epi.squares = TRUE, na.rm = TRUE)

