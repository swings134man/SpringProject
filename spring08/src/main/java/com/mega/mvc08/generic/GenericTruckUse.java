package com.mega.mvc08.generic;

public class GenericTruckUse {

	public static void main(String[] args) {

		
		GenericTruck<String, Integer> t1 = new GenericTruck<String, Integer>();
		t1.weight = "무게";
		t1.distance = 100;
		
		GenericTruck<Integer, String> t2 = new GenericTruck<Integer, String>();
		t2.weight = 1000;
		t2.distance = "거리";
		
		System.out.println(t1);
		System.out.println(t2);
		
	}

}
