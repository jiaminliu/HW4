///////////////////////////////////////////////////////////////////////////////////////////
//This function checks the requirements for the application and changes the UI if necessary.
///////////////////////////////////////////////////////////////////////////////////////////
function requirementscheck() {
    //Check if cookie was set
    if ( Get_Cookie( 'CheckCookies' ) )
    {
      //Cookie was set
      document.getElementById("CookiesNotEnabledDiv").style.display = "None";
      document.getElementById("ContinueButton").style.display = "";
      document.getElementById("maincontent").style.display = "";
	    cookie_set = true;
	    //Commented out this line to remove error on load from favorites
	    //Delete_Cookie('CheckCookies', '/', '');
    }
    //Otherwise cookie was not set
    else
    {
      //Cookie not set
	    document.getElementById("CookiesNotEnabledDiv").style.display = "";
	    document.getElementById("helpdiv").style.display = "";
	    cookie_set = false;
    } 
}

function requirementsCookieCheck()
{
    //Check if cookie was set
    if ( Get_Cookie( 'CheckCookies' ) )
    {
      //Cookie was set
      document.getElementById("CookiesNotEnabledDiv").style.display = "None";
      document.getElementById("ContinueButton").style.display = "";
      document.getElementById("maincontent").style.display = "";
	    cookie_set = true;
	    //Commented out this line to remove error on load from favorites
	    //Delete_Cookie('CheckCookies', '/', '');
    }
    //Otherwise cookie was not set
    else
    {
      //Cookie not set
	    document.getElementById("CookiesNotEnabledDiv").style.display = "";
	    document.getElementById("helpdiv").style.display = "";
	    cookie_set = false;
    }    
}

function IsSupportedBrowser() {
  var agent = navigator.userAgent.toLowerCase();
  /*!document.addEventListener is an IE specific function.  Document.all is a standard function.  
  The rest of the check is to check IE version and to ensure that Opera is not the users browser.*/
  return ((!document.addEventListener) && (document.all));
}
/////////////////////////////////////////////////////////////////////////////
//This function is for if the user has anything other than IE they can click
//continue and keep going.
/////////////////////////////////////////////////////////////////////////////
function continueanyway()
{
  document.getElementById("BrowserFailed").style.display = "none";
  document.getElementById("maincontent").style.display = "";
  document.getElementById("continue").style.display = "none";
  document.getElementById("CookiesNotEnabledDiv").style.display = "None";
  document.getElementById("helpdiv").style.display = "None"; 
}

function Get_Cookie( name ) {
  var start = document.cookie.indexOf( name + "=" );
  var len = start + name.length + 1;
  if ( ( !start ) &&( name != document.cookie.substring( 0, name.length ) ) )
  {
    return null;
  }
  if ( start == -1 ) return null;
  var end = document.cookie.indexOf( ";", len );
  if (end == -1) end = document.cookie.length;
    return unescape( document.cookie.substring( len, end ) );
}
