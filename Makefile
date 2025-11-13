PROGS = first_s
OBJS = first_s.o

# tools
#CC      ?= gcc        # or riscv64-unknown-elf-gcc on the server
#AS      ?= as

#CFLAGS  = -march=rv64gc -mabi=lp64 -g -O0   # for C files (if any)
#ASFLAGS = -march=rv64gc -mabi=lp64 -g       # for assembler only
# assemble .s -> .o (no -O0 here!)
%.o: %.c
	gcc -c -g -o $@ $<

%.o: %.s
	gcc -g -o $@ $<

$(PROGS): $(OBJS)
	gcc -g -o $@ $^

clean:
	rm -f $(PROGS) $(OBJS)

