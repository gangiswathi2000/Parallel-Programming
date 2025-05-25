for t in 1 2 4 6 8
do
    # number of trials to test (called NUMS here)
    for s in 1000 5000 10000 15000 20000 25000 30000 35000 40000 45000 50000
    do
        # Compile with -DNUMS and -DNUMT passed to preprocessor
        g++ -DNUMTRIALS=$s -DNUMT=$t MainProgram_1.cpp -o MainProgram_1 -lm -fopenmp

        # Run the program
        ./MainProgram_1
    done
done