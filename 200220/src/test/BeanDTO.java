package test;

// 클래스는 반드시 public 접근 제어자 사용
public class BeanDTO {

	// property, 반드시 private 선언
	private String name;
	private String addr;

	// Setter, public 지정
	public void setName(String name) {
		this.name = name;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	// Getter, public 지정

	public String getName() {
		return name;
	}

	public String getAddr() {
		return addr;
	}
}

