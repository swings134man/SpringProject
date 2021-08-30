package com.mega.mvc08.generic;

public class GenericTruck<T1, T2> {

	T1 weight;
	T2 distance;
	@Override
	public String toString() {
		return "GenericTruck [weight=" + weight + ", distance=" + distance + "]";
	}

	
	
}
