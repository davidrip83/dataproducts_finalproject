---
title       : Pythagorean theorem app
subtitle    : Final project for data products class
author      : David Riphagen
job         : 2016-06-11
framework   : io2012
highlighter : prettify 
hitheme     : tomorrow      
widgets     : mathjax
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Project overview

This slide deck provides a pitch for my Shiny application for the final project for [data products class](https://www.coursera.org/learn/data-products/) from Coursera / Johns Hopkins.

The goal of my shiny application is to calculate the side z of a right triangle with sides x and y. For this calculation the app uses the Pythagorean theorem.

Subgoals are:
- Allowing users to change the input data for x and y
- Displaying the data users have inputted
- Using the Pythagorean theorem to calculate the length of side z
- Displaying the length of side z

You can find the application [here](https://davidrip83.shinyapps.io/Shiny/)

--- 


## All inputs provided on the left hand side

The inputs for my shiny appllication need to be provided by users in the two boxes on the left hand side. The inputs are:

- Length of side x: integer with the value of the length of side x of the right triangle
- Length of side y: integer with the value of the length of side y of the right triangle

Note that both x and y should be positive to represent a real right triangle. However, because the Pythagorean theorem squares the inputs, technically the values of x and y can be negative.

---

## Assumptions and output

Assumptions

- Object should be a right triangle
- Length of side x is a positive integer
- Length of side y is a positive integer

Key output

The key output of the Shiny application is the length z of the third side of the right triangle. 
The Shiny app uses the Pythagorean theorem:
`x^2 + y^2 = z^2`

Specifically, the app implements the following algorithm:
`z = sqrt(x^2 + y^2)`

---


## Example

The following example details how the apps works:
- The right triangle has two sides:
    - Side x has length 3
    - Side y has length 4
- After pressing 'Submit', the length of side z is calculated as 5.
This is illustrated in the r code below:

```r
length_x <- 3
length_y <- 4
length_z <- sqrt(length_x^2 + length_y^2)
print(length_z)
```

```
## [1] 5
```

