<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
	
	<!-- section -->
	<section class="components" id="class">
		<h1 class="components__title components__title--emphasized">클래스구조</h1>
		<section class="components__item">
			<!-- DEMO -->
			<h3 class="components__title">DESCRIPTION</h3>
			<section class="components__item--demo">
				<p>클래스의 구조는 여러번 말해도 지나치지 않습니다. 
				아무리 복잡한 코드라도 이 클래스의 구조를 벗어나지 않죠. 
				(1) 패키지 선언 () 
				(2) 임포트 구문 
				(3) 클래스 선언 { 
					(4) 멤버변수 
					(5) 생성자 
					(6) 메소드
				}
				(1) 클래스(Class): 객체를 만드는 틀
				(2) 객체(Object): 클래스를 통해 생성된 구현물 or 모든 것
				(3) 생성자(Constructor): 객체가 생성될 때 하는 일(기능)
				(4) 메소드(Method): 객체가 할 수 있는 일(기능)
				(5) 속성(Attribute == 멤버변수): 객체의 특성</p>
			</section>
			<!-- //DEMO -->

			<!-- CODE -->
			<h3 class="components__title">CODE</h3>
			<section class="components__item--code">
				<pre class="brush: java">package aa.bb; 
  
import java.lang.*; 
  
class A { 
    String shape;
    String name;
  
    A(){
        shape = "멋스러운"; 
        name= "아이언맨"; 
    }
    A(String name, String shape){
        this.name = name;
        this.shape = shape;
    }
    void go(){ 
        System.out.print("간다");
    }
}
  
class AUser {
    public static void main(String[] args) { 
        A a2 = new A("캡틴아메리카", "근육질인");
        System.out.print(a2.shape + " "+a2.name+"이 "); 
        a2.go();
    }
}</pre>
			</section>
			<!-- //CODE -->
		</section>
	</section>
	<!-- //section -->
	
	<!-- section -->
	<section class="components" id="execute">
		<h1 class="components__title components__title--emphasized">실행순서</h1>
		<section class="components__item">
			<!-- DEMO -->
			<h3 class="components__title">DESCRIPTION</h3>
			<section class="components__item--demo">
				<p>실행순서도 중요하지요.<br>
				CODE의 소스는 어떻게 출력될까요? 한 번 생각해보세요.</p>
			</section>
			<!-- //DEMO -->

			<!-- CODE -->
			<h3 class="components__title">CODE</h3>
			<section class="components__item--code">
				<pre class="brush: java">class C {
	C(){
		System.out.println("C()-1");
		m1();
		System.out.println("C()-2");
	}
	void m1(){
		System.out.println("m1()-1");
		m2();
		System.out.println("m1()-2");
	}
	void m2(){
		System.out.println("m2()-1");
	}
	public static void main(String[] args) {
		System.out.println("main()-1");
		new C().m2();
		System.out.println("main()-2");
	}
}</pre>
			</section>
			<!-- //CODE -->
		</section>
	</section>
	<!-- //section -->
	
	<!-- section -->
	<section class="components" id="static">
		<h1 class="components__title components__title--emphasized">Static</h1>
		<section class="components__item">
			<!-- DEMO -->
			<h3 class="components__title">DESCRIPTION</h3>
			<section class="components__item--demo">
				<p>Static을 잘 보시면 되는데요.<br>
				Static 사용의 판단 기준은 공용으로 사용하느냐 아니냐로 내리면 됩니다.<br>
				Static을 선언하면 생성자를 new로 선언해주지 않아도 A.nick으로 불러올 수 있습니다.<br>
				물론 a1, a2를 선언하지 않고 a1.nick, a2.nick을 해줄 경우 오류가 나지만요.
				</p>
			</section>
			<!-- //DEMO -->
			
			<!-- CODE -->
			<h3 class="components__title">CODE</h3>
			<section class="components__item--code">
				<pre class="brush: java">class A {
	String name = "홍길동";
	static String nick = "메기";

	A(){
		System.out.println("A() name: " + name);
	}
	void m(){
		System.out.println("m() name: " + name);
	}
}

class AUser {
	public static void main(String[] args) {
		A a1 = new A();
		A a2 = new A();
		a1.m();

		System.out.println("main() name: " + a1.name);
		System.out.println("main() nick: " + A.nick);
		System.out.println("main() nick: " + a1.nick);
		System.out.println("main() nick: " + a2.nick);
	}
}</pre>
			</section>
			<!-- //CODE -->
			
		</section>
	</section>
	<!-- //section -->
	
	<!-- section -->
	<section class="components" id="final">
		<h1 class="components__title components__title--emphasized">Final</h1>
		<section class="components__item">
			<!-- DEMO -->
			<h3 class="components__title">DESCRIPTION</h3>
			<section class="components__item--demo">
				<p>final은 상수를 뜻합니다. 한 번 선언하고 나면 변하지 않는 값이죠.<br>
				바뀌지 않는 값을 지정하고 싶을 때는 final을 사용하도록 합시다.<br>
				같이 일하는 사람들과 합의가 필요한 부분이니, 논의 후 사용하세요!
				</p>
			</section>
			<!-- //DEMO -->
			
			<!-- CODE -->
			<h3 class="components__title">CODE</h3>
			<section class="components__item--code">
				<pre class="brush: java">class C {
	final int i = 100;

	void m(){
		System.out.println("i: " + i);
		// i = 200; // 안됨!
	}
	public static void main(String[] args) {
		C c = new C();
		c.m();
	}
}
</pre>
			</section>
			<!-- //CODE -->
			
		</section>
	</section>
	<!-- //section -->
	
	<!-- section -->
	<section class="components" id="initial">
		<h1 class="components__title components__title--emphasized">초기값</h1>
		<section class="components__item">
			<!-- DEMO -->
			<h3 class="components__title">DESCRIPTION</h3>
			<section class="components__item--demo">
				<p>초기값은 다음과 같아요.</p>
				<pre class="components__pre">
				b: 0
				s: 0
				c: 0
				i: 0
				lo: 0
				f: 0.0
				d: 0.0
				flag: false
				str: null</pre>
			</section>
			<!-- //DEMO -->
			
			<!-- CODE -->
			<h3 class="components__title">CODE</h3>
			<section class="components__item--code">
				<pre class="brush: java">class H {
	byte b;
	short s;
	char c;
	int i;
	long lo;
	float f;
	double d;
	boolean flag;
	String str;

    void m(){
		System.out.println("b: " + b);
		System.out.println("s: " + s);
		System.out.println("c: " + (int)c);
		System.out.println("i: " + i);
		System.out.println("lo: " + lo);
		System.out.println("f: " + f);
		System.out.println("d: " + d);
		System.out.println("flag: " + flag);
		System.out.println("str: " + str);
	}
	public static void main(String[] args) 
	{
		new H().m();
	}
}
</pre>
			</section>
			<!-- //CODE -->
			
		</section>
	</section>
	<!-- //section -->
	
	<!-- section -->
	<section class="components" id="initial">
		<h1 class="components__title components__title--emphasized">초기값</h1>
		<section class="components__item">
			<!-- DEMO -->
			<h3 class="components__title">DESCRIPTION</h3>
			<section class="components__item--demo">
				<p>어떤 프로그램이 실행되고 있을 때, <br>
				어느 한 시점에서의 CPU 연산은 어떤 특정 코드부분을 실행하고 있을 거예요.<br>
				그 코드부분을 '제어점'이라하고, 그 제어점을 집합을 '제어'라 한답니다.<br> 
				즉, 프로그램의 실행흐름(Line)을 제어라 합니다.</p>
			</section>
			<!-- //DEMO -->
			
			<!-- CODE -->
			<h3 class="components__title">CODE</h3>
			<section class="components__item--code">
				<pre class="brush: java">class A {
	A(){
		System.out.println("2");
		m1();
        System.out.println("6");
	}
	void m1(){
		System.out.println("3");
		m2();
		System.out.println("5");
	}
	void m2(){
		System.out.println("4");
	}
	public static void main(String[] args) {
		System.out.println("1");
		new A();
        System.out.println("7");
	}
}</pre>
			</section>
			<!-- //CODE -->
			
		</section>
	</section>
	<!-- //section -->