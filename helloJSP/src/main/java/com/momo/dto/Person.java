package com.momo.dto;

public class Person {
	
	// 멤버 변수(속성)의 접근 지정자는 private으로 선언
	private String name;
	private int age;
	
	// 기본 생성자
	public Person() {}
	
	@Override
	public String toString() {
		return name + "/" + age;
	}
	
	public Person(String name, int age) {
		this.name = name;
		this.age = age;
	}
	public String getName() {
		return name;
	}
	
	public int getAge() {
		return age;
	}
}
