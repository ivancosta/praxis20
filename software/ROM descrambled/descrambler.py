def descramble_rom(input_file, output_file, bit_map):
    with open(input_file, "rb") as f:
        data = f.read()

    descrambled = bytearray()

    for scrambled_byte in data:
        original_byte = 0
        # Check each bit position from the Z80's perspective
        for z80_bit, rom_bit in bit_map.items():
            # Extract the bit from the ROM's position
            bit_value = (scrambled_byte >> rom_bit) & 1
            # Place it into the Z80's position
            original_byte |= (bit_value << z80_bit)
        
        descrambled.append(original_byte)

    with open(output_file, "wb") as f:
        f.write(descrambled)
    print(f"Done! Decoded file saved as: {output_file}")

# --- CONFIGURATION ---
# Map which ROM Data pin (value) goes to which Z80 Data pin (key)
# Example: If Z80 D0 is wired to ROM D3, put 0: 3
mapping = {
    0: 1,  # Z80 D0 <-> ROM Dx
    1: 0,  # Z80 D1 <-> ROM Dx
    2: 3,  # Z80 D2 <-> ROM Dx
    3: 6,  # Z80 D3 <-> ROM Dx
    4: 7,  # Z80 D4 <-> ROM Dx
    5: 5,  # Z80 D5 <-> ROM Dx
    6: 4,  # Z80 D6 <-> ROM Dx
    7: 2,  # Z80 D7 <-> ROM Dx
}

descramble_rom("original_dump.bin", "fixed_rom.bin", mapping)
