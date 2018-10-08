# Let's Go

## Question Text

Lets Go find the password!

(please encapulate the password in GCTF{...} to submit)
`nc rev.chal.gryphonctf.com 80`

*Creator - lohkaimun99*

### Hints (Optional)
1. salty salty md5

## Setup Guide
1. Distribute Lets-Go

## Distribution
- Let's Go
    - SHA1: `6fc46d9146d7e9396c48e441fbe152dd645cc979`
    - 64 Bit ELF

## Solution
The program will ask for the password, which it will compute the some of the salt with md5.

![alt text](solution/qns.png)


We will look at the main function:
![alt text](solution/salt.png)

From the function list we can also see a getDetail function, which does not seems to be used, but has a interesting website:
![alt text](solution/details.png)

Finally, the check function which has a special location (main.statictmp_0):
![alt text](solution/hash.png)

Lastly using the details found in the link to generate the password list:
```
https://github.com/Mebus/cupp
```
(Recommended by PotatoDrug)

We can see that there is a salt and a hash.
Then we proceed to using hashcat to crack the password: 
```.\hashcat64.exe -a 3 -m 20 .\<hash:salt list> <word_list>```

#### In the event pastebin post gets taken down:
```
Name: YuanKai Lam
DOB: 01 April 2000
Class: DISM/34
Age: 18
Nickname: KaiKai
 
Crush: Apple Lim
DOB: 04 April 2000
Nickname: XiaoPingGuo
 
Pet: Jonathan Lam
```

Password: kaikai10004

### Flag
`GCTF{L3ts_G0_H4v3_fun}`