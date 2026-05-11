#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

int main(int argc, char* argv[]) {
    FILE *inFile;
    char buffer[16];
    int bytesRead;
    int offset = 0;
    int i;
    int val; // Variable to hold the masked byte value

    if (argc < 2) {
        printf("Usage: %s <filename>\n", argv[0]);
        return 1;
    }


    inFile = fopen(argv[1], "r"); 
    if (inFile == NULL) {
        printf("There is an error opening file\n");
        exit(-1);
    }

    while (1) {
        bytesRead = 0;
        
        // Read bytes one by one using fscanf
        for (i = 0; i < 16; i++) {
            if (fscanf(inFile, "%c", &buffer[i]) == 1) {
                bytesRead++;
            } else {
                break; 
            }
        }

        if (bytesRead == 0) {
            break;
        }

        // printing offset using standard width formatting
        printf("%8x  ", offset);

        // print the 16 consecutive bytes in hex
        for (i = 0; i < 16; i++) {
            if (i < bytesRead) {
                
                // Using the Bitwise and to mask the sign bit.
                // this prevents standard 'char' from printing negative ffffff values.
                val = buffer[i] & 0xFF; 
                
                // adding the leading zero if the hex value
                // is less than 16 (0x10), simulating %02x
                if (val < 16) {
                    printf("0%x ", val);
                } else {
                    printf("%x ", val);
                }
                
            } else {
                printf("   "); // Pad if less than 16 bytes remain
            }
        }
        
        printf(" |"); 

        // Print the ASCII representation
        for (i = 0; i < bytesRead; i++) {
            if (isprint(buffer[i])) {
                printf("%c", buffer[i]);
            } else {
                printf(".");
            }
        }
        printf("|\n");
        
        offset = offset + 16;
    }

    fclose(inFile);
    return 0;
}