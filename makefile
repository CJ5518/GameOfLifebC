BIN = out.tm
SRC = main.bC
CC = /y/shared/Engineering/cs-drbc/cs445/bC
TM = /y/shared/Engineering/cs-drbc/cs445/tmbc

RAWOUT = rawOut.bc
RAWOUT2 = rawOut2.bc

$(BIN): $(SRC)
	$(CC) $(SRC) > $(RAWOUT)
	head -n -2 $(RAWOUT) > $(RAWOUT2) # Remove last two lines
	sed '/SEMANTIC WARNING/d' $(RAWOUT2) > $(BIN) # Remove lines with warnings

test: $(BIN)
	$(TM) $(BIN)

clean:
	rm $(RAWOUT) $(RAWOUT2) $(BIN)