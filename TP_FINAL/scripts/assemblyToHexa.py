import json
import os
import re

from Config import Instruction


def format_value(value):
    return "{0:05b}".format(int(value))


def format_list(l):
    return [value if i == 0 else format_value(value) for i, value in enumerate(l)]


def extend(instructions_format, l, nro, lenght):
    inmediate = instructions_format.get(l[0]).get("inmediate", None)
    return l[nro].zfill(lenght) if inmediate == f"l{nro}" else l[nro]


def format(l):
    return (
        instructions_format.get(l[0])
        .get("instruction")
        .replace("{l1}", extend(instructions_format, l, 1, 26))
        .replace("{l2}", extend(instructions_format, l, 2, 16))
        .replace("{l3}", extend(instructions_format, l, 3, 16))
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
    global instructions_format
    hexa_file = open(Instruction.hexa, "w")
    with open(Instruction.json) as jsonFile:
        instructions_format = json.load(jsonFile)
        print(instructions_format)
        jsonFile.close()

    if os.path.isfile(Instruction.assembly):
        assembly_file = open(Instruction.assembly)
        for instruction in assembly_file:
            hexa_file.write(converter(instruction) + "\n")
        hexa_file.close()
        assembly_file.close()
        print("Conversion finalizada.")
    else:
        print("File doesn't exist.")


if __name__ == "__main__":
    main()
