

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map.Entry;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestProject
 */
@WebServlet("/TestProject")
public class TestProject extends HttpServlet {
	
	public static String[][] s = new String[20][2];
	public static double[] count = new double[20];
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestProject() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		
		if(request.getParameter("keyword")== null) {
			String requestUri = request.getRequestURI();
			request.setAttribute("requestUri", requestUri);
			request.getRequestDispatcher("Search.jsp").forward(request, response);
			return;
		}
		
		//search GOOGLE
		String searchword = request.getParameter("keyword");
		GoogleQuery google = new GoogleQuery(searchword);
		HashMap<String, String> query = google.query();
		s = new String[query.size()][2];
		int num = 0;
		for(Entry<String, String> entry : query.entrySet()) {
		    String key = entry.getKey();
		    String value = entry.getValue();
		    s[num][0] = key;//url
		    s[num][1] = value;//title
		    System.out.println(s[num][0] + ":" + s[num][1]);
		    num++;
		}
		sort(s);
		request.setAttribute("query", s);
		request.getRequestDispatcher("googleitem.jsp")
		 .forward(request, response); 
		
	}

	public void sort(String[][] list){
		ArrayList<Keyword> keywordlist= new ArrayList<Keyword>();
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
		keywordlist.add(new Keyword("餐具",-10000));
		keywordlist.add(new Keyword("母嬰",-10000));
		keywordlist.add(new Keyword("嬰幼",-10000));
		keywordlist.add(new Keyword("買賣",-10000));
		keywordlist.add(new Keyword("購物",-10000));
		keywordlist.add(new Keyword("滿趣健",-10000));
		keywordlist.add(new Keyword("infant",-10000));
		keywordlist.add(new Keyword("toddler",-10000));
		
		count= new double[list.length];
		
		for(int i=0;i<list.length;i++) {
			WebPage rootPage= new WebPage(list[i][1],list[i][0]);
			System.out.println(list[i][0]);
			WebTree tree= new WebTree(rootPage);
			try {
				tree.setPostOrderScore(keywordlist);
				count[i]=tree.eularPrintTree();
				System.out.println(count[i]);
			}catch(IOException e){
				count[i]=-500;
			}
		}
		quickSort(0,count.length-1);
		System.out.println("----------");
		for(int i =0;i<count.length;i++) {
			System.out.println(s[i][0]);
			System.out.println(s[i][1]);
			System.out.println(count[i]);
			
		}
	}
	
	private void quickSort(int leftbound, int rightbound){
		//1. implement quickSort algorithm
        if(leftbound>=rightbound) return;
        int j=leftbound;
        int k=rightbound;
        int pivotindex=(rightbound+rightbound)/2;
        double pivot=count[pivotindex];
        
        swap(pivotindex,k);
        for (int i = j ;i < k; ++i)
        {
            if (count[i] >= pivot)
            {
                swap(i, j);
                ++j;
            }
        }
        swap(j,k);
        quickSort(leftbound,j-1);
        quickSort(j+1,rightbound);

	}

	private static void swap(int m, int n){
		  
		  double temp = count[m];
		  String a = s[m][0];//url
		  String b = s[m][1];//title
		  s[m][0] = s[n][0];
		  s[m][1] = s[n][1];
		  s[n][0] = a;
		  s[n][1] = b;
		  count[m] = count[n];
		  count[n] = temp;
		  //Keyword temp = keywordlist.get(aIndex);
		  //keywordlist.set(aIndex, keywordlist.get(bIndex));
		  //keywordlist.set(bIndex, temp);
		 }
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
