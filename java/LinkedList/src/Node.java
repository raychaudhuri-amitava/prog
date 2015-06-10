
public class Node {
	private Node next;
	private int data;
	
	public Node(int d) {
		data = d;
		next = null;
	}
	
	public void setNext(Node n) {
		next = n;
	}
	
	public void setData(int d) {
		data = d;
	}
	
	public void copyData(Node nd) {
		next = nd.next;
		data = nd.data;
	}
	
	public Node getNext() {
		return next;
	}
	
	public int getData() {
		return data;
	}

}
