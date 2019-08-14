package _01_intro_to_static;

import javax.swing.JOptionPane;

public class Athlete {
int bibNumber;
static int nextBibNumber;
static String raceLocation = "USA";
static String raceStartTime = "4:20 am";

String name;
int speed; 

Athlete(String name, int speed){
	this.name = name;
	this.speed = speed;
	this.bibNumber = nextBibNumber;
	nextBibNumber ++;
}
public static void main(String[] args) {
	Athlete AlexMorgan = new Athlete("Alex", 10);
	Athlete SydneyLeroux = new Athlete("Sydney", 8);

System.out.println(AlexMorgan.name);
System.out.println(AlexMorgan.bibNumber);
System.out.println(AlexMorgan.speed);
System.out.println(SydneyLeroux.name);
System.out.println(SydneyLeroux.bibNumber);
System.out.println(SydneyLeroux.speed);
System.out.println(raceLocation);
System.out.println(raceStartTime);


}




}