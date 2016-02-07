# dotsecrets - reveal hidden printer dot codes

# ABOUT

Commercial printers insert a watermark on every printed document, in the form of patterns of dots. dotsecrets reveals these interesting patterns.

# EXAMPLE

![high resolution scan of a ruler](https://raw.githubusercontent.com/mcandre/dotsecrets/master/1cm-scan.png)

![dot pattern highlighted](https://raw.githubusercontent.com/mcandre/dotsecrets/master/1cm-mask.bmp)

```
$ lp fizzy.pdf
$ (scan printed page to fizzy-scan.jpg)
$ make
matlab -nojvm -nodisplay -nosplash -r "M = extract_printer_dot_mask(imread('1cm-scan.png')); imwrite(M, '1cm-mask.bmp'); exit"
matlab -nojvm -nodisplay -nosplash -r "M = extract_printer_dot_mask(imread('fizzy-scan.jpg'), 240, 5); imwrite(M, 'fizzy-mask.bmp'); exit"
$ open *.bmp
...
```

# MATLAB Central

http://www.mathworks.com/matlabcentral/fileexchange/55284-mcandre-dotsecrets

# REQUIREMENTS

* [MATLAB](http://www.mathworks.com/products/matlab/)
* a printer
* a high quality document camera ("scanner")
