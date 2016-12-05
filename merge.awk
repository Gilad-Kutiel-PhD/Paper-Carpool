#! /usr/bin/gawk -f

BEGIN{
  FS="\\input{|}"
}{
  if(match($0,"(%*)(.*)\\input{(.*)}",a)){
	if(a[1]==""){
		system("./merge.awk src/"a[3]".tex");
    }
  }
  else{
#  	if(match($0,"\\bibliography{(.*)}",a){
#    	bib = "src/"a[3]".bib";
#    	print file
#  	}
    print $0
  }
}
