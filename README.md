readme_content = """# Hex Dump Utility (Strict Course Material Version)

## Description
This project contains a C program (`hexdump.c`) that reads a raw file (like `binary.out`) and generates a formatted hexadecimal dump. 

This specific implementation was designed to **strictly adhere to the provided course lecture slides**. It achieves standard hex-dump formatting without relying on outside functions or data types that were not explicitly taught in the curriculum.

## Features
- **Address Offset:** Displays the 8-character hexadecimal address offset at the start of each row.
- **Hexadecimal View:** Displays up to 16 consecutive bytes in hexadecimal format per row.
- **ASCII View:** Displays the ASCII representation of the bytes on the right side, enclosed in pipes (`|`). Non-printable control characters are safely replaced with a dot (`.`).
- **Strict Compliance Workarounds:** - Uses `fscanf` and `"r"` mode instead of `fread` and `"rb"`.
  - Uses standard `char` instead of `unsigned char`.
  - Uses Bitwise `& 0xFF` to strip sign-extensions from standard `char` to prevent negative hex formatting (e.g., preventing `ffffff80`).
  - Uses manual `if/else` logic to prepend leading zeros instead of `%02x`.

## How to Compile and Generate Assembly

To analyze how the GCC compiler optimizes the code at different levels, generate the assembly files (`.s`) using the `-S` flag:
