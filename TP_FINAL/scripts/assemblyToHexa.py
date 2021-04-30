
import os
import re

type_R_instructions = "SLL,SRL,SRA,SLLV,SRLV,SRAV,ADDU,SUBU,AND,OR,XOR,NOR,SLT"


def format_value(value):
    return "{0:05b}".format(int(value))

def format(l):
    rd = format_value(l[1])
    rt = format_value(l[2])
    rs = format_value(l[3])
    sa = format_value(l[3])
    instruction_format = {
        # R-type
        "SLL"   : f'000000_00000_{format_value(l[2])}_{format_value(l[1])}_{format_value(l[3])}_000000',    # SLL rd, rt, sa
        "SRL"   : f'000000_00000_{format_value(l[2])}_{format_value(l[1])}_{format_value(l[3])}_000010',  
        "SRA"   : f'000000_00000_{format_value(l[2])}_{format_value(l[1])}_{format_value(l[3])}_000011',
        "SLLV"  : f'000000_00000_{format_value(l[3])}_{format_value(l[2])}_{format_value(l[1])}_000100',    # SLLV rd, rt ,rs
        "SRLV"  : f'000000_00000_{format_value(l[3])}_{format_value(l[2])}_{format_value(l[1])}_000110',
        "SRAV"  : f'000000_00000_{format_value(l[3])}_{format_value(l[2])}_{format_value(l[1])}_000111',
        "ADDU"  : f'000000_00000_{format_value(l[2])}_{format_value(l[3])}_{format_value(l[1])}_100001',    # ADDU rd, rs, rt
        "SUBU"  : f'000000_00000_{format_value(l[2])}_{format_value(l[3])}_{format_value(l[1])}_100011',
        "AND"   : f'000000_00000_{format_value(l[2])}_{format_value(l[3])}_{format_value(l[1])}_100100',
        "OR"    : f'000000_00000_{format_value(l[2])}_{format_value(l[3])}_{format_value(l[1])}_100101',
        "XOR"   : f'000000_00000_{format_value(l[2])}_{format_value(l[3])}_{format_value(l[1])}_100110',
        "NOR"   : f'000000_00000_{format_value(l[2])}_{format_value(l[3])}_{format_value(l[1])}_100111',
        "SLT"   : f'000000_00000_{format_value(l[2])}_{format_value(l[3])}_{format_value(l[1])}_101010',

        # I-Type
        "LB"    : f'100000_{format_value(l[3])}{format_value(l[1])}{format_value(l[2])}',    # LB rt, offset(base)
        "LH"    : f'100001_{format_value(l[3])}{format_value(l[1])}{format_value(l[2])}',
        "LW"    : f'100011_{format_value(l[3])}{format_value(l[1])}{format_value(l[2])}',
        "LWU"   : f'100111_{format_value(l[3])}{format_value(l[1])}{format_value(l[2])}',
        "LBU"   : f'100100_{format_value(l[3])}{format_value(l[1])}{format_value(l[2])}',
        "LHU"   : f'100001_{format_value(l[3])}{format_value(l[1])}{format_value(l[2])}',
        "SB"    : f'101000_{format_value(l[3])}{format_value(l[1])}{format_value(l[2])}',
        "SH"    : f'101001_{format_value(l[3])}{format_value(l[1])}{format_value(l[2])}',
        "SW"    : f'101011_{format_value(l[3])}{format_value(l[1])}{format_value(l[2])}',
        "ADDI"  : f'001000_{format_value(l[2])}{format_value(l[1])}{format_value(l[3])}',   # ADDI rt, rs, inmediate
        "ANDI"  : f'001100_{format_value(l[2])}{format_value(l[1])}{format_value(l[3])}',
        "ORI"   : f'001101_{format_value(l[2])}{format_value(l[1])}{format_value(l[3])}',
        "XORI"  : f'001110_{format_value(l[2])}{format_value(l[1])}{format_value(l[3])}',
        "LUI"   : f'001111_00000_{format_value(l[1])}{format_value(l[2])}', # LUI rt, inmediate
        "SLTI"  : f'001010_{format_value(l[2])}{format_value(l[1])}{format_value(l[3])}',   # SLTI rt, rs, inmediate
        "BEQ"   : f'000100_{format_value(l[1])}{format_value(l[2])}{format_value(l[3])}',      # ADDI rs, rt, offset
        "BNE"   : f'000101_{format_value(l[1])}{format_value(l[2])}{format_value(l[3])}',
        "J"     : f'000010_{format_value(l[1])}',   # J instruction_index
        "JAL"   : f'000011_{format_value(l[1])}',

        # J-Type
        "JR"    : f'000000_{format_value(l[1])}_00000_00000_00000_001000',  # JR rs
        "JALR"  : f'000000_{format_value(l[2])}_00000_{format_value(l[1])}_00000_001001'  # JALR rd, rs


    }

    return instruction_format[l[0]]

def parser(instruction):
    instruction_list = [value.strip(",\n)") for value in re.split(" |\(", instruction)]
    return instruction_list

def converter(instruction):
    instruction_list = parser(instruction)
    bin_value = int(format(instruction_list),2)
    hex_value = hex(bin_value)
    return hex_value

def main():
    hexa_file = open("instructionsHexa.txt", "w")
    if os.path.isfile("instructionsAssembly.txt"):
        assembly_file = open("instructionsAssembly.txt")
        for instruction in assembly_file:
            hexa_file.write(converter(instruction)+"\n")
        hexa_file.close()
        assembly_file.close()
        print("Conversion finalizada.")
    else:
        print("File doasn't exist.")

if __name__ == "__main__":
    main()