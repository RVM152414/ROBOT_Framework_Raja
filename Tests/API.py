import  requests


response=requests.request("GET","http://216.10.245.166/Library/GetBook.php?ID=bcd10000001",data="",headers="")
print(response.json()[0])
print(response.json()[0]["author"])




