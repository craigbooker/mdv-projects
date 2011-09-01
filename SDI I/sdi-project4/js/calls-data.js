// Author: Craig Booker
// Assignment 4 - Data and function calls

/* Category :: String :: 1 :: Data and Call */
var phoneNumber = "123-456-7890";
var PhoneChecker = new PhoneNumChecker(phoneNumber);

/* Category :: String :: 2 :: Data and Call  */
var emailAdd = "someaddress@email.com";
var emailChecker = new emailAddChecker(emailAdd);

/* Category :: String :: 3 :: Data and Call  */
var strUrl1 = "http://www.craigbooker.com"; 
var	strUrl2 = "https://www.craigbooker.com";
var	strUrl3 = "www.craigbooker.com";
var	regEx1 = /^http:/; 
var	regEx2 = /^https:/;
checkUrlStr(strUrl1, strUrl2, strUrl3, regEx1, regEx2); 

/* Category :: String :: 4 :: Data and Call  */
/* Category :: String :: 5 :: Data and Call  */
var list = "a,b,c";
var changeVal = /,/g;
var newVal = "/";
var o = new ReplaceVar(list, currentVal, newVal);

/* Category :: Number :: 1 :: Data and Call  */
/* Category :: Number :: 2 :: Data and Call  */
/* Category :: Number :: 3 :: Data and Call  */
/* Category :: Number :: 4 :: Data and Call  */
var strNum = "42";
parseVal(strNum);
/* Category :: Array :: 1 :: Data and Call  */
/* Category :: Array :: 2 :: Data and Call  */
/* Category :: Array :: 3 :: Data and Call  */


