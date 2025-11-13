PROGS =
OBJS = main.o first_s.o

# tools
CC      ?= gcc        # or riscv64-unknown-elf-gcc on the server
AS      ?= as

CFLAGS  = -march=rv64gc -mabi=lp64 -g -O0   # for C files (if any)
ASFLAGS = -march=rv64gc -mabi=lp64 -g       # for assembler only

# assemble .s -> .o (no -O0 here!)
%.o: %.s
	$(AS) $(ASFLAGS) -c -o $@ $<

all: $(OBJS)

clean:
	rm -f $(PROGS) $(OBJS)

