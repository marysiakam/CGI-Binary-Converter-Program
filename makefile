make: project add compile

project: 
	cd ~
	if [ ! -e "public_html" ]; then mkdir public_html; fi
	cp binary_converter.c public_html;   
	cp index.html public_html;\
	chmod 755 public_html; \
	cd public_html; \
	chmod 755 index.html; \
	chmod 755 binary_converter.c \
	
add:
	cd ~/public_html; git init; git add binary_converter.c index.html; git commit -m "adding file" 


compile:
	if [ ! -d ~/public_html/cgi-bin ]; then mkdir ~/public_html/cgi-bin; fi
	gcc -o ~/public_html/cgi-bin/binary_converter.cgi ~/public_html/binary_converter.c
	chmod 755 ~/public_html/cgi-bin/binary_converter.cgi
