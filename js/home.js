function pagebar()
{
  var links=document.getElementById('navbar').getElementsByTagName("a");
  var current = location.href;
  for (var i=0; i < links.length; i++)
  {
   if(links[i].href == current)
   {
      links[i].href = "";
      links[i].className='grayStyle';
   }
 }
} 
