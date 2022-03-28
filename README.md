# DE10 NANO - ON CHIP RAM 
In this project I write to HPS RAM from fpga with bridge F2H and read it drom hps with code C.

The physical address of HPS-OCR is : 0xFFFF0000
In QSYS F2H axi bridge start from 0x0 and this address is the real start physical address. so to write data to HPS-OCR from F2H the start address from FPGA is 0xFFFF0000.

The f2h axi bridge have access to all HPS addesses. 

# GUIDE TO START PROJECT 
ON FPGA - 
1. TOP LEVEL IS HPSFPGA
2. GENRATE QSYS WITH ALL COMMPONENTS
3. ADD PIN ASSIGNMENT "DE10_NANO_SoC.csv" TO THE PROJECT
4. START ONLY ANALYSIS
5. RUN TCL FOR QSYS, "PARAMETERS" & "PIN ASSIGNMENT"
6. START COMPILATION
ON HPS -
1. RUN THE CODE C on hps after you run fpga


<img src="https://user-images.githubusercontent.com/34484321/158373176-0a760233-e156-4a1d-9d09-bef990c5f2b2.png" width="400" height="400" />
<img src="https://user-images.githubusercontent.com/34484321/158373560-95fe11d2-e1f6-43ae-a253-4991b91e2816.jpg" width="400" height="400" />
