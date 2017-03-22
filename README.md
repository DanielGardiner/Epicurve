# Epicurve

Author: Daniel Gardiner

Contact: daniel.gardiner@phe.gov.uk

Date: 14.03.2017

Credit: this function is loosely based on the plotIncidence function created
        as part of the GRINDER hackathon https://github.com/Hackout2/time

Functon to plot epicurve


Arguments:

x: a data frame

date.col: a character specifying the column containing dates

time.period: a character of the desired time period for the epicurve, this can either be
                 day, year, month, year.month, iso.year, iso.week, iso.year.week, use.date.col.as.is
             NOTE: if time.period = use.date.col.as.is the date.col will be treated as a factor and will be used as the x-axis

fill.by: a character specifying the column to stratify by fill colour

split.by: a character specifying the column to stratify by faceting


shade.by: a character specifying the column to stratify by shade colour

start.at: a character in the format "yyyy-mm-dd" to specify the start date for the epicurve

stop.at: a character in the format "yyyy-mm-dd" to specify the stop date for the epicurve

xlab: a character specifying the x-axis label for the epicurve

ylab: a character specifying the y-axis label for the epicurve

fill.by.legend.title: a character specifying the fill legend title

shade.by.legend.title: a character specifying the shade legend title

angle: a numeric to specify the x-axis label angel for the epicurve

col.pal: a numeric specifying the colour palette  (range 1-8 inclusive) OR a
         character stating 'phe' to use the phe colour palette

label.breaks: a numeric specifying the interval for x-axis label breaks

epi.squares: a logical  specifying if episquares should be used on the epicurve

na.rm: a logical  specifying if missing dates should be removed from the epicurve


