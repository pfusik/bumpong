start: bumpong.xex
	cygstart $<

bumpong.xex: bumpong.obx
	xebin p -o=$@ $<

bumpong.obx: bumpong.asx bumpmap.gr9
	xasm -q -l -o $@ $<

bumpmap.gr9: bumpmap.png
	ruby png2gr9.rb $< $@
