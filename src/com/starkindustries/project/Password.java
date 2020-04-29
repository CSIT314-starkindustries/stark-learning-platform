package com.starkindustries.project;

import java.util.Random;

public class Password {
	private boolean hasNumber = false;
	private boolean hasUpper = false;
	private boolean hasLower = false;
	private boolean hasSymbol = false;
	private char[] charList = new char[] {33,35,36,37,38,42,48,49,50,51,52,53,54,55,56,57,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,94,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122};
	
	public boolean passwordCheck(String pass) {
		if (pass.length() < 8) return false;
		
		for (int i = 0; i < pass.length(); i++) {
			char current = pass.charAt(i);
			if (current > 64 && current < 91) hasUpper = true;
			else if (current > 96 && current < 123) hasLower = true;
			else if (current > 47 && current < 58) hasNumber = true;
			else if (current > 32 && current != 127) hasSymbol = true;
		}
		
		if (hasNumber && hasUpper && hasLower) return true;
		else return false;
	}
	
	public String passwordGenerate() {
		String pass;
		
		Random rand = new Random();
		
		do {
			pass = "";
			hasNumber = false;
			hasUpper = false;
			hasLower = false;
			hasSymbol = false;
			
			for (int i = 0; i < 8; i++) {
				int randLoc = rand.nextInt(charList.length);
				
				if (randLoc > 16 && randLoc < 43) hasUpper = true;
				else if (randLoc > 43) hasLower = true;
				else if (randLoc > 5 && randLoc < 16) hasNumber = true;
				else hasSymbol = true;
				
				pass += charList[randLoc];
			}
		} while (!hasLower || !hasUpper || !hasNumber);
		
		//System.out.println(hasNumber + " " + hasUpper + " " + hasLower + " " + hasSymbol);
		
		return pass;
	}
}
