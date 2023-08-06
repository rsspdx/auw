---
title: "Advice on using R"
author: 
    - Richard Sherman^[[Asian University for Women, https://asian-university.org/](https://asian-university.org/)]
output: pdf_document
date: \today
geometry: left=1.5in, right=1.5in, top=1.5in, bottom=1.5in
---

## First steps

You should install \textsf{R} and \textsf{RStudio} on your computer. They are installed in our labs. To install them on your computer:

- \textsf{R}: [\texttt{https://cran.r-project.org}](\https://cran.r-project.org) (Mac/Linux/Windows)
- \textsf{RStudio}: [\texttt{https://posit.co/download/rstudio-desktop}](https://posit.co/download/rstudio-desktop) (Mac/Linux/Windows)
- [For Chromebook, \texttt{go here}](https://blog.sellorm.com/2018/12/20/installing-r-and-rstudio-on-a-chromebook/)[^1] (installs both)

[^1]: https://blog.sellorm.com/2018/12/20/installing-r-and-rstudio-on-a-chromebook/

## Do things sensibly

Create a folder (directory) on your computer and/or your computer lab account to keep all your work and data for the course. Something simple like \texttt{`auw/methods'} is a good idea. (Note: in computer-speak, the shortcut \texttt{`$\sim$/'} refers to your home directory, so the path to this directory would be \texttt{`$\sim$/auw/methods')}.[^2] On my computer, the path I use is \texttt{`$\sim$/data/auw'}.

[^2]: This is true on \texttt{POSIX} systems, such as Mac and Linux. On Windows, \textsf{R} emulates \texttt{POSIX} (it uses forward slashes ( / ), not backslashes ( \\ ), and \texttt{$\sim$/}, not \\HOME\\etc.)

When you start \textsf{RStudio}, you can find out where you are in your computer with the command:

\texttt{getwd()}


\texttt{wd} stands for 'working directory' Probably, you are not where you want to be. You should change the working directory to your chosen place for your work in the course, perhaps \texttt{`$\sim$/auw/methods'}, or in my case \texttt{`$\sim$/data/auw'}. Note that you need the quotation marks:

\texttt{setwd(`$\sim$/data/auw')}

\textsf{R}, like most computer languages, relies on external libraries ('packages', in \textsf{R}-speak). We will make extensive use of the \textsf{tidyverse} package. You need to install this:


\texttt{install.packages(`tidyverse')} (Note the quotation marks)


You will probably get a pop-up box asking you to choose a 'mirror', a place where \textsf{R} packages are located. Just choose one close to your location. India is the closest, I think, but you can use whichever one you like. The speed of light means that 'closeness' doesn't matter much. 

Only once should you need to install a package. However, to *use* the package, you need to call it at the beginning of your \textsf{R} file using the \texttt{library()} command. 

## An example

A standard way to get things started would be, after installing \textsf{tidyverse}:


1. Start \textsf{RStudio}
2. Go to \textsf{File -> New File -> R script}
3. Go to \textsf{File -> Save} and save your new R script in your \texttt{`auw/methods'} folder (or wherever). Give it a meaningful name.
4. Go to the directory you want to use
5. At the top of your new \textsf{R} script, write a comment explaining what the script is for. Comments in \textsf{R} begin with the character \texttt{\#}. You might write something like \texttt{\# an example R script}.

An Example \textsf{R} script:

\texttt{\# an example R script}

\texttt{setwd(`$\sim$/data/auw')} (note the quotation marks)

\texttt{library(tidyverse)} (no quotation marks)

After this, you can add other commands to begin doing some analysis. Follow the examples in the Wickham text (\emph{\textsf{R} for Data Science)}. Then use one of the snippets in our course folder. You might want to copy the course folder to your own computer.

Enjoy, and remember to save your work!