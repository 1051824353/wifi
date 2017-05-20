topdir = .
include $(topdir)/MCONFIG

INCLUDE=`pkg-config --cflags libnl-3.0`
LIB=`pkg-config --libs libnl-3.0`
COBJ = wifi.o
BIN = wifi
all: $(BIN)

$(BIN):$(COBJ)
	$(CC) $(COBJ) -o $(BIN) $(LIB)
%.o:%.c
	$(CC) $(CFLAG) -c $< $(INCLUDE)

install:
	sudo apt-get install libnl-3-dev pkg-config
cl:
	rm -f *.o *.elf *.lst .*.d $(BIN)
