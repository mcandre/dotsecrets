# dotsecrets - reveal hidden printer dot codes

# EXAMPLE

```
$ lp fizzy.pdf
$ (scan printed page to fizzy-scan.jpg)
$ make
matlab -nojvm -nodisplay -nosplash -r "M = extract_printer_dot_mask(imread('1cm-scan.png')); imwrite(M, '1cm-mask.bmp'); exit"
matlab -nojvm -nodisplay -nosplash -r "M = extract_printer_dot_mask(imread('fizzy-scan.jpg'), 240, 5); imwrite(M, 'fizzy-mask.bmp'); exit"
$ open *.bmp
...
```

# REQUIREMENTS

* [MATLAB](http://www.mathworks.com/products/matlab/)
* a printer
* a high quality document camera, such as a scanner
