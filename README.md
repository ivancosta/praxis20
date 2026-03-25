# praxis20
```text
Reverse Engineering the "Interfax 20" Parallel interface for 
the Olivetti Praxis 20 electronic typewriter.

The Interfax 20 transforms the Praxis 20 into a computer printer
without interfering withs its 'typewritable' capabilities.

pt-br
Engenharia reversa da interface paralela "Interfax 20" para máquina
de escrever eletrônica Olivetti Praxis 20.
A Interfax 20 transforma a Praxis 20 em uma impressora sem retirar a
funcionalidade de máquina de escrever.

Banner da página de teste:
+-----------------------------------+
|                                   |
|  HD - SIST. ELET. IND E COM LTDA  |
|                                   |
|            INTERFAX 20            |
|          REV HARDWARE 01          |
|       REV SOFTWARE  8220301       |
|                                   |
|           Versao ABNT             |
|                                   |
+-----------------------------------+

/pt-br

THE HARDWARE:

Data comes from a computer through a Centronics 36-pin connector to a
small PCB that handles communication and send 'keystrokes' to be 
printed by the typewriter 

It consists of 6 integrated circuits on the PCB:

1x Z80 CPU
1x Z80 PIO 
1x 4kb 2732 EPROM containing the firmware
1x 7412 Triple 3-Input NAND Gate
1x 74368 Hex Bus Buffer/Driver
1x 74145 BCD-to-Decimal Decoder/Driver

Data decodes on the chips tells me they were manufactured between 


THE SOFTWARE:

The original software has been dumped from the 4kb Eprom and the binary
has been uploaded here.
After some unsuccessful tries to get meaningfull data by decompiling 
the binary, it bumped on me that the data bits coming from the EPROM to
the CPU were not sequencial d0, d1,.., d7 but they were scrambled
(at first I've thought for some kind of obfuscating, but probably they
are this way due to the Z80 data pins being weirdly arranged. 
So, I vibe-coded a descrambler script, and voilà, I've found the 
autotest banner in ASCII (see above). Now, I'm trying to disassemble 
the binary. 4kb is roughly 2100 assembly instructions, so I think is
doable.
 


