import org.jsoup.safety.*;
import org.jsoup.examples.*;
import org.jsoup.helper.*;
import org.jsoup.*;
import org.jsoup.parser.*;
import org.jsoup.select.*;
import org.jsoup.nodes.*;

IntDict counter;
String[] tokens;

void setup(){
fullScreen();
  //size(600,400);
background(0);

counter = new IntDict();
String[] lines = loadStrings("http://www.jmit.ac.in");
String allText = join(lines,"\n");
String parsedText = Jsoup.parse(allText).text();
printArray(parsedText);
tokens = splitTokens(parsedText," @#$&*+-?><.,;:'\"");
//print(tokens);

  for(String t: tokens)
  {
    t = t.toLowerCase();
   if(counter.hasKey(t))
    counter.increment(t);
   else{
   counter.set(t,1);
   
   }
  
  }
  //stroke(255);
  String[] keys = counter.keyArray();
  for(String word : keys){
   int count = counter.get(word);
   textSize(count);
   text(word,random(width),random(height));  
  
  }  //}
  //stroke(255,0,0);
  //textSize(60);
  //text("Hrllo",50,60);
  //printArray(counter);
}