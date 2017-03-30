README.txt:
Nikola Panayotov (npanayot@ucsc.edu)
Marko Jerkovic (mjerkovi@ucsc.edu)
Edwin Ramirez (edalrami@ucsc.edu)
Jeremiah Liou  (jliou@ucsc.edu)

    The main goal of this assignment was to obtain a clear understanding of how paging worked in FreeBSD, and then modify the paging algorithm to work in a different way. By correctly logging the information from the original paging, a clear understanding could be made about how the FreeBSD paging worked.  Once figuring out how the freeBSD paging algorithm worked, the FAT CHANCE algorithm was implemented to change how the paging worked. In order to do that, many files and functions were changed to implement it. 
    The assignment specs/piazza said to use stress in order to see how the paging changed. However, the amount of memory in the virtualbox was also changed to see the paging changed. Log() was also used to see how the paging worked. Additionally each algorithm was tested, and recorded into its own respective csv file. We then wrote a MATLAB script that handled our data to produce the figures. In our submission we have also included these files for the sake of showing how we conducted our analyses of each algorithm. 

Note: The pdf says to modify the files in sys/vm, but the files in usr/src/sys/vm were modified in this assignment.

Theses files were modified to implement FAT CHANCE and logging:

vm_page.c: parameter was changed to change whether or not the page went to the front or the rear.

vm_page.h: The same function parameter was changed to change whether or not a page went to the front or the rear.

vm_pageout.c: The scan interval was changed to 10 seconds. The activity count was changed to divide by two instead of being decremented. Logging was also implemented here to see all the paging.

vm_phys.c: variable was added to make even pages go to the front and odd pages to the rear.
