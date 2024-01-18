# calc2/assets/3MQ

Three minute questions (3MQ) are a way to start class and get attendance.

To build a 3MQ, create an inputable LaTeXed question in a file like [`14sep.tex`](14sep.tex) and then build `template.pdf` from the command line:

    $ export DM="14 Sep"; export FILE=14sep.tex; pdflatex template.tex

Through use of LaTeX tools the `DM` (date and month) and `FILE` environment variables will be used when compiling [`template.tex`](template.tex).  In particular, `FILE` will be inputed.

Then print `template.pdf`, make copies, and use the paper cutter to cut into quarters.
