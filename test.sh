#Eric Sebastian Test script for C++ program
set -eu

# Run from the folder containing this script.
cd "$(dirname "$0")"
mkdir -p build

if ! g++ -std=c++17 -Wall -Wextra -pedantic src/main.cpp -o build/app; then
    echo "FAIL: Could not compile src/main.cpp" >&2
    exit 1
fi

failed=0
for number in 1 2 3 4; do
    # Invalid input should still print the expected error message.
    # A program may also return a nonzero status for invalid input.
    status=0
    ./build/app < "tests/input${number}.txt" > "build/actual${number}.txt" || status=$?

    if diff -u "tests/expected${number}.txt" "build/actual${number}.txt"; then
        if [ "$number" -le 2 ] && [ "$status" -ne 0 ]; then
            echo "FAIL: Test $number exited with status $status" >&2
            failed=$((failed + 1))
        else
            echo "PASS: Test $number"
        fi
    else
        echo "FAIL: Test $number output does not match (exit status $status)" >&2
        failed=$((failed + 1))
    fi
done

if [ "$failed" -ne 0 ]; then
    echo "$failed acceptance test(s) failed" >&2
    exit 1
fi

echo "All acceptance tests passed"
