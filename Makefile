VE = /opt/nec/ve
#NCC = $(VE)/bin/ncc
#NCXX = $(VE)/bin/nc++
NCC = $(VE)/bin/ncc-2.3.1
NCXX = $(VE)/bin/nc++-2.3.1

ifneq ($(LLVM_DIR),)
CLANG ?= $(LLVM_DIR)/bin/clang
else
CLANG ?= clang
endif

CLANG_OPT = -target ve -O3 -fno-vectorize -fno-slp-vectorize -fno-crash-diagnostics

.PRECIOUS: %.s %.ll %.ve %.out


# cancel implicit rule
%.o: %.c

%.o: %.cc
	$(NCC) -o $@ -c $< -fdiag-vector=0

%.ll: %.c
	$(CLANG) -o $@ $(CLANG_OPT) -I. -S -emit-llvm $<

%.s: %.c
	$(CLANG) -o $@ $(CLANG_OPT) -I. -S $<

gen/tests/%.o: gen/tests/%.c
	$(CLANG) -o $(@:.o=.s) $(CLANG_OPT) -I. -S $<
	$(NCC) -o $@ -c $(<:.c=.s) -fdiag-vector=0

tests/%.s: tests/%.c
	$(CLANG) -o $(@:.o=.s) $(CLANG_OPT) -I. -S $<

tests/%.s: tests/%.cc
	$(CLANG) -o $(@:.o=.s) $(CLANG_OPT) -I. -S $<

tests/%.o: tests/%.c
	$(CLANG) -o $(@:.o=.s) $(CLANG_OPT) -I. -S $<
	$(NCC) -o $@ -c $(<:.c=.s) -fdiag-vector=0

tests/%.o: tests/%.cc
	$(CLANG) -o $(@:.o=.s) $(CLANG_OPT) -I. -S $<
	$(NCC) -o $@ -c $(<:.cc=.s) -fdiag-vector=0

tests/%_test.o: tests/%.c
	$(NCC) -o $@ -DTEST -DHAVE_REGISTER_TEST -c $< -fdiag-vector=0

tests/%_test.o: tests/%.cc
	$(NCC) -o $@ -DTEST -DHAVE_REGISTER_TEST -c $< -fdiag-vector=0

TEST_SOURCES = $(wildcard gen/tests/*.c)

TEST2_C_SOURCES = $(sort $(wildcard tests/[a-z]*.c))
TEST2_CC_SOURCES = $(sort $(wildcard tests/[a-z]*.cc))

TEST_ASMS = $(TEST_SOURCES:.c=.s) $(TEST2_C_SOURCES:.c=.s) $(TEST2_CC_SOURCES:.cc=.s)
TEST_OBJECTS = $(TEST_SOURCES:.c=.o)

TEST_OBJECTS += $(TEST2_C_SOURCES:.c=.o)
TEST_OBJECTS += $(TEST2_C_SOURCES:.c=_test.o)
TEST_OBJECTS += $(TEST2_CC_SOURCES:.cc=.o)
TEST_OBJECTS += $(TEST2_CC_SOURCES:.cc=_test.o)

all: test.ve # test-asm

ll: $(TEST_SOURCES:.c=.ll)

test.ve: $(TEST_OBJECTS) main.cc gen/ref.o
	$(NCXX) -o $@ $^ -no-proginf -no-perfcnt -fdiag-vector=0

test-asm: $(TEST_ASMS)
	@for f in $(TEST_ASMS); \
	do \
		echo $$f; \
		./diff.sh asm/$$f $$f; \
	done

gen-asm: $(TEST_ASMS)

.PHONY: llvm-test

llvm-test: ll test-asm
	mkdir -p llvm-test
	python mktest-vel.py gen/tests/*.ll

clean: clean-test
	rm -f *.o gen/tests/*.ll
	rm -rf llvm-test

clean-test:
	rm -f test.ve gen/ref.o gen/tests/*.s $(TEST_OBJECTS) tests/*.s tests/*.o
