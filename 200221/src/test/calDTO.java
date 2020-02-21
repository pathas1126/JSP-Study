package test;

public class calDTO {

	int first;
	int second;
	String oper;

	public int getFirst() {
		return first;
	}

	public void setFirst(int first) {
		this.first = first;
	}

	public int getSecond() {
		return second;
	}

	public void setSecond(int second) {
		this.second = second;
	}

	public String getOper() {
		return oper;
	}

	public void setOper(String oper) {
		this.oper = oper;
	}

	public void print() {
		System.out.println("first: " + first);
		System.out.println("second: " + second);
		System.out.println("oper: " + oper);
	}

	public int calculate() {
		if (oper == null) {
			return 0;
		}
		
		if (oper.contentEquals("+")) {
			return (first + second);
		} else if (oper.contentEquals("-")) {
			return (first - second);
		} else if (oper.contentEquals("*")) {
			return (first * second);
		} else {
			return (first / second);
		}
	}
}
