CXX = g++
CXXFLAGS = -std=c++20

TARGET = trie
SOURCES = trie.cpp main.cpp

all: $(SOURCES)
	$(CXX) $(CXXFLAGS) $(SOURCES) -o $(TARGET)

testBasic:
	$(CXX) $(CXXFLAGS) $(SOURCES) -o $(TARGET)
	./$(TARGET) < inputs/input0.txt > output0.txt
	diff outputs/output0.txt output0.txt

testComplete:
	$(CXX) $(CXXFLAGS) $(SOURCES) -o $(TARGET)
	./$(TARGET) < inputs/input1.txt > output1.txt
	diff outputs/output1.txt output1.txt

clean:
	rm -f $(TARGET) output0.txt output1.txt