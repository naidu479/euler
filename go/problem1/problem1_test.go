package main

import "testing"

func Test_multiples_below_6(t *testing.T) {
	if multiples(6) != 8 {
		t.Error("multiples did not work as expected.")
		t.Fail()
	}
}

func Test_multiples_below_10(t *testing.T) {
	if multiples(10) != 23 {
		t.Error("multiples did not work as expected.")
		t.Fail()
	}
}

func Benchmark_multiples(b *testing.B) {
	for i := 0; i < b.N; i++ {
		multiples(1000)
	}
}
