public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String test = reverse(noCapitals(onlyLetters(noSpaces(word))));
  String base = noCapitals(onlyLetters(noSpaces(word)));
  return test.equals(base);
}
public String reverse(String str)
{
  String result = new String("");
  for(int i =str.length();i>=1;i--){
    result+= str.substring(i-1,i);
  }
  return result;
}
public String onlyLetters(String sString){
  String result = new String("");
  for(int i=0;i<=sString.length()-1;i++)
    if(Character.isLetter(sString.charAt(i))==true) 
      result+=sString.charAt(i);
  return result;
}
public String noSpaces(String sWord){
  String result = new String("");
  for(int i=0;i<=sWord.length()-1;i++){
    if(sWord.substring(i,i+1).equals(" ")!=true) 
      result+=sWord.substring(i,i+1);
  }
  return result;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
