import os
import re

instruction_format = {
    # R-type
    "SLL": "000000_00000_{l2}_{l1}_{l3}_000000",  # SLL rd, rt, sa
    "SRL": "000000_00000_{l2}_{l1}_{l3}_000010",
    "SRA": "000000_00000_{l2}_{l1}_{l3}_000011",
    "SLLV": "000000_00000_{l3}_{l2}_{l1}_000100",  # SLLV rd, rt ,rs
    "SRLV": "000000_00000_{l3}_{l2}_{l1}_000110",
    "SRAV": "000000_00000_{l3}_{l2}_{l1}_000111",
    "ADDU": "000000_00000_{l2}_{l3}_{l1}_100001",  # ADDU rd, rs, rt
    "SUBU": "000000_00000_{l2}_{l3}_{l1}_100011",
    "AND": "000000_00000_{l2}_{l3}_{l1}_100100",
    "OR": "000000_00000_{l2}_{l3}_{l1}_100101",
    "XOR": "000000_00000_{l2}_{l3}_{l1}_100110",
    "NOR": "000000_00000_{l2}_{l3}_{l1}_100111",
    "SLT": "000000_00000_{l2}_{l3}_{l1}_101010",
    # I-Type
    "LB": "100000_{l3}_{l1}_{l2}",  # LB rt, offset(base)
    "LH": "100001_{l3}_{l1}_{l2}",
    "LW": "100011_{l3}_{l1}_{l2}",
    "LWU": "100111_{l3}_{l1}_{l2}",
    "LBU": "100100_{l3}_{l1}_{l2}",
    "LHU": "100001_{l3}_{l1}_{l2}",
    "SB": "101000_{l3}_{l1}_{l2}",
    "SH": "101001_{l3}_{l1}_{l2}",
    "SW": "101011_{l3}_{l1}_{l2}",
    "ADDI": "001000_{l2}_{l1}_{l3}",  # ADDI rt, rs, inmediate
    "ANDI": "001100_{l2}_{l1}_{l3}",
    "ORI": "001101_{l2}_{l1}_{l3}",
    "XORI": "001110_{l2}_{l1}_{l3}",
    "LUI": "001111_00000_{l1}_{l2}",  # LUI rt, inmediate
    "SLTI": "001010_{l2}_{l1}_{l3}",  # SLTI rt, rs, inmediate
    "BEQ": "000100_{l1}_{l2}_{l3}",  # ADDI rs, rt, offset
    "BNE": "000101_{l1}_{l2}_{l3}",
    "J": "000010_{l1}",  # J instruction_index
    "JAL": "000011_{l1}",
    # J-Type
    "JR": "000000_{l1}_00000_00000_00000_001000",  # JR rs
    "JALR": "000000_{l2}_00000_{l1}_00000_001001",  # JALR rd, rs
}


def format_value(value):
    return "{0:05b}".format(int(value))


def format_list(l):
    return [value if i == 0 else format_value(value) for i, value in enumerate(l)]


def format(l):
    return (
        instruction_format.get(l[0])
        .replace("{l1}", l[1])
        .replace("{l2}", l[2])
        .replace("{l3}", l[3])
    )


def parser(instruction):
    instruction_list = [value.strip(",\n)") for value in re.split(" |\(", instruction)]
    while len(instruction_list) < 4:
        instruction_list.append("0")
    return instruction_list


def converter(instruction):
    instruction_list = format_list(parser(instruction))
    value = int(format(instruction_list), 2)
    hex_value = "0x{0:08X}".format(value)
    return hex_value


def main():
    hexa_file = open("instructionsHexa.txt", "w")
    if os.path.isfile("instructionsAssembly.txt"):
        assembly_file = open("instructionsAssembly.txt")
        for instruction in assembly_file:
            hexa_file.write(converter(instruction) + "\n")
        hexa_file.close()
        assembly_file.close()
        print("Conversion finalizada.")
    else:
        print("File doasn't exist.")


if __name__ == "__main__":
    main()