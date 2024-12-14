
SOURCES := $(shell find sae/ -name '*.js')

scriptedamigaemulator.js: ${SOURCES}
	closure-compiler --accept_const_keyword --language_in=ECMASCRIPT5 $^ --js_output_file $@ --create_source_map $@.map
	printf "/*\n//@ sourceMappingURL=%b\n*/" $@.map >> $@
