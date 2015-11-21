vedangpac
---------

This is a package created by me, Vedang Vyas, as a part of one of my assignments for STAT 545 at UBC. There are two functions in this package: **reordering()** and **factors\_unordered()**.

``` r
library(devtools)
```

    ## Warning: package 'devtools' was built under R version 3.2.2

``` r
install_github("vedangvyas/vedangpac")
```

    ## Using github PAT from envvar GITHUB_PAT
    ## Downloading GitHub repo vedangvyas/vedangpac@master
    ## Installing vedangpac
    ## '/Library/Frameworks/R.framework/Resources/bin/R' --no-site-file  \
    ##   --no-environ --no-save --no-restore CMD INSTALL  \
    ##   '/private/var/folders/_7/qynpcl5127z9qx1sqvc57kxm0000gn/T/RtmpXt9Jlp/devtools6cde2b03baab/vedangvyas-vedangpac-5b7931d'  \
    ##   --library='/Library/Frameworks/R.framework/Versions/3.2/Resources/library'  \
    ##   --install-tests

``` r
library(vedangpac)
```

### reorder()

**Purpose:** The purpose of this function is to take in a data frame and a factor, and reorder the data frame in a descending order with dependence on the factor.

**Example:**

``` r
library(gapminder)
library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'
    ## 
    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag
    ## 
    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
gtbl <- tbl_df(gapminder)
cont <- gtbl$continent
lifeexp <- gtbl$lifeExp
reordering(gtbl, cont)
```

    ## Source: local data frame [1,704 x 6]
    ## 
    ##      country continent  year lifeExp      pop gdpPercap
    ##       (fctr)    (fctr) (dbl)   (dbl)    (dbl)     (dbl)
    ## 1  Australia   Oceania  1952   69.12  8691212  10039.60
    ## 2  Australia   Oceania  1957   70.33  9712569  10949.65
    ## 3  Australia   Oceania  1962   70.93 10794968  12217.23
    ## 4  Australia   Oceania  1967   71.10 11872264  14526.12
    ## 5  Australia   Oceania  1972   71.93 13177000  16788.63
    ## 6  Australia   Oceania  1977   73.49 14074100  18334.20
    ## 7  Australia   Oceania  1982   74.74 15184200  19477.01
    ## 8  Australia   Oceania  1987   76.32 16257249  21888.89
    ## 9  Australia   Oceania  1992   77.56 17481977  23424.77
    ## 10 Australia   Oceania  1997   78.83 18565243  26997.94
    ## ..       ...       ...   ...     ...      ...       ...

``` r
reordering(gtbl, lifeexp)
```

    ## Source: local data frame [1,704 x 6]
    ## 
    ##             country continent  year lifeExp       pop gdpPercap
    ##              (fctr)    (fctr) (dbl)   (dbl)     (dbl)     (dbl)
    ## 1             Japan      Asia  2007  82.603 127467972  31656.07
    ## 2  Hong Kong, China      Asia  2007  82.208   6980412  39724.98
    ## 3             Japan      Asia  2002  82.000 127065841  28604.59
    ## 4           Iceland    Europe  2007  81.757    301931  36180.79
    ## 5       Switzerland    Europe  2007  81.701   7554661  37506.42
    ## 6  Hong Kong, China      Asia  2002  81.495   6762476  30209.02
    ## 7         Australia   Oceania  2007  81.235  20434176  34435.37
    ## 8             Spain    Europe  2007  80.941  40448191  28821.06
    ## 9            Sweden    Europe  2007  80.884   9031088  33859.75
    ## 10           Israel      Asia  2007  80.745   6426679  25523.28
    ## ..              ...       ...   ...     ...       ...       ...

### factors\_unordered()

**Purpose:** The purpose of this function is to take in a vector and produce a factor where the levels are the vector entries but the factor produced has levels in the same order as they were in the vector.

**Example:**

``` r
fac <- c("A", "Hello", "Bob", "Apple")
factors_unordered(fac)
```

    ## [1] A     Hello Bob   Apple
    ## Levels: A Hello Bob Apple
