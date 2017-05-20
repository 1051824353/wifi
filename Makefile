topdir = .
include $(topdir)/MCONFIG

COBJ = wifi.o
BIN = wifi
all: $(BIN)

$(BIN):$(COBJ)
	
%.o:%.c
	$(CC) $(CFLAG) -c $< $(INCLUDE)
cl:
	rm -f *.o *.elf *.lst .*.d $(BIN)
