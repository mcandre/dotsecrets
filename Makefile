.PHONY: 1cm-mask.bmp fizzy-mask.bmp

all: test

test: 1cm-mask.bmp fizzy-mask.bmp

1cm-mask.bmp: 1cm-scan.png
	matlab -nojvm -nodisplay -nosplash -r "M = extract_printer_dot_mask(imread('1cm-scan.png')); imwrite(M, '1cm-mask.bmp'); exit"

fizzy-mask.bmp: fizzy-scan.jpg
	matlab -nojvm -nodisplay -nosplash -r "M = extract_printer_dot_mask(imread('fizzy-scan.jpg'), 240, 5); imwrite(M, 'fizzy-mask.bmp'); exit"
