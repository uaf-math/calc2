# calc2/assets/2MQ

Two minute questions (2MQ) are a way to start class and get attendance.

To build a 2MQ, create an inputable LaTeXed question in a file like `18jan.tex` and then build `template.pdf` from the command line:

    $ DM="18 Jan" FILE=18jan.tex pdflatex template.tex

Note that `DM` (date and month) and `FILE` are environment variables.  They are used when compiling [`template.tex`](template.tex).  In particular, `FILE` will be inputed and the date will be put in the upper-left corner.

Then I print `template.pdf`, make copies, and use the paper cutter to cut into quarters.
