start: bumpong.xex
	cygstart $<

bumpong.xex: bumpong.obx
	xebin p -o=$@ $<

bumpong.obx: bumpong.asx bumpmap.gr9
	xasm -q -l -o $@ $<

bumpmap.gr9: bumpmap.png
	ruby png2gr9.rb $< $@

bumpong.doc: bumpong.txt
	perl -pl0233 -e "y/\xd//d" $< >$@

clean:
	rm bumpong.xex bumpong.obx bumpmap.gr9 bumpong.doc

.DELETE_ON_ERROR:
