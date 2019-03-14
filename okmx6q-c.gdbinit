################################################################################ 
# GDB command script for OKMX6Q-C core board
#     
# Initialize DDR pad
# Initialize DDR timing
# Initialize SP  value
# Initialize PC  value
################################################################################ 

# Connect to GDB server (J-Link GDBServer)
target remote 192.168.56.1:2331

# Reset and halt chip
monitor reset
monitor halt

# Wait 200 ms
monitor sleep 200

# Disable Watchdog
monitor memU32 0x020bc000=0x30

# Pad Group Control Register (IOMUXC_SW_PAD_CTL_GRP_DDR_TYPE), DDR3 mode
monitor memU32 0x20e0798=0x000C0000
# Pad Group Control Register (IOMUXC_SW_PAD_CTL_GRP_DDRPKE), Pull/Keeper Disabled
monitor memU32 0x20e0758=0x00000000
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_SDCLK0_P), 
# CMOS input mode, 
# CMOS input, 
# On Die Termination Field disabled, 
# Drive Strength Field 40_OHM
monitor memU32 0x20e0588=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_SDCLK1_P)
monitor memU32 0x20e0594=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_CAS_B)
monitor memU32 0x20e056c=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_RAS_B)
monitor memU32 0x20e0578=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_GRP_ADDDS)
monitor memU32 0x20e074c=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_RESET)
monitor memU32 0x20e057c=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_SDBA2)
monitor memU32 0x20e058c=0x00000000
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_ODT0)
monitor memU32 0x20e059c=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_ODT1)
monitor memU32 0x20e05a0=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_GRP_CTLDS)
monitor memU32 0x20e078c=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_GRP_DDRMODE_CTL)
monitor memU32 0x20e0750=0x00020000
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS0_P)
monitor memU32 0x20e05a8=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS1_P)
monitor memU32 0x20e05b0=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS2_P)
monitor memU32 0x20e0524=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS3_P)
monitor memU32 0x20e051c=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS4_P)
monitor memU32 0x20e0518=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS5_P)
monitor memU32 0x20e050c=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS6_P)
monitor memU32 0x20e05b8=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS7_P)
monitor memU32 0x20e05c0=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_GRP_DDRMODE)
monitor memU32 0x20e0774=0x00020000
# Pad Control Register (IOMUXC_SW_PAD_CTL_GRP_B0DS)
monitor memU32 0x20e0784=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_GRP_B1DS)
monitor memU32 0x20e0788=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_GRP_B2DS)
monitor memU32 0x20e0794=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_GRP_B3DS)
monitor memU32 0x20e079c=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_GRP_B4DS)
monitor memU32 0x20e07a0=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_GRP_B5DS)
monitor memU32 0x20e07a4=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_GRP_B6DS)
monitor memU32 0x20e07a8=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_GRP_B7DS)
monitor memU32 0x20e0748=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM0)
monitor memU32 0x20e05ac=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM1)
monitor memU32 0x20e05b4=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM2)
monitor memU32 0x20e0528=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM3)
monitor memU32 0x20e0520=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM4)
monitor memU32 0x20e0514=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM5)
monitor memU32 0x20e0510=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM6)
monitor memU32 0x20e05bc=0x00000030
# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM7)
monitor memU32 0x20e05c4=0x00000030


# MMDC PHY ZQ HW control register (MMDC1_MPZQHWCTRL)
monitor memU32 0x021b0800=0xA1390003
# MMDC PHY Write Leveling Delay Control Register 0 (MMDC1_MPWLDECTRL0)
monitor memU32 0x021b080c=0x001F001F
# MMDC PHY Write Leveling Delay Control Register 1 (MMDC1_MPWLDECTRL1)
monitor memU32 0x021b0810=0x001F001F
# MMDC PHY Write Leveling Delay Control Register 0 (MMDC2_MPWLDECTRL0)
monitor memU32 0x021b480c=0x001F001F
# MMDC PHY Write Leveling Delay Control Register 1 (MMDC2_MPWLDECTRL1)
monitor memU32 0x021b4810=0x001F001F
# MMDC PHY Read DQS Gating Control Register 0 (MMDC1_MPDGCTRL0)
monitor memU32 0x021b083c=0x4333033F
# MMDC PHY Read DQS Gating Control Register 1 (MMDC1_MPDGCTRL1)
monitor memU32 0x021b0840=0x032C031D
# MMDC PHY Read DQS Gating Control Register 0 (MMDC2_MPDGCTRL0)
monitor memU32 0x021b483c=0x43200332
# MMDC PHY Read DQS Gating Control Register 1 (MMDC2_MPDGCTRL1)
monitor memU32 0x021b4840=0x031A026A
# MMDC PHY Read delay-lines Configuration Register (MMDC1_MPRDDLCTL)
monitor memU32 0x021b0848=0x4D464746
# MMDC PHY Read delay-lines Configuration Register (MMDC2_MPRDDLCTL)
monitor memU32 0x021b4848=0x47453F4D
# MMDC PHY Write delay-lines Configuration Register (MMDC1_MPWRDLCTL)
monitor memU32 0x021b0850=0x3E434440
# MMDC PHY Write delay-lines Configuration Register (MMDC2_MPWRDLCTL)
monitor memU32 0x021b4850=0x47384839
# MMDC PHY Read DQ Byte0 Delay Register (MMDC1_MPRDDQBY0DL)
monitor memU32 0x021b081c=0x33333333
# MMDC PHY Read DQ Byte1 Delay Register (MMDC1_MPRDDQBY1DL)
monitor memU32 0x021b0820=0x33333333
# MMDC PHY Read DQ Byte2 Delay Register (MMDC1_MPRDDQBY2DL)
monitor memU32 0x021b0824=0x33333333
# MMDC PHY Read DQ Byte3 Delay Register (MMDC1_MPRDDQBY3DL)
monitor memU32 0x021b0828=0x33333333
# MMDC PHY Read DQ Byte0 Delay Register (MMDC2_MPRDDQBY0DL)
monitor memU32 0x021b481c=0x33333333
# MMDC PHY Read DQ Byte1 Delay Register (MMDC2_MPRDDQBY1DL)
monitor memU32 0x021b4820=0x33333333
# MMDC PHY Read DQ Byte2 Delay Register (MMDC2_MPRDDQBY2DL)
monitor memU32 0x021b4824=0x33333333
# MMDC PHY Read DQ Byte3 Delay Register (MMDC2_MPRDDQBY3DL)
monitor memU32 0x021b4828=0x33333333
# MMDC PHY Measure Unit Register (MMDC1_MPMUR0)
monitor memU32 0x021b08b8=0x00000800
# MMDC PHY Measure Unit Register (MMDC2_MPMUR0)
monitor memU32 0x021b48b8=0x00000800
# MMDC Core Power Down Control Register (MMDC1_MDPDC)
monitor memU32 0x021b0004=0x00020036
# MMDC Core ODT Timing Control Register (MMDC1_MDOTC)
monitor memU32 0x021b0008=0x09444040
# MMDC Core Timing Configuration Register 0 (MMDC1_MDCFG0)
monitor memU32 0x021b000c=0x555A7975
# MMDC Core Timing Configuration Register 1 (MMDC1_MDCFG1)
monitor memU32 0x021b0010=0xFF538F64
# MMDC Core Timing Configuration Register 2 (MMDC1_MDCFG2)
monitor memU32 0x021b0014=0x01FF00DB
# MMDC Core Miscellaneous Register (MMDC1_MDMISC)
monitor memU32 0x021b0018=0x00001740
# MMDC Core Special Command Register (MMDC1_MDSCR)
monitor memU32 0x021b001c=0x00008000
# MMDC Core Read/Write Command Delay Register (MMDC1_MDRWD)
monitor memU32 0x021b002c=0x000026D2
# MMDC Core Out of Reset Delays Register (MMDC1_MDOR)
monitor memU32 0x021b0030=0x005A1023
# MMDC Core Address Space Partition Register (MMDC1_MDASP)
monitor memU32 0x021b0040=0x00000027
# MMDC Core Control Register (MMDC1_MDCTL)
monitor memU32 0x021b0000=0x831A0000
# MMDC Core Special Command Register (MMDC1_MDSCR)
monitor memU32 0x021b001c=0x04088032
monitor memU32 0x021b001c=0x00008033
monitor memU32 0x021b001c=0x00048031
monitor memU32 0x021b001c=0x09408030
monitor memU32 0x021b001c=0x04008040
# MMDC Core Refresh Control Register (MMDC1_MDREF)
monitor memU32 0x021b0020=0x00005800
# MMDC PHY ODT control register (MMDC1_MPODTCTRL)
monitor memU32 0x021b0818=0x00011117
# MMDC PHY ODT control register (MMDC2_MPODTCTRL)
monitor memU32 0x021b4818=0x00011117
# MMDC Core Power Down Control Register (MMDC1_MDPDC)
monitor memU32 0x021b0004=0x00025576
# MMDC Core Power Saving Control and Status Register (MMDC1_MAPSR)
monitor memU32 0x021b0404=0x00011006
# MMDC Core Special Command Register (MMDC1_MDSCR)
monitor memU32 0x021b001c=0x00000000

# Pad Control Register (IOMUXC_SW_PAD_CTL_PAD_SD1_DATA3)
monitor memU32 0x20e072c=0x000130B0
# Pad Mux Register (IOMUXC_SW_MUX_CTL_PAD_SD1_DATA3)
monitor memU32 0x20e0344=0x00000005

#monitor reg cpsr = 0xD3
#monitor reg sp = 0x27800000
#monitor reg pc = 0x27800000
