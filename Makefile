start: bumpong.xex
	cygstart $<

bumpong.xex: bumpong.asx bumpmap.gr9
	xasm -q -l -o $@ $<

bumpmap.gr9: bumpmap.png
	ruby png2gr9.rb $< $@
