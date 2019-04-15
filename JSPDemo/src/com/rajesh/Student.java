package com.rajesh;

public class Student {
String name;
int roll;

public Student(String name,int roll) {
	this.name=name;
	this.roll=roll;
}

public String getName() {
	return name;
}public int getRoll() {
	return roll;
}public void setName(String name) {
	this.name = name;
}public void setRoll(int roll) {
	this.roll = roll;
}

@Override
	public String toString() {
		// TODO Auto-generated method stub
		return name+roll;
	}
}
