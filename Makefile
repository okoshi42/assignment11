CC = cl
FLAGS = /std:c++17 /WX /EHsc
OBJECTS = PPlot.obj SVGPainter.obj test.obj main.obj 

assignment11: $(OBJECTS)
	$(CC) /Fe"assignment11" $(OBJECTS)

PPlot.obj: lib\PPlot.cpp lib\PPlot.h
	$(CC) $(FLAGS) /c lib\PPlot.cpp

SVGPainter.obj: lib\SVGPainter.cpp lib\SVGPainter.h
	$(CC) $(FLAGS) /c lib\SVGPainter.cpp

test.obj: src\test.cpp src\bst.h src\timing.h
	$(CC) $(FLAGS) /I lib\ -c src\test.cpp

main.obj: src\main.cpp src\bst.h src\timing.h
	$(CC) $(FLAGS) /I lib\ -c src\main.cpp

clean:
	del assignment11.exe *.obj *.svg
