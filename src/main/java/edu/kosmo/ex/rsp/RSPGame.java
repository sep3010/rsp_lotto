package edu.kosmo.ex.rsp;

public class RSPGame {
	private String yrsp; // 유저
	private String korYrsp; // 유저 가위바위보 한글 값
	private String comRsp; // 컴퓨터 

	public RSPGame() {

	}
	
	public RSPGame(String yrsp) {
		this.yrsp = yrsp;
	}

	public String getYrsp() {
		return yrsp;
	}

	public void setYrsp(String yrsp) {
		this.yrsp = yrsp;
	}
	
	// 유저 value값을 한글로 설정하는 함수
	public void setKorYrsp() {
		String korYrsp = "";
		
		if(yrsp.equals("scissors"))
			korYrsp = "가위";
		else if(yrsp.equals("rock"))
			korYrsp = "바위";
		else
			korYrsp = "보";
		
		this.korYrsp = korYrsp;			
	}
	
	// 컴퓨터 가위바위보 랜덤으로 설정하는 함수
	public void setComRsp() {
		int comNum = (int)(Math.random() * 3 + 1);
		
		String comRsp = "";
		if(comNum == 1)
			comRsp = "가위";
		else if(comNum == 2)
			comRsp = "바위";
		else
			comRsp = "보";
		
		this.comRsp = comRsp;				
	}
	
	public String getKorYrsp() {
		return korYrsp;
	}
	
	public String getComRsp() {
		return comRsp;
	}
	
	// 가위바위보 결과 값을 문자열(한글로) 반환
	public String playRsp() {
		setKorYrsp(); // 유저 가위바위보 값 한글로 저장
		setComRsp();  // 컴퓨터 가위바위보 값 저장
		
		String result = "";
		if(korYrsp.equals("가위") && comRsp.equals("바위"))
			result = "당신이 졌습니다.";
		else if(korYrsp.equals("가위") && comRsp.equals("가위"))
			result = "비겼습니다.";
		else if(korYrsp.equals("가위") && comRsp.equals("보"))
			result = "당신이 이겼습니다.";
		else if(korYrsp.equals("바위") && comRsp.equals("보"))
			result = "당신이 졌습니다.";
		else if(korYrsp.equals("바위") && comRsp.equals("바위"))
			result = "비겼습니다.";
		else if(korYrsp.equals("바위") && comRsp.equals("가위"))
			result = "당신이 이겼습니다.";
		else if(korYrsp.equals("보") && comRsp.equals("가위"))
			result = "당신이 졌습니다.";
		else if(korYrsp.equals("보") && comRsp.equals("보"))
			result = "비겼습니다.";
		else if(korYrsp.equals("보") && comRsp.equals("바위"))
			result = "당신이 이겼습니다.";
			
		return result;		
	}
	
	
	
}
