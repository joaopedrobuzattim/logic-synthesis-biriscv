
quicksort.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <partition>:
80000000:	00261893          	slli	a7,a2,0x2
80000004:	011508b3          	add	a7,a0,a7
80000008:	0008ae03          	lw	t3,0(a7)
8000000c:	00050313          	mv	t1,a0
80000010:	fff58813          	addi	a6,a1,-1
80000014:	04c5dc63          	bge	a1,a2,8000006c <partition+0x6c>
80000018:	00259593          	slli	a1,a1,0x2
8000001c:	00b507b3          	add	a5,a0,a1
80000020:	0007a683          	lw	a3,0(a5)
80000024:	01c6de63          	bge	a3,t3,80000040 <partition+0x40>
80000028:	00180813          	addi	a6,a6,1
8000002c:	00281713          	slli	a4,a6,0x2
80000030:	00e30733          	add	a4,t1,a4
80000034:	00072603          	lw	a2,0(a4)
80000038:	00d72023          	sw	a3,0(a4)
8000003c:	00c7a023          	sw	a2,0(a5)
80000040:	00478793          	addi	a5,a5,4
80000044:	fcf89ee3          	bne	a7,a5,80000020 <partition+0x20>
80000048:	00180813          	addi	a6,a6,1
8000004c:	00080513          	mv	a0,a6
80000050:	00281813          	slli	a6,a6,0x2
80000054:	0008ae03          	lw	t3,0(a7)
80000058:	01030333          	add	t1,t1,a6
8000005c:	00032783          	lw	a5,0(t1)
80000060:	01c32023          	sw	t3,0(t1)
80000064:	00f8a023          	sw	a5,0(a7)
80000068:	00008067          	ret
8000006c:	00058813          	mv	a6,a1
80000070:	00281813          	slli	a6,a6,0x2
80000074:	01030333          	add	t1,t1,a6
80000078:	00032783          	lw	a5,0(t1)
8000007c:	01c32023          	sw	t3,0(t1)
80000080:	00058513          	mv	a0,a1
80000084:	00f8a023          	sw	a5,0(a7)
80000088:	00008067          	ret

8000008c <quickSort>:
8000008c:	1ec5dc63          	bge	a1,a2,80000284 <quickSort+0x1f8>
80000090:	fa010113          	addi	sp,sp,-96
80000094:	04912a23          	sw	s1,84(sp)
80000098:	05612023          	sw	s6,64(sp)
8000009c:	03812c23          	sw	s8,56(sp)
800000a0:	04112e23          	sw	ra,92(sp)
800000a4:	03912a23          	sw	s9,52(sp)
800000a8:	00058c13          	mv	s8,a1
800000ac:	00060b13          	mv	s6,a2
800000b0:	00050493          	mv	s1,a0
800000b4:	000b0613          	mv	a2,s6
800000b8:	000c0593          	mv	a1,s8
800000bc:	00048513          	mv	a0,s1
800000c0:	f41ff0ef          	jal	80000000 <partition>
800000c4:	00a12023          	sw	a0,0(sp)
800000c8:	fff50c93          	addi	s9,a0,-1
800000cc:	199c5863          	bge	s8,s9,8000025c <quickSort+0x1d0>
800000d0:	04812c23          	sw	s0,88(sp)
800000d4:	05212823          	sw	s2,80(sp)
800000d8:	05312623          	sw	s3,76(sp)
800000dc:	03a12823          	sw	s10,48(sp)
800000e0:	03b12623          	sw	s11,44(sp)
800000e4:	000c8613          	mv	a2,s9
800000e8:	000c0593          	mv	a1,s8
800000ec:	00048513          	mv	a0,s1
800000f0:	f11ff0ef          	jal	80000000 <partition>
800000f4:	00a12223          	sw	a0,4(sp)
800000f8:	fff50d13          	addi	s10,a0,-1
800000fc:	15ac5063          	bge	s8,s10,8000023c <quickSort+0x1b0>
80000100:	000d0613          	mv	a2,s10
80000104:	000c0593          	mv	a1,s8
80000108:	00048513          	mv	a0,s1
8000010c:	ef5ff0ef          	jal	80000000 <partition>
80000110:	00a12423          	sw	a0,8(sp)
80000114:	fff50d93          	addi	s11,a0,-1
80000118:	11bc5c63          	bge	s8,s11,80000230 <quickSort+0x1a4>
8000011c:	000d8613          	mv	a2,s11
80000120:	000c0593          	mv	a1,s8
80000124:	00048513          	mv	a0,s1
80000128:	ed9ff0ef          	jal	80000000 <partition>
8000012c:	00a12623          	sw	a0,12(sp)
80000130:	fff50993          	addi	s3,a0,-1
80000134:	0f3c5863          	bge	s8,s3,80000224 <quickSort+0x198>
80000138:	00098613          	mv	a2,s3
8000013c:	000c0593          	mv	a1,s8
80000140:	00048513          	mv	a0,s1
80000144:	ebdff0ef          	jal	80000000 <partition>
80000148:	fff50913          	addi	s2,a0,-1
8000014c:	00050413          	mv	s0,a0
80000150:	0d2c5663          	bge	s8,s2,8000021c <quickSort+0x190>
80000154:	05512223          	sw	s5,68(sp)
80000158:	03712e23          	sw	s7,60(sp)
8000015c:	00090613          	mv	a2,s2
80000160:	000c0593          	mv	a1,s8
80000164:	00048513          	mv	a0,s1
80000168:	e99ff0ef          	jal	80000000 <partition>
8000016c:	fff50b93          	addi	s7,a0,-1
80000170:	00050a93          	mv	s5,a0
80000174:	097c5c63          	bge	s8,s7,8000020c <quickSort+0x180>
80000178:	05412423          	sw	s4,72(sp)
8000017c:	000b8613          	mv	a2,s7
80000180:	000c0593          	mv	a1,s8
80000184:	00048513          	mv	a0,s1
80000188:	e79ff0ef          	jal	80000000 <partition>
8000018c:	00a12823          	sw	a0,16(sp)
80000190:	fff50a13          	addi	s4,a0,-1
80000194:	074c5463          	bge	s8,s4,800001fc <quickSort+0x170>
80000198:	000a0613          	mv	a2,s4
8000019c:	000c0593          	mv	a1,s8
800001a0:	00048513          	mv	a0,s1
800001a4:	e5dff0ef          	jal	80000000 <partition>
800001a8:	fff50713          	addi	a4,a0,-1
800001ac:	00050793          	mv	a5,a0
800001b0:	04ec5263          	bge	s8,a4,800001f4 <quickSort+0x168>
800001b4:	00070613          	mv	a2,a4
800001b8:	000c0593          	mv	a1,s8
800001bc:	00048513          	mv	a0,s1
800001c0:	00f12e23          	sw	a5,28(sp)
800001c4:	00e12c23          	sw	a4,24(sp)
800001c8:	e39ff0ef          	jal	80000000 <partition>
800001cc:	000c0593          	mv	a1,s8
800001d0:	fff50613          	addi	a2,a0,-1
800001d4:	00a12a23          	sw	a0,20(sp)
800001d8:	00048513          	mv	a0,s1
800001dc:	eb1ff0ef          	jal	8000008c <quickSort>
800001e0:	01412683          	lw	a3,20(sp)
800001e4:	01812703          	lw	a4,24(sp)
800001e8:	01c12783          	lw	a5,28(sp)
800001ec:	00168c13          	addi	s8,a3,1
800001f0:	fcec42e3          	blt	s8,a4,800001b4 <quickSort+0x128>
800001f4:	00178c13          	addi	s8,a5,1
800001f8:	fb4c40e3          	blt	s8,s4,80000198 <quickSort+0x10c>
800001fc:	01012783          	lw	a5,16(sp)
80000200:	00178c13          	addi	s8,a5,1
80000204:	f77c4ce3          	blt	s8,s7,8000017c <quickSort+0xf0>
80000208:	04812a03          	lw	s4,72(sp)
8000020c:	001a8c13          	addi	s8,s5,1
80000210:	f52c46e3          	blt	s8,s2,8000015c <quickSort+0xd0>
80000214:	04412a83          	lw	s5,68(sp)
80000218:	03c12b83          	lw	s7,60(sp)
8000021c:	00140c13          	addi	s8,s0,1
80000220:	f13c4ce3          	blt	s8,s3,80000138 <quickSort+0xac>
80000224:	00c12783          	lw	a5,12(sp)
80000228:	00178c13          	addi	s8,a5,1
8000022c:	efbc48e3          	blt	s8,s11,8000011c <quickSort+0x90>
80000230:	00812783          	lw	a5,8(sp)
80000234:	00178c13          	addi	s8,a5,1
80000238:	edac44e3          	blt	s8,s10,80000100 <quickSort+0x74>
8000023c:	00412783          	lw	a5,4(sp)
80000240:	00178c13          	addi	s8,a5,1
80000244:	eb9c40e3          	blt	s8,s9,800000e4 <quickSort+0x58>
80000248:	05812403          	lw	s0,88(sp)
8000024c:	05012903          	lw	s2,80(sp)
80000250:	04c12983          	lw	s3,76(sp)
80000254:	03012d03          	lw	s10,48(sp)
80000258:	02c12d83          	lw	s11,44(sp)
8000025c:	00012783          	lw	a5,0(sp)
80000260:	00178c13          	addi	s8,a5,1
80000264:	e56c48e3          	blt	s8,s6,800000b4 <quickSort+0x28>
80000268:	05c12083          	lw	ra,92(sp)
8000026c:	05412483          	lw	s1,84(sp)
80000270:	04012b03          	lw	s6,64(sp)
80000274:	03812c03          	lw	s8,56(sp)
80000278:	03412c83          	lw	s9,52(sp)
8000027c:	06010113          	addi	sp,sp,96
80000280:	00008067          	ret
80000284:	00008067          	ret

80000288 <swap>:
80000288:	0005a703          	lw	a4,0(a1)
8000028c:	00052783          	lw	a5,0(a0)
80000290:	00e52023          	sw	a4,0(a0)
80000294:	00f5a023          	sw	a5,0(a1)
80000298:	00008067          	ret

Disassembly of section .text.startup:

8000029c <main>:
8000029c:	800007b7          	lui	a5,0x80000
800002a0:	2fc78793          	addi	a5,a5,764 # 800002fc <main+0x60>
800002a4:	0007a303          	lw	t1,0(a5)
800002a8:	0047a883          	lw	a7,4(a5)
800002ac:	0087a803          	lw	a6,8(a5)
800002b0:	00c7a683          	lw	a3,12(a5)
800002b4:	0107a703          	lw	a4,16(a5)
800002b8:	0147a783          	lw	a5,20(a5)
800002bc:	fd010113          	addi	sp,sp,-48
800002c0:	00810513          	addi	a0,sp,8
800002c4:	00500613          	li	a2,5
800002c8:	00000593          	li	a1,0
800002cc:	02112623          	sw	ra,44(sp)
800002d0:	00612423          	sw	t1,8(sp)
800002d4:	01112623          	sw	a7,12(sp)
800002d8:	01012823          	sw	a6,16(sp)
800002dc:	00d12a23          	sw	a3,20(sp)
800002e0:	00e12c23          	sw	a4,24(sp)
800002e4:	00f12e23          	sw	a5,28(sp)
800002e8:	da5ff0ef          	jal	8000008c <quickSort>
800002ec:	02c12083          	lw	ra,44(sp)
800002f0:	00000513          	li	a0,0
800002f4:	03010113          	addi	sp,sp,48
800002f8:	00008067          	ret
