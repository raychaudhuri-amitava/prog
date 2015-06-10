
public class Driver {
	public static void main(String [] args) {
		LinkedList ll = new LinkedList();
		for(int i = 50; i < 1000; i+=100) {
			ll.insertAtEnd(i);
		}
		System.out.print("Entire List : ");
		ll.printList();
		
		for(int i = 0; i < 1000; i+=10) {
			ll.deleteN(i);
			System.out.print("Deleting after " + i + " : ");
			ll.printList();
		}
		System.out.print("Final List : ");
		ll.printList();
	}

}
