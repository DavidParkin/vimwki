# Old German Method
= Old German hyphen

## Info
[X] denotes file in place
[ ] denotes file not in place
## [userChrome Verwendung auch in Firefox 57](https://github.com/Endor8/userChrome.js/tree/master/userChrome)  

  The following files are required to use userChrome scripts, or are required:  
    In the installation directory  
    
  1. [ ] config.js
  2. [ ] userChromeJS.js
      In the installation/defaults/pref (varies by Firefox version)
      
  3. [ ] config-prefs.js      same as autoconfig.js but points to config.js
        In the profile/chrome directory
  4. [ ] userChrome.js        contains userChrome.import("*", "UChrm");
## New Nushi
[Firefox Quantum compatible userChrome.js](https://github.com/nuchi/firefox-quantum-userchromejs)
Place the three userChrome.* files in a */chrome directory inside your Firefox profile*. If you already have a userChrome.css file, you may instead add the contents of the file here anywhere in your [existing file.](https://github.com/nuchi/firefox-quantum-userchromejs)  
This would also seem to require something in the installation dir????
  * [X] userChrome.css
  * [X] userChrome.js  contains whatever scripts you wish
  * [X] userChrome.xml  
        
## Autoconfig method
  In installation/defaults/pref  
  
  * [ ] autoconfig.js  
```  
    // Any comment. You must start the file with a single-line comment!   
    pref("general.config.filename", "mozilla.cfg");  
    pref("general.config.obscure_value", 0);  
```  

  In installation  
  * [ ] mozilla.cfg  
        
    // first line  
    var prompts = Components.classes["@mozilla.org/embedcomp/prompt-service;1"]
                                .getService(Components.interfaces.nsIPromptService);

    prompts.alert(null, "Title of this Dialog", "Hello! You have now been alerted.");

# Current state of play
Works with Nushi files in place but two items added
Possibly due to installation/chrome
Move installation/chrome/userChrome.js to profile - still the same
=================
    [ ]link
     ss
     - [X] ssss  
     - [ ] [ssss](ssss)
     - ssss
     - sdfe
     - 
