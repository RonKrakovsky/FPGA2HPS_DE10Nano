# DE10 NANO - ON CHIP RAM 
In this project I write to HPS-RAM from fpga with bridge F2H axi bridge and read it from hps with C code.

The physical address of HPS-OCR is : 0xFFFF0000 - 0xFFFFFFFF (also you can see it in the image down below).
In QSYS F2H axi bridge start from 0x0 and this address is the real start physical address. So, to write data to HPS-OCR from F2H axi bridge the address of HPS-OCR is also start from 0xFFFF0000.

The f2h axi bridge have access to all HPS addesses.  

# GUIDE TO START PROJECT 
ON FPGA - 
1. SET TOP LEVEL AS HPSFPGA.vhd
2. GENERATE QSYS WITH ALL COMPONENTS TOGETHER (MAKE SURE THAT ALL COMPONENTS IN QSYS IN SAME FOLDER AND ALSO THE TCL FILES).
3. ADD PIN ASSIGNMENT "DE10_NANO_SoC.csv" TO THE PROJECT.
4. START ONLY ANALYSIS.
5. RUN TCL FOR QSYS, "PARAMETERS" & "PIN ASSIGNMENT".
6. START COMPILATION

ON HPS -

1. RUN THE C CODE ON HPS AFTE YOU RUN FPGA.


<img src="https://user-images.githubusercontent.com/34484321/158373176-0a760233-e156-4a1d-9d09-bef990c5f2b2.png" width="400" height="400" />
<img src="https://user-images.githubusercontent.com/34484321/158373560-95fe11d2-e1f6-43ae-a253-4991b91e2816.jpg" width="400" height="400" />
