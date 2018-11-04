.PHONY: %.run
%.bin: %.cpp
	g++ -g -std=c++11 $^ -o $@

%.run: %.bin
	./$^

