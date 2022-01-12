
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class Main {
	
	public static ArrayList<Keyword> keywordlist= new ArrayList<Keyword>();
	public static String[][]list=new String[80][2];
	
	public Main(String[][]s) {
		
		list=new String[s.length][2];
		list=s;
		keywordlist.add(new Keyword("曼赤肯",5));
		keywordlist.add(new Keyword("Munchkin",5));
		keywordlist.add(new Keyword("短腿貓",5));
		keywordlist.add(new Keyword("短腿",4));
		keywordlist.add(new Keyword("Short leg",4));
		keywordlist.add(new Keyword("Munchkin Cat",5));
		keywordlist.add(new Keyword("貓",4));
		keywordlist.add(new Keyword("喵",4));
		keywordlist.add(new Keyword("曼曼",4));
		keywordlist.add(new Keyword("cat",4));
		keywordlist.add(new Keyword("喵星人",4));
		keywordlist.add(new Keyword("萌",3));
		keywordlist.add(new Keyword("可愛",3));
		keywordlist.add(new Keyword("cute",3));
		keywordlist.add(new Keyword("療育",3));
		keywordlist.add(new Keyword("毛絨絨",3));
		keywordlist.add(new Keyword("Fluffy",3));
		keywordlist.add(new Keyword("貓奴",3));
		keywordlist.add(new Keyword("鏟屎官",4));
		keywordlist.add(new Keyword("基因",3));
		keywordlist.add(new Keyword("融化",3));
		keywordlist.add(new Keyword("Cat Person",3));
		keywordlist.add(new Keyword("飼養",2));
		keywordlist.add(new Keyword("Feed",2));
		keywordlist.add(new Keyword("寵物",2));
		
		
		Scanner scanner = new Scanner(System.in);
		
		while(scanner.hasNextLine()){
			int numOfKeywords = scanner.nextInt();//2
			ArrayList<Keyword> keywords = new ArrayList<Keyword>();
			
			for(int i =0;i<numOfKeywords;i++)
			{
				String name = scanner.next();//Yu
				double weight = scanner.nextDouble();//1.2
				Keyword k = new Keyword(name, weight);//store key
				keywords.add(k);
			}
			
			//tree.setPostOrderScore(keywordlist);
			//tree.eularPrintTree();
		}
		scanner.close();
	}

	
	/*
			//root node
			WebPage rootPage = new WebPage("http://soslab.nccu.edu.tw/Welcome.html", "Soslab");		
			WebTree tree = new WebTree(rootPage);
			//build childnode
			tree.root.addChild(new WebNode(new WebPage("http://soslab.nccu.edu.tw/Publications.html","Publication")));
			tree.root.addChild(new WebNode(new WebPage("http://soslab.nccu.edu.tw/Projects.html","Projects")));
			//tree.root.children.get(1).addChild(new WebNode(new WebPage("https://vlab.cs.ucsb.edu/stranger/", "Stranger")));
			tree.root.addChild(new WebNode(new WebPage("http://soslab.nccu.edu.tw/Members.html", "MEMBER")));
			tree.root.addChild(new WebNode(new WebPage("http://www3.nccu.edu.tw/~yuf/course.htm","Course")));
			//read 2 Yu 1.2 Fang 1.8 */
			
			
			
		}

	

