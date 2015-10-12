ROOT=`pwd`
SUB_DIR=$(ROOT)/server $(ROOT)/client $(ROOT)/test
LIB_DIR=$(ROOT)/server $(ROOT)/client
TEST_DIR=$(ROOT)/test


.PHONY : all
all:
	@for i in $(LIB_DIR); do \
		(cd $$i && make && make install); \
	done
	@for i in $(TEST_DIR); do \
		(cd $$i && make); \
	done

.PHONY : clean
clean:
	@for i in $(SUB_DIR); do \
		(cd $$i && make clean);\
	done

#install:
#	@for i in $(LIB_DIR); do \
#		(cd $$i && make install);\
#	done

