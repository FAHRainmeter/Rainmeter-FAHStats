## Description

Provides a Rainmeter skin for tracking your Folding@home stats.

This skin provides a general overview read from your [extremeoverclocking][1] stats page,
along with a more detailed view of your tasks in progress for all of your clients connected to HFM.



## Usage

###Preparation
Attach all the clients you want to see info for to your HFM. They will be included in the generated
summary.html file which Rainmeter will then parse for the information to display.

Open up your HFM Preferences menu and configure it to generate a local web page at an interval of your liking.
The Target Path is where the summary.html will be generated, so make sure to properly input the full path as URL2.


###Setup
1. Select the appropriate .rmskin file for your OS, download and install it.
2. Load the .ini file which corresponds to the number of clients you run.
3. Open the `Folding.ini` file and edit the Variables on the section starting on line 23.



### Remote Stats

If HFM is running on a different computer, one way you can deal with the stats is to generate them to a
Dropbox directory, which you then clone over to your local computer.

Plenty of alternatives are possible as long as the file ends up updated in the specified in the variable location.


### Configuration customisation

If you want to connect to more clients, there are three main adjustments that you need to do:

1. Line 108, HTML parser for the summary.html page:
This is the regular expression for the parser, which reads the whole configuration for any client slot:
```
<td width=".*" class=".*">.*<font color=".*">(.*)</font>.*</td>.*<td width=".*" class=".*">(.*)</td>.*<td width=".*" class=".*">.*<a href=".*">(.*)</a>.*</td>.*<td width=".*" class=".*">.*</td>.*<td width=".*" class=".*">(.*)</td>.*<td width=".*" class=".*">(.*)</td>.*<td width=".*" class=".*">(.*)</td>.*<td width=".*" class=".*">.*</td>.*<td width=".*" class=".*">.*</td>.*<td width=".*" class=".*">(.*) \(.*\)</td>.*<td width=".*" class=".*">(.*)</td>.*<td width=".*" class=".*">(.*)</td>.*<td width=".*" class=".*">(.*)</td>.*<td width=".*" class=".*">.*</td>.*<td width=".*" class=".*">.*</td>.*<td width=".*" class=".*">.*</td>
```
so in order to add more clients, paste for each at the end of the line but with a leading `.*`.

2. Line 127 and the block after. There is a comment line marking the number of the client slot. Take a look at it and adjust the next ones accordingly.

3. End of file. It follows the same structure - a comment line indicating the client, and its configuration afterwards.



## Possible Improvements ?

 * Autodetection of the number of running clients and adjusting the stat fields accordingly.

 
 
## Contributors

 * Ryahn[2]
 * fragamemnon[3]



[1]: http://folding.extremeoverclocking.com/
[2]: http://www.overclock.net/u/328830/wyllliam
[3]: http://www.overclock.net/u/149764/fragamemnon