package edu.kosmo.ex.lotto;

import java.util.HashSet;



public class Lotto {	
	private final int LOTTO_COUNT = 7;
	private HashSet<Integer> setNum;
	
	public Lotto() {
		
	}
	
	public void setLottoNum() {
		setNum = new HashSet<>();
		
		while(true) {
			setNum.add((int)(Math.random() * 45) + 1);
			
			if(setNum.size() == LOTTO_COUNT)
				break;
		}
			
	}
	
	public HashSet<Integer> getLottoNum() {
		setLottoNum();
		
		return setNum;		
	}
}
