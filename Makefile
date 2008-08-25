CXX = /opt/local/bin/g++
CXXFLAGS = -g -Wall -fmessage-length=0 -I./src -I./Tests -DTA_DLEVEL=3 -DTA_WLEVEL=3

OBJS = src/tilemap.o src/env.o \
TiledArrayTest.o Tests/tupletest.o Tests/shapetest.o Tests/rangetest.o \
Tests/orthotopetest.o Tests/tilemaptest.o

LIBS =

TARGET =	TiledArrayTest

$(TARGET):	$(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) $(LIBDIR) $(LIBS) $(INCDIR) $(DEBUGLEVEL)

all:	$(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
