
public class LinkedList {
	private Node root;
	private int sz;
	
	public LinkedList() {
		root = null;
		sz = 0;
	}
	
	public void insertAtEnd(int d) {
		Node nd = new Node(d);
		if(root == null) {
			root = nd;
			sz++;		
		} else {
			Node t = root;
			while(t.getNext() != null) {
				t = t.getNext();
			}
			t.setNext(nd);		
			sz++;
		}
	}
	
	public void printList() {
		Node nd = root;
		while(nd != null) {
			System.out.print(nd.getData() + ",");
			nd = nd.getNext();
		}
		System.out.println();
	}
	
	public void deleteN(int d) {
		if(root == null) {
			return;
		} else {
			Node t = root;		
			if(t.getData() == d) {
				root = t.getNext();
				t = null;
			    sz--;
			    return;		    
			}
			while((t.getNext() != null) && (t.getNext().getData() != d)) {
				t = t.getNext();
			}
			if(t.getNext() != null) {
				t.setNext(t.getNext().getNext());
				sz--;
			}			
		}
	}

}
