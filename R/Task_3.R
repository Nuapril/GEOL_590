a <-1
b <-2
c <-a+b
typeof(a)
typeof(b)
typeof(c)
length(a)
length(b)
length(c)

set.seed(0) # This ensures that 'random' results will be the same for everyone
d <- rnorm(20) #rnorm creates a random set of integers of specified length.
e <- rnorm(20)
f <- d + e

typeof(d)
typeof(e)
typeof(f)
length(d)
length(e)
length(f)

g<-c(1,2,3,4,5)
attr(g, "color")<-Red
Error: object 'Red' not found
attr(g, "color")<- "red"
 attr(g, "color")
[1] "red"
attr(a,"name")<- "stve"
attr(a,"name")<-  NULL
attr(g, "name")<- "steve"
attr(g, "name")
[1] "steve"
f1 <- factor(letters)
levels(f1) <- rev(levels(f1))
f1<- factor(letters)
lenght(f1)
Error: could not find function "lenght"
length(f1)
[1] 26
f1[6]
[1] f
Levels: a b c d e f g h i j k l m n o p q r s t u v w x y z
levels(f1) <-rev(levels(f1))
f1[6]
[1] u
Levels: z y x w v u t s r q p o n m l k j i h g f e d c b a
f2 <- rev(factor(letters))
?levels
?factor
is.ordered(f1)
[1] FALSE
is.ordered(f2)
[1] FALSE
f2[6]
[1] u
Levels: a b c d e f g h i j k l m n o p q r s t u v w x y z
f3 <- factor(letters, levels = rev(letters))
f3[6]
[1] f
Levels: z y x w v u t s r q p o n m l k j i h g f e d c b a
dim(a)
NULL
dim(f3)
NULL
?dim
dim(f3)<- 1
Error in dim(f3) <- 1 : 
  dims [product 1] do not match the length of object [26]
?data.frame
attr(data.frame)
Error in attr(data.frame) : either 2 or 3 arguments are required
attributes(data.frame)
NULL
read.csv(2016_10_11_plate_reader.csv)
Error: unexpected input in "read.csv(2016_"
?read.csv
read.csv("2016_10_11_plate_reader.csv")
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file '2016_10_11_plate_reader.csv': No such file or directory
source('~/GEOL_590/R/Task_3.R')
Error in source("~/GEOL_590/R/Task_3.R") : 
  ~/GEOL_590/R/Task_3.R:4:15: unexpected string constant
3: attr(h, "name")
4: Error: object 'h'
^
source('~/GEOL_590/R/Task_3.R')
Error in source("~/GEOL_590/R/Task_3.R") : 
  ~/GEOL_590/R/Task_3.R:4:15: unexpected string constant
3: attr(h, "name")
4: Error: object 'h'
^
getwd("C:/Users/April/Documents/GEOL_590/data")
Error in getwd("C:/Users/April/Documents/GEOL_590/data") : 
  unused argument ("C:/Users/April/Documents/GEOL_590/data")
getwd()
[1] "C:/Users/April/Documents"
getwd("~/GEOL_590/data")
Error in getwd("~/GEOL_590/data") : unused argument ("~/GEOL_590/data")
read.csv("~/GEOL_590/data/2016_10_11_plate_reader.csv")
Software.Version
1                        
2                        
3                        
4   Experiment File Path:
  5     Protocol File Path:
  6                        
7                        
8                        
9            Plate Number
10                   Date
11                   Time
12           Reader Type:
  13  Reader Serial Number:
  14           Reading Type
15                       
16      Procedure Details
17                       
18             Plate Type
19        Set Temperature
20                       
21          Start Kinetic
22                  Shake
23                       
24                   Read
25                       
26                       
27                       
28                       
29                       
30                       
31                       
32                       
33                   well
34                     A1
35                     A2
36                     A3
37                     A4
38                     A5
39                     A6
40                     A7
41                     A9
42                    A10
43                    A11
44                    A12
45                     B1
46                     B2
47                     B3
48                     B4
49                     B5
50                     B6
51                     B7
52                     B8
53                     B9
54                    B10
55                    B11
56                    B12
57                     C1
58                     C2
59                     C3
60                     C4
61                     C5
62                     C6
63                     C7
64                     C8
65                     C9
66                    C10
67                    C11
68                    C12
69                     D1
70                     D2
71                     D3
72                     D4
73                     D5
74                     D6
75                     D7
76                     D8
77                     D9
78                    D10
79                    D11
80                    D12
81                     E1
82                     E2
83                     E3
84                     E4
85                     E5
86                     E6
87                     E7
88                     E8
89                     E9
90                    E10
91                    E11
92                    E12
93                     F1
94                     F2
95                     F3
96                     F4
97                     F5
98                     F6
99                     F7
100                    F8
101                    F9
102                   F10
103                   F11
104                   F12
105                    G1
106                    G2
107                    G3
108                    G4
109                    G5
110                    G6
111                    G7
112                    G8
113                    G9
114                   G10
115                   G11
116                   G12
117                    H1
118                    H2
119                    H3
120                    H4
121                    H5
122                    H6
123                    H8
124                    H9
125                   H10
126                   H11
127                   H12
X2.05.5
1                                                                                                                     
2                                                                                                                     
3                                                                                                                     
4   C:\\Users\\Public\\Documents\\Experiments\\Steen\\Fluorescence Test Plate\\2016_10_11_Cytation Fluo Test Plate.xpt
5                                    C:\\Users\\Public\\Documents\\Protocols\\Steen\\2016_10_10_GC_kinetic_37_gain.prt
6                                                                                                                     
7                                                                                                                     
8                                                                                                                     
9                                                                                                              Plate 1
10                                                                                                            10/11/16
11                                                                                                          8:23:21 AM
12                                                                                                           Cytation3
13                                                                                                            14032419
14                                                                                                              Reader
15                                                                                                                    
16                                                                                                                    
17                                                                                                                    
18                                                                                                       96 WELL PLATE
19                                                                                                       Setpoint 25øC
20                                                                                  Preheat before moving to next step
21                                                               Runtime 1:30:00 (HH:MM:SS), Interval 0:15:00, 7 Reads
22                                                                                          Double Orbital: Continuous
23                                                                                           Frequency: 282 cpm (3 mm)
24                                                                                               Fluorescence Endpoint
25                                                                                                          Full Plate
26                                                                                                        Filter Set 1
27                                                                                     Excitation: 490,  Emission: 525
28                                                                                              Optics: Top,  Gain: 60
29                                                                       Light Source: Xenon Flash,  Lamp Energy: High
30                                                  Read Speed: Normal,  Delay: 100 msec,  Measurements/Data Point: 10
31                                                                                                 Read Height: 8.5 mm
32                                                                                                                    
33                                                                                                             voltage
34                                                                                                          -12533.333
35                                                                                                          -11666.667
36                                                                                                           -3266.667
37                                                                                                               -3000
38                                                                                                            -933.333
39                                                                                                            -866.667
40                                                                                                           -1333.333
41                                                                                                            1666.667
42                                                                                                                 800
43                                                                                                           -1533.333
44                                                                                                            -666.667
45                                                                                                          -10733.333
46                                                                                                           -4933.333
47                                                                                                           -6066.667
48                                                                                                            1866.667
49                                                                                                               -1200
50                                                                                                           -1866.667
51                                                                                                           -1666.667
52                                                                                                                 800
53                                                                                                            1733.333
54                                                                                                            1933.333
55                                                                                                                1400
56                                                                                                                -800
57                                                                                                               -9800
58                                                                                                           -7266.667
59                                                                                                           -2666.667
60                                                                                                           -2066.667
61                                                                                                               -1200
62                                                                                                           -1266.667
63                                                                                                           -1866.667
64                                                                                                                1400
65                                                                                                                 800
66                                                                                                             733.333
67                                                                                                            1333.333
68                                                                                                               -1000
69                                                                                                          -20933.333
70                                                                                                           -7933.333
71                                                                                                               -4600
72                                                                                                           -1533.333
73                                                                                                                -800
74                                                                                                               -1000
75                                                                                                               -1600
76                                                                                                               -1400
77                                                                                                            1533.333
78                                                                                                               -1200
79                                                                                                             866.667
80                                                                                                            -733.333
81                                                                                                          -20733.333
82                                                                                                          -10066.667
83                                                                                                           -6333.333
84                                                                                                           -2133.333
85                                                                                                           -2066.667
86                                                                                                             933.333
87                                                                                                               -1400
88                                                                                                               -1000
89                                                                                                                -600
90                                                                                                                 600
91                                                                                                                1400
92                                                                                                           -1733.333
93                                                                                                          -14666.667
94                                                                                                           -7133.333
95                                                                                                           -7933.333
96                                                                                                           -1466.667
97                                                                                                           -1066.667
98                                                                                                           -1866.667
99                                                                                                               -1200
100                                                                                                               1000
101                                                                                                           1266.667
102                                                                                                           -933.333
103                                                                                                            733.333
104                                                                                                            666.667
105                                                                                                         -11933.333
106                                                                                                          -9466.667
107                                                                                                          -6266.667
108                                                                                                          -2266.667
109                                                                                                              -1800
110                                                                                                           1266.667
111                                                                                                          -1133.333
112                                                                                                          -1333.333
113                                                                                                          -1533.333
114                                                                                                          -1533.333
115                                                                                                            866.667
116                                                                                                           1666.667
117                                                                                                         -11933.333
118                                                                                                          -6533.333
119                                                                                                              -6200
120                                                                                                          -1666.667
121                                                                                                          -1866.667
122                                                                                                          -1533.333
123                                                                                                              -1200
124                                                                                                               1400
125                                                                                                           1133.333
126                                                                                                               1200
127                                                                                                          -1133.333
X
1            
2            
3            
4            
5            
6            
7            
8            
9            
10           
11           
12           
13           
14           
15           
16           
17           
18           
19           
20           
21           
22           
23           
24           
25           
26           
27           
28           
29           
30           
31           
32           
33  r.squared
34          1
35          1
36          1
37          1
38          1
39          1
40          1
41          1
42          1
43          1
44          1
45          1
46          1
47          1
48          1
49          1
50          1
51          1
52          1
53          1
54          1
55          1
56          1
57          1
58          1
59          1
60          1
61          1
62          1
63          1
64          1
65          1
66          1
67          1
68          1
69          1
70          1
71          1
72          1
73          1
74          1
75          1
76          1
77          1
78          1
79          1
80          1
81          1
82          1
83          1
84          1
85          1
86          1
87          1
88          1
89          1
90          1
91          1
92          1
93          1
94          1
95          1
96          1
97          1
98          1
99          1
100         1
101         1
102         1
103         1
104         1
105         1
106         1
107         1
108         1
109         1
110         1
111         1
112         1
113         1
114         1
115         1
116         1
117         1
118         1
119         1
120         1
121         1
122         1
123         1
124         1
125         1
126         1
127         1
h <-read.csv("~/GEOL_590/data/2016_10_11_plate_reader.csv")
?skip
No documentation for ‘skip’ in specified packages and libraries:
  you could try ‘??skip’
??skip
?.csv
No documentation for ‘.csv’ in specified packages and libraries:
  you could try ‘??.csv’
?read.csv
h <-read.csv("~/GEOL_590/data/2016_10_11_plate_reader.csv", skip=33)
View(h)
View(h)
str(h)
'data.frame':	94 obs. of  3 variables:
  $ well     : Factor w/ 94 levels "A1","A10","A11",..: 1 5 6 7 8 9 10 11 2 3 ...
$ voltage  : num  -12533 -11667 -3267 -3000 -933 ...
$ r.squared: int  1 1 1 1 1 1 1 1 1 1 ...
> str(well)
Error in str(well) : object 'well' not found
> library(tidyverse)
Loading tidyverse: ggplot2
Loading tidyverse: tibble
Loading tidyverse: tidyr
Loading tidyverse: readr
Loading tidyverse: purrr
Loading tidyverse: dplyr
Conflicts with tidy packages -------------------------------------------------------
  filter(): dplyr, stats
lag():    dplyr, stats
> i<-(read_csv("~/GEOL_590/data/2016_10_11_plate_reader.csv", skip=33))
Parsed with column specification:
  cols(
    well = col_character(),
    voltage = col_double(),
    r.squared = col_integer()
  )
> View(i)
> ?mtcars
> nrow(mtcars)
[1] 32
> length(mtcars)
[1] 11
> k<-mtcars
> View(k)
> ncol(mtcars)
[1] 11
?$
  Error: unexpected '$' in "?$"
?cyl
No documentation for ‘cyl’ in specified packages and libraries:
  you could try ‘??cyl’
l<-mtcars[2]
m<-mtcars[$cyl]
Error: unexpected '$' in "m<-mtcars[$"
m<-mtcars$cyl
View(k)
View(l)
is.dataframe(l)
Error: could not find function "is.dataframe"
is.data.fram(l)
Error: could not find function "is.data.fram"
is.data.frame(l)
[1] TRUE
> is.data.frame(m)
[1] FALSE
n <- mtcars[mtcars$cyl = 4, ]
Error: unexpected '=' in "n <- mtcars[mtcars$cyl ="
n <- mtcars[mtcars$cyl = 4]
Error: unexpected '=' in "n <- mtcars[mtcars$cyl ="
n <- mtcars[mtcars$cyl=4]
Error: unexpected '=' in "n <- mtcars[mtcars$cyl="
n<-mtcars[mtcars$wt < 3 & mtcars$wt > 4, ]
View(n)
n<-mtcars[mtcars$gear < 3 |mtcars$wt > 4, ]
View(n)
n<-mtcars[mtcars$wt < 3 |mtcars$wt > 4, ]
View(n)
o <-mtcars[1,6 ]
o <-mtcars[$1,$6 ]
Error: unexpected '$' in "o <-mtcars[$"
o <-mtcars[mtcars$mpg, mtcars$wt]
View(o)
o <-mtcars[mtcars$mpg & mtcars$wt]
Error in `[.data.frame`(mtcars, mtcars$mpg & mtcars$wt) : 
  undefined columns selected
> o<-mtcars[c("mpg", "wt")]
> ?which
> median(mtcars$mpg)
[1] 19.2
> o[median(mtcars$mpg)]
Error in `[.data.frad
> mtcars[median(mtcme`(o, median(mtcars$mpg)) : 
  undefined columns selectears$mpg)]
Error in `[.data.frame`(mtcars, median(mtcars$mpg)) : 
  undefined columns selected
> mtcars[which(median(mtcars$mpg))]
Error in which(median(mtcars$mpg)) : argument to 'which' is not logical
> o[(median(o$mpg)]
Error: unexpected ']' in "o[(median(o$mpg)]"
> p<-mtcars[mtcars[1] == median(mtcars$mpg)]
> p<-mtcars[mtcars$mpg] == median(mtcars$mpg), ]
> View(p)
> mtcars[mtcars$cyl == 4, ] 
mpg cyl  disp  hp drat    wt  qsec vs am gear carb
Datsun 710     22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
Merc 240D      24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
Merc 230       22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
Fiat 128       32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
Honda Civic    30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
Toyota Corolla 33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
Toyota Corona  21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1
Fiat X1-9      27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1
Porsche 914-2  26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2
Lotus Europa   30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2
Volvo 142E     21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2
> 
  > q<-mtcars[mtcars$cyl == 4, ] 
> 
  > r<-mtcars[-1:4, ]
Error in xj[i] : only 0's may be mixed with negative subscripts
> 
> r<-mtcars[0:4, ]
> 
> View(r)
> s<-mtcars[0:4]
> 
> View(s)
> s<-mtcars[-1:4]
Error in `[.default`(mtcars, -1:4) : 
only 0's may be mixed with negative subscripts
> 
  > s<-mtcars[0:4]
> 
  > t<-mtcars[mtcars$cyl <= 5]
Error in `[.data.frame`(mtcars, mtcars$cyl <= 5) : 
  undefined columns selected
> t<-mtcars[mtcars$cyl <= 5, ]
> View(t)
> u<-mtcars[mtcars$cyl == 4 | mtcars$cyl == 6, ]
> View(u)
> mtcars(mtcars$mpg==median(mtcars$mpg))
mtcars(mtcars$mpg==median(mtcars$mpg))






