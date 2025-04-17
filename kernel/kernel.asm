
kernel/kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	ae010113          	addi	sp,sp,-1312 # 8000cae0 <stack0>
    80000008:	6505                	lui	a0,0x1
    8000000a:	f14025f3          	csrr	a1,mhartid
    8000000e:	0585                	addi	a1,a1,1
    80000010:	02b50533          	mul	a0,a0,a1
    80000014:	912a                	add	sp,sp,a0
    80000016:	1a4000ef          	jal	800001ba <start>

000000008000001a <spin>:
    8000001a:	a001                	j	8000001a <spin>

000000008000001c <r_mhartid>:
    8000001c:	1101                	addi	sp,sp,-32
    8000001e:	ec22                	sd	s0,24(sp)
    80000020:	1000                	addi	s0,sp,32
    80000022:	f14027f3          	csrr	a5,mhartid
    80000026:	fef43423          	sd	a5,-24(s0)
    8000002a:	fe843783          	ld	a5,-24(s0)
    8000002e:	853e                	mv	a0,a5
    80000030:	6462                	ld	s0,24(sp)
    80000032:	6105                	addi	sp,sp,32
    80000034:	8082                	ret

0000000080000036 <r_mstatus>:
    80000036:	1101                	addi	sp,sp,-32
    80000038:	ec22                	sd	s0,24(sp)
    8000003a:	1000                	addi	s0,sp,32
    8000003c:	300027f3          	csrr	a5,mstatus
    80000040:	fef43423          	sd	a5,-24(s0)
    80000044:	fe843783          	ld	a5,-24(s0)
    80000048:	853e                	mv	a0,a5
    8000004a:	6462                	ld	s0,24(sp)
    8000004c:	6105                	addi	sp,sp,32
    8000004e:	8082                	ret

0000000080000050 <w_mstatus>:
    80000050:	1101                	addi	sp,sp,-32
    80000052:	ec22                	sd	s0,24(sp)
    80000054:	1000                	addi	s0,sp,32
    80000056:	fea43423          	sd	a0,-24(s0)
    8000005a:	fe843783          	ld	a5,-24(s0)
    8000005e:	30079073          	csrw	mstatus,a5
    80000062:	0001                	nop
    80000064:	6462                	ld	s0,24(sp)
    80000066:	6105                	addi	sp,sp,32
    80000068:	8082                	ret

000000008000006a <w_mepc>:
    8000006a:	1101                	addi	sp,sp,-32
    8000006c:	ec22                	sd	s0,24(sp)
    8000006e:	1000                	addi	s0,sp,32
    80000070:	fea43423          	sd	a0,-24(s0)
    80000074:	fe843783          	ld	a5,-24(s0)
    80000078:	34179073          	csrw	mepc,a5
    8000007c:	0001                	nop
    8000007e:	6462                	ld	s0,24(sp)
    80000080:	6105                	addi	sp,sp,32
    80000082:	8082                	ret

0000000080000084 <r_sie>:
    80000084:	1101                	addi	sp,sp,-32
    80000086:	ec22                	sd	s0,24(sp)
    80000088:	1000                	addi	s0,sp,32
    8000008a:	104027f3          	csrr	a5,sie
    8000008e:	fef43423          	sd	a5,-24(s0)
    80000092:	fe843783          	ld	a5,-24(s0)
    80000096:	853e                	mv	a0,a5
    80000098:	6462                	ld	s0,24(sp)
    8000009a:	6105                	addi	sp,sp,32
    8000009c:	8082                	ret

000000008000009e <w_sie>:
    8000009e:	1101                	addi	sp,sp,-32
    800000a0:	ec22                	sd	s0,24(sp)
    800000a2:	1000                	addi	s0,sp,32
    800000a4:	fea43423          	sd	a0,-24(s0)
    800000a8:	fe843783          	ld	a5,-24(s0)
    800000ac:	10479073          	csrw	sie,a5
    800000b0:	0001                	nop
    800000b2:	6462                	ld	s0,24(sp)
    800000b4:	6105                	addi	sp,sp,32
    800000b6:	8082                	ret

00000000800000b8 <r_mie>:
    800000b8:	1101                	addi	sp,sp,-32
    800000ba:	ec22                	sd	s0,24(sp)
    800000bc:	1000                	addi	s0,sp,32
    800000be:	304027f3          	csrr	a5,mie
    800000c2:	fef43423          	sd	a5,-24(s0)
    800000c6:	fe843783          	ld	a5,-24(s0)
    800000ca:	853e                	mv	a0,a5
    800000cc:	6462                	ld	s0,24(sp)
    800000ce:	6105                	addi	sp,sp,32
    800000d0:	8082                	ret

00000000800000d2 <w_mie>:
    800000d2:	1101                	addi	sp,sp,-32
    800000d4:	ec22                	sd	s0,24(sp)
    800000d6:	1000                	addi	s0,sp,32
    800000d8:	fea43423          	sd	a0,-24(s0)
    800000dc:	fe843783          	ld	a5,-24(s0)
    800000e0:	30479073          	csrw	mie,a5
    800000e4:	0001                	nop
    800000e6:	6462                	ld	s0,24(sp)
    800000e8:	6105                	addi	sp,sp,32
    800000ea:	8082                	ret

00000000800000ec <w_medeleg>:
    800000ec:	1101                	addi	sp,sp,-32
    800000ee:	ec22                	sd	s0,24(sp)
    800000f0:	1000                	addi	s0,sp,32
    800000f2:	fea43423          	sd	a0,-24(s0)
    800000f6:	fe843783          	ld	a5,-24(s0)
    800000fa:	30279073          	csrw	medeleg,a5
    800000fe:	0001                	nop
    80000100:	6462                	ld	s0,24(sp)
    80000102:	6105                	addi	sp,sp,32
    80000104:	8082                	ret

0000000080000106 <w_mideleg>:
    80000106:	1101                	addi	sp,sp,-32
    80000108:	ec22                	sd	s0,24(sp)
    8000010a:	1000                	addi	s0,sp,32
    8000010c:	fea43423          	sd	a0,-24(s0)
    80000110:	fe843783          	ld	a5,-24(s0)
    80000114:	30379073          	csrw	mideleg,a5
    80000118:	0001                	nop
    8000011a:	6462                	ld	s0,24(sp)
    8000011c:	6105                	addi	sp,sp,32
    8000011e:	8082                	ret

0000000080000120 <w_mtvec>:
    80000120:	1101                	addi	sp,sp,-32
    80000122:	ec22                	sd	s0,24(sp)
    80000124:	1000                	addi	s0,sp,32
    80000126:	fea43423          	sd	a0,-24(s0)
    8000012a:	fe843783          	ld	a5,-24(s0)
    8000012e:	30579073          	csrw	mtvec,a5
    80000132:	0001                	nop
    80000134:	6462                	ld	s0,24(sp)
    80000136:	6105                	addi	sp,sp,32
    80000138:	8082                	ret

000000008000013a <w_pmpcfg0>:
    8000013a:	1101                	addi	sp,sp,-32
    8000013c:	ec22                	sd	s0,24(sp)
    8000013e:	1000                	addi	s0,sp,32
    80000140:	fea43423          	sd	a0,-24(s0)
    80000144:	fe843783          	ld	a5,-24(s0)
    80000148:	3a079073          	csrw	pmpcfg0,a5
    8000014c:	0001                	nop
    8000014e:	6462                	ld	s0,24(sp)
    80000150:	6105                	addi	sp,sp,32
    80000152:	8082                	ret

0000000080000154 <w_pmpaddr0>:
    80000154:	1101                	addi	sp,sp,-32
    80000156:	ec22                	sd	s0,24(sp)
    80000158:	1000                	addi	s0,sp,32
    8000015a:	fea43423          	sd	a0,-24(s0)
    8000015e:	fe843783          	ld	a5,-24(s0)
    80000162:	3b079073          	csrw	pmpaddr0,a5
    80000166:	0001                	nop
    80000168:	6462                	ld	s0,24(sp)
    8000016a:	6105                	addi	sp,sp,32
    8000016c:	8082                	ret

000000008000016e <w_satp>:
    8000016e:	1101                	addi	sp,sp,-32
    80000170:	ec22                	sd	s0,24(sp)
    80000172:	1000                	addi	s0,sp,32
    80000174:	fea43423          	sd	a0,-24(s0)
    80000178:	fe843783          	ld	a5,-24(s0)
    8000017c:	18079073          	csrw	satp,a5
    80000180:	0001                	nop
    80000182:	6462                	ld	s0,24(sp)
    80000184:	6105                	addi	sp,sp,32
    80000186:	8082                	ret

0000000080000188 <w_mscratch>:
    80000188:	1101                	addi	sp,sp,-32
    8000018a:	ec22                	sd	s0,24(sp)
    8000018c:	1000                	addi	s0,sp,32
    8000018e:	fea43423          	sd	a0,-24(s0)
    80000192:	fe843783          	ld	a5,-24(s0)
    80000196:	34079073          	csrw	mscratch,a5
    8000019a:	0001                	nop
    8000019c:	6462                	ld	s0,24(sp)
    8000019e:	6105                	addi	sp,sp,32
    800001a0:	8082                	ret

00000000800001a2 <w_tp>:
    800001a2:	1101                	addi	sp,sp,-32
    800001a4:	ec22                	sd	s0,24(sp)
    800001a6:	1000                	addi	s0,sp,32
    800001a8:	fea43423          	sd	a0,-24(s0)
    800001ac:	fe843783          	ld	a5,-24(s0)
    800001b0:	823e                	mv	tp,a5
    800001b2:	0001                	nop
    800001b4:	6462                	ld	s0,24(sp)
    800001b6:	6105                	addi	sp,sp,32
    800001b8:	8082                	ret

00000000800001ba <start>:
    800001ba:	1101                	addi	sp,sp,-32
    800001bc:	ec06                	sd	ra,24(sp)
    800001be:	e822                	sd	s0,16(sp)
    800001c0:	1000                	addi	s0,sp,32
    800001c2:	00000097          	auipc	ra,0x0
    800001c6:	e74080e7          	jalr	-396(ra) # 80000036 <r_mstatus>
    800001ca:	fea43423          	sd	a0,-24(s0)
    800001ce:	fe843703          	ld	a4,-24(s0)
    800001d2:	77f9                	lui	a5,0xffffe
    800001d4:	7ff78793          	addi	a5,a5,2047 # ffffffffffffe7ff <end+0xffffffff7ffd708f>
    800001d8:	8ff9                	and	a5,a5,a4
    800001da:	fef43423          	sd	a5,-24(s0)
    800001de:	fe843703          	ld	a4,-24(s0)
    800001e2:	6785                	lui	a5,0x1
    800001e4:	80078793          	addi	a5,a5,-2048 # 800 <_entry-0x7ffff800>
    800001e8:	8fd9                	or	a5,a5,a4
    800001ea:	fef43423          	sd	a5,-24(s0)
    800001ee:	fe843503          	ld	a0,-24(s0)
    800001f2:	00000097          	auipc	ra,0x0
    800001f6:	e5e080e7          	jalr	-418(ra) # 80000050 <w_mstatus>
    800001fa:	00001797          	auipc	a5,0x1
    800001fe:	60878793          	addi	a5,a5,1544 # 80001802 <main>
    80000202:	853e                	mv	a0,a5
    80000204:	00000097          	auipc	ra,0x0
    80000208:	e66080e7          	jalr	-410(ra) # 8000006a <w_mepc>
    8000020c:	4501                	li	a0,0
    8000020e:	00000097          	auipc	ra,0x0
    80000212:	f60080e7          	jalr	-160(ra) # 8000016e <w_satp>
    80000216:	67c1                	lui	a5,0x10
    80000218:	fff78513          	addi	a0,a5,-1 # ffff <_entry-0x7fff0001>
    8000021c:	00000097          	auipc	ra,0x0
    80000220:	ed0080e7          	jalr	-304(ra) # 800000ec <w_medeleg>
    80000224:	67c1                	lui	a5,0x10
    80000226:	fff78513          	addi	a0,a5,-1 # ffff <_entry-0x7fff0001>
    8000022a:	00000097          	auipc	ra,0x0
    8000022e:	edc080e7          	jalr	-292(ra) # 80000106 <w_mideleg>
    80000232:	00000097          	auipc	ra,0x0
    80000236:	e52080e7          	jalr	-430(ra) # 80000084 <r_sie>
    8000023a:	87aa                	mv	a5,a0
    8000023c:	2227e793          	ori	a5,a5,546
    80000240:	853e                	mv	a0,a5
    80000242:	00000097          	auipc	ra,0x0
    80000246:	e5c080e7          	jalr	-420(ra) # 8000009e <w_sie>
    8000024a:	57fd                	li	a5,-1
    8000024c:	00a7d513          	srli	a0,a5,0xa
    80000250:	00000097          	auipc	ra,0x0
    80000254:	f04080e7          	jalr	-252(ra) # 80000154 <w_pmpaddr0>
    80000258:	453d                	li	a0,15
    8000025a:	00000097          	auipc	ra,0x0
    8000025e:	ee0080e7          	jalr	-288(ra) # 8000013a <w_pmpcfg0>
    80000262:	00000097          	auipc	ra,0x0
    80000266:	032080e7          	jalr	50(ra) # 80000294 <timerinit>
    8000026a:	00000097          	auipc	ra,0x0
    8000026e:	db2080e7          	jalr	-590(ra) # 8000001c <r_mhartid>
    80000272:	87aa                	mv	a5,a0
    80000274:	fef42223          	sw	a5,-28(s0)
    80000278:	fe442783          	lw	a5,-28(s0)
    8000027c:	853e                	mv	a0,a5
    8000027e:	00000097          	auipc	ra,0x0
    80000282:	f24080e7          	jalr	-220(ra) # 800001a2 <w_tp>
    80000286:	30200073          	mret
    8000028a:	0001                	nop
    8000028c:	60e2                	ld	ra,24(sp)
    8000028e:	6442                	ld	s0,16(sp)
    80000290:	6105                	addi	sp,sp,32
    80000292:	8082                	ret

0000000080000294 <timerinit>:
    80000294:	1101                	addi	sp,sp,-32
    80000296:	ec06                	sd	ra,24(sp)
    80000298:	e822                	sd	s0,16(sp)
    8000029a:	1000                	addi	s0,sp,32
    8000029c:	00000097          	auipc	ra,0x0
    800002a0:	d80080e7          	jalr	-640(ra) # 8000001c <r_mhartid>
    800002a4:	87aa                	mv	a5,a0
    800002a6:	fef42623          	sw	a5,-20(s0)
    800002aa:	000f47b7          	lui	a5,0xf4
    800002ae:	24078793          	addi	a5,a5,576 # f4240 <_entry-0x7ff0bdc0>
    800002b2:	fef42423          	sw	a5,-24(s0)
    800002b6:	0200c7b7          	lui	a5,0x200c
    800002ba:	17e1                	addi	a5,a5,-8 # 200bff8 <_entry-0x7dff4008>
    800002bc:	6398                	ld	a4,0(a5)
    800002be:	fe842783          	lw	a5,-24(s0)
    800002c2:	fec42683          	lw	a3,-20(s0)
    800002c6:	0036969b          	slliw	a3,a3,0x3
    800002ca:	2681                	sext.w	a3,a3
    800002cc:	8636                	mv	a2,a3
    800002ce:	020046b7          	lui	a3,0x2004
    800002d2:	96b2                	add	a3,a3,a2
    800002d4:	97ba                	add	a5,a5,a4
    800002d6:	e29c                	sd	a5,0(a3)
    800002d8:	fec42703          	lw	a4,-20(s0)
    800002dc:	87ba                	mv	a5,a4
    800002de:	078a                	slli	a5,a5,0x2
    800002e0:	97ba                	add	a5,a5,a4
    800002e2:	078e                	slli	a5,a5,0x3
    800002e4:	00014717          	auipc	a4,0x14
    800002e8:	7fc70713          	addi	a4,a4,2044 # 80014ae0 <timer_scratch>
    800002ec:	97ba                	add	a5,a5,a4
    800002ee:	fef43023          	sd	a5,-32(s0)
    800002f2:	fec42783          	lw	a5,-20(s0)
    800002f6:	0037979b          	slliw	a5,a5,0x3
    800002fa:	2781                	sext.w	a5,a5
    800002fc:	873e                	mv	a4,a5
    800002fe:	020047b7          	lui	a5,0x2004
    80000302:	973e                	add	a4,a4,a5
    80000304:	fe043783          	ld	a5,-32(s0)
    80000308:	07e1                	addi	a5,a5,24 # 2004018 <_entry-0x7dffbfe8>
    8000030a:	e398                	sd	a4,0(a5)
    8000030c:	fe043783          	ld	a5,-32(s0)
    80000310:	02078793          	addi	a5,a5,32
    80000314:	fe842703          	lw	a4,-24(s0)
    80000318:	e398                	sd	a4,0(a5)
    8000031a:	fe043783          	ld	a5,-32(s0)
    8000031e:	853e                	mv	a0,a5
    80000320:	00000097          	auipc	ra,0x0
    80000324:	e68080e7          	jalr	-408(ra) # 80000188 <w_mscratch>
    80000328:	00009797          	auipc	a5,0x9
    8000032c:	16878793          	addi	a5,a5,360 # 80009490 <timervec>
    80000330:	853e                	mv	a0,a5
    80000332:	00000097          	auipc	ra,0x0
    80000336:	dee080e7          	jalr	-530(ra) # 80000120 <w_mtvec>
    8000033a:	00000097          	auipc	ra,0x0
    8000033e:	cfc080e7          	jalr	-772(ra) # 80000036 <r_mstatus>
    80000342:	87aa                	mv	a5,a0
    80000344:	0087e793          	ori	a5,a5,8
    80000348:	853e                	mv	a0,a5
    8000034a:	00000097          	auipc	ra,0x0
    8000034e:	d06080e7          	jalr	-762(ra) # 80000050 <w_mstatus>
    80000352:	00000097          	auipc	ra,0x0
    80000356:	d66080e7          	jalr	-666(ra) # 800000b8 <r_mie>
    8000035a:	87aa                	mv	a5,a0
    8000035c:	0807e793          	ori	a5,a5,128
    80000360:	853e                	mv	a0,a5
    80000362:	00000097          	auipc	ra,0x0
    80000366:	d70080e7          	jalr	-656(ra) # 800000d2 <w_mie>
    8000036a:	0001                	nop
    8000036c:	60e2                	ld	ra,24(sp)
    8000036e:	6442                	ld	s0,16(sp)
    80000370:	6105                	addi	sp,sp,32
    80000372:	8082                	ret

0000000080000374 <consputc>:
    80000374:	1101                	addi	sp,sp,-32
    80000376:	ec06                	sd	ra,24(sp)
    80000378:	e822                	sd	s0,16(sp)
    8000037a:	1000                	addi	s0,sp,32
    8000037c:	87aa                	mv	a5,a0
    8000037e:	fef42623          	sw	a5,-20(s0)
    80000382:	fec42783          	lw	a5,-20(s0)
    80000386:	0007871b          	sext.w	a4,a5
    8000038a:	10000793          	li	a5,256
    8000038e:	02f71363          	bne	a4,a5,800003b4 <consputc+0x40>
    80000392:	4521                	li	a0,8
    80000394:	00001097          	auipc	ra,0x1
    80000398:	ab6080e7          	jalr	-1354(ra) # 80000e4a <uartputc_sync>
    8000039c:	02000513          	li	a0,32
    800003a0:	00001097          	auipc	ra,0x1
    800003a4:	aaa080e7          	jalr	-1366(ra) # 80000e4a <uartputc_sync>
    800003a8:	4521                	li	a0,8
    800003aa:	00001097          	auipc	ra,0x1
    800003ae:	aa0080e7          	jalr	-1376(ra) # 80000e4a <uartputc_sync>
    800003b2:	a801                	j	800003c2 <consputc+0x4e>
    800003b4:	fec42783          	lw	a5,-20(s0)
    800003b8:	853e                	mv	a0,a5
    800003ba:	00001097          	auipc	ra,0x1
    800003be:	a90080e7          	jalr	-1392(ra) # 80000e4a <uartputc_sync>
    800003c2:	0001                	nop
    800003c4:	60e2                	ld	ra,24(sp)
    800003c6:	6442                	ld	s0,16(sp)
    800003c8:	6105                	addi	sp,sp,32
    800003ca:	8082                	ret

00000000800003cc <consolewrite>:
    800003cc:	7179                	addi	sp,sp,-48
    800003ce:	f406                	sd	ra,40(sp)
    800003d0:	f022                	sd	s0,32(sp)
    800003d2:	1800                	addi	s0,sp,48
    800003d4:	87aa                	mv	a5,a0
    800003d6:	fcb43823          	sd	a1,-48(s0)
    800003da:	8732                	mv	a4,a2
    800003dc:	fcf42e23          	sw	a5,-36(s0)
    800003e0:	87ba                	mv	a5,a4
    800003e2:	fcf42c23          	sw	a5,-40(s0)
    800003e6:	fe042623          	sw	zero,-20(s0)
    800003ea:	a0a1                	j	80000432 <consolewrite+0x66>
    800003ec:	fec42703          	lw	a4,-20(s0)
    800003f0:	fd043783          	ld	a5,-48(s0)
    800003f4:	00f70633          	add	a2,a4,a5
    800003f8:	fdc42703          	lw	a4,-36(s0)
    800003fc:	feb40793          	addi	a5,s0,-21
    80000400:	4685                	li	a3,1
    80000402:	85ba                	mv	a1,a4
    80000404:	853e                	mv	a0,a5
    80000406:	00004097          	auipc	ra,0x4
    8000040a:	96c080e7          	jalr	-1684(ra) # 80003d72 <either_copyin>
    8000040e:	87aa                	mv	a5,a0
    80000410:	873e                	mv	a4,a5
    80000412:	57fd                	li	a5,-1
    80000414:	02f70963          	beq	a4,a5,80000446 <consolewrite+0x7a>
    80000418:	feb44783          	lbu	a5,-21(s0)
    8000041c:	2781                	sext.w	a5,a5
    8000041e:	853e                	mv	a0,a5
    80000420:	00001097          	auipc	ra,0x1
    80000424:	96c080e7          	jalr	-1684(ra) # 80000d8c <uartputc>
    80000428:	fec42783          	lw	a5,-20(s0)
    8000042c:	2785                	addiw	a5,a5,1
    8000042e:	fef42623          	sw	a5,-20(s0)
    80000432:	fec42783          	lw	a5,-20(s0)
    80000436:	873e                	mv	a4,a5
    80000438:	fd842783          	lw	a5,-40(s0)
    8000043c:	2701                	sext.w	a4,a4
    8000043e:	2781                	sext.w	a5,a5
    80000440:	faf746e3          	blt	a4,a5,800003ec <consolewrite+0x20>
    80000444:	a011                	j	80000448 <consolewrite+0x7c>
    80000446:	0001                	nop
    80000448:	fec42783          	lw	a5,-20(s0)
    8000044c:	853e                	mv	a0,a5
    8000044e:	70a2                	ld	ra,40(sp)
    80000450:	7402                	ld	s0,32(sp)
    80000452:	6145                	addi	sp,sp,48
    80000454:	8082                	ret

0000000080000456 <consoleread>:
    80000456:	7179                	addi	sp,sp,-48
    80000458:	f406                	sd	ra,40(sp)
    8000045a:	f022                	sd	s0,32(sp)
    8000045c:	1800                	addi	s0,sp,48
    8000045e:	87aa                	mv	a5,a0
    80000460:	fcb43823          	sd	a1,-48(s0)
    80000464:	8732                	mv	a4,a2
    80000466:	fcf42e23          	sw	a5,-36(s0)
    8000046a:	87ba                	mv	a5,a4
    8000046c:	fcf42c23          	sw	a5,-40(s0)
    80000470:	fd842783          	lw	a5,-40(s0)
    80000474:	fef42623          	sw	a5,-20(s0)
    80000478:	00014517          	auipc	a0,0x14
    8000047c:	7a850513          	addi	a0,a0,1960 # 80014c20 <cons>
    80000480:	00001097          	auipc	ra,0x1
    80000484:	df8080e7          	jalr	-520(ra) # 80001278 <acquire>
    80000488:	a23d                	j	800005b6 <consoleread+0x160>
    8000048a:	00002097          	auipc	ra,0x2
    8000048e:	450080e7          	jalr	1104(ra) # 800028da <myproc>
    80000492:	87aa                	mv	a5,a0
    80000494:	853e                	mv	a0,a5
    80000496:	00004097          	auipc	ra,0x4
    8000049a:	828080e7          	jalr	-2008(ra) # 80003cbe <killed>
    8000049e:	87aa                	mv	a5,a0
    800004a0:	cb99                	beqz	a5,800004b6 <consoleread+0x60>
    800004a2:	00014517          	auipc	a0,0x14
    800004a6:	77e50513          	addi	a0,a0,1918 # 80014c20 <cons>
    800004aa:	00001097          	auipc	ra,0x1
    800004ae:	e32080e7          	jalr	-462(ra) # 800012dc <release>
    800004b2:	57fd                	li	a5,-1
    800004b4:	aa25                	j	800005ec <consoleread+0x196>
    800004b6:	00014597          	auipc	a1,0x14
    800004ba:	76a58593          	addi	a1,a1,1898 # 80014c20 <cons>
    800004be:	00014517          	auipc	a0,0x14
    800004c2:	7fa50513          	addi	a0,a0,2042 # 80014cb8 <cons+0x98>
    800004c6:	00003097          	auipc	ra,0x3
    800004ca:	60e080e7          	jalr	1550(ra) # 80003ad4 <sleep>
    800004ce:	00014797          	auipc	a5,0x14
    800004d2:	75278793          	addi	a5,a5,1874 # 80014c20 <cons>
    800004d6:	0987a703          	lw	a4,152(a5)
    800004da:	00014797          	auipc	a5,0x14
    800004de:	74678793          	addi	a5,a5,1862 # 80014c20 <cons>
    800004e2:	09c7a783          	lw	a5,156(a5)
    800004e6:	faf702e3          	beq	a4,a5,8000048a <consoleread+0x34>
    800004ea:	00014797          	auipc	a5,0x14
    800004ee:	73678793          	addi	a5,a5,1846 # 80014c20 <cons>
    800004f2:	0987a783          	lw	a5,152(a5)
    800004f6:	2781                	sext.w	a5,a5
    800004f8:	0017871b          	addiw	a4,a5,1
    800004fc:	0007069b          	sext.w	a3,a4
    80000500:	00014717          	auipc	a4,0x14
    80000504:	72070713          	addi	a4,a4,1824 # 80014c20 <cons>
    80000508:	08d72c23          	sw	a3,152(a4)
    8000050c:	07f7f793          	andi	a5,a5,127
    80000510:	2781                	sext.w	a5,a5
    80000512:	00014717          	auipc	a4,0x14
    80000516:	70e70713          	addi	a4,a4,1806 # 80014c20 <cons>
    8000051a:	1782                	slli	a5,a5,0x20
    8000051c:	9381                	srli	a5,a5,0x20
    8000051e:	97ba                	add	a5,a5,a4
    80000520:	0187c783          	lbu	a5,24(a5)
    80000524:	fef42423          	sw	a5,-24(s0)
    80000528:	fe842783          	lw	a5,-24(s0)
    8000052c:	0007871b          	sext.w	a4,a5
    80000530:	4791                	li	a5,4
    80000532:	02f71963          	bne	a4,a5,80000564 <consoleread+0x10e>
    80000536:	fd842703          	lw	a4,-40(s0)
    8000053a:	fec42783          	lw	a5,-20(s0)
    8000053e:	2781                	sext.w	a5,a5
    80000540:	08f77163          	bgeu	a4,a5,800005c2 <consoleread+0x16c>
    80000544:	00014797          	auipc	a5,0x14
    80000548:	6dc78793          	addi	a5,a5,1756 # 80014c20 <cons>
    8000054c:	0987a783          	lw	a5,152(a5)
    80000550:	37fd                	addiw	a5,a5,-1
    80000552:	0007871b          	sext.w	a4,a5
    80000556:	00014797          	auipc	a5,0x14
    8000055a:	6ca78793          	addi	a5,a5,1738 # 80014c20 <cons>
    8000055e:	08e7ac23          	sw	a4,152(a5)
    80000562:	a085                	j	800005c2 <consoleread+0x16c>
    80000564:	fe842783          	lw	a5,-24(s0)
    80000568:	0ff7f793          	zext.b	a5,a5
    8000056c:	fef403a3          	sb	a5,-25(s0)
    80000570:	fe740713          	addi	a4,s0,-25
    80000574:	fdc42783          	lw	a5,-36(s0)
    80000578:	4685                	li	a3,1
    8000057a:	863a                	mv	a2,a4
    8000057c:	fd043583          	ld	a1,-48(s0)
    80000580:	853e                	mv	a0,a5
    80000582:	00003097          	auipc	ra,0x3
    80000586:	77c080e7          	jalr	1916(ra) # 80003cfe <either_copyout>
    8000058a:	87aa                	mv	a5,a0
    8000058c:	873e                	mv	a4,a5
    8000058e:	57fd                	li	a5,-1
    80000590:	02f70b63          	beq	a4,a5,800005c6 <consoleread+0x170>
    80000594:	fd043783          	ld	a5,-48(s0)
    80000598:	0785                	addi	a5,a5,1
    8000059a:	fcf43823          	sd	a5,-48(s0)
    8000059e:	fd842783          	lw	a5,-40(s0)
    800005a2:	37fd                	addiw	a5,a5,-1
    800005a4:	fcf42c23          	sw	a5,-40(s0)
    800005a8:	fe842783          	lw	a5,-24(s0)
    800005ac:	0007871b          	sext.w	a4,a5
    800005b0:	47a9                	li	a5,10
    800005b2:	00f70c63          	beq	a4,a5,800005ca <consoleread+0x174>
    800005b6:	fd842783          	lw	a5,-40(s0)
    800005ba:	2781                	sext.w	a5,a5
    800005bc:	f0f049e3          	bgtz	a5,800004ce <consoleread+0x78>
    800005c0:	a031                	j	800005cc <consoleread+0x176>
    800005c2:	0001                	nop
    800005c4:	a021                	j	800005cc <consoleread+0x176>
    800005c6:	0001                	nop
    800005c8:	a011                	j	800005cc <consoleread+0x176>
    800005ca:	0001                	nop
    800005cc:	00014517          	auipc	a0,0x14
    800005d0:	65450513          	addi	a0,a0,1620 # 80014c20 <cons>
    800005d4:	00001097          	auipc	ra,0x1
    800005d8:	d08080e7          	jalr	-760(ra) # 800012dc <release>
    800005dc:	fd842783          	lw	a5,-40(s0)
    800005e0:	fec42703          	lw	a4,-20(s0)
    800005e4:	40f707bb          	subw	a5,a4,a5
    800005e8:	2781                	sext.w	a5,a5
    800005ea:	2781                	sext.w	a5,a5
    800005ec:	853e                	mv	a0,a5
    800005ee:	70a2                	ld	ra,40(sp)
    800005f0:	7402                	ld	s0,32(sp)
    800005f2:	6145                	addi	sp,sp,48
    800005f4:	8082                	ret

00000000800005f6 <consoleintr>:
    800005f6:	1101                	addi	sp,sp,-32
    800005f8:	ec06                	sd	ra,24(sp)
    800005fa:	e822                	sd	s0,16(sp)
    800005fc:	1000                	addi	s0,sp,32
    800005fe:	87aa                	mv	a5,a0
    80000600:	fef42623          	sw	a5,-20(s0)
    80000604:	00014517          	auipc	a0,0x14
    80000608:	61c50513          	addi	a0,a0,1564 # 80014c20 <cons>
    8000060c:	00001097          	auipc	ra,0x1
    80000610:	c6c080e7          	jalr	-916(ra) # 80001278 <acquire>
    80000614:	fec42783          	lw	a5,-20(s0)
    80000618:	0007871b          	sext.w	a4,a5
    8000061c:	07f00793          	li	a5,127
    80000620:	0cf70763          	beq	a4,a5,800006ee <consoleintr+0xf8>
    80000624:	fec42783          	lw	a5,-20(s0)
    80000628:	0007871b          	sext.w	a4,a5
    8000062c:	07f00793          	li	a5,127
    80000630:	10e7c363          	blt	a5,a4,80000736 <consoleintr+0x140>
    80000634:	fec42783          	lw	a5,-20(s0)
    80000638:	0007871b          	sext.w	a4,a5
    8000063c:	47d5                	li	a5,21
    8000063e:	06f70163          	beq	a4,a5,800006a0 <consoleintr+0xaa>
    80000642:	fec42783          	lw	a5,-20(s0)
    80000646:	0007871b          	sext.w	a4,a5
    8000064a:	47d5                	li	a5,21
    8000064c:	0ee7c563          	blt	a5,a4,80000736 <consoleintr+0x140>
    80000650:	fec42783          	lw	a5,-20(s0)
    80000654:	0007871b          	sext.w	a4,a5
    80000658:	47a1                	li	a5,8
    8000065a:	08f70a63          	beq	a4,a5,800006ee <consoleintr+0xf8>
    8000065e:	fec42783          	lw	a5,-20(s0)
    80000662:	0007871b          	sext.w	a4,a5
    80000666:	47c1                	li	a5,16
    80000668:	0cf71763          	bne	a4,a5,80000736 <consoleintr+0x140>
    8000066c:	00003097          	auipc	ra,0x3
    80000670:	77a080e7          	jalr	1914(ra) # 80003de6 <procdump>
    80000674:	aad9                	j	8000084a <consoleintr+0x254>
    80000676:	00014797          	auipc	a5,0x14
    8000067a:	5aa78793          	addi	a5,a5,1450 # 80014c20 <cons>
    8000067e:	0a07a783          	lw	a5,160(a5)
    80000682:	37fd                	addiw	a5,a5,-1
    80000684:	0007871b          	sext.w	a4,a5
    80000688:	00014797          	auipc	a5,0x14
    8000068c:	59878793          	addi	a5,a5,1432 # 80014c20 <cons>
    80000690:	0ae7a023          	sw	a4,160(a5)
    80000694:	10000513          	li	a0,256
    80000698:	00000097          	auipc	ra,0x0
    8000069c:	cdc080e7          	jalr	-804(ra) # 80000374 <consputc>
    800006a0:	00014797          	auipc	a5,0x14
    800006a4:	58078793          	addi	a5,a5,1408 # 80014c20 <cons>
    800006a8:	0a07a703          	lw	a4,160(a5)
    800006ac:	00014797          	auipc	a5,0x14
    800006b0:	57478793          	addi	a5,a5,1396 # 80014c20 <cons>
    800006b4:	09c7a783          	lw	a5,156(a5)
    800006b8:	18f70463          	beq	a4,a5,80000840 <consoleintr+0x24a>
    800006bc:	00014797          	auipc	a5,0x14
    800006c0:	56478793          	addi	a5,a5,1380 # 80014c20 <cons>
    800006c4:	0a07a783          	lw	a5,160(a5)
    800006c8:	37fd                	addiw	a5,a5,-1
    800006ca:	2781                	sext.w	a5,a5
    800006cc:	07f7f793          	andi	a5,a5,127
    800006d0:	2781                	sext.w	a5,a5
    800006d2:	00014717          	auipc	a4,0x14
    800006d6:	54e70713          	addi	a4,a4,1358 # 80014c20 <cons>
    800006da:	1782                	slli	a5,a5,0x20
    800006dc:	9381                	srli	a5,a5,0x20
    800006de:	97ba                	add	a5,a5,a4
    800006e0:	0187c783          	lbu	a5,24(a5)
    800006e4:	873e                	mv	a4,a5
    800006e6:	47a9                	li	a5,10
    800006e8:	f8f717e3          	bne	a4,a5,80000676 <consoleintr+0x80>
    800006ec:	aa91                	j	80000840 <consoleintr+0x24a>
    800006ee:	00014797          	auipc	a5,0x14
    800006f2:	53278793          	addi	a5,a5,1330 # 80014c20 <cons>
    800006f6:	0a07a703          	lw	a4,160(a5)
    800006fa:	00014797          	auipc	a5,0x14
    800006fe:	52678793          	addi	a5,a5,1318 # 80014c20 <cons>
    80000702:	09c7a783          	lw	a5,156(a5)
    80000706:	12f70f63          	beq	a4,a5,80000844 <consoleintr+0x24e>
    8000070a:	00014797          	auipc	a5,0x14
    8000070e:	51678793          	addi	a5,a5,1302 # 80014c20 <cons>
    80000712:	0a07a783          	lw	a5,160(a5)
    80000716:	37fd                	addiw	a5,a5,-1
    80000718:	0007871b          	sext.w	a4,a5
    8000071c:	00014797          	auipc	a5,0x14
    80000720:	50478793          	addi	a5,a5,1284 # 80014c20 <cons>
    80000724:	0ae7a023          	sw	a4,160(a5)
    80000728:	10000513          	li	a0,256
    8000072c:	00000097          	auipc	ra,0x0
    80000730:	c48080e7          	jalr	-952(ra) # 80000374 <consputc>
    80000734:	aa01                	j	80000844 <consoleintr+0x24e>
    80000736:	fec42783          	lw	a5,-20(s0)
    8000073a:	2781                	sext.w	a5,a5
    8000073c:	10078663          	beqz	a5,80000848 <consoleintr+0x252>
    80000740:	00014797          	auipc	a5,0x14
    80000744:	4e078793          	addi	a5,a5,1248 # 80014c20 <cons>
    80000748:	0a07a703          	lw	a4,160(a5)
    8000074c:	00014797          	auipc	a5,0x14
    80000750:	4d478793          	addi	a5,a5,1236 # 80014c20 <cons>
    80000754:	0987a783          	lw	a5,152(a5)
    80000758:	40f707bb          	subw	a5,a4,a5
    8000075c:	2781                	sext.w	a5,a5
    8000075e:	873e                	mv	a4,a5
    80000760:	07f00793          	li	a5,127
    80000764:	0ee7e263          	bltu	a5,a4,80000848 <consoleintr+0x252>
    80000768:	fec42783          	lw	a5,-20(s0)
    8000076c:	0007871b          	sext.w	a4,a5
    80000770:	47b5                	li	a5,13
    80000772:	00f70563          	beq	a4,a5,8000077c <consoleintr+0x186>
    80000776:	fec42783          	lw	a5,-20(s0)
    8000077a:	a011                	j	8000077e <consoleintr+0x188>
    8000077c:	47a9                	li	a5,10
    8000077e:	fef42623          	sw	a5,-20(s0)
    80000782:	fec42783          	lw	a5,-20(s0)
    80000786:	853e                	mv	a0,a5
    80000788:	00000097          	auipc	ra,0x0
    8000078c:	bec080e7          	jalr	-1044(ra) # 80000374 <consputc>
    80000790:	00014797          	auipc	a5,0x14
    80000794:	49078793          	addi	a5,a5,1168 # 80014c20 <cons>
    80000798:	0a07a783          	lw	a5,160(a5)
    8000079c:	2781                	sext.w	a5,a5
    8000079e:	0017871b          	addiw	a4,a5,1
    800007a2:	0007069b          	sext.w	a3,a4
    800007a6:	00014717          	auipc	a4,0x14
    800007aa:	47a70713          	addi	a4,a4,1146 # 80014c20 <cons>
    800007ae:	0ad72023          	sw	a3,160(a4)
    800007b2:	07f7f793          	andi	a5,a5,127
    800007b6:	2781                	sext.w	a5,a5
    800007b8:	fec42703          	lw	a4,-20(s0)
    800007bc:	0ff77713          	zext.b	a4,a4
    800007c0:	00014697          	auipc	a3,0x14
    800007c4:	46068693          	addi	a3,a3,1120 # 80014c20 <cons>
    800007c8:	1782                	slli	a5,a5,0x20
    800007ca:	9381                	srli	a5,a5,0x20
    800007cc:	97b6                	add	a5,a5,a3
    800007ce:	00e78c23          	sb	a4,24(a5)
    800007d2:	fec42783          	lw	a5,-20(s0)
    800007d6:	0007871b          	sext.w	a4,a5
    800007da:	47a9                	li	a5,10
    800007dc:	02f70d63          	beq	a4,a5,80000816 <consoleintr+0x220>
    800007e0:	fec42783          	lw	a5,-20(s0)
    800007e4:	0007871b          	sext.w	a4,a5
    800007e8:	4791                	li	a5,4
    800007ea:	02f70663          	beq	a4,a5,80000816 <consoleintr+0x220>
    800007ee:	00014797          	auipc	a5,0x14
    800007f2:	43278793          	addi	a5,a5,1074 # 80014c20 <cons>
    800007f6:	0a07a703          	lw	a4,160(a5)
    800007fa:	00014797          	auipc	a5,0x14
    800007fe:	42678793          	addi	a5,a5,1062 # 80014c20 <cons>
    80000802:	0987a783          	lw	a5,152(a5)
    80000806:	40f707bb          	subw	a5,a4,a5
    8000080a:	2781                	sext.w	a5,a5
    8000080c:	873e                	mv	a4,a5
    8000080e:	08000793          	li	a5,128
    80000812:	02f71b63          	bne	a4,a5,80000848 <consoleintr+0x252>
    80000816:	00014797          	auipc	a5,0x14
    8000081a:	40a78793          	addi	a5,a5,1034 # 80014c20 <cons>
    8000081e:	0a07a703          	lw	a4,160(a5)
    80000822:	00014797          	auipc	a5,0x14
    80000826:	3fe78793          	addi	a5,a5,1022 # 80014c20 <cons>
    8000082a:	08e7ae23          	sw	a4,156(a5)
    8000082e:	00014517          	auipc	a0,0x14
    80000832:	48a50513          	addi	a0,a0,1162 # 80014cb8 <cons+0x98>
    80000836:	00003097          	auipc	ra,0x3
    8000083a:	31a080e7          	jalr	794(ra) # 80003b50 <wakeup>
    8000083e:	a029                	j	80000848 <consoleintr+0x252>
    80000840:	0001                	nop
    80000842:	a021                	j	8000084a <consoleintr+0x254>
    80000844:	0001                	nop
    80000846:	a011                	j	8000084a <consoleintr+0x254>
    80000848:	0001                	nop
    8000084a:	00014517          	auipc	a0,0x14
    8000084e:	3d650513          	addi	a0,a0,982 # 80014c20 <cons>
    80000852:	00001097          	auipc	ra,0x1
    80000856:	a8a080e7          	jalr	-1398(ra) # 800012dc <release>
    8000085a:	0001                	nop
    8000085c:	60e2                	ld	ra,24(sp)
    8000085e:	6442                	ld	s0,16(sp)
    80000860:	6105                	addi	sp,sp,32
    80000862:	8082                	ret

0000000080000864 <consoleinit>:
    80000864:	1141                	addi	sp,sp,-16
    80000866:	e406                	sd	ra,8(sp)
    80000868:	e022                	sd	s0,0(sp)
    8000086a:	0800                	addi	s0,sp,16
    8000086c:	0000b597          	auipc	a1,0xb
    80000870:	79458593          	addi	a1,a1,1940 # 8000c000 <etext>
    80000874:	00014517          	auipc	a0,0x14
    80000878:	3ac50513          	addi	a0,a0,940 # 80014c20 <cons>
    8000087c:	00001097          	auipc	ra,0x1
    80000880:	9cc080e7          	jalr	-1588(ra) # 80001248 <initlock>
    80000884:	00000097          	auipc	ra,0x0
    80000888:	48e080e7          	jalr	1166(ra) # 80000d12 <uartinit>
    8000088c:	00026797          	auipc	a5,0x26
    80000890:	d4c78793          	addi	a5,a5,-692 # 800265d8 <devsw>
    80000894:	00000717          	auipc	a4,0x0
    80000898:	bc270713          	addi	a4,a4,-1086 # 80000456 <consoleread>
    8000089c:	eb98                	sd	a4,16(a5)
    8000089e:	00026797          	auipc	a5,0x26
    800008a2:	d3a78793          	addi	a5,a5,-710 # 800265d8 <devsw>
    800008a6:	00000717          	auipc	a4,0x0
    800008aa:	b2670713          	addi	a4,a4,-1242 # 800003cc <consolewrite>
    800008ae:	ef98                	sd	a4,24(a5)
    800008b0:	0001                	nop
    800008b2:	60a2                	ld	ra,8(sp)
    800008b4:	6402                	ld	s0,0(sp)
    800008b6:	0141                	addi	sp,sp,16
    800008b8:	8082                	ret

00000000800008ba <printint>:
    800008ba:	7139                	addi	sp,sp,-64
    800008bc:	fc06                	sd	ra,56(sp)
    800008be:	f822                	sd	s0,48(sp)
    800008c0:	0080                	addi	s0,sp,64
    800008c2:	87aa                	mv	a5,a0
    800008c4:	86ae                	mv	a3,a1
    800008c6:	8732                	mv	a4,a2
    800008c8:	fcf42623          	sw	a5,-52(s0)
    800008cc:	87b6                	mv	a5,a3
    800008ce:	fcf42423          	sw	a5,-56(s0)
    800008d2:	87ba                	mv	a5,a4
    800008d4:	fcf42223          	sw	a5,-60(s0)
    800008d8:	fc442783          	lw	a5,-60(s0)
    800008dc:	2781                	sext.w	a5,a5
    800008de:	c78d                	beqz	a5,80000908 <printint+0x4e>
    800008e0:	fcc42783          	lw	a5,-52(s0)
    800008e4:	01f7d79b          	srliw	a5,a5,0x1f
    800008e8:	0ff7f793          	zext.b	a5,a5
    800008ec:	fcf42223          	sw	a5,-60(s0)
    800008f0:	fc442783          	lw	a5,-60(s0)
    800008f4:	2781                	sext.w	a5,a5
    800008f6:	cb89                	beqz	a5,80000908 <printint+0x4e>
    800008f8:	fcc42783          	lw	a5,-52(s0)
    800008fc:	40f007bb          	negw	a5,a5
    80000900:	2781                	sext.w	a5,a5
    80000902:	fef42423          	sw	a5,-24(s0)
    80000906:	a029                	j	80000910 <printint+0x56>
    80000908:	fcc42783          	lw	a5,-52(s0)
    8000090c:	fef42423          	sw	a5,-24(s0)
    80000910:	fe042623          	sw	zero,-20(s0)
    80000914:	fc842783          	lw	a5,-56(s0)
    80000918:	fe842703          	lw	a4,-24(s0)
    8000091c:	02f777bb          	remuw	a5,a4,a5
    80000920:	0007861b          	sext.w	a2,a5
    80000924:	fec42783          	lw	a5,-20(s0)
    80000928:	0017871b          	addiw	a4,a5,1
    8000092c:	fee42623          	sw	a4,-20(s0)
    80000930:	0000c697          	auipc	a3,0xc
    80000934:	02068693          	addi	a3,a3,32 # 8000c950 <digits>
    80000938:	02061713          	slli	a4,a2,0x20
    8000093c:	9301                	srli	a4,a4,0x20
    8000093e:	9736                	add	a4,a4,a3
    80000940:	00074703          	lbu	a4,0(a4)
    80000944:	17c1                	addi	a5,a5,-16
    80000946:	97a2                	add	a5,a5,s0
    80000948:	fee78423          	sb	a4,-24(a5)
    8000094c:	fc842783          	lw	a5,-56(s0)
    80000950:	fe842703          	lw	a4,-24(s0)
    80000954:	02f757bb          	divuw	a5,a4,a5
    80000958:	fef42423          	sw	a5,-24(s0)
    8000095c:	fe842783          	lw	a5,-24(s0)
    80000960:	2781                	sext.w	a5,a5
    80000962:	fbcd                	bnez	a5,80000914 <printint+0x5a>
    80000964:	fc442783          	lw	a5,-60(s0)
    80000968:	2781                	sext.w	a5,a5
    8000096a:	cb95                	beqz	a5,8000099e <printint+0xe4>
    8000096c:	fec42783          	lw	a5,-20(s0)
    80000970:	0017871b          	addiw	a4,a5,1
    80000974:	fee42623          	sw	a4,-20(s0)
    80000978:	17c1                	addi	a5,a5,-16
    8000097a:	97a2                	add	a5,a5,s0
    8000097c:	02d00713          	li	a4,45
    80000980:	fee78423          	sb	a4,-24(a5)
    80000984:	a829                	j	8000099e <printint+0xe4>
    80000986:	fec42783          	lw	a5,-20(s0)
    8000098a:	17c1                	addi	a5,a5,-16
    8000098c:	97a2                	add	a5,a5,s0
    8000098e:	fe87c783          	lbu	a5,-24(a5)
    80000992:	2781                	sext.w	a5,a5
    80000994:	853e                	mv	a0,a5
    80000996:	00000097          	auipc	ra,0x0
    8000099a:	9de080e7          	jalr	-1570(ra) # 80000374 <consputc>
    8000099e:	fec42783          	lw	a5,-20(s0)
    800009a2:	37fd                	addiw	a5,a5,-1
    800009a4:	fef42623          	sw	a5,-20(s0)
    800009a8:	fec42783          	lw	a5,-20(s0)
    800009ac:	2781                	sext.w	a5,a5
    800009ae:	fc07dce3          	bgez	a5,80000986 <printint+0xcc>
    800009b2:	0001                	nop
    800009b4:	0001                	nop
    800009b6:	70e2                	ld	ra,56(sp)
    800009b8:	7442                	ld	s0,48(sp)
    800009ba:	6121                	addi	sp,sp,64
    800009bc:	8082                	ret

00000000800009be <printptr>:
    800009be:	7179                	addi	sp,sp,-48
    800009c0:	f406                	sd	ra,40(sp)
    800009c2:	f022                	sd	s0,32(sp)
    800009c4:	1800                	addi	s0,sp,48
    800009c6:	fca43c23          	sd	a0,-40(s0)
    800009ca:	03000513          	li	a0,48
    800009ce:	00000097          	auipc	ra,0x0
    800009d2:	9a6080e7          	jalr	-1626(ra) # 80000374 <consputc>
    800009d6:	07800513          	li	a0,120
    800009da:	00000097          	auipc	ra,0x0
    800009de:	99a080e7          	jalr	-1638(ra) # 80000374 <consputc>
    800009e2:	fe042623          	sw	zero,-20(s0)
    800009e6:	a81d                	j	80000a1c <printptr+0x5e>
    800009e8:	fd843783          	ld	a5,-40(s0)
    800009ec:	93f1                	srli	a5,a5,0x3c
    800009ee:	0000c717          	auipc	a4,0xc
    800009f2:	f6270713          	addi	a4,a4,-158 # 8000c950 <digits>
    800009f6:	97ba                	add	a5,a5,a4
    800009f8:	0007c783          	lbu	a5,0(a5)
    800009fc:	2781                	sext.w	a5,a5
    800009fe:	853e                	mv	a0,a5
    80000a00:	00000097          	auipc	ra,0x0
    80000a04:	974080e7          	jalr	-1676(ra) # 80000374 <consputc>
    80000a08:	fec42783          	lw	a5,-20(s0)
    80000a0c:	2785                	addiw	a5,a5,1
    80000a0e:	fef42623          	sw	a5,-20(s0)
    80000a12:	fd843783          	ld	a5,-40(s0)
    80000a16:	0792                	slli	a5,a5,0x4
    80000a18:	fcf43c23          	sd	a5,-40(s0)
    80000a1c:	fec42783          	lw	a5,-20(s0)
    80000a20:	873e                	mv	a4,a5
    80000a22:	47bd                	li	a5,15
    80000a24:	fce7f2e3          	bgeu	a5,a4,800009e8 <printptr+0x2a>
    80000a28:	0001                	nop
    80000a2a:	0001                	nop
    80000a2c:	70a2                	ld	ra,40(sp)
    80000a2e:	7402                	ld	s0,32(sp)
    80000a30:	6145                	addi	sp,sp,48
    80000a32:	8082                	ret

0000000080000a34 <printf>:
    80000a34:	7119                	addi	sp,sp,-128
    80000a36:	fc06                	sd	ra,56(sp)
    80000a38:	f822                	sd	s0,48(sp)
    80000a3a:	0080                	addi	s0,sp,64
    80000a3c:	fca43423          	sd	a0,-56(s0)
    80000a40:	e40c                	sd	a1,8(s0)
    80000a42:	e810                	sd	a2,16(s0)
    80000a44:	ec14                	sd	a3,24(s0)
    80000a46:	f018                	sd	a4,32(s0)
    80000a48:	f41c                	sd	a5,40(s0)
    80000a4a:	03043823          	sd	a6,48(s0)
    80000a4e:	03143c23          	sd	a7,56(s0)
    80000a52:	00014797          	auipc	a5,0x14
    80000a56:	27678793          	addi	a5,a5,630 # 80014cc8 <pr>
    80000a5a:	4f9c                	lw	a5,24(a5)
    80000a5c:	fcf42e23          	sw	a5,-36(s0)
    80000a60:	fdc42783          	lw	a5,-36(s0)
    80000a64:	2781                	sext.w	a5,a5
    80000a66:	cb89                	beqz	a5,80000a78 <printf+0x44>
    80000a68:	00014517          	auipc	a0,0x14
    80000a6c:	26050513          	addi	a0,a0,608 # 80014cc8 <pr>
    80000a70:	00001097          	auipc	ra,0x1
    80000a74:	808080e7          	jalr	-2040(ra) # 80001278 <acquire>
    80000a78:	fc843783          	ld	a5,-56(s0)
    80000a7c:	eb89                	bnez	a5,80000a8e <printf+0x5a>
    80000a7e:	0000b517          	auipc	a0,0xb
    80000a82:	58a50513          	addi	a0,a0,1418 # 8000c008 <etext+0x8>
    80000a86:	00000097          	auipc	ra,0x0
    80000a8a:	204080e7          	jalr	516(ra) # 80000c8a <panic>
    80000a8e:	04040793          	addi	a5,s0,64
    80000a92:	fcf43023          	sd	a5,-64(s0)
    80000a96:	fc043783          	ld	a5,-64(s0)
    80000a9a:	fc878793          	addi	a5,a5,-56
    80000a9e:	fcf43823          	sd	a5,-48(s0)
    80000aa2:	fe042623          	sw	zero,-20(s0)
    80000aa6:	a24d                	j	80000c48 <printf+0x214>
    80000aa8:	fd842783          	lw	a5,-40(s0)
    80000aac:	0007871b          	sext.w	a4,a5
    80000ab0:	02500793          	li	a5,37
    80000ab4:	00f70a63          	beq	a4,a5,80000ac8 <printf+0x94>
    80000ab8:	fd842783          	lw	a5,-40(s0)
    80000abc:	853e                	mv	a0,a5
    80000abe:	00000097          	auipc	ra,0x0
    80000ac2:	8b6080e7          	jalr	-1866(ra) # 80000374 <consputc>
    80000ac6:	aaa5                	j	80000c3e <printf+0x20a>
    80000ac8:	fec42783          	lw	a5,-20(s0)
    80000acc:	2785                	addiw	a5,a5,1
    80000ace:	fef42623          	sw	a5,-20(s0)
    80000ad2:	fec42783          	lw	a5,-20(s0)
    80000ad6:	fc843703          	ld	a4,-56(s0)
    80000ada:	97ba                	add	a5,a5,a4
    80000adc:	0007c783          	lbu	a5,0(a5)
    80000ae0:	fcf42c23          	sw	a5,-40(s0)
    80000ae4:	fd842783          	lw	a5,-40(s0)
    80000ae8:	2781                	sext.w	a5,a5
    80000aea:	16078e63          	beqz	a5,80000c66 <printf+0x232>
    80000aee:	fd842783          	lw	a5,-40(s0)
    80000af2:	0007871b          	sext.w	a4,a5
    80000af6:	07800793          	li	a5,120
    80000afa:	08f70963          	beq	a4,a5,80000b8c <printf+0x158>
    80000afe:	fd842783          	lw	a5,-40(s0)
    80000b02:	0007871b          	sext.w	a4,a5
    80000b06:	07800793          	li	a5,120
    80000b0a:	10e7cc63          	blt	a5,a4,80000c22 <printf+0x1ee>
    80000b0e:	fd842783          	lw	a5,-40(s0)
    80000b12:	0007871b          	sext.w	a4,a5
    80000b16:	07300793          	li	a5,115
    80000b1a:	0af70563          	beq	a4,a5,80000bc4 <printf+0x190>
    80000b1e:	fd842783          	lw	a5,-40(s0)
    80000b22:	0007871b          	sext.w	a4,a5
    80000b26:	07300793          	li	a5,115
    80000b2a:	0ee7cc63          	blt	a5,a4,80000c22 <printf+0x1ee>
    80000b2e:	fd842783          	lw	a5,-40(s0)
    80000b32:	0007871b          	sext.w	a4,a5
    80000b36:	07000793          	li	a5,112
    80000b3a:	06f70863          	beq	a4,a5,80000baa <printf+0x176>
    80000b3e:	fd842783          	lw	a5,-40(s0)
    80000b42:	0007871b          	sext.w	a4,a5
    80000b46:	07000793          	li	a5,112
    80000b4a:	0ce7cc63          	blt	a5,a4,80000c22 <printf+0x1ee>
    80000b4e:	fd842783          	lw	a5,-40(s0)
    80000b52:	0007871b          	sext.w	a4,a5
    80000b56:	02500793          	li	a5,37
    80000b5a:	0af70d63          	beq	a4,a5,80000c14 <printf+0x1e0>
    80000b5e:	fd842783          	lw	a5,-40(s0)
    80000b62:	0007871b          	sext.w	a4,a5
    80000b66:	06400793          	li	a5,100
    80000b6a:	0af71c63          	bne	a4,a5,80000c22 <printf+0x1ee>
    80000b6e:	fd043783          	ld	a5,-48(s0)
    80000b72:	00878713          	addi	a4,a5,8
    80000b76:	fce43823          	sd	a4,-48(s0)
    80000b7a:	439c                	lw	a5,0(a5)
    80000b7c:	4605                	li	a2,1
    80000b7e:	45a9                	li	a1,10
    80000b80:	853e                	mv	a0,a5
    80000b82:	00000097          	auipc	ra,0x0
    80000b86:	d38080e7          	jalr	-712(ra) # 800008ba <printint>
    80000b8a:	a855                	j	80000c3e <printf+0x20a>
    80000b8c:	fd043783          	ld	a5,-48(s0)
    80000b90:	00878713          	addi	a4,a5,8
    80000b94:	fce43823          	sd	a4,-48(s0)
    80000b98:	439c                	lw	a5,0(a5)
    80000b9a:	4605                	li	a2,1
    80000b9c:	45c1                	li	a1,16
    80000b9e:	853e                	mv	a0,a5
    80000ba0:	00000097          	auipc	ra,0x0
    80000ba4:	d1a080e7          	jalr	-742(ra) # 800008ba <printint>
    80000ba8:	a859                	j	80000c3e <printf+0x20a>
    80000baa:	fd043783          	ld	a5,-48(s0)
    80000bae:	00878713          	addi	a4,a5,8
    80000bb2:	fce43823          	sd	a4,-48(s0)
    80000bb6:	639c                	ld	a5,0(a5)
    80000bb8:	853e                	mv	a0,a5
    80000bba:	00000097          	auipc	ra,0x0
    80000bbe:	e04080e7          	jalr	-508(ra) # 800009be <printptr>
    80000bc2:	a8b5                	j	80000c3e <printf+0x20a>
    80000bc4:	fd043783          	ld	a5,-48(s0)
    80000bc8:	00878713          	addi	a4,a5,8
    80000bcc:	fce43823          	sd	a4,-48(s0)
    80000bd0:	639c                	ld	a5,0(a5)
    80000bd2:	fef43023          	sd	a5,-32(s0)
    80000bd6:	fe043783          	ld	a5,-32(s0)
    80000bda:	e79d                	bnez	a5,80000c08 <printf+0x1d4>
    80000bdc:	0000b797          	auipc	a5,0xb
    80000be0:	43c78793          	addi	a5,a5,1084 # 8000c018 <etext+0x18>
    80000be4:	fef43023          	sd	a5,-32(s0)
    80000be8:	a005                	j	80000c08 <printf+0x1d4>
    80000bea:	fe043783          	ld	a5,-32(s0)
    80000bee:	0007c783          	lbu	a5,0(a5)
    80000bf2:	2781                	sext.w	a5,a5
    80000bf4:	853e                	mv	a0,a5
    80000bf6:	fffff097          	auipc	ra,0xfffff
    80000bfa:	77e080e7          	jalr	1918(ra) # 80000374 <consputc>
    80000bfe:	fe043783          	ld	a5,-32(s0)
    80000c02:	0785                	addi	a5,a5,1
    80000c04:	fef43023          	sd	a5,-32(s0)
    80000c08:	fe043783          	ld	a5,-32(s0)
    80000c0c:	0007c783          	lbu	a5,0(a5)
    80000c10:	ffe9                	bnez	a5,80000bea <printf+0x1b6>
    80000c12:	a035                	j	80000c3e <printf+0x20a>
    80000c14:	02500513          	li	a0,37
    80000c18:	fffff097          	auipc	ra,0xfffff
    80000c1c:	75c080e7          	jalr	1884(ra) # 80000374 <consputc>
    80000c20:	a839                	j	80000c3e <printf+0x20a>
    80000c22:	02500513          	li	a0,37
    80000c26:	fffff097          	auipc	ra,0xfffff
    80000c2a:	74e080e7          	jalr	1870(ra) # 80000374 <consputc>
    80000c2e:	fd842783          	lw	a5,-40(s0)
    80000c32:	853e                	mv	a0,a5
    80000c34:	fffff097          	auipc	ra,0xfffff
    80000c38:	740080e7          	jalr	1856(ra) # 80000374 <consputc>
    80000c3c:	0001                	nop
    80000c3e:	fec42783          	lw	a5,-20(s0)
    80000c42:	2785                	addiw	a5,a5,1
    80000c44:	fef42623          	sw	a5,-20(s0)
    80000c48:	fec42783          	lw	a5,-20(s0)
    80000c4c:	fc843703          	ld	a4,-56(s0)
    80000c50:	97ba                	add	a5,a5,a4
    80000c52:	0007c783          	lbu	a5,0(a5)
    80000c56:	fcf42c23          	sw	a5,-40(s0)
    80000c5a:	fd842783          	lw	a5,-40(s0)
    80000c5e:	2781                	sext.w	a5,a5
    80000c60:	e40794e3          	bnez	a5,80000aa8 <printf+0x74>
    80000c64:	a011                	j	80000c68 <printf+0x234>
    80000c66:	0001                	nop
    80000c68:	fdc42783          	lw	a5,-36(s0)
    80000c6c:	2781                	sext.w	a5,a5
    80000c6e:	cb89                	beqz	a5,80000c80 <printf+0x24c>
    80000c70:	00014517          	auipc	a0,0x14
    80000c74:	05850513          	addi	a0,a0,88 # 80014cc8 <pr>
    80000c78:	00000097          	auipc	ra,0x0
    80000c7c:	664080e7          	jalr	1636(ra) # 800012dc <release>
    80000c80:	0001                	nop
    80000c82:	70e2                	ld	ra,56(sp)
    80000c84:	7442                	ld	s0,48(sp)
    80000c86:	6109                	addi	sp,sp,128
    80000c88:	8082                	ret

0000000080000c8a <panic>:
    80000c8a:	1101                	addi	sp,sp,-32
    80000c8c:	ec06                	sd	ra,24(sp)
    80000c8e:	e822                	sd	s0,16(sp)
    80000c90:	1000                	addi	s0,sp,32
    80000c92:	fea43423          	sd	a0,-24(s0)
    80000c96:	00014797          	auipc	a5,0x14
    80000c9a:	03278793          	addi	a5,a5,50 # 80014cc8 <pr>
    80000c9e:	0007ac23          	sw	zero,24(a5)
    80000ca2:	0000b517          	auipc	a0,0xb
    80000ca6:	37e50513          	addi	a0,a0,894 # 8000c020 <etext+0x20>
    80000caa:	00000097          	auipc	ra,0x0
    80000cae:	d8a080e7          	jalr	-630(ra) # 80000a34 <printf>
    80000cb2:	fe843503          	ld	a0,-24(s0)
    80000cb6:	00000097          	auipc	ra,0x0
    80000cba:	d7e080e7          	jalr	-642(ra) # 80000a34 <printf>
    80000cbe:	0000b517          	auipc	a0,0xb
    80000cc2:	36a50513          	addi	a0,a0,874 # 8000c028 <etext+0x28>
    80000cc6:	00000097          	auipc	ra,0x0
    80000cca:	d6e080e7          	jalr	-658(ra) # 80000a34 <printf>
    80000cce:	0000c797          	auipc	a5,0xc
    80000cd2:	de278793          	addi	a5,a5,-542 # 8000cab0 <panicked>
    80000cd6:	4705                	li	a4,1
    80000cd8:	c398                	sw	a4,0(a5)
    80000cda:	a001                	j	80000cda <panic+0x50>

0000000080000cdc <printfinit>:
    80000cdc:	1141                	addi	sp,sp,-16
    80000cde:	e406                	sd	ra,8(sp)
    80000ce0:	e022                	sd	s0,0(sp)
    80000ce2:	0800                	addi	s0,sp,16
    80000ce4:	0000b597          	auipc	a1,0xb
    80000ce8:	34c58593          	addi	a1,a1,844 # 8000c030 <etext+0x30>
    80000cec:	00014517          	auipc	a0,0x14
    80000cf0:	fdc50513          	addi	a0,a0,-36 # 80014cc8 <pr>
    80000cf4:	00000097          	auipc	ra,0x0
    80000cf8:	554080e7          	jalr	1364(ra) # 80001248 <initlock>
    80000cfc:	00014797          	auipc	a5,0x14
    80000d00:	fcc78793          	addi	a5,a5,-52 # 80014cc8 <pr>
    80000d04:	4705                	li	a4,1
    80000d06:	cf98                	sw	a4,24(a5)
    80000d08:	0001                	nop
    80000d0a:	60a2                	ld	ra,8(sp)
    80000d0c:	6402                	ld	s0,0(sp)
    80000d0e:	0141                	addi	sp,sp,16
    80000d10:	8082                	ret

0000000080000d12 <uartinit>:
    80000d12:	1141                	addi	sp,sp,-16
    80000d14:	e406                	sd	ra,8(sp)
    80000d16:	e022                	sd	s0,0(sp)
    80000d18:	0800                	addi	s0,sp,16
    80000d1a:	100007b7          	lui	a5,0x10000
    80000d1e:	0785                	addi	a5,a5,1 # 10000001 <_entry-0x6fffffff>
    80000d20:	00078023          	sb	zero,0(a5)
    80000d24:	100007b7          	lui	a5,0x10000
    80000d28:	078d                	addi	a5,a5,3 # 10000003 <_entry-0x6ffffffd>
    80000d2a:	f8000713          	li	a4,-128
    80000d2e:	00e78023          	sb	a4,0(a5)
    80000d32:	100007b7          	lui	a5,0x10000
    80000d36:	470d                	li	a4,3
    80000d38:	00e78023          	sb	a4,0(a5) # 10000000 <_entry-0x70000000>
    80000d3c:	100007b7          	lui	a5,0x10000
    80000d40:	0785                	addi	a5,a5,1 # 10000001 <_entry-0x6fffffff>
    80000d42:	00078023          	sb	zero,0(a5)
    80000d46:	100007b7          	lui	a5,0x10000
    80000d4a:	078d                	addi	a5,a5,3 # 10000003 <_entry-0x6ffffffd>
    80000d4c:	470d                	li	a4,3
    80000d4e:	00e78023          	sb	a4,0(a5)
    80000d52:	100007b7          	lui	a5,0x10000
    80000d56:	0789                	addi	a5,a5,2 # 10000002 <_entry-0x6ffffffe>
    80000d58:	471d                	li	a4,7
    80000d5a:	00e78023          	sb	a4,0(a5)
    80000d5e:	100007b7          	lui	a5,0x10000
    80000d62:	0785                	addi	a5,a5,1 # 10000001 <_entry-0x6fffffff>
    80000d64:	470d                	li	a4,3
    80000d66:	00e78023          	sb	a4,0(a5)
    80000d6a:	0000b597          	auipc	a1,0xb
    80000d6e:	2ce58593          	addi	a1,a1,718 # 8000c038 <etext+0x38>
    80000d72:	00014517          	auipc	a0,0x14
    80000d76:	f7650513          	addi	a0,a0,-138 # 80014ce8 <uart_tx_lock>
    80000d7a:	00000097          	auipc	ra,0x0
    80000d7e:	4ce080e7          	jalr	1230(ra) # 80001248 <initlock>
    80000d82:	0001                	nop
    80000d84:	60a2                	ld	ra,8(sp)
    80000d86:	6402                	ld	s0,0(sp)
    80000d88:	0141                	addi	sp,sp,16
    80000d8a:	8082                	ret

0000000080000d8c <uartputc>:
    80000d8c:	1101                	addi	sp,sp,-32
    80000d8e:	ec06                	sd	ra,24(sp)
    80000d90:	e822                	sd	s0,16(sp)
    80000d92:	1000                	addi	s0,sp,32
    80000d94:	87aa                	mv	a5,a0
    80000d96:	fef42623          	sw	a5,-20(s0)
    80000d9a:	00014517          	auipc	a0,0x14
    80000d9e:	f4e50513          	addi	a0,a0,-178 # 80014ce8 <uart_tx_lock>
    80000da2:	00000097          	auipc	ra,0x0
    80000da6:	4d6080e7          	jalr	1238(ra) # 80001278 <acquire>
    80000daa:	0000c797          	auipc	a5,0xc
    80000dae:	d0678793          	addi	a5,a5,-762 # 8000cab0 <panicked>
    80000db2:	439c                	lw	a5,0(a5)
    80000db4:	2781                	sext.w	a5,a5
    80000db6:	cf91                	beqz	a5,80000dd2 <uartputc+0x46>
    80000db8:	a001                	j	80000db8 <uartputc+0x2c>
    80000dba:	00014597          	auipc	a1,0x14
    80000dbe:	f2e58593          	addi	a1,a1,-210 # 80014ce8 <uart_tx_lock>
    80000dc2:	0000c517          	auipc	a0,0xc
    80000dc6:	cfe50513          	addi	a0,a0,-770 # 8000cac0 <uart_tx_r>
    80000dca:	00003097          	auipc	ra,0x3
    80000dce:	d0a080e7          	jalr	-758(ra) # 80003ad4 <sleep>
    80000dd2:	0000c797          	auipc	a5,0xc
    80000dd6:	cee78793          	addi	a5,a5,-786 # 8000cac0 <uart_tx_r>
    80000dda:	639c                	ld	a5,0(a5)
    80000ddc:	02078713          	addi	a4,a5,32
    80000de0:	0000c797          	auipc	a5,0xc
    80000de4:	cd878793          	addi	a5,a5,-808 # 8000cab8 <uart_tx_w>
    80000de8:	639c                	ld	a5,0(a5)
    80000dea:	fcf708e3          	beq	a4,a5,80000dba <uartputc+0x2e>
    80000dee:	0000c797          	auipc	a5,0xc
    80000df2:	cca78793          	addi	a5,a5,-822 # 8000cab8 <uart_tx_w>
    80000df6:	639c                	ld	a5,0(a5)
    80000df8:	8bfd                	andi	a5,a5,31
    80000dfa:	fec42703          	lw	a4,-20(s0)
    80000dfe:	0ff77713          	zext.b	a4,a4
    80000e02:	00014697          	auipc	a3,0x14
    80000e06:	efe68693          	addi	a3,a3,-258 # 80014d00 <uart_tx_buf>
    80000e0a:	97b6                	add	a5,a5,a3
    80000e0c:	00e78023          	sb	a4,0(a5)
    80000e10:	0000c797          	auipc	a5,0xc
    80000e14:	ca878793          	addi	a5,a5,-856 # 8000cab8 <uart_tx_w>
    80000e18:	639c                	ld	a5,0(a5)
    80000e1a:	00178713          	addi	a4,a5,1
    80000e1e:	0000c797          	auipc	a5,0xc
    80000e22:	c9a78793          	addi	a5,a5,-870 # 8000cab8 <uart_tx_w>
    80000e26:	e398                	sd	a4,0(a5)
    80000e28:	00000097          	auipc	ra,0x0
    80000e2c:	084080e7          	jalr	132(ra) # 80000eac <uartstart>
    80000e30:	00014517          	auipc	a0,0x14
    80000e34:	eb850513          	addi	a0,a0,-328 # 80014ce8 <uart_tx_lock>
    80000e38:	00000097          	auipc	ra,0x0
    80000e3c:	4a4080e7          	jalr	1188(ra) # 800012dc <release>
    80000e40:	0001                	nop
    80000e42:	60e2                	ld	ra,24(sp)
    80000e44:	6442                	ld	s0,16(sp)
    80000e46:	6105                	addi	sp,sp,32
    80000e48:	8082                	ret

0000000080000e4a <uartputc_sync>:
    80000e4a:	1101                	addi	sp,sp,-32
    80000e4c:	ec06                	sd	ra,24(sp)
    80000e4e:	e822                	sd	s0,16(sp)
    80000e50:	1000                	addi	s0,sp,32
    80000e52:	87aa                	mv	a5,a0
    80000e54:	fef42623          	sw	a5,-20(s0)
    80000e58:	00000097          	auipc	ra,0x0
    80000e5c:	51e080e7          	jalr	1310(ra) # 80001376 <push_off>
    80000e60:	0000c797          	auipc	a5,0xc
    80000e64:	c5078793          	addi	a5,a5,-944 # 8000cab0 <panicked>
    80000e68:	439c                	lw	a5,0(a5)
    80000e6a:	2781                	sext.w	a5,a5
    80000e6c:	c391                	beqz	a5,80000e70 <uartputc_sync+0x26>
    80000e6e:	a001                	j	80000e6e <uartputc_sync+0x24>
    80000e70:	0001                	nop
    80000e72:	100007b7          	lui	a5,0x10000
    80000e76:	0795                	addi	a5,a5,5 # 10000005 <_entry-0x6ffffffb>
    80000e78:	0007c783          	lbu	a5,0(a5)
    80000e7c:	0ff7f793          	zext.b	a5,a5
    80000e80:	2781                	sext.w	a5,a5
    80000e82:	0207f793          	andi	a5,a5,32
    80000e86:	2781                	sext.w	a5,a5
    80000e88:	d7ed                	beqz	a5,80000e72 <uartputc_sync+0x28>
    80000e8a:	100007b7          	lui	a5,0x10000
    80000e8e:	fec42703          	lw	a4,-20(s0)
    80000e92:	0ff77713          	zext.b	a4,a4
    80000e96:	00e78023          	sb	a4,0(a5) # 10000000 <_entry-0x70000000>
    80000e9a:	00000097          	auipc	ra,0x0
    80000e9e:	534080e7          	jalr	1332(ra) # 800013ce <pop_off>
    80000ea2:	0001                	nop
    80000ea4:	60e2                	ld	ra,24(sp)
    80000ea6:	6442                	ld	s0,16(sp)
    80000ea8:	6105                	addi	sp,sp,32
    80000eaa:	8082                	ret

0000000080000eac <uartstart>:
    80000eac:	1101                	addi	sp,sp,-32
    80000eae:	ec06                	sd	ra,24(sp)
    80000eb0:	e822                	sd	s0,16(sp)
    80000eb2:	1000                	addi	s0,sp,32
    80000eb4:	0000c797          	auipc	a5,0xc
    80000eb8:	c0478793          	addi	a5,a5,-1020 # 8000cab8 <uart_tx_w>
    80000ebc:	6398                	ld	a4,0(a5)
    80000ebe:	0000c797          	auipc	a5,0xc
    80000ec2:	c0278793          	addi	a5,a5,-1022 # 8000cac0 <uart_tx_r>
    80000ec6:	639c                	ld	a5,0(a5)
    80000ec8:	06f70a63          	beq	a4,a5,80000f3c <uartstart+0x90>
    80000ecc:	100007b7          	lui	a5,0x10000
    80000ed0:	0795                	addi	a5,a5,5 # 10000005 <_entry-0x6ffffffb>
    80000ed2:	0007c783          	lbu	a5,0(a5)
    80000ed6:	0ff7f793          	zext.b	a5,a5
    80000eda:	2781                	sext.w	a5,a5
    80000edc:	0207f793          	andi	a5,a5,32
    80000ee0:	2781                	sext.w	a5,a5
    80000ee2:	cfb9                	beqz	a5,80000f40 <uartstart+0x94>
    80000ee4:	0000c797          	auipc	a5,0xc
    80000ee8:	bdc78793          	addi	a5,a5,-1060 # 8000cac0 <uart_tx_r>
    80000eec:	639c                	ld	a5,0(a5)
    80000eee:	8bfd                	andi	a5,a5,31
    80000ef0:	00014717          	auipc	a4,0x14
    80000ef4:	e1070713          	addi	a4,a4,-496 # 80014d00 <uart_tx_buf>
    80000ef8:	97ba                	add	a5,a5,a4
    80000efa:	0007c783          	lbu	a5,0(a5)
    80000efe:	fef42623          	sw	a5,-20(s0)
    80000f02:	0000c797          	auipc	a5,0xc
    80000f06:	bbe78793          	addi	a5,a5,-1090 # 8000cac0 <uart_tx_r>
    80000f0a:	639c                	ld	a5,0(a5)
    80000f0c:	00178713          	addi	a4,a5,1
    80000f10:	0000c797          	auipc	a5,0xc
    80000f14:	bb078793          	addi	a5,a5,-1104 # 8000cac0 <uart_tx_r>
    80000f18:	e398                	sd	a4,0(a5)
    80000f1a:	0000c517          	auipc	a0,0xc
    80000f1e:	ba650513          	addi	a0,a0,-1114 # 8000cac0 <uart_tx_r>
    80000f22:	00003097          	auipc	ra,0x3
    80000f26:	c2e080e7          	jalr	-978(ra) # 80003b50 <wakeup>
    80000f2a:	100007b7          	lui	a5,0x10000
    80000f2e:	fec42703          	lw	a4,-20(s0)
    80000f32:	0ff77713          	zext.b	a4,a4
    80000f36:	00e78023          	sb	a4,0(a5) # 10000000 <_entry-0x70000000>
    80000f3a:	bfad                	j	80000eb4 <uartstart+0x8>
    80000f3c:	0001                	nop
    80000f3e:	a011                	j	80000f42 <uartstart+0x96>
    80000f40:	0001                	nop
    80000f42:	60e2                	ld	ra,24(sp)
    80000f44:	6442                	ld	s0,16(sp)
    80000f46:	6105                	addi	sp,sp,32
    80000f48:	8082                	ret

0000000080000f4a <uartgetc>:
    80000f4a:	1141                	addi	sp,sp,-16
    80000f4c:	e422                	sd	s0,8(sp)
    80000f4e:	0800                	addi	s0,sp,16
    80000f50:	100007b7          	lui	a5,0x10000
    80000f54:	0795                	addi	a5,a5,5 # 10000005 <_entry-0x6ffffffb>
    80000f56:	0007c783          	lbu	a5,0(a5)
    80000f5a:	0ff7f793          	zext.b	a5,a5
    80000f5e:	2781                	sext.w	a5,a5
    80000f60:	8b85                	andi	a5,a5,1
    80000f62:	2781                	sext.w	a5,a5
    80000f64:	cb89                	beqz	a5,80000f76 <uartgetc+0x2c>
    80000f66:	100007b7          	lui	a5,0x10000
    80000f6a:	0007c783          	lbu	a5,0(a5) # 10000000 <_entry-0x70000000>
    80000f6e:	0ff7f793          	zext.b	a5,a5
    80000f72:	2781                	sext.w	a5,a5
    80000f74:	a011                	j	80000f78 <uartgetc+0x2e>
    80000f76:	57fd                	li	a5,-1
    80000f78:	853e                	mv	a0,a5
    80000f7a:	6422                	ld	s0,8(sp)
    80000f7c:	0141                	addi	sp,sp,16
    80000f7e:	8082                	ret

0000000080000f80 <uartintr>:
    80000f80:	1101                	addi	sp,sp,-32
    80000f82:	ec06                	sd	ra,24(sp)
    80000f84:	e822                	sd	s0,16(sp)
    80000f86:	1000                	addi	s0,sp,32
    80000f88:	00000097          	auipc	ra,0x0
    80000f8c:	fc2080e7          	jalr	-62(ra) # 80000f4a <uartgetc>
    80000f90:	87aa                	mv	a5,a0
    80000f92:	fef42623          	sw	a5,-20(s0)
    80000f96:	fec42783          	lw	a5,-20(s0)
    80000f9a:	0007871b          	sext.w	a4,a5
    80000f9e:	57fd                	li	a5,-1
    80000fa0:	00f70a63          	beq	a4,a5,80000fb4 <uartintr+0x34>
    80000fa4:	fec42783          	lw	a5,-20(s0)
    80000fa8:	853e                	mv	a0,a5
    80000faa:	fffff097          	auipc	ra,0xfffff
    80000fae:	64c080e7          	jalr	1612(ra) # 800005f6 <consoleintr>
    80000fb2:	bfd9                	j	80000f88 <uartintr+0x8>
    80000fb4:	0001                	nop
    80000fb6:	00014517          	auipc	a0,0x14
    80000fba:	d3250513          	addi	a0,a0,-718 # 80014ce8 <uart_tx_lock>
    80000fbe:	00000097          	auipc	ra,0x0
    80000fc2:	2ba080e7          	jalr	698(ra) # 80001278 <acquire>
    80000fc6:	00000097          	auipc	ra,0x0
    80000fca:	ee6080e7          	jalr	-282(ra) # 80000eac <uartstart>
    80000fce:	00014517          	auipc	a0,0x14
    80000fd2:	d1a50513          	addi	a0,a0,-742 # 80014ce8 <uart_tx_lock>
    80000fd6:	00000097          	auipc	ra,0x0
    80000fda:	306080e7          	jalr	774(ra) # 800012dc <release>
    80000fde:	0001                	nop
    80000fe0:	60e2                	ld	ra,24(sp)
    80000fe2:	6442                	ld	s0,16(sp)
    80000fe4:	6105                	addi	sp,sp,32
    80000fe6:	8082                	ret

0000000080000fe8 <kinit>:
    80000fe8:	1141                	addi	sp,sp,-16
    80000fea:	e406                	sd	ra,8(sp)
    80000fec:	e022                	sd	s0,0(sp)
    80000fee:	0800                	addi	s0,sp,16
    80000ff0:	0000b597          	auipc	a1,0xb
    80000ff4:	05058593          	addi	a1,a1,80 # 8000c040 <etext+0x40>
    80000ff8:	00014517          	auipc	a0,0x14
    80000ffc:	d2850513          	addi	a0,a0,-728 # 80014d20 <kmem>
    80001000:	00000097          	auipc	ra,0x0
    80001004:	248080e7          	jalr	584(ra) # 80001248 <initlock>
    80001008:	47c5                	li	a5,17
    8000100a:	01b79593          	slli	a1,a5,0x1b
    8000100e:	00026517          	auipc	a0,0x26
    80001012:	76250513          	addi	a0,a0,1890 # 80027770 <end>
    80001016:	00000097          	auipc	ra,0x0
    8000101a:	012080e7          	jalr	18(ra) # 80001028 <freerange>
    8000101e:	0001                	nop
    80001020:	60a2                	ld	ra,8(sp)
    80001022:	6402                	ld	s0,0(sp)
    80001024:	0141                	addi	sp,sp,16
    80001026:	8082                	ret

0000000080001028 <freerange>:
    80001028:	7179                	addi	sp,sp,-48
    8000102a:	f406                	sd	ra,40(sp)
    8000102c:	f022                	sd	s0,32(sp)
    8000102e:	1800                	addi	s0,sp,48
    80001030:	fca43c23          	sd	a0,-40(s0)
    80001034:	fcb43823          	sd	a1,-48(s0)
    80001038:	fd843703          	ld	a4,-40(s0)
    8000103c:	6785                	lui	a5,0x1
    8000103e:	17fd                	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80001040:	973e                	add	a4,a4,a5
    80001042:	77fd                	lui	a5,0xfffff
    80001044:	8ff9                	and	a5,a5,a4
    80001046:	fef43423          	sd	a5,-24(s0)
    8000104a:	a829                	j	80001064 <freerange+0x3c>
    8000104c:	fe843503          	ld	a0,-24(s0)
    80001050:	00000097          	auipc	ra,0x0
    80001054:	030080e7          	jalr	48(ra) # 80001080 <kfree>
    80001058:	fe843703          	ld	a4,-24(s0)
    8000105c:	6785                	lui	a5,0x1
    8000105e:	97ba                	add	a5,a5,a4
    80001060:	fef43423          	sd	a5,-24(s0)
    80001064:	fe843703          	ld	a4,-24(s0)
    80001068:	6785                	lui	a5,0x1
    8000106a:	97ba                	add	a5,a5,a4
    8000106c:	fd043703          	ld	a4,-48(s0)
    80001070:	fcf77ee3          	bgeu	a4,a5,8000104c <freerange+0x24>
    80001074:	0001                	nop
    80001076:	0001                	nop
    80001078:	70a2                	ld	ra,40(sp)
    8000107a:	7402                	ld	s0,32(sp)
    8000107c:	6145                	addi	sp,sp,48
    8000107e:	8082                	ret

0000000080001080 <kfree>:
    80001080:	7179                	addi	sp,sp,-48
    80001082:	f406                	sd	ra,40(sp)
    80001084:	f022                	sd	s0,32(sp)
    80001086:	1800                	addi	s0,sp,48
    80001088:	fca43c23          	sd	a0,-40(s0)
    8000108c:	fd843703          	ld	a4,-40(s0)
    80001090:	6785                	lui	a5,0x1
    80001092:	17fd                	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80001094:	8ff9                	and	a5,a5,a4
    80001096:	ef99                	bnez	a5,800010b4 <kfree+0x34>
    80001098:	fd843703          	ld	a4,-40(s0)
    8000109c:	00026797          	auipc	a5,0x26
    800010a0:	6d478793          	addi	a5,a5,1748 # 80027770 <end>
    800010a4:	00f76863          	bltu	a4,a5,800010b4 <kfree+0x34>
    800010a8:	fd843703          	ld	a4,-40(s0)
    800010ac:	47c5                	li	a5,17
    800010ae:	07ee                	slli	a5,a5,0x1b
    800010b0:	00f76a63          	bltu	a4,a5,800010c4 <kfree+0x44>
    800010b4:	0000b517          	auipc	a0,0xb
    800010b8:	f9450513          	addi	a0,a0,-108 # 8000c048 <etext+0x48>
    800010bc:	00000097          	auipc	ra,0x0
    800010c0:	bce080e7          	jalr	-1074(ra) # 80000c8a <panic>
    800010c4:	6605                	lui	a2,0x1
    800010c6:	4585                	li	a1,1
    800010c8:	fd843503          	ld	a0,-40(s0)
    800010cc:	00000097          	auipc	ra,0x0
    800010d0:	380080e7          	jalr	896(ra) # 8000144c <memset>
    800010d4:	fd843783          	ld	a5,-40(s0)
    800010d8:	fef43423          	sd	a5,-24(s0)
    800010dc:	00014517          	auipc	a0,0x14
    800010e0:	c4450513          	addi	a0,a0,-956 # 80014d20 <kmem>
    800010e4:	00000097          	auipc	ra,0x0
    800010e8:	194080e7          	jalr	404(ra) # 80001278 <acquire>
    800010ec:	00014797          	auipc	a5,0x14
    800010f0:	c3478793          	addi	a5,a5,-972 # 80014d20 <kmem>
    800010f4:	6f98                	ld	a4,24(a5)
    800010f6:	fe843783          	ld	a5,-24(s0)
    800010fa:	e398                	sd	a4,0(a5)
    800010fc:	00014797          	auipc	a5,0x14
    80001100:	c2478793          	addi	a5,a5,-988 # 80014d20 <kmem>
    80001104:	fe843703          	ld	a4,-24(s0)
    80001108:	ef98                	sd	a4,24(a5)
    8000110a:	00014517          	auipc	a0,0x14
    8000110e:	c1650513          	addi	a0,a0,-1002 # 80014d20 <kmem>
    80001112:	00000097          	auipc	ra,0x0
    80001116:	1ca080e7          	jalr	458(ra) # 800012dc <release>
    8000111a:	0001                	nop
    8000111c:	70a2                	ld	ra,40(sp)
    8000111e:	7402                	ld	s0,32(sp)
    80001120:	6145                	addi	sp,sp,48
    80001122:	8082                	ret

0000000080001124 <kalloc>:
    80001124:	1101                	addi	sp,sp,-32
    80001126:	ec06                	sd	ra,24(sp)
    80001128:	e822                	sd	s0,16(sp)
    8000112a:	1000                	addi	s0,sp,32
    8000112c:	00014517          	auipc	a0,0x14
    80001130:	bf450513          	addi	a0,a0,-1036 # 80014d20 <kmem>
    80001134:	00000097          	auipc	ra,0x0
    80001138:	144080e7          	jalr	324(ra) # 80001278 <acquire>
    8000113c:	00014797          	auipc	a5,0x14
    80001140:	be478793          	addi	a5,a5,-1052 # 80014d20 <kmem>
    80001144:	6f9c                	ld	a5,24(a5)
    80001146:	fef43423          	sd	a5,-24(s0)
    8000114a:	fe843783          	ld	a5,-24(s0)
    8000114e:	cb89                	beqz	a5,80001160 <kalloc+0x3c>
    80001150:	fe843783          	ld	a5,-24(s0)
    80001154:	6398                	ld	a4,0(a5)
    80001156:	00014797          	auipc	a5,0x14
    8000115a:	bca78793          	addi	a5,a5,-1078 # 80014d20 <kmem>
    8000115e:	ef98                	sd	a4,24(a5)
    80001160:	00014517          	auipc	a0,0x14
    80001164:	bc050513          	addi	a0,a0,-1088 # 80014d20 <kmem>
    80001168:	00000097          	auipc	ra,0x0
    8000116c:	174080e7          	jalr	372(ra) # 800012dc <release>
    80001170:	fe843783          	ld	a5,-24(s0)
    80001174:	cb89                	beqz	a5,80001186 <kalloc+0x62>
    80001176:	6605                	lui	a2,0x1
    80001178:	4595                	li	a1,5
    8000117a:	fe843503          	ld	a0,-24(s0)
    8000117e:	00000097          	auipc	ra,0x0
    80001182:	2ce080e7          	jalr	718(ra) # 8000144c <memset>
    80001186:	fe843783          	ld	a5,-24(s0)
    8000118a:	853e                	mv	a0,a5
    8000118c:	60e2                	ld	ra,24(sp)
    8000118e:	6442                	ld	s0,16(sp)
    80001190:	6105                	addi	sp,sp,32
    80001192:	8082                	ret

0000000080001194 <r_sstatus>:
    80001194:	1101                	addi	sp,sp,-32
    80001196:	ec22                	sd	s0,24(sp)
    80001198:	1000                	addi	s0,sp,32
    8000119a:	100027f3          	csrr	a5,sstatus
    8000119e:	fef43423          	sd	a5,-24(s0)
    800011a2:	fe843783          	ld	a5,-24(s0)
    800011a6:	853e                	mv	a0,a5
    800011a8:	6462                	ld	s0,24(sp)
    800011aa:	6105                	addi	sp,sp,32
    800011ac:	8082                	ret

00000000800011ae <w_sstatus>:
    800011ae:	1101                	addi	sp,sp,-32
    800011b0:	ec22                	sd	s0,24(sp)
    800011b2:	1000                	addi	s0,sp,32
    800011b4:	fea43423          	sd	a0,-24(s0)
    800011b8:	fe843783          	ld	a5,-24(s0)
    800011bc:	10079073          	csrw	sstatus,a5
    800011c0:	0001                	nop
    800011c2:	6462                	ld	s0,24(sp)
    800011c4:	6105                	addi	sp,sp,32
    800011c6:	8082                	ret

00000000800011c8 <intr_on>:
    800011c8:	1141                	addi	sp,sp,-16
    800011ca:	e406                	sd	ra,8(sp)
    800011cc:	e022                	sd	s0,0(sp)
    800011ce:	0800                	addi	s0,sp,16
    800011d0:	00000097          	auipc	ra,0x0
    800011d4:	fc4080e7          	jalr	-60(ra) # 80001194 <r_sstatus>
    800011d8:	87aa                	mv	a5,a0
    800011da:	0027e793          	ori	a5,a5,2
    800011de:	853e                	mv	a0,a5
    800011e0:	00000097          	auipc	ra,0x0
    800011e4:	fce080e7          	jalr	-50(ra) # 800011ae <w_sstatus>
    800011e8:	0001                	nop
    800011ea:	60a2                	ld	ra,8(sp)
    800011ec:	6402                	ld	s0,0(sp)
    800011ee:	0141                	addi	sp,sp,16
    800011f0:	8082                	ret

00000000800011f2 <intr_off>:
    800011f2:	1141                	addi	sp,sp,-16
    800011f4:	e406                	sd	ra,8(sp)
    800011f6:	e022                	sd	s0,0(sp)
    800011f8:	0800                	addi	s0,sp,16
    800011fa:	00000097          	auipc	ra,0x0
    800011fe:	f9a080e7          	jalr	-102(ra) # 80001194 <r_sstatus>
    80001202:	87aa                	mv	a5,a0
    80001204:	9bf5                	andi	a5,a5,-3
    80001206:	853e                	mv	a0,a5
    80001208:	00000097          	auipc	ra,0x0
    8000120c:	fa6080e7          	jalr	-90(ra) # 800011ae <w_sstatus>
    80001210:	0001                	nop
    80001212:	60a2                	ld	ra,8(sp)
    80001214:	6402                	ld	s0,0(sp)
    80001216:	0141                	addi	sp,sp,16
    80001218:	8082                	ret

000000008000121a <intr_get>:
    8000121a:	1101                	addi	sp,sp,-32
    8000121c:	ec06                	sd	ra,24(sp)
    8000121e:	e822                	sd	s0,16(sp)
    80001220:	1000                	addi	s0,sp,32
    80001222:	00000097          	auipc	ra,0x0
    80001226:	f72080e7          	jalr	-142(ra) # 80001194 <r_sstatus>
    8000122a:	fea43423          	sd	a0,-24(s0)
    8000122e:	fe843783          	ld	a5,-24(s0)
    80001232:	8b89                	andi	a5,a5,2
    80001234:	00f037b3          	snez	a5,a5
    80001238:	0ff7f793          	zext.b	a5,a5
    8000123c:	2781                	sext.w	a5,a5
    8000123e:	853e                	mv	a0,a5
    80001240:	60e2                	ld	ra,24(sp)
    80001242:	6442                	ld	s0,16(sp)
    80001244:	6105                	addi	sp,sp,32
    80001246:	8082                	ret

0000000080001248 <initlock>:
    80001248:	1101                	addi	sp,sp,-32
    8000124a:	ec22                	sd	s0,24(sp)
    8000124c:	1000                	addi	s0,sp,32
    8000124e:	fea43423          	sd	a0,-24(s0)
    80001252:	feb43023          	sd	a1,-32(s0)
    80001256:	fe843783          	ld	a5,-24(s0)
    8000125a:	fe043703          	ld	a4,-32(s0)
    8000125e:	e798                	sd	a4,8(a5)
    80001260:	fe843783          	ld	a5,-24(s0)
    80001264:	0007a023          	sw	zero,0(a5)
    80001268:	fe843783          	ld	a5,-24(s0)
    8000126c:	0007b823          	sd	zero,16(a5)
    80001270:	0001                	nop
    80001272:	6462                	ld	s0,24(sp)
    80001274:	6105                	addi	sp,sp,32
    80001276:	8082                	ret

0000000080001278 <acquire>:
    80001278:	1101                	addi	sp,sp,-32
    8000127a:	ec06                	sd	ra,24(sp)
    8000127c:	e822                	sd	s0,16(sp)
    8000127e:	1000                	addi	s0,sp,32
    80001280:	fea43423          	sd	a0,-24(s0)
    80001284:	00000097          	auipc	ra,0x0
    80001288:	0f2080e7          	jalr	242(ra) # 80001376 <push_off>
    8000128c:	fe843503          	ld	a0,-24(s0)
    80001290:	00000097          	auipc	ra,0x0
    80001294:	0a2080e7          	jalr	162(ra) # 80001332 <holding>
    80001298:	87aa                	mv	a5,a0
    8000129a:	cb89                	beqz	a5,800012ac <acquire+0x34>
    8000129c:	0000b517          	auipc	a0,0xb
    800012a0:	db450513          	addi	a0,a0,-588 # 8000c050 <etext+0x50>
    800012a4:	00000097          	auipc	ra,0x0
    800012a8:	9e6080e7          	jalr	-1562(ra) # 80000c8a <panic>
    800012ac:	0001                	nop
    800012ae:	fe843783          	ld	a5,-24(s0)
    800012b2:	4705                	li	a4,1
    800012b4:	0ce7a72f          	amoswap.w.aq	a4,a4,(a5)
    800012b8:	0007079b          	sext.w	a5,a4
    800012bc:	fbed                	bnez	a5,800012ae <acquire+0x36>
    800012be:	0ff0000f          	fence
    800012c2:	00001097          	auipc	ra,0x1
    800012c6:	5de080e7          	jalr	1502(ra) # 800028a0 <mycpu>
    800012ca:	872a                	mv	a4,a0
    800012cc:	fe843783          	ld	a5,-24(s0)
    800012d0:	eb98                	sd	a4,16(a5)
    800012d2:	0001                	nop
    800012d4:	60e2                	ld	ra,24(sp)
    800012d6:	6442                	ld	s0,16(sp)
    800012d8:	6105                	addi	sp,sp,32
    800012da:	8082                	ret

00000000800012dc <release>:
    800012dc:	1101                	addi	sp,sp,-32
    800012de:	ec06                	sd	ra,24(sp)
    800012e0:	e822                	sd	s0,16(sp)
    800012e2:	1000                	addi	s0,sp,32
    800012e4:	fea43423          	sd	a0,-24(s0)
    800012e8:	fe843503          	ld	a0,-24(s0)
    800012ec:	00000097          	auipc	ra,0x0
    800012f0:	046080e7          	jalr	70(ra) # 80001332 <holding>
    800012f4:	87aa                	mv	a5,a0
    800012f6:	eb89                	bnez	a5,80001308 <release+0x2c>
    800012f8:	0000b517          	auipc	a0,0xb
    800012fc:	d6050513          	addi	a0,a0,-672 # 8000c058 <etext+0x58>
    80001300:	00000097          	auipc	ra,0x0
    80001304:	98a080e7          	jalr	-1654(ra) # 80000c8a <panic>
    80001308:	fe843783          	ld	a5,-24(s0)
    8000130c:	0007b823          	sd	zero,16(a5)
    80001310:	0ff0000f          	fence
    80001314:	fe843783          	ld	a5,-24(s0)
    80001318:	0f50000f          	fence	iorw,ow
    8000131c:	0807a02f          	amoswap.w	zero,zero,(a5)
    80001320:	00000097          	auipc	ra,0x0
    80001324:	0ae080e7          	jalr	174(ra) # 800013ce <pop_off>
    80001328:	0001                	nop
    8000132a:	60e2                	ld	ra,24(sp)
    8000132c:	6442                	ld	s0,16(sp)
    8000132e:	6105                	addi	sp,sp,32
    80001330:	8082                	ret

0000000080001332 <holding>:
    80001332:	7139                	addi	sp,sp,-64
    80001334:	fc06                	sd	ra,56(sp)
    80001336:	f822                	sd	s0,48(sp)
    80001338:	f426                	sd	s1,40(sp)
    8000133a:	0080                	addi	s0,sp,64
    8000133c:	fca43423          	sd	a0,-56(s0)
    80001340:	fc843783          	ld	a5,-56(s0)
    80001344:	439c                	lw	a5,0(a5)
    80001346:	cf89                	beqz	a5,80001360 <holding+0x2e>
    80001348:	fc843783          	ld	a5,-56(s0)
    8000134c:	6b84                	ld	s1,16(a5)
    8000134e:	00001097          	auipc	ra,0x1
    80001352:	552080e7          	jalr	1362(ra) # 800028a0 <mycpu>
    80001356:	87aa                	mv	a5,a0
    80001358:	00f49463          	bne	s1,a5,80001360 <holding+0x2e>
    8000135c:	4785                	li	a5,1
    8000135e:	a011                	j	80001362 <holding+0x30>
    80001360:	4781                	li	a5,0
    80001362:	fcf42e23          	sw	a5,-36(s0)
    80001366:	fdc42783          	lw	a5,-36(s0)
    8000136a:	853e                	mv	a0,a5
    8000136c:	70e2                	ld	ra,56(sp)
    8000136e:	7442                	ld	s0,48(sp)
    80001370:	74a2                	ld	s1,40(sp)
    80001372:	6121                	addi	sp,sp,64
    80001374:	8082                	ret

0000000080001376 <push_off>:
    80001376:	1101                	addi	sp,sp,-32
    80001378:	ec06                	sd	ra,24(sp)
    8000137a:	e822                	sd	s0,16(sp)
    8000137c:	1000                	addi	s0,sp,32
    8000137e:	00000097          	auipc	ra,0x0
    80001382:	e9c080e7          	jalr	-356(ra) # 8000121a <intr_get>
    80001386:	87aa                	mv	a5,a0
    80001388:	fef42623          	sw	a5,-20(s0)
    8000138c:	00000097          	auipc	ra,0x0
    80001390:	e66080e7          	jalr	-410(ra) # 800011f2 <intr_off>
    80001394:	00001097          	auipc	ra,0x1
    80001398:	50c080e7          	jalr	1292(ra) # 800028a0 <mycpu>
    8000139c:	87aa                	mv	a5,a0
    8000139e:	5fbc                	lw	a5,120(a5)
    800013a0:	eb89                	bnez	a5,800013b2 <push_off+0x3c>
    800013a2:	00001097          	auipc	ra,0x1
    800013a6:	4fe080e7          	jalr	1278(ra) # 800028a0 <mycpu>
    800013aa:	872a                	mv	a4,a0
    800013ac:	fec42783          	lw	a5,-20(s0)
    800013b0:	df7c                	sw	a5,124(a4)
    800013b2:	00001097          	auipc	ra,0x1
    800013b6:	4ee080e7          	jalr	1262(ra) # 800028a0 <mycpu>
    800013ba:	87aa                	mv	a5,a0
    800013bc:	5fb8                	lw	a4,120(a5)
    800013be:	2705                	addiw	a4,a4,1
    800013c0:	2701                	sext.w	a4,a4
    800013c2:	dfb8                	sw	a4,120(a5)
    800013c4:	0001                	nop
    800013c6:	60e2                	ld	ra,24(sp)
    800013c8:	6442                	ld	s0,16(sp)
    800013ca:	6105                	addi	sp,sp,32
    800013cc:	8082                	ret

00000000800013ce <pop_off>:
    800013ce:	1101                	addi	sp,sp,-32
    800013d0:	ec06                	sd	ra,24(sp)
    800013d2:	e822                	sd	s0,16(sp)
    800013d4:	1000                	addi	s0,sp,32
    800013d6:	00001097          	auipc	ra,0x1
    800013da:	4ca080e7          	jalr	1226(ra) # 800028a0 <mycpu>
    800013de:	fea43423          	sd	a0,-24(s0)
    800013e2:	00000097          	auipc	ra,0x0
    800013e6:	e38080e7          	jalr	-456(ra) # 8000121a <intr_get>
    800013ea:	87aa                	mv	a5,a0
    800013ec:	cb89                	beqz	a5,800013fe <pop_off+0x30>
    800013ee:	0000b517          	auipc	a0,0xb
    800013f2:	c7250513          	addi	a0,a0,-910 # 8000c060 <etext+0x60>
    800013f6:	00000097          	auipc	ra,0x0
    800013fa:	894080e7          	jalr	-1900(ra) # 80000c8a <panic>
    800013fe:	fe843783          	ld	a5,-24(s0)
    80001402:	5fbc                	lw	a5,120(a5)
    80001404:	00f04a63          	bgtz	a5,80001418 <pop_off+0x4a>
    80001408:	0000b517          	auipc	a0,0xb
    8000140c:	c7050513          	addi	a0,a0,-912 # 8000c078 <etext+0x78>
    80001410:	00000097          	auipc	ra,0x0
    80001414:	87a080e7          	jalr	-1926(ra) # 80000c8a <panic>
    80001418:	fe843783          	ld	a5,-24(s0)
    8000141c:	5fbc                	lw	a5,120(a5)
    8000141e:	37fd                	addiw	a5,a5,-1
    80001420:	0007871b          	sext.w	a4,a5
    80001424:	fe843783          	ld	a5,-24(s0)
    80001428:	dfb8                	sw	a4,120(a5)
    8000142a:	fe843783          	ld	a5,-24(s0)
    8000142e:	5fbc                	lw	a5,120(a5)
    80001430:	eb89                	bnez	a5,80001442 <pop_off+0x74>
    80001432:	fe843783          	ld	a5,-24(s0)
    80001436:	5ffc                	lw	a5,124(a5)
    80001438:	c789                	beqz	a5,80001442 <pop_off+0x74>
    8000143a:	00000097          	auipc	ra,0x0
    8000143e:	d8e080e7          	jalr	-626(ra) # 800011c8 <intr_on>
    80001442:	0001                	nop
    80001444:	60e2                	ld	ra,24(sp)
    80001446:	6442                	ld	s0,16(sp)
    80001448:	6105                	addi	sp,sp,32
    8000144a:	8082                	ret

000000008000144c <memset>:
    8000144c:	7179                	addi	sp,sp,-48
    8000144e:	f422                	sd	s0,40(sp)
    80001450:	1800                	addi	s0,sp,48
    80001452:	fca43c23          	sd	a0,-40(s0)
    80001456:	87ae                	mv	a5,a1
    80001458:	8732                	mv	a4,a2
    8000145a:	fcf42a23          	sw	a5,-44(s0)
    8000145e:	87ba                	mv	a5,a4
    80001460:	fcf42823          	sw	a5,-48(s0)
    80001464:	fd843783          	ld	a5,-40(s0)
    80001468:	fef43023          	sd	a5,-32(s0)
    8000146c:	fe042623          	sw	zero,-20(s0)
    80001470:	a00d                	j	80001492 <memset+0x46>
    80001472:	fec42783          	lw	a5,-20(s0)
    80001476:	fe043703          	ld	a4,-32(s0)
    8000147a:	97ba                	add	a5,a5,a4
    8000147c:	fd442703          	lw	a4,-44(s0)
    80001480:	0ff77713          	zext.b	a4,a4
    80001484:	00e78023          	sb	a4,0(a5)
    80001488:	fec42783          	lw	a5,-20(s0)
    8000148c:	2785                	addiw	a5,a5,1
    8000148e:	fef42623          	sw	a5,-20(s0)
    80001492:	fec42703          	lw	a4,-20(s0)
    80001496:	fd042783          	lw	a5,-48(s0)
    8000149a:	2781                	sext.w	a5,a5
    8000149c:	fcf76be3          	bltu	a4,a5,80001472 <memset+0x26>
    800014a0:	fd843783          	ld	a5,-40(s0)
    800014a4:	853e                	mv	a0,a5
    800014a6:	7422                	ld	s0,40(sp)
    800014a8:	6145                	addi	sp,sp,48
    800014aa:	8082                	ret

00000000800014ac <memcmp>:
    800014ac:	7139                	addi	sp,sp,-64
    800014ae:	fc22                	sd	s0,56(sp)
    800014b0:	0080                	addi	s0,sp,64
    800014b2:	fca43c23          	sd	a0,-40(s0)
    800014b6:	fcb43823          	sd	a1,-48(s0)
    800014ba:	87b2                	mv	a5,a2
    800014bc:	fcf42623          	sw	a5,-52(s0)
    800014c0:	fd843783          	ld	a5,-40(s0)
    800014c4:	fef43423          	sd	a5,-24(s0)
    800014c8:	fd043783          	ld	a5,-48(s0)
    800014cc:	fef43023          	sd	a5,-32(s0)
    800014d0:	a0a1                	j	80001518 <memcmp+0x6c>
    800014d2:	fe843783          	ld	a5,-24(s0)
    800014d6:	0007c703          	lbu	a4,0(a5)
    800014da:	fe043783          	ld	a5,-32(s0)
    800014de:	0007c783          	lbu	a5,0(a5)
    800014e2:	02f70163          	beq	a4,a5,80001504 <memcmp+0x58>
    800014e6:	fe843783          	ld	a5,-24(s0)
    800014ea:	0007c783          	lbu	a5,0(a5)
    800014ee:	0007871b          	sext.w	a4,a5
    800014f2:	fe043783          	ld	a5,-32(s0)
    800014f6:	0007c783          	lbu	a5,0(a5)
    800014fa:	2781                	sext.w	a5,a5
    800014fc:	40f707bb          	subw	a5,a4,a5
    80001500:	2781                	sext.w	a5,a5
    80001502:	a01d                	j	80001528 <memcmp+0x7c>
    80001504:	fe843783          	ld	a5,-24(s0)
    80001508:	0785                	addi	a5,a5,1
    8000150a:	fef43423          	sd	a5,-24(s0)
    8000150e:	fe043783          	ld	a5,-32(s0)
    80001512:	0785                	addi	a5,a5,1
    80001514:	fef43023          	sd	a5,-32(s0)
    80001518:	fcc42783          	lw	a5,-52(s0)
    8000151c:	fff7871b          	addiw	a4,a5,-1
    80001520:	fce42623          	sw	a4,-52(s0)
    80001524:	f7dd                	bnez	a5,800014d2 <memcmp+0x26>
    80001526:	4781                	li	a5,0
    80001528:	853e                	mv	a0,a5
    8000152a:	7462                	ld	s0,56(sp)
    8000152c:	6121                	addi	sp,sp,64
    8000152e:	8082                	ret

0000000080001530 <memmove>:
    80001530:	7139                	addi	sp,sp,-64
    80001532:	fc22                	sd	s0,56(sp)
    80001534:	0080                	addi	s0,sp,64
    80001536:	fca43c23          	sd	a0,-40(s0)
    8000153a:	fcb43823          	sd	a1,-48(s0)
    8000153e:	87b2                	mv	a5,a2
    80001540:	fcf42623          	sw	a5,-52(s0)
    80001544:	fcc42783          	lw	a5,-52(s0)
    80001548:	2781                	sext.w	a5,a5
    8000154a:	e781                	bnez	a5,80001552 <memmove+0x22>
    8000154c:	fd843783          	ld	a5,-40(s0)
    80001550:	a855                	j	80001604 <memmove+0xd4>
    80001552:	fd043783          	ld	a5,-48(s0)
    80001556:	fef43423          	sd	a5,-24(s0)
    8000155a:	fd843783          	ld	a5,-40(s0)
    8000155e:	fef43023          	sd	a5,-32(s0)
    80001562:	fe843703          	ld	a4,-24(s0)
    80001566:	fe043783          	ld	a5,-32(s0)
    8000156a:	08f77463          	bgeu	a4,a5,800015f2 <memmove+0xc2>
    8000156e:	fcc46783          	lwu	a5,-52(s0)
    80001572:	fe843703          	ld	a4,-24(s0)
    80001576:	97ba                	add	a5,a5,a4
    80001578:	fe043703          	ld	a4,-32(s0)
    8000157c:	06f77b63          	bgeu	a4,a5,800015f2 <memmove+0xc2>
    80001580:	fcc46783          	lwu	a5,-52(s0)
    80001584:	fe843703          	ld	a4,-24(s0)
    80001588:	97ba                	add	a5,a5,a4
    8000158a:	fef43423          	sd	a5,-24(s0)
    8000158e:	fcc46783          	lwu	a5,-52(s0)
    80001592:	fe043703          	ld	a4,-32(s0)
    80001596:	97ba                	add	a5,a5,a4
    80001598:	fef43023          	sd	a5,-32(s0)
    8000159c:	a01d                	j	800015c2 <memmove+0x92>
    8000159e:	fe843783          	ld	a5,-24(s0)
    800015a2:	17fd                	addi	a5,a5,-1
    800015a4:	fef43423          	sd	a5,-24(s0)
    800015a8:	fe043783          	ld	a5,-32(s0)
    800015ac:	17fd                	addi	a5,a5,-1
    800015ae:	fef43023          	sd	a5,-32(s0)
    800015b2:	fe843783          	ld	a5,-24(s0)
    800015b6:	0007c703          	lbu	a4,0(a5)
    800015ba:	fe043783          	ld	a5,-32(s0)
    800015be:	00e78023          	sb	a4,0(a5)
    800015c2:	fcc42783          	lw	a5,-52(s0)
    800015c6:	fff7871b          	addiw	a4,a5,-1
    800015ca:	fce42623          	sw	a4,-52(s0)
    800015ce:	fbe1                	bnez	a5,8000159e <memmove+0x6e>
    800015d0:	a805                	j	80001600 <memmove+0xd0>
    800015d2:	fe843703          	ld	a4,-24(s0)
    800015d6:	00170793          	addi	a5,a4,1
    800015da:	fef43423          	sd	a5,-24(s0)
    800015de:	fe043783          	ld	a5,-32(s0)
    800015e2:	00178693          	addi	a3,a5,1
    800015e6:	fed43023          	sd	a3,-32(s0)
    800015ea:	00074703          	lbu	a4,0(a4)
    800015ee:	00e78023          	sb	a4,0(a5)
    800015f2:	fcc42783          	lw	a5,-52(s0)
    800015f6:	fff7871b          	addiw	a4,a5,-1
    800015fa:	fce42623          	sw	a4,-52(s0)
    800015fe:	fbf1                	bnez	a5,800015d2 <memmove+0xa2>
    80001600:	fd843783          	ld	a5,-40(s0)
    80001604:	853e                	mv	a0,a5
    80001606:	7462                	ld	s0,56(sp)
    80001608:	6121                	addi	sp,sp,64
    8000160a:	8082                	ret

000000008000160c <memcpy>:
    8000160c:	7179                	addi	sp,sp,-48
    8000160e:	f406                	sd	ra,40(sp)
    80001610:	f022                	sd	s0,32(sp)
    80001612:	1800                	addi	s0,sp,48
    80001614:	fea43423          	sd	a0,-24(s0)
    80001618:	feb43023          	sd	a1,-32(s0)
    8000161c:	87b2                	mv	a5,a2
    8000161e:	fcf42e23          	sw	a5,-36(s0)
    80001622:	fdc42783          	lw	a5,-36(s0)
    80001626:	863e                	mv	a2,a5
    80001628:	fe043583          	ld	a1,-32(s0)
    8000162c:	fe843503          	ld	a0,-24(s0)
    80001630:	00000097          	auipc	ra,0x0
    80001634:	f00080e7          	jalr	-256(ra) # 80001530 <memmove>
    80001638:	87aa                	mv	a5,a0
    8000163a:	853e                	mv	a0,a5
    8000163c:	70a2                	ld	ra,40(sp)
    8000163e:	7402                	ld	s0,32(sp)
    80001640:	6145                	addi	sp,sp,48
    80001642:	8082                	ret

0000000080001644 <strncmp>:
    80001644:	7179                	addi	sp,sp,-48
    80001646:	f422                	sd	s0,40(sp)
    80001648:	1800                	addi	s0,sp,48
    8000164a:	fea43423          	sd	a0,-24(s0)
    8000164e:	feb43023          	sd	a1,-32(s0)
    80001652:	87b2                	mv	a5,a2
    80001654:	fcf42e23          	sw	a5,-36(s0)
    80001658:	a005                	j	80001678 <strncmp+0x34>
    8000165a:	fdc42783          	lw	a5,-36(s0)
    8000165e:	37fd                	addiw	a5,a5,-1
    80001660:	fcf42e23          	sw	a5,-36(s0)
    80001664:	fe843783          	ld	a5,-24(s0)
    80001668:	0785                	addi	a5,a5,1
    8000166a:	fef43423          	sd	a5,-24(s0)
    8000166e:	fe043783          	ld	a5,-32(s0)
    80001672:	0785                	addi	a5,a5,1
    80001674:	fef43023          	sd	a5,-32(s0)
    80001678:	fdc42783          	lw	a5,-36(s0)
    8000167c:	2781                	sext.w	a5,a5
    8000167e:	c385                	beqz	a5,8000169e <strncmp+0x5a>
    80001680:	fe843783          	ld	a5,-24(s0)
    80001684:	0007c783          	lbu	a5,0(a5)
    80001688:	cb99                	beqz	a5,8000169e <strncmp+0x5a>
    8000168a:	fe843783          	ld	a5,-24(s0)
    8000168e:	0007c703          	lbu	a4,0(a5)
    80001692:	fe043783          	ld	a5,-32(s0)
    80001696:	0007c783          	lbu	a5,0(a5)
    8000169a:	fcf700e3          	beq	a4,a5,8000165a <strncmp+0x16>
    8000169e:	fdc42783          	lw	a5,-36(s0)
    800016a2:	2781                	sext.w	a5,a5
    800016a4:	e399                	bnez	a5,800016aa <strncmp+0x66>
    800016a6:	4781                	li	a5,0
    800016a8:	a839                	j	800016c6 <strncmp+0x82>
    800016aa:	fe843783          	ld	a5,-24(s0)
    800016ae:	0007c783          	lbu	a5,0(a5)
    800016b2:	0007871b          	sext.w	a4,a5
    800016b6:	fe043783          	ld	a5,-32(s0)
    800016ba:	0007c783          	lbu	a5,0(a5)
    800016be:	2781                	sext.w	a5,a5
    800016c0:	40f707bb          	subw	a5,a4,a5
    800016c4:	2781                	sext.w	a5,a5
    800016c6:	853e                	mv	a0,a5
    800016c8:	7422                	ld	s0,40(sp)
    800016ca:	6145                	addi	sp,sp,48
    800016cc:	8082                	ret

00000000800016ce <strncpy>:
    800016ce:	7139                	addi	sp,sp,-64
    800016d0:	fc22                	sd	s0,56(sp)
    800016d2:	0080                	addi	s0,sp,64
    800016d4:	fca43c23          	sd	a0,-40(s0)
    800016d8:	fcb43823          	sd	a1,-48(s0)
    800016dc:	87b2                	mv	a5,a2
    800016de:	fcf42623          	sw	a5,-52(s0)
    800016e2:	fd843783          	ld	a5,-40(s0)
    800016e6:	fef43423          	sd	a5,-24(s0)
    800016ea:	0001                	nop
    800016ec:	fcc42783          	lw	a5,-52(s0)
    800016f0:	fff7871b          	addiw	a4,a5,-1
    800016f4:	fce42623          	sw	a4,-52(s0)
    800016f8:	02f05e63          	blez	a5,80001734 <strncpy+0x66>
    800016fc:	fd043703          	ld	a4,-48(s0)
    80001700:	00170793          	addi	a5,a4,1
    80001704:	fcf43823          	sd	a5,-48(s0)
    80001708:	fd843783          	ld	a5,-40(s0)
    8000170c:	00178693          	addi	a3,a5,1
    80001710:	fcd43c23          	sd	a3,-40(s0)
    80001714:	00074703          	lbu	a4,0(a4)
    80001718:	00e78023          	sb	a4,0(a5)
    8000171c:	0007c783          	lbu	a5,0(a5)
    80001720:	f7f1                	bnez	a5,800016ec <strncpy+0x1e>
    80001722:	a809                	j	80001734 <strncpy+0x66>
    80001724:	fd843783          	ld	a5,-40(s0)
    80001728:	00178713          	addi	a4,a5,1
    8000172c:	fce43c23          	sd	a4,-40(s0)
    80001730:	00078023          	sb	zero,0(a5)
    80001734:	fcc42783          	lw	a5,-52(s0)
    80001738:	fff7871b          	addiw	a4,a5,-1
    8000173c:	fce42623          	sw	a4,-52(s0)
    80001740:	fef042e3          	bgtz	a5,80001724 <strncpy+0x56>
    80001744:	fe843783          	ld	a5,-24(s0)
    80001748:	853e                	mv	a0,a5
    8000174a:	7462                	ld	s0,56(sp)
    8000174c:	6121                	addi	sp,sp,64
    8000174e:	8082                	ret

0000000080001750 <safestrcpy>:
    80001750:	7139                	addi	sp,sp,-64
    80001752:	fc22                	sd	s0,56(sp)
    80001754:	0080                	addi	s0,sp,64
    80001756:	fca43c23          	sd	a0,-40(s0)
    8000175a:	fcb43823          	sd	a1,-48(s0)
    8000175e:	87b2                	mv	a5,a2
    80001760:	fcf42623          	sw	a5,-52(s0)
    80001764:	fd843783          	ld	a5,-40(s0)
    80001768:	fef43423          	sd	a5,-24(s0)
    8000176c:	fcc42783          	lw	a5,-52(s0)
    80001770:	2781                	sext.w	a5,a5
    80001772:	00f04563          	bgtz	a5,8000177c <safestrcpy+0x2c>
    80001776:	fe843783          	ld	a5,-24(s0)
    8000177a:	a0a9                	j	800017c4 <safestrcpy+0x74>
    8000177c:	0001                	nop
    8000177e:	fcc42783          	lw	a5,-52(s0)
    80001782:	37fd                	addiw	a5,a5,-1
    80001784:	fcf42623          	sw	a5,-52(s0)
    80001788:	fcc42783          	lw	a5,-52(s0)
    8000178c:	2781                	sext.w	a5,a5
    8000178e:	02f05563          	blez	a5,800017b8 <safestrcpy+0x68>
    80001792:	fd043703          	ld	a4,-48(s0)
    80001796:	00170793          	addi	a5,a4,1
    8000179a:	fcf43823          	sd	a5,-48(s0)
    8000179e:	fd843783          	ld	a5,-40(s0)
    800017a2:	00178693          	addi	a3,a5,1
    800017a6:	fcd43c23          	sd	a3,-40(s0)
    800017aa:	00074703          	lbu	a4,0(a4)
    800017ae:	00e78023          	sb	a4,0(a5)
    800017b2:	0007c783          	lbu	a5,0(a5)
    800017b6:	f7e1                	bnez	a5,8000177e <safestrcpy+0x2e>
    800017b8:	fd843783          	ld	a5,-40(s0)
    800017bc:	00078023          	sb	zero,0(a5)
    800017c0:	fe843783          	ld	a5,-24(s0)
    800017c4:	853e                	mv	a0,a5
    800017c6:	7462                	ld	s0,56(sp)
    800017c8:	6121                	addi	sp,sp,64
    800017ca:	8082                	ret

00000000800017cc <strlen>:
    800017cc:	7179                	addi	sp,sp,-48
    800017ce:	f422                	sd	s0,40(sp)
    800017d0:	1800                	addi	s0,sp,48
    800017d2:	fca43c23          	sd	a0,-40(s0)
    800017d6:	fe042623          	sw	zero,-20(s0)
    800017da:	a031                	j	800017e6 <strlen+0x1a>
    800017dc:	fec42783          	lw	a5,-20(s0)
    800017e0:	2785                	addiw	a5,a5,1
    800017e2:	fef42623          	sw	a5,-20(s0)
    800017e6:	fec42783          	lw	a5,-20(s0)
    800017ea:	fd843703          	ld	a4,-40(s0)
    800017ee:	97ba                	add	a5,a5,a4
    800017f0:	0007c783          	lbu	a5,0(a5)
    800017f4:	f7e5                	bnez	a5,800017dc <strlen+0x10>
    800017f6:	fec42783          	lw	a5,-20(s0)
    800017fa:	853e                	mv	a0,a5
    800017fc:	7422                	ld	s0,40(sp)
    800017fe:	6145                	addi	sp,sp,48
    80001800:	8082                	ret

0000000080001802 <main>:
    80001802:	1141                	addi	sp,sp,-16
    80001804:	e406                	sd	ra,8(sp)
    80001806:	e022                	sd	s0,0(sp)
    80001808:	0800                	addi	s0,sp,16
    8000180a:	00001097          	auipc	ra,0x1
    8000180e:	072080e7          	jalr	114(ra) # 8000287c <cpuid>
    80001812:	87aa                	mv	a5,a0
    80001814:	efd5                	bnez	a5,800018d0 <main+0xce>
    80001816:	fffff097          	auipc	ra,0xfffff
    8000181a:	04e080e7          	jalr	78(ra) # 80000864 <consoleinit>
    8000181e:	fffff097          	auipc	ra,0xfffff
    80001822:	4be080e7          	jalr	1214(ra) # 80000cdc <printfinit>
    80001826:	0000b517          	auipc	a0,0xb
    8000182a:	85a50513          	addi	a0,a0,-1958 # 8000c080 <etext+0x80>
    8000182e:	fffff097          	auipc	ra,0xfffff
    80001832:	206080e7          	jalr	518(ra) # 80000a34 <printf>
    80001836:	0000b517          	auipc	a0,0xb
    8000183a:	85250513          	addi	a0,a0,-1966 # 8000c088 <etext+0x88>
    8000183e:	fffff097          	auipc	ra,0xfffff
    80001842:	1f6080e7          	jalr	502(ra) # 80000a34 <printf>
    80001846:	0000b517          	auipc	a0,0xb
    8000184a:	83a50513          	addi	a0,a0,-1990 # 8000c080 <etext+0x80>
    8000184e:	fffff097          	auipc	ra,0xfffff
    80001852:	1e6080e7          	jalr	486(ra) # 80000a34 <printf>
    80001856:	fffff097          	auipc	ra,0xfffff
    8000185a:	792080e7          	jalr	1938(ra) # 80000fe8 <kinit>
    8000185e:	00000097          	auipc	ra,0x0
    80001862:	1f4080e7          	jalr	500(ra) # 80001a52 <kvminit>
    80001866:	00000097          	auipc	ra,0x0
    8000186a:	212080e7          	jalr	530(ra) # 80001a78 <kvminithart>
    8000186e:	00001097          	auipc	ra,0x1
    80001872:	f28080e7          	jalr	-216(ra) # 80002796 <procinit>
    80001876:	00003097          	auipc	ra,0x3
    8000187a:	a6e080e7          	jalr	-1426(ra) # 800042e4 <trapinit>
    8000187e:	00003097          	auipc	ra,0x3
    80001882:	a90080e7          	jalr	-1392(ra) # 8000430e <trapinithart>
    80001886:	00008097          	auipc	ra,0x8
    8000188a:	c34080e7          	jalr	-972(ra) # 800094ba <plicinit>
    8000188e:	00008097          	auipc	ra,0x8
    80001892:	c50080e7          	jalr	-944(ra) # 800094de <plicinithart>
    80001896:	00003097          	auipc	ra,0x3
    8000189a:	7fe080e7          	jalr	2046(ra) # 80005094 <binit>
    8000189e:	00004097          	auipc	ra,0x4
    800018a2:	034080e7          	jalr	52(ra) # 800058d2 <iinit>
    800018a6:	00006097          	auipc	ra,0x6
    800018aa:	a12080e7          	jalr	-1518(ra) # 800072b8 <fileinit>
    800018ae:	00008097          	auipc	ra,0x8
    800018b2:	d04080e7          	jalr	-764(ra) # 800095b2 <virtio_disk_init>
    800018b6:	00001097          	auipc	ra,0x1
    800018ba:	45c080e7          	jalr	1116(ra) # 80002d12 <userinit>
    800018be:	0ff0000f          	fence
    800018c2:	00013797          	auipc	a5,0x13
    800018c6:	47e78793          	addi	a5,a5,1150 # 80014d40 <started>
    800018ca:	4705                	li	a4,1
    800018cc:	c398                	sw	a4,0(a5)
    800018ce:	a0a9                	j	80001918 <main+0x116>
    800018d0:	0001                	nop
    800018d2:	00013797          	auipc	a5,0x13
    800018d6:	46e78793          	addi	a5,a5,1134 # 80014d40 <started>
    800018da:	439c                	lw	a5,0(a5)
    800018dc:	2781                	sext.w	a5,a5
    800018de:	dbf5                	beqz	a5,800018d2 <main+0xd0>
    800018e0:	0ff0000f          	fence
    800018e4:	00001097          	auipc	ra,0x1
    800018e8:	f98080e7          	jalr	-104(ra) # 8000287c <cpuid>
    800018ec:	87aa                	mv	a5,a0
    800018ee:	85be                	mv	a1,a5
    800018f0:	0000a517          	auipc	a0,0xa
    800018f4:	7b050513          	addi	a0,a0,1968 # 8000c0a0 <etext+0xa0>
    800018f8:	fffff097          	auipc	ra,0xfffff
    800018fc:	13c080e7          	jalr	316(ra) # 80000a34 <printf>
    80001900:	00000097          	auipc	ra,0x0
    80001904:	178080e7          	jalr	376(ra) # 80001a78 <kvminithart>
    80001908:	00003097          	auipc	ra,0x3
    8000190c:	a06080e7          	jalr	-1530(ra) # 8000430e <trapinithart>
    80001910:	00008097          	auipc	ra,0x8
    80001914:	bce080e7          	jalr	-1074(ra) # 800094de <plicinithart>
    80001918:	00002097          	auipc	ra,0x2
    8000191c:	d44080e7          	jalr	-700(ra) # 8000365c <scheduler>

0000000080001920 <w_satp>:
    80001920:	1101                	addi	sp,sp,-32
    80001922:	ec22                	sd	s0,24(sp)
    80001924:	1000                	addi	s0,sp,32
    80001926:	fea43423          	sd	a0,-24(s0)
    8000192a:	fe843783          	ld	a5,-24(s0)
    8000192e:	18079073          	csrw	satp,a5
    80001932:	0001                	nop
    80001934:	6462                	ld	s0,24(sp)
    80001936:	6105                	addi	sp,sp,32
    80001938:	8082                	ret

000000008000193a <sfence_vma>:
    8000193a:	1141                	addi	sp,sp,-16
    8000193c:	e422                	sd	s0,8(sp)
    8000193e:	0800                	addi	s0,sp,16
    80001940:	12000073          	sfence.vma
    80001944:	0001                	nop
    80001946:	6422                	ld	s0,8(sp)
    80001948:	0141                	addi	sp,sp,16
    8000194a:	8082                	ret

000000008000194c <kvmmake>:
    8000194c:	1101                	addi	sp,sp,-32
    8000194e:	ec06                	sd	ra,24(sp)
    80001950:	e822                	sd	s0,16(sp)
    80001952:	1000                	addi	s0,sp,32
    80001954:	fffff097          	auipc	ra,0xfffff
    80001958:	7d0080e7          	jalr	2000(ra) # 80001124 <kalloc>
    8000195c:	fea43423          	sd	a0,-24(s0)
    80001960:	6605                	lui	a2,0x1
    80001962:	4581                	li	a1,0
    80001964:	fe843503          	ld	a0,-24(s0)
    80001968:	00000097          	auipc	ra,0x0
    8000196c:	ae4080e7          	jalr	-1308(ra) # 8000144c <memset>
    80001970:	4719                	li	a4,6
    80001972:	6685                	lui	a3,0x1
    80001974:	10000637          	lui	a2,0x10000
    80001978:	100005b7          	lui	a1,0x10000
    8000197c:	fe843503          	ld	a0,-24(s0)
    80001980:	00000097          	auipc	ra,0x0
    80001984:	2a2080e7          	jalr	674(ra) # 80001c22 <kvmmap>
    80001988:	4719                	li	a4,6
    8000198a:	6685                	lui	a3,0x1
    8000198c:	10001637          	lui	a2,0x10001
    80001990:	100015b7          	lui	a1,0x10001
    80001994:	fe843503          	ld	a0,-24(s0)
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	28a080e7          	jalr	650(ra) # 80001c22 <kvmmap>
    800019a0:	4719                	li	a4,6
    800019a2:	004006b7          	lui	a3,0x400
    800019a6:	0c000637          	lui	a2,0xc000
    800019aa:	0c0005b7          	lui	a1,0xc000
    800019ae:	fe843503          	ld	a0,-24(s0)
    800019b2:	00000097          	auipc	ra,0x0
    800019b6:	270080e7          	jalr	624(ra) # 80001c22 <kvmmap>
    800019ba:	0000a717          	auipc	a4,0xa
    800019be:	64670713          	addi	a4,a4,1606 # 8000c000 <etext>
    800019c2:	800007b7          	lui	a5,0x80000
    800019c6:	97ba                	add	a5,a5,a4
    800019c8:	4729                	li	a4,10
    800019ca:	86be                	mv	a3,a5
    800019cc:	4785                	li	a5,1
    800019ce:	01f79613          	slli	a2,a5,0x1f
    800019d2:	4785                	li	a5,1
    800019d4:	01f79593          	slli	a1,a5,0x1f
    800019d8:	fe843503          	ld	a0,-24(s0)
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	246080e7          	jalr	582(ra) # 80001c22 <kvmmap>
    800019e4:	0000a597          	auipc	a1,0xa
    800019e8:	61c58593          	addi	a1,a1,1564 # 8000c000 <etext>
    800019ec:	0000a617          	auipc	a2,0xa
    800019f0:	61460613          	addi	a2,a2,1556 # 8000c000 <etext>
    800019f4:	0000a797          	auipc	a5,0xa
    800019f8:	60c78793          	addi	a5,a5,1548 # 8000c000 <etext>
    800019fc:	4745                	li	a4,17
    800019fe:	076e                	slli	a4,a4,0x1b
    80001a00:	40f707b3          	sub	a5,a4,a5
    80001a04:	4719                	li	a4,6
    80001a06:	86be                	mv	a3,a5
    80001a08:	fe843503          	ld	a0,-24(s0)
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	216080e7          	jalr	534(ra) # 80001c22 <kvmmap>
    80001a14:	00009797          	auipc	a5,0x9
    80001a18:	5ec78793          	addi	a5,a5,1516 # 8000b000 <_trampoline>
    80001a1c:	4729                	li	a4,10
    80001a1e:	6685                	lui	a3,0x1
    80001a20:	863e                	mv	a2,a5
    80001a22:	040007b7          	lui	a5,0x4000
    80001a26:	17fd                	addi	a5,a5,-1 # 3ffffff <_entry-0x7c000001>
    80001a28:	00c79593          	slli	a1,a5,0xc
    80001a2c:	fe843503          	ld	a0,-24(s0)
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	1f2080e7          	jalr	498(ra) # 80001c22 <kvmmap>
    80001a38:	fe843503          	ld	a0,-24(s0)
    80001a3c:	00001097          	auipc	ra,0x1
    80001a40:	c9e080e7          	jalr	-866(ra) # 800026da <proc_mapstacks>
    80001a44:	fe843783          	ld	a5,-24(s0)
    80001a48:	853e                	mv	a0,a5
    80001a4a:	60e2                	ld	ra,24(sp)
    80001a4c:	6442                	ld	s0,16(sp)
    80001a4e:	6105                	addi	sp,sp,32
    80001a50:	8082                	ret

0000000080001a52 <kvminit>:
    80001a52:	1141                	addi	sp,sp,-16
    80001a54:	e406                	sd	ra,8(sp)
    80001a56:	e022                	sd	s0,0(sp)
    80001a58:	0800                	addi	s0,sp,16
    80001a5a:	00000097          	auipc	ra,0x0
    80001a5e:	ef2080e7          	jalr	-270(ra) # 8000194c <kvmmake>
    80001a62:	872a                	mv	a4,a0
    80001a64:	0000b797          	auipc	a5,0xb
    80001a68:	06478793          	addi	a5,a5,100 # 8000cac8 <kernel_pagetable>
    80001a6c:	e398                	sd	a4,0(a5)
    80001a6e:	0001                	nop
    80001a70:	60a2                	ld	ra,8(sp)
    80001a72:	6402                	ld	s0,0(sp)
    80001a74:	0141                	addi	sp,sp,16
    80001a76:	8082                	ret

0000000080001a78 <kvminithart>:
    80001a78:	1141                	addi	sp,sp,-16
    80001a7a:	e406                	sd	ra,8(sp)
    80001a7c:	e022                	sd	s0,0(sp)
    80001a7e:	0800                	addi	s0,sp,16
    80001a80:	00000097          	auipc	ra,0x0
    80001a84:	eba080e7          	jalr	-326(ra) # 8000193a <sfence_vma>
    80001a88:	0000b797          	auipc	a5,0xb
    80001a8c:	04078793          	addi	a5,a5,64 # 8000cac8 <kernel_pagetable>
    80001a90:	639c                	ld	a5,0(a5)
    80001a92:	00c7d713          	srli	a4,a5,0xc
    80001a96:	57fd                	li	a5,-1
    80001a98:	17fe                	slli	a5,a5,0x3f
    80001a9a:	8fd9                	or	a5,a5,a4
    80001a9c:	853e                	mv	a0,a5
    80001a9e:	00000097          	auipc	ra,0x0
    80001aa2:	e82080e7          	jalr	-382(ra) # 80001920 <w_satp>
    80001aa6:	00000097          	auipc	ra,0x0
    80001aaa:	e94080e7          	jalr	-364(ra) # 8000193a <sfence_vma>
    80001aae:	0001                	nop
    80001ab0:	60a2                	ld	ra,8(sp)
    80001ab2:	6402                	ld	s0,0(sp)
    80001ab4:	0141                	addi	sp,sp,16
    80001ab6:	8082                	ret

0000000080001ab8 <walk>:
    80001ab8:	7139                	addi	sp,sp,-64
    80001aba:	fc06                	sd	ra,56(sp)
    80001abc:	f822                	sd	s0,48(sp)
    80001abe:	0080                	addi	s0,sp,64
    80001ac0:	fca43c23          	sd	a0,-40(s0)
    80001ac4:	fcb43823          	sd	a1,-48(s0)
    80001ac8:	87b2                	mv	a5,a2
    80001aca:	fcf42623          	sw	a5,-52(s0)
    80001ace:	fd043703          	ld	a4,-48(s0)
    80001ad2:	57fd                	li	a5,-1
    80001ad4:	83e9                	srli	a5,a5,0x1a
    80001ad6:	00e7fa63          	bgeu	a5,a4,80001aea <walk+0x32>
    80001ada:	0000a517          	auipc	a0,0xa
    80001ade:	5de50513          	addi	a0,a0,1502 # 8000c0b8 <etext+0xb8>
    80001ae2:	fffff097          	auipc	ra,0xfffff
    80001ae6:	1a8080e7          	jalr	424(ra) # 80000c8a <panic>
    80001aea:	4789                	li	a5,2
    80001aec:	fef42623          	sw	a5,-20(s0)
    80001af0:	a851                	j	80001b84 <walk+0xcc>
    80001af2:	fec42783          	lw	a5,-20(s0)
    80001af6:	873e                	mv	a4,a5
    80001af8:	87ba                	mv	a5,a4
    80001afa:	0037979b          	slliw	a5,a5,0x3
    80001afe:	9fb9                	addw	a5,a5,a4
    80001b00:	2781                	sext.w	a5,a5
    80001b02:	27b1                	addiw	a5,a5,12
    80001b04:	2781                	sext.w	a5,a5
    80001b06:	873e                	mv	a4,a5
    80001b08:	fd043783          	ld	a5,-48(s0)
    80001b0c:	00e7d7b3          	srl	a5,a5,a4
    80001b10:	1ff7f793          	andi	a5,a5,511
    80001b14:	078e                	slli	a5,a5,0x3
    80001b16:	fd843703          	ld	a4,-40(s0)
    80001b1a:	97ba                	add	a5,a5,a4
    80001b1c:	fef43023          	sd	a5,-32(s0)
    80001b20:	fe043783          	ld	a5,-32(s0)
    80001b24:	639c                	ld	a5,0(a5)
    80001b26:	8b85                	andi	a5,a5,1
    80001b28:	cb89                	beqz	a5,80001b3a <walk+0x82>
    80001b2a:	fe043783          	ld	a5,-32(s0)
    80001b2e:	639c                	ld	a5,0(a5)
    80001b30:	83a9                	srli	a5,a5,0xa
    80001b32:	07b2                	slli	a5,a5,0xc
    80001b34:	fcf43c23          	sd	a5,-40(s0)
    80001b38:	a089                	j	80001b7a <walk+0xc2>
    80001b3a:	fcc42783          	lw	a5,-52(s0)
    80001b3e:	2781                	sext.w	a5,a5
    80001b40:	cb91                	beqz	a5,80001b54 <walk+0x9c>
    80001b42:	fffff097          	auipc	ra,0xfffff
    80001b46:	5e2080e7          	jalr	1506(ra) # 80001124 <kalloc>
    80001b4a:	fca43c23          	sd	a0,-40(s0)
    80001b4e:	fd843783          	ld	a5,-40(s0)
    80001b52:	e399                	bnez	a5,80001b58 <walk+0xa0>
    80001b54:	4781                	li	a5,0
    80001b56:	a0a9                	j	80001ba0 <walk+0xe8>
    80001b58:	6605                	lui	a2,0x1
    80001b5a:	4581                	li	a1,0
    80001b5c:	fd843503          	ld	a0,-40(s0)
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	8ec080e7          	jalr	-1812(ra) # 8000144c <memset>
    80001b68:	fd843783          	ld	a5,-40(s0)
    80001b6c:	83b1                	srli	a5,a5,0xc
    80001b6e:	07aa                	slli	a5,a5,0xa
    80001b70:	0017e713          	ori	a4,a5,1
    80001b74:	fe043783          	ld	a5,-32(s0)
    80001b78:	e398                	sd	a4,0(a5)
    80001b7a:	fec42783          	lw	a5,-20(s0)
    80001b7e:	37fd                	addiw	a5,a5,-1
    80001b80:	fef42623          	sw	a5,-20(s0)
    80001b84:	fec42783          	lw	a5,-20(s0)
    80001b88:	2781                	sext.w	a5,a5
    80001b8a:	f6f044e3          	bgtz	a5,80001af2 <walk+0x3a>
    80001b8e:	fd043783          	ld	a5,-48(s0)
    80001b92:	83b1                	srli	a5,a5,0xc
    80001b94:	1ff7f793          	andi	a5,a5,511
    80001b98:	078e                	slli	a5,a5,0x3
    80001b9a:	fd843703          	ld	a4,-40(s0)
    80001b9e:	97ba                	add	a5,a5,a4
    80001ba0:	853e                	mv	a0,a5
    80001ba2:	70e2                	ld	ra,56(sp)
    80001ba4:	7442                	ld	s0,48(sp)
    80001ba6:	6121                	addi	sp,sp,64
    80001ba8:	8082                	ret

0000000080001baa <walkaddr>:
    80001baa:	7179                	addi	sp,sp,-48
    80001bac:	f406                	sd	ra,40(sp)
    80001bae:	f022                	sd	s0,32(sp)
    80001bb0:	1800                	addi	s0,sp,48
    80001bb2:	fca43c23          	sd	a0,-40(s0)
    80001bb6:	fcb43823          	sd	a1,-48(s0)
    80001bba:	fd043703          	ld	a4,-48(s0)
    80001bbe:	57fd                	li	a5,-1
    80001bc0:	83e9                	srli	a5,a5,0x1a
    80001bc2:	00e7f463          	bgeu	a5,a4,80001bca <walkaddr+0x20>
    80001bc6:	4781                	li	a5,0
    80001bc8:	a881                	j	80001c18 <walkaddr+0x6e>
    80001bca:	4601                	li	a2,0
    80001bcc:	fd043583          	ld	a1,-48(s0)
    80001bd0:	fd843503          	ld	a0,-40(s0)
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	ee4080e7          	jalr	-284(ra) # 80001ab8 <walk>
    80001bdc:	fea43423          	sd	a0,-24(s0)
    80001be0:	fe843783          	ld	a5,-24(s0)
    80001be4:	e399                	bnez	a5,80001bea <walkaddr+0x40>
    80001be6:	4781                	li	a5,0
    80001be8:	a805                	j	80001c18 <walkaddr+0x6e>
    80001bea:	fe843783          	ld	a5,-24(s0)
    80001bee:	639c                	ld	a5,0(a5)
    80001bf0:	8b85                	andi	a5,a5,1
    80001bf2:	e399                	bnez	a5,80001bf8 <walkaddr+0x4e>
    80001bf4:	4781                	li	a5,0
    80001bf6:	a00d                	j	80001c18 <walkaddr+0x6e>
    80001bf8:	fe843783          	ld	a5,-24(s0)
    80001bfc:	639c                	ld	a5,0(a5)
    80001bfe:	8bc1                	andi	a5,a5,16
    80001c00:	e399                	bnez	a5,80001c06 <walkaddr+0x5c>
    80001c02:	4781                	li	a5,0
    80001c04:	a811                	j	80001c18 <walkaddr+0x6e>
    80001c06:	fe843783          	ld	a5,-24(s0)
    80001c0a:	639c                	ld	a5,0(a5)
    80001c0c:	83a9                	srli	a5,a5,0xa
    80001c0e:	07b2                	slli	a5,a5,0xc
    80001c10:	fef43023          	sd	a5,-32(s0)
    80001c14:	fe043783          	ld	a5,-32(s0)
    80001c18:	853e                	mv	a0,a5
    80001c1a:	70a2                	ld	ra,40(sp)
    80001c1c:	7402                	ld	s0,32(sp)
    80001c1e:	6145                	addi	sp,sp,48
    80001c20:	8082                	ret

0000000080001c22 <kvmmap>:
    80001c22:	7139                	addi	sp,sp,-64
    80001c24:	fc06                	sd	ra,56(sp)
    80001c26:	f822                	sd	s0,48(sp)
    80001c28:	0080                	addi	s0,sp,64
    80001c2a:	fea43423          	sd	a0,-24(s0)
    80001c2e:	feb43023          	sd	a1,-32(s0)
    80001c32:	fcc43c23          	sd	a2,-40(s0)
    80001c36:	fcd43823          	sd	a3,-48(s0)
    80001c3a:	87ba                	mv	a5,a4
    80001c3c:	fcf42623          	sw	a5,-52(s0)
    80001c40:	fcc42783          	lw	a5,-52(s0)
    80001c44:	873e                	mv	a4,a5
    80001c46:	fd843683          	ld	a3,-40(s0)
    80001c4a:	fd043603          	ld	a2,-48(s0)
    80001c4e:	fe043583          	ld	a1,-32(s0)
    80001c52:	fe843503          	ld	a0,-24(s0)
    80001c56:	00000097          	auipc	ra,0x0
    80001c5a:	026080e7          	jalr	38(ra) # 80001c7c <mappages>
    80001c5e:	87aa                	mv	a5,a0
    80001c60:	cb89                	beqz	a5,80001c72 <kvmmap+0x50>
    80001c62:	0000a517          	auipc	a0,0xa
    80001c66:	45e50513          	addi	a0,a0,1118 # 8000c0c0 <etext+0xc0>
    80001c6a:	fffff097          	auipc	ra,0xfffff
    80001c6e:	020080e7          	jalr	32(ra) # 80000c8a <panic>
    80001c72:	0001                	nop
    80001c74:	70e2                	ld	ra,56(sp)
    80001c76:	7442                	ld	s0,48(sp)
    80001c78:	6121                	addi	sp,sp,64
    80001c7a:	8082                	ret

0000000080001c7c <mappages>:
    80001c7c:	711d                	addi	sp,sp,-96
    80001c7e:	ec86                	sd	ra,88(sp)
    80001c80:	e8a2                	sd	s0,80(sp)
    80001c82:	1080                	addi	s0,sp,96
    80001c84:	fca43423          	sd	a0,-56(s0)
    80001c88:	fcb43023          	sd	a1,-64(s0)
    80001c8c:	fac43c23          	sd	a2,-72(s0)
    80001c90:	fad43823          	sd	a3,-80(s0)
    80001c94:	87ba                	mv	a5,a4
    80001c96:	faf42623          	sw	a5,-84(s0)
    80001c9a:	fb843783          	ld	a5,-72(s0)
    80001c9e:	eb89                	bnez	a5,80001cb0 <mappages+0x34>
    80001ca0:	0000a517          	auipc	a0,0xa
    80001ca4:	42850513          	addi	a0,a0,1064 # 8000c0c8 <etext+0xc8>
    80001ca8:	fffff097          	auipc	ra,0xfffff
    80001cac:	fe2080e7          	jalr	-30(ra) # 80000c8a <panic>
    80001cb0:	fc043703          	ld	a4,-64(s0)
    80001cb4:	77fd                	lui	a5,0xfffff
    80001cb6:	8ff9                	and	a5,a5,a4
    80001cb8:	fef43423          	sd	a5,-24(s0)
    80001cbc:	fc043703          	ld	a4,-64(s0)
    80001cc0:	fb843783          	ld	a5,-72(s0)
    80001cc4:	97ba                	add	a5,a5,a4
    80001cc6:	fff78713          	addi	a4,a5,-1 # ffffffffffffefff <end+0xffffffff7ffd788f>
    80001cca:	77fd                	lui	a5,0xfffff
    80001ccc:	8ff9                	and	a5,a5,a4
    80001cce:	fef43023          	sd	a5,-32(s0)
    80001cd2:	4605                	li	a2,1
    80001cd4:	fe843583          	ld	a1,-24(s0)
    80001cd8:	fc843503          	ld	a0,-56(s0)
    80001cdc:	00000097          	auipc	ra,0x0
    80001ce0:	ddc080e7          	jalr	-548(ra) # 80001ab8 <walk>
    80001ce4:	fca43c23          	sd	a0,-40(s0)
    80001ce8:	fd843783          	ld	a5,-40(s0)
    80001cec:	e399                	bnez	a5,80001cf2 <mappages+0x76>
    80001cee:	57fd                	li	a5,-1
    80001cf0:	a085                	j	80001d50 <mappages+0xd4>
    80001cf2:	fd843783          	ld	a5,-40(s0)
    80001cf6:	639c                	ld	a5,0(a5)
    80001cf8:	8b85                	andi	a5,a5,1
    80001cfa:	cb89                	beqz	a5,80001d0c <mappages+0x90>
    80001cfc:	0000a517          	auipc	a0,0xa
    80001d00:	3dc50513          	addi	a0,a0,988 # 8000c0d8 <etext+0xd8>
    80001d04:	fffff097          	auipc	ra,0xfffff
    80001d08:	f86080e7          	jalr	-122(ra) # 80000c8a <panic>
    80001d0c:	fb043783          	ld	a5,-80(s0)
    80001d10:	83b1                	srli	a5,a5,0xc
    80001d12:	00a79713          	slli	a4,a5,0xa
    80001d16:	fac42783          	lw	a5,-84(s0)
    80001d1a:	8fd9                	or	a5,a5,a4
    80001d1c:	0017e713          	ori	a4,a5,1
    80001d20:	fd843783          	ld	a5,-40(s0)
    80001d24:	e398                	sd	a4,0(a5)
    80001d26:	fe843703          	ld	a4,-24(s0)
    80001d2a:	fe043783          	ld	a5,-32(s0)
    80001d2e:	00f70f63          	beq	a4,a5,80001d4c <mappages+0xd0>
    80001d32:	fe843703          	ld	a4,-24(s0)
    80001d36:	6785                	lui	a5,0x1
    80001d38:	97ba                	add	a5,a5,a4
    80001d3a:	fef43423          	sd	a5,-24(s0)
    80001d3e:	fb043703          	ld	a4,-80(s0)
    80001d42:	6785                	lui	a5,0x1
    80001d44:	97ba                	add	a5,a5,a4
    80001d46:	faf43823          	sd	a5,-80(s0)
    80001d4a:	b761                	j	80001cd2 <mappages+0x56>
    80001d4c:	0001                	nop
    80001d4e:	4781                	li	a5,0
    80001d50:	853e                	mv	a0,a5
    80001d52:	60e6                	ld	ra,88(sp)
    80001d54:	6446                	ld	s0,80(sp)
    80001d56:	6125                	addi	sp,sp,96
    80001d58:	8082                	ret

0000000080001d5a <uvmunmap>:
    80001d5a:	715d                	addi	sp,sp,-80
    80001d5c:	e486                	sd	ra,72(sp)
    80001d5e:	e0a2                	sd	s0,64(sp)
    80001d60:	0880                	addi	s0,sp,80
    80001d62:	fca43423          	sd	a0,-56(s0)
    80001d66:	fcb43023          	sd	a1,-64(s0)
    80001d6a:	fac43c23          	sd	a2,-72(s0)
    80001d6e:	87b6                	mv	a5,a3
    80001d70:	faf42a23          	sw	a5,-76(s0)
    80001d74:	fc043703          	ld	a4,-64(s0)
    80001d78:	6785                	lui	a5,0x1
    80001d7a:	17fd                	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80001d7c:	8ff9                	and	a5,a5,a4
    80001d7e:	cb89                	beqz	a5,80001d90 <uvmunmap+0x36>
    80001d80:	0000a517          	auipc	a0,0xa
    80001d84:	36850513          	addi	a0,a0,872 # 8000c0e8 <etext+0xe8>
    80001d88:	fffff097          	auipc	ra,0xfffff
    80001d8c:	f02080e7          	jalr	-254(ra) # 80000c8a <panic>
    80001d90:	fc043783          	ld	a5,-64(s0)
    80001d94:	fef43423          	sd	a5,-24(s0)
    80001d98:	a045                	j	80001e38 <uvmunmap+0xde>
    80001d9a:	4601                	li	a2,0
    80001d9c:	fe843583          	ld	a1,-24(s0)
    80001da0:	fc843503          	ld	a0,-56(s0)
    80001da4:	00000097          	auipc	ra,0x0
    80001da8:	d14080e7          	jalr	-748(ra) # 80001ab8 <walk>
    80001dac:	fea43023          	sd	a0,-32(s0)
    80001db0:	fe043783          	ld	a5,-32(s0)
    80001db4:	eb89                	bnez	a5,80001dc6 <uvmunmap+0x6c>
    80001db6:	0000a517          	auipc	a0,0xa
    80001dba:	34a50513          	addi	a0,a0,842 # 8000c100 <etext+0x100>
    80001dbe:	fffff097          	auipc	ra,0xfffff
    80001dc2:	ecc080e7          	jalr	-308(ra) # 80000c8a <panic>
    80001dc6:	fe043783          	ld	a5,-32(s0)
    80001dca:	639c                	ld	a5,0(a5)
    80001dcc:	8b85                	andi	a5,a5,1
    80001dce:	eb89                	bnez	a5,80001de0 <uvmunmap+0x86>
    80001dd0:	0000a517          	auipc	a0,0xa
    80001dd4:	34050513          	addi	a0,a0,832 # 8000c110 <etext+0x110>
    80001dd8:	fffff097          	auipc	ra,0xfffff
    80001ddc:	eb2080e7          	jalr	-334(ra) # 80000c8a <panic>
    80001de0:	fe043783          	ld	a5,-32(s0)
    80001de4:	639c                	ld	a5,0(a5)
    80001de6:	3ff7f713          	andi	a4,a5,1023
    80001dea:	4785                	li	a5,1
    80001dec:	00f71a63          	bne	a4,a5,80001e00 <uvmunmap+0xa6>
    80001df0:	0000a517          	auipc	a0,0xa
    80001df4:	33850513          	addi	a0,a0,824 # 8000c128 <etext+0x128>
    80001df8:	fffff097          	auipc	ra,0xfffff
    80001dfc:	e92080e7          	jalr	-366(ra) # 80000c8a <panic>
    80001e00:	fb442783          	lw	a5,-76(s0)
    80001e04:	2781                	sext.w	a5,a5
    80001e06:	cf99                	beqz	a5,80001e24 <uvmunmap+0xca>
    80001e08:	fe043783          	ld	a5,-32(s0)
    80001e0c:	639c                	ld	a5,0(a5)
    80001e0e:	83a9                	srli	a5,a5,0xa
    80001e10:	07b2                	slli	a5,a5,0xc
    80001e12:	fcf43c23          	sd	a5,-40(s0)
    80001e16:	fd843783          	ld	a5,-40(s0)
    80001e1a:	853e                	mv	a0,a5
    80001e1c:	fffff097          	auipc	ra,0xfffff
    80001e20:	264080e7          	jalr	612(ra) # 80001080 <kfree>
    80001e24:	fe043783          	ld	a5,-32(s0)
    80001e28:	0007b023          	sd	zero,0(a5)
    80001e2c:	fe843703          	ld	a4,-24(s0)
    80001e30:	6785                	lui	a5,0x1
    80001e32:	97ba                	add	a5,a5,a4
    80001e34:	fef43423          	sd	a5,-24(s0)
    80001e38:	fb843783          	ld	a5,-72(s0)
    80001e3c:	00c79713          	slli	a4,a5,0xc
    80001e40:	fc043783          	ld	a5,-64(s0)
    80001e44:	97ba                	add	a5,a5,a4
    80001e46:	fe843703          	ld	a4,-24(s0)
    80001e4a:	f4f768e3          	bltu	a4,a5,80001d9a <uvmunmap+0x40>
    80001e4e:	0001                	nop
    80001e50:	0001                	nop
    80001e52:	60a6                	ld	ra,72(sp)
    80001e54:	6406                	ld	s0,64(sp)
    80001e56:	6161                	addi	sp,sp,80
    80001e58:	8082                	ret

0000000080001e5a <uvmcreate>:
    80001e5a:	1101                	addi	sp,sp,-32
    80001e5c:	ec06                	sd	ra,24(sp)
    80001e5e:	e822                	sd	s0,16(sp)
    80001e60:	1000                	addi	s0,sp,32
    80001e62:	fffff097          	auipc	ra,0xfffff
    80001e66:	2c2080e7          	jalr	706(ra) # 80001124 <kalloc>
    80001e6a:	fea43423          	sd	a0,-24(s0)
    80001e6e:	fe843783          	ld	a5,-24(s0)
    80001e72:	e399                	bnez	a5,80001e78 <uvmcreate+0x1e>
    80001e74:	4781                	li	a5,0
    80001e76:	a819                	j	80001e8c <uvmcreate+0x32>
    80001e78:	6605                	lui	a2,0x1
    80001e7a:	4581                	li	a1,0
    80001e7c:	fe843503          	ld	a0,-24(s0)
    80001e80:	fffff097          	auipc	ra,0xfffff
    80001e84:	5cc080e7          	jalr	1484(ra) # 8000144c <memset>
    80001e88:	fe843783          	ld	a5,-24(s0)
    80001e8c:	853e                	mv	a0,a5
    80001e8e:	60e2                	ld	ra,24(sp)
    80001e90:	6442                	ld	s0,16(sp)
    80001e92:	6105                	addi	sp,sp,32
    80001e94:	8082                	ret

0000000080001e96 <uvmfirst>:
    80001e96:	7139                	addi	sp,sp,-64
    80001e98:	fc06                	sd	ra,56(sp)
    80001e9a:	f822                	sd	s0,48(sp)
    80001e9c:	0080                	addi	s0,sp,64
    80001e9e:	fca43c23          	sd	a0,-40(s0)
    80001ea2:	fcb43823          	sd	a1,-48(s0)
    80001ea6:	87b2                	mv	a5,a2
    80001ea8:	fcf42623          	sw	a5,-52(s0)
    80001eac:	fcc42783          	lw	a5,-52(s0)
    80001eb0:	0007871b          	sext.w	a4,a5
    80001eb4:	6785                	lui	a5,0x1
    80001eb6:	00f76a63          	bltu	a4,a5,80001eca <uvmfirst+0x34>
    80001eba:	0000a517          	auipc	a0,0xa
    80001ebe:	28650513          	addi	a0,a0,646 # 8000c140 <etext+0x140>
    80001ec2:	fffff097          	auipc	ra,0xfffff
    80001ec6:	dc8080e7          	jalr	-568(ra) # 80000c8a <panic>
    80001eca:	fffff097          	auipc	ra,0xfffff
    80001ece:	25a080e7          	jalr	602(ra) # 80001124 <kalloc>
    80001ed2:	fea43423          	sd	a0,-24(s0)
    80001ed6:	6605                	lui	a2,0x1
    80001ed8:	4581                	li	a1,0
    80001eda:	fe843503          	ld	a0,-24(s0)
    80001ede:	fffff097          	auipc	ra,0xfffff
    80001ee2:	56e080e7          	jalr	1390(ra) # 8000144c <memset>
    80001ee6:	fe843783          	ld	a5,-24(s0)
    80001eea:	4779                	li	a4,30
    80001eec:	86be                	mv	a3,a5
    80001eee:	6605                	lui	a2,0x1
    80001ef0:	4581                	li	a1,0
    80001ef2:	fd843503          	ld	a0,-40(s0)
    80001ef6:	00000097          	auipc	ra,0x0
    80001efa:	d86080e7          	jalr	-634(ra) # 80001c7c <mappages>
    80001efe:	fcc42783          	lw	a5,-52(s0)
    80001f02:	863e                	mv	a2,a5
    80001f04:	fd043583          	ld	a1,-48(s0)
    80001f08:	fe843503          	ld	a0,-24(s0)
    80001f0c:	fffff097          	auipc	ra,0xfffff
    80001f10:	624080e7          	jalr	1572(ra) # 80001530 <memmove>
    80001f14:	0001                	nop
    80001f16:	70e2                	ld	ra,56(sp)
    80001f18:	7442                	ld	s0,48(sp)
    80001f1a:	6121                	addi	sp,sp,64
    80001f1c:	8082                	ret

0000000080001f1e <uvmalloc>:
    80001f1e:	7139                	addi	sp,sp,-64
    80001f20:	fc06                	sd	ra,56(sp)
    80001f22:	f822                	sd	s0,48(sp)
    80001f24:	0080                	addi	s0,sp,64
    80001f26:	fca43c23          	sd	a0,-40(s0)
    80001f2a:	fcb43823          	sd	a1,-48(s0)
    80001f2e:	fcc43423          	sd	a2,-56(s0)
    80001f32:	87b6                	mv	a5,a3
    80001f34:	fcf42223          	sw	a5,-60(s0)
    80001f38:	fc843703          	ld	a4,-56(s0)
    80001f3c:	fd043783          	ld	a5,-48(s0)
    80001f40:	00f77563          	bgeu	a4,a5,80001f4a <uvmalloc+0x2c>
    80001f44:	fd043783          	ld	a5,-48(s0)
    80001f48:	a87d                	j	80002006 <uvmalloc+0xe8>
    80001f4a:	fd043703          	ld	a4,-48(s0)
    80001f4e:	6785                	lui	a5,0x1
    80001f50:	17fd                	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80001f52:	973e                	add	a4,a4,a5
    80001f54:	77fd                	lui	a5,0xfffff
    80001f56:	8ff9                	and	a5,a5,a4
    80001f58:	fcf43823          	sd	a5,-48(s0)
    80001f5c:	fd043783          	ld	a5,-48(s0)
    80001f60:	fef43423          	sd	a5,-24(s0)
    80001f64:	a849                	j	80001ff6 <uvmalloc+0xd8>
    80001f66:	fffff097          	auipc	ra,0xfffff
    80001f6a:	1be080e7          	jalr	446(ra) # 80001124 <kalloc>
    80001f6e:	fea43023          	sd	a0,-32(s0)
    80001f72:	fe043783          	ld	a5,-32(s0)
    80001f76:	ef89                	bnez	a5,80001f90 <uvmalloc+0x72>
    80001f78:	fd043603          	ld	a2,-48(s0)
    80001f7c:	fe843583          	ld	a1,-24(s0)
    80001f80:	fd843503          	ld	a0,-40(s0)
    80001f84:	00000097          	auipc	ra,0x0
    80001f88:	08c080e7          	jalr	140(ra) # 80002010 <uvmdealloc>
    80001f8c:	4781                	li	a5,0
    80001f8e:	a8a5                	j	80002006 <uvmalloc+0xe8>
    80001f90:	6605                	lui	a2,0x1
    80001f92:	4581                	li	a1,0
    80001f94:	fe043503          	ld	a0,-32(s0)
    80001f98:	fffff097          	auipc	ra,0xfffff
    80001f9c:	4b4080e7          	jalr	1204(ra) # 8000144c <memset>
    80001fa0:	fe043783          	ld	a5,-32(s0)
    80001fa4:	fc442703          	lw	a4,-60(s0)
    80001fa8:	01276713          	ori	a4,a4,18
    80001fac:	2701                	sext.w	a4,a4
    80001fae:	86be                	mv	a3,a5
    80001fb0:	6605                	lui	a2,0x1
    80001fb2:	fe843583          	ld	a1,-24(s0)
    80001fb6:	fd843503          	ld	a0,-40(s0)
    80001fba:	00000097          	auipc	ra,0x0
    80001fbe:	cc2080e7          	jalr	-830(ra) # 80001c7c <mappages>
    80001fc2:	87aa                	mv	a5,a0
    80001fc4:	c39d                	beqz	a5,80001fea <uvmalloc+0xcc>
    80001fc6:	fe043503          	ld	a0,-32(s0)
    80001fca:	fffff097          	auipc	ra,0xfffff
    80001fce:	0b6080e7          	jalr	182(ra) # 80001080 <kfree>
    80001fd2:	fd043603          	ld	a2,-48(s0)
    80001fd6:	fe843583          	ld	a1,-24(s0)
    80001fda:	fd843503          	ld	a0,-40(s0)
    80001fde:	00000097          	auipc	ra,0x0
    80001fe2:	032080e7          	jalr	50(ra) # 80002010 <uvmdealloc>
    80001fe6:	4781                	li	a5,0
    80001fe8:	a839                	j	80002006 <uvmalloc+0xe8>
    80001fea:	fe843703          	ld	a4,-24(s0)
    80001fee:	6785                	lui	a5,0x1
    80001ff0:	97ba                	add	a5,a5,a4
    80001ff2:	fef43423          	sd	a5,-24(s0)
    80001ff6:	fe843703          	ld	a4,-24(s0)
    80001ffa:	fc843783          	ld	a5,-56(s0)
    80001ffe:	f6f764e3          	bltu	a4,a5,80001f66 <uvmalloc+0x48>
    80002002:	fc843783          	ld	a5,-56(s0)
    80002006:	853e                	mv	a0,a5
    80002008:	70e2                	ld	ra,56(sp)
    8000200a:	7442                	ld	s0,48(sp)
    8000200c:	6121                	addi	sp,sp,64
    8000200e:	8082                	ret

0000000080002010 <uvmdealloc>:
    80002010:	7139                	addi	sp,sp,-64
    80002012:	fc06                	sd	ra,56(sp)
    80002014:	f822                	sd	s0,48(sp)
    80002016:	0080                	addi	s0,sp,64
    80002018:	fca43c23          	sd	a0,-40(s0)
    8000201c:	fcb43823          	sd	a1,-48(s0)
    80002020:	fcc43423          	sd	a2,-56(s0)
    80002024:	fc843703          	ld	a4,-56(s0)
    80002028:	fd043783          	ld	a5,-48(s0)
    8000202c:	00f76563          	bltu	a4,a5,80002036 <uvmdealloc+0x26>
    80002030:	fd043783          	ld	a5,-48(s0)
    80002034:	a885                	j	800020a4 <uvmdealloc+0x94>
    80002036:	fc843703          	ld	a4,-56(s0)
    8000203a:	6785                	lui	a5,0x1
    8000203c:	17fd                	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    8000203e:	973e                	add	a4,a4,a5
    80002040:	77fd                	lui	a5,0xfffff
    80002042:	8f7d                	and	a4,a4,a5
    80002044:	fd043683          	ld	a3,-48(s0)
    80002048:	6785                	lui	a5,0x1
    8000204a:	17fd                	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    8000204c:	96be                	add	a3,a3,a5
    8000204e:	77fd                	lui	a5,0xfffff
    80002050:	8ff5                	and	a5,a5,a3
    80002052:	04f77763          	bgeu	a4,a5,800020a0 <uvmdealloc+0x90>
    80002056:	fd043703          	ld	a4,-48(s0)
    8000205a:	6785                	lui	a5,0x1
    8000205c:	17fd                	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    8000205e:	973e                	add	a4,a4,a5
    80002060:	77fd                	lui	a5,0xfffff
    80002062:	8f7d                	and	a4,a4,a5
    80002064:	fc843683          	ld	a3,-56(s0)
    80002068:	6785                	lui	a5,0x1
    8000206a:	17fd                	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    8000206c:	96be                	add	a3,a3,a5
    8000206e:	77fd                	lui	a5,0xfffff
    80002070:	8ff5                	and	a5,a5,a3
    80002072:	40f707b3          	sub	a5,a4,a5
    80002076:	83b1                	srli	a5,a5,0xc
    80002078:	fef42623          	sw	a5,-20(s0)
    8000207c:	fc843703          	ld	a4,-56(s0)
    80002080:	6785                	lui	a5,0x1
    80002082:	17fd                	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80002084:	973e                	add	a4,a4,a5
    80002086:	77fd                	lui	a5,0xfffff
    80002088:	8ff9                	and	a5,a5,a4
    8000208a:	fec42703          	lw	a4,-20(s0)
    8000208e:	4685                	li	a3,1
    80002090:	863a                	mv	a2,a4
    80002092:	85be                	mv	a1,a5
    80002094:	fd843503          	ld	a0,-40(s0)
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	cc2080e7          	jalr	-830(ra) # 80001d5a <uvmunmap>
    800020a0:	fc843783          	ld	a5,-56(s0)
    800020a4:	853e                	mv	a0,a5
    800020a6:	70e2                	ld	ra,56(sp)
    800020a8:	7442                	ld	s0,48(sp)
    800020aa:	6121                	addi	sp,sp,64
    800020ac:	8082                	ret

00000000800020ae <freewalk>:
    800020ae:	7139                	addi	sp,sp,-64
    800020b0:	fc06                	sd	ra,56(sp)
    800020b2:	f822                	sd	s0,48(sp)
    800020b4:	0080                	addi	s0,sp,64
    800020b6:	fca43423          	sd	a0,-56(s0)
    800020ba:	fe042623          	sw	zero,-20(s0)
    800020be:	a88d                	j	80002130 <freewalk+0x82>
    800020c0:	fec42783          	lw	a5,-20(s0)
    800020c4:	078e                	slli	a5,a5,0x3
    800020c6:	fc843703          	ld	a4,-56(s0)
    800020ca:	97ba                	add	a5,a5,a4
    800020cc:	639c                	ld	a5,0(a5)
    800020ce:	fef43023          	sd	a5,-32(s0)
    800020d2:	fe043783          	ld	a5,-32(s0)
    800020d6:	8b85                	andi	a5,a5,1
    800020d8:	cb9d                	beqz	a5,8000210e <freewalk+0x60>
    800020da:	fe043783          	ld	a5,-32(s0)
    800020de:	8bb9                	andi	a5,a5,14
    800020e0:	e79d                	bnez	a5,8000210e <freewalk+0x60>
    800020e2:	fe043783          	ld	a5,-32(s0)
    800020e6:	83a9                	srli	a5,a5,0xa
    800020e8:	07b2                	slli	a5,a5,0xc
    800020ea:	fcf43c23          	sd	a5,-40(s0)
    800020ee:	fd843783          	ld	a5,-40(s0)
    800020f2:	853e                	mv	a0,a5
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	fba080e7          	jalr	-70(ra) # 800020ae <freewalk>
    800020fc:	fec42783          	lw	a5,-20(s0)
    80002100:	078e                	slli	a5,a5,0x3
    80002102:	fc843703          	ld	a4,-56(s0)
    80002106:	97ba                	add	a5,a5,a4
    80002108:	0007b023          	sd	zero,0(a5) # fffffffffffff000 <end+0xffffffff7ffd7890>
    8000210c:	a829                	j	80002126 <freewalk+0x78>
    8000210e:	fe043783          	ld	a5,-32(s0)
    80002112:	8b85                	andi	a5,a5,1
    80002114:	cb89                	beqz	a5,80002126 <freewalk+0x78>
    80002116:	0000a517          	auipc	a0,0xa
    8000211a:	04a50513          	addi	a0,a0,74 # 8000c160 <etext+0x160>
    8000211e:	fffff097          	auipc	ra,0xfffff
    80002122:	b6c080e7          	jalr	-1172(ra) # 80000c8a <panic>
    80002126:	fec42783          	lw	a5,-20(s0)
    8000212a:	2785                	addiw	a5,a5,1
    8000212c:	fef42623          	sw	a5,-20(s0)
    80002130:	fec42783          	lw	a5,-20(s0)
    80002134:	0007871b          	sext.w	a4,a5
    80002138:	1ff00793          	li	a5,511
    8000213c:	f8e7d2e3          	bge	a5,a4,800020c0 <freewalk+0x12>
    80002140:	fc843503          	ld	a0,-56(s0)
    80002144:	fffff097          	auipc	ra,0xfffff
    80002148:	f3c080e7          	jalr	-196(ra) # 80001080 <kfree>
    8000214c:	0001                	nop
    8000214e:	70e2                	ld	ra,56(sp)
    80002150:	7442                	ld	s0,48(sp)
    80002152:	6121                	addi	sp,sp,64
    80002154:	8082                	ret

0000000080002156 <uvmfree>:
    80002156:	1101                	addi	sp,sp,-32
    80002158:	ec06                	sd	ra,24(sp)
    8000215a:	e822                	sd	s0,16(sp)
    8000215c:	1000                	addi	s0,sp,32
    8000215e:	fea43423          	sd	a0,-24(s0)
    80002162:	feb43023          	sd	a1,-32(s0)
    80002166:	fe043783          	ld	a5,-32(s0)
    8000216a:	c385                	beqz	a5,8000218a <uvmfree+0x34>
    8000216c:	fe043703          	ld	a4,-32(s0)
    80002170:	6785                	lui	a5,0x1
    80002172:	17fd                	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80002174:	97ba                	add	a5,a5,a4
    80002176:	83b1                	srli	a5,a5,0xc
    80002178:	4685                	li	a3,1
    8000217a:	863e                	mv	a2,a5
    8000217c:	4581                	li	a1,0
    8000217e:	fe843503          	ld	a0,-24(s0)
    80002182:	00000097          	auipc	ra,0x0
    80002186:	bd8080e7          	jalr	-1064(ra) # 80001d5a <uvmunmap>
    8000218a:	fe843503          	ld	a0,-24(s0)
    8000218e:	00000097          	auipc	ra,0x0
    80002192:	f20080e7          	jalr	-224(ra) # 800020ae <freewalk>
    80002196:	0001                	nop
    80002198:	60e2                	ld	ra,24(sp)
    8000219a:	6442                	ld	s0,16(sp)
    8000219c:	6105                	addi	sp,sp,32
    8000219e:	8082                	ret

00000000800021a0 <uvmcopy>:
    800021a0:	711d                	addi	sp,sp,-96
    800021a2:	ec86                	sd	ra,88(sp)
    800021a4:	e8a2                	sd	s0,80(sp)
    800021a6:	1080                	addi	s0,sp,96
    800021a8:	faa43c23          	sd	a0,-72(s0)
    800021ac:	fab43823          	sd	a1,-80(s0)
    800021b0:	fac43423          	sd	a2,-88(s0)
    800021b4:	fe043423          	sd	zero,-24(s0)
    800021b8:	a0d9                	j	8000227e <uvmcopy+0xde>
    800021ba:	4601                	li	a2,0
    800021bc:	fe843583          	ld	a1,-24(s0)
    800021c0:	fb843503          	ld	a0,-72(s0)
    800021c4:	00000097          	auipc	ra,0x0
    800021c8:	8f4080e7          	jalr	-1804(ra) # 80001ab8 <walk>
    800021cc:	fea43023          	sd	a0,-32(s0)
    800021d0:	fe043783          	ld	a5,-32(s0)
    800021d4:	eb89                	bnez	a5,800021e6 <uvmcopy+0x46>
    800021d6:	0000a517          	auipc	a0,0xa
    800021da:	f9a50513          	addi	a0,a0,-102 # 8000c170 <etext+0x170>
    800021de:	fffff097          	auipc	ra,0xfffff
    800021e2:	aac080e7          	jalr	-1364(ra) # 80000c8a <panic>
    800021e6:	fe043783          	ld	a5,-32(s0)
    800021ea:	639c                	ld	a5,0(a5)
    800021ec:	8b85                	andi	a5,a5,1
    800021ee:	eb89                	bnez	a5,80002200 <uvmcopy+0x60>
    800021f0:	0000a517          	auipc	a0,0xa
    800021f4:	fa050513          	addi	a0,a0,-96 # 8000c190 <etext+0x190>
    800021f8:	fffff097          	auipc	ra,0xfffff
    800021fc:	a92080e7          	jalr	-1390(ra) # 80000c8a <panic>
    80002200:	fe043783          	ld	a5,-32(s0)
    80002204:	639c                	ld	a5,0(a5)
    80002206:	83a9                	srli	a5,a5,0xa
    80002208:	07b2                	slli	a5,a5,0xc
    8000220a:	fcf43c23          	sd	a5,-40(s0)
    8000220e:	fe043783          	ld	a5,-32(s0)
    80002212:	639c                	ld	a5,0(a5)
    80002214:	2781                	sext.w	a5,a5
    80002216:	3ff7f793          	andi	a5,a5,1023
    8000221a:	fcf42a23          	sw	a5,-44(s0)
    8000221e:	fffff097          	auipc	ra,0xfffff
    80002222:	f06080e7          	jalr	-250(ra) # 80001124 <kalloc>
    80002226:	fca43423          	sd	a0,-56(s0)
    8000222a:	fc843783          	ld	a5,-56(s0)
    8000222e:	c3a5                	beqz	a5,8000228e <uvmcopy+0xee>
    80002230:	fd843783          	ld	a5,-40(s0)
    80002234:	6605                	lui	a2,0x1
    80002236:	85be                	mv	a1,a5
    80002238:	fc843503          	ld	a0,-56(s0)
    8000223c:	fffff097          	auipc	ra,0xfffff
    80002240:	2f4080e7          	jalr	756(ra) # 80001530 <memmove>
    80002244:	fc843783          	ld	a5,-56(s0)
    80002248:	fd442703          	lw	a4,-44(s0)
    8000224c:	86be                	mv	a3,a5
    8000224e:	6605                	lui	a2,0x1
    80002250:	fe843583          	ld	a1,-24(s0)
    80002254:	fb043503          	ld	a0,-80(s0)
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	a24080e7          	jalr	-1500(ra) # 80001c7c <mappages>
    80002260:	87aa                	mv	a5,a0
    80002262:	cb81                	beqz	a5,80002272 <uvmcopy+0xd2>
    80002264:	fc843503          	ld	a0,-56(s0)
    80002268:	fffff097          	auipc	ra,0xfffff
    8000226c:	e18080e7          	jalr	-488(ra) # 80001080 <kfree>
    80002270:	a005                	j	80002290 <uvmcopy+0xf0>
    80002272:	fe843703          	ld	a4,-24(s0)
    80002276:	6785                	lui	a5,0x1
    80002278:	97ba                	add	a5,a5,a4
    8000227a:	fef43423          	sd	a5,-24(s0)
    8000227e:	fe843703          	ld	a4,-24(s0)
    80002282:	fa843783          	ld	a5,-88(s0)
    80002286:	f2f76ae3          	bltu	a4,a5,800021ba <uvmcopy+0x1a>
    8000228a:	4781                	li	a5,0
    8000228c:	a839                	j	800022aa <uvmcopy+0x10a>
    8000228e:	0001                	nop
    80002290:	fe843783          	ld	a5,-24(s0)
    80002294:	83b1                	srli	a5,a5,0xc
    80002296:	4685                	li	a3,1
    80002298:	863e                	mv	a2,a5
    8000229a:	4581                	li	a1,0
    8000229c:	fb043503          	ld	a0,-80(s0)
    800022a0:	00000097          	auipc	ra,0x0
    800022a4:	aba080e7          	jalr	-1350(ra) # 80001d5a <uvmunmap>
    800022a8:	57fd                	li	a5,-1
    800022aa:	853e                	mv	a0,a5
    800022ac:	60e6                	ld	ra,88(sp)
    800022ae:	6446                	ld	s0,80(sp)
    800022b0:	6125                	addi	sp,sp,96
    800022b2:	8082                	ret

00000000800022b4 <uvmclear>:
    800022b4:	7179                	addi	sp,sp,-48
    800022b6:	f406                	sd	ra,40(sp)
    800022b8:	f022                	sd	s0,32(sp)
    800022ba:	1800                	addi	s0,sp,48
    800022bc:	fca43c23          	sd	a0,-40(s0)
    800022c0:	fcb43823          	sd	a1,-48(s0)
    800022c4:	4601                	li	a2,0
    800022c6:	fd043583          	ld	a1,-48(s0)
    800022ca:	fd843503          	ld	a0,-40(s0)
    800022ce:	fffff097          	auipc	ra,0xfffff
    800022d2:	7ea080e7          	jalr	2026(ra) # 80001ab8 <walk>
    800022d6:	fea43423          	sd	a0,-24(s0)
    800022da:	fe843783          	ld	a5,-24(s0)
    800022de:	eb89                	bnez	a5,800022f0 <uvmclear+0x3c>
    800022e0:	0000a517          	auipc	a0,0xa
    800022e4:	ed050513          	addi	a0,a0,-304 # 8000c1b0 <etext+0x1b0>
    800022e8:	fffff097          	auipc	ra,0xfffff
    800022ec:	9a2080e7          	jalr	-1630(ra) # 80000c8a <panic>
    800022f0:	fe843783          	ld	a5,-24(s0)
    800022f4:	639c                	ld	a5,0(a5)
    800022f6:	fef7f713          	andi	a4,a5,-17
    800022fa:	fe843783          	ld	a5,-24(s0)
    800022fe:	e398                	sd	a4,0(a5)
    80002300:	0001                	nop
    80002302:	70a2                	ld	ra,40(sp)
    80002304:	7402                	ld	s0,32(sp)
    80002306:	6145                	addi	sp,sp,48
    80002308:	8082                	ret

000000008000230a <copyout>:
    8000230a:	715d                	addi	sp,sp,-80
    8000230c:	e486                	sd	ra,72(sp)
    8000230e:	e0a2                	sd	s0,64(sp)
    80002310:	0880                	addi	s0,sp,80
    80002312:	fca43423          	sd	a0,-56(s0)
    80002316:	fcb43023          	sd	a1,-64(s0)
    8000231a:	fac43c23          	sd	a2,-72(s0)
    8000231e:	fad43823          	sd	a3,-80(s0)
    80002322:	a055                	j	800023c6 <copyout+0xbc>
    80002324:	fc043703          	ld	a4,-64(s0)
    80002328:	77fd                	lui	a5,0xfffff
    8000232a:	8ff9                	and	a5,a5,a4
    8000232c:	fef43023          	sd	a5,-32(s0)
    80002330:	fe043583          	ld	a1,-32(s0)
    80002334:	fc843503          	ld	a0,-56(s0)
    80002338:	00000097          	auipc	ra,0x0
    8000233c:	872080e7          	jalr	-1934(ra) # 80001baa <walkaddr>
    80002340:	fca43c23          	sd	a0,-40(s0)
    80002344:	fd843783          	ld	a5,-40(s0)
    80002348:	e399                	bnez	a5,8000234e <copyout+0x44>
    8000234a:	57fd                	li	a5,-1
    8000234c:	a049                	j	800023ce <copyout+0xc4>
    8000234e:	fe043703          	ld	a4,-32(s0)
    80002352:	fc043783          	ld	a5,-64(s0)
    80002356:	8f1d                	sub	a4,a4,a5
    80002358:	6785                	lui	a5,0x1
    8000235a:	97ba                	add	a5,a5,a4
    8000235c:	fef43423          	sd	a5,-24(s0)
    80002360:	fe843703          	ld	a4,-24(s0)
    80002364:	fb043783          	ld	a5,-80(s0)
    80002368:	00e7f663          	bgeu	a5,a4,80002374 <copyout+0x6a>
    8000236c:	fb043783          	ld	a5,-80(s0)
    80002370:	fef43423          	sd	a5,-24(s0)
    80002374:	fc043703          	ld	a4,-64(s0)
    80002378:	fe043783          	ld	a5,-32(s0)
    8000237c:	8f1d                	sub	a4,a4,a5
    8000237e:	fd843783          	ld	a5,-40(s0)
    80002382:	97ba                	add	a5,a5,a4
    80002384:	873e                	mv	a4,a5
    80002386:	fe843783          	ld	a5,-24(s0)
    8000238a:	2781                	sext.w	a5,a5
    8000238c:	863e                	mv	a2,a5
    8000238e:	fb843583          	ld	a1,-72(s0)
    80002392:	853a                	mv	a0,a4
    80002394:	fffff097          	auipc	ra,0xfffff
    80002398:	19c080e7          	jalr	412(ra) # 80001530 <memmove>
    8000239c:	fb043703          	ld	a4,-80(s0)
    800023a0:	fe843783          	ld	a5,-24(s0)
    800023a4:	40f707b3          	sub	a5,a4,a5
    800023a8:	faf43823          	sd	a5,-80(s0)
    800023ac:	fb843703          	ld	a4,-72(s0)
    800023b0:	fe843783          	ld	a5,-24(s0)
    800023b4:	97ba                	add	a5,a5,a4
    800023b6:	faf43c23          	sd	a5,-72(s0)
    800023ba:	fe043703          	ld	a4,-32(s0)
    800023be:	6785                	lui	a5,0x1
    800023c0:	97ba                	add	a5,a5,a4
    800023c2:	fcf43023          	sd	a5,-64(s0)
    800023c6:	fb043783          	ld	a5,-80(s0)
    800023ca:	ffa9                	bnez	a5,80002324 <copyout+0x1a>
    800023cc:	4781                	li	a5,0
    800023ce:	853e                	mv	a0,a5
    800023d0:	60a6                	ld	ra,72(sp)
    800023d2:	6406                	ld	s0,64(sp)
    800023d4:	6161                	addi	sp,sp,80
    800023d6:	8082                	ret

00000000800023d8 <copyin>:
    800023d8:	715d                	addi	sp,sp,-80
    800023da:	e486                	sd	ra,72(sp)
    800023dc:	e0a2                	sd	s0,64(sp)
    800023de:	0880                	addi	s0,sp,80
    800023e0:	fca43423          	sd	a0,-56(s0)
    800023e4:	fcb43023          	sd	a1,-64(s0)
    800023e8:	fac43c23          	sd	a2,-72(s0)
    800023ec:	fad43823          	sd	a3,-80(s0)
    800023f0:	a055                	j	80002494 <copyin+0xbc>
    800023f2:	fb843703          	ld	a4,-72(s0)
    800023f6:	77fd                	lui	a5,0xfffff
    800023f8:	8ff9                	and	a5,a5,a4
    800023fa:	fef43023          	sd	a5,-32(s0)
    800023fe:	fe043583          	ld	a1,-32(s0)
    80002402:	fc843503          	ld	a0,-56(s0)
    80002406:	fffff097          	auipc	ra,0xfffff
    8000240a:	7a4080e7          	jalr	1956(ra) # 80001baa <walkaddr>
    8000240e:	fca43c23          	sd	a0,-40(s0)
    80002412:	fd843783          	ld	a5,-40(s0)
    80002416:	e399                	bnez	a5,8000241c <copyin+0x44>
    80002418:	57fd                	li	a5,-1
    8000241a:	a049                	j	8000249c <copyin+0xc4>
    8000241c:	fe043703          	ld	a4,-32(s0)
    80002420:	fb843783          	ld	a5,-72(s0)
    80002424:	8f1d                	sub	a4,a4,a5
    80002426:	6785                	lui	a5,0x1
    80002428:	97ba                	add	a5,a5,a4
    8000242a:	fef43423          	sd	a5,-24(s0)
    8000242e:	fe843703          	ld	a4,-24(s0)
    80002432:	fb043783          	ld	a5,-80(s0)
    80002436:	00e7f663          	bgeu	a5,a4,80002442 <copyin+0x6a>
    8000243a:	fb043783          	ld	a5,-80(s0)
    8000243e:	fef43423          	sd	a5,-24(s0)
    80002442:	fb843703          	ld	a4,-72(s0)
    80002446:	fe043783          	ld	a5,-32(s0)
    8000244a:	8f1d                	sub	a4,a4,a5
    8000244c:	fd843783          	ld	a5,-40(s0)
    80002450:	97ba                	add	a5,a5,a4
    80002452:	873e                	mv	a4,a5
    80002454:	fe843783          	ld	a5,-24(s0)
    80002458:	2781                	sext.w	a5,a5
    8000245a:	863e                	mv	a2,a5
    8000245c:	85ba                	mv	a1,a4
    8000245e:	fc043503          	ld	a0,-64(s0)
    80002462:	fffff097          	auipc	ra,0xfffff
    80002466:	0ce080e7          	jalr	206(ra) # 80001530 <memmove>
    8000246a:	fb043703          	ld	a4,-80(s0)
    8000246e:	fe843783          	ld	a5,-24(s0)
    80002472:	40f707b3          	sub	a5,a4,a5
    80002476:	faf43823          	sd	a5,-80(s0)
    8000247a:	fc043703          	ld	a4,-64(s0)
    8000247e:	fe843783          	ld	a5,-24(s0)
    80002482:	97ba                	add	a5,a5,a4
    80002484:	fcf43023          	sd	a5,-64(s0)
    80002488:	fe043703          	ld	a4,-32(s0)
    8000248c:	6785                	lui	a5,0x1
    8000248e:	97ba                	add	a5,a5,a4
    80002490:	faf43c23          	sd	a5,-72(s0)
    80002494:	fb043783          	ld	a5,-80(s0)
    80002498:	ffa9                	bnez	a5,800023f2 <copyin+0x1a>
    8000249a:	4781                	li	a5,0
    8000249c:	853e                	mv	a0,a5
    8000249e:	60a6                	ld	ra,72(sp)
    800024a0:	6406                	ld	s0,64(sp)
    800024a2:	6161                	addi	sp,sp,80
    800024a4:	8082                	ret

00000000800024a6 <copyinstr>:
    800024a6:	711d                	addi	sp,sp,-96
    800024a8:	ec86                	sd	ra,88(sp)
    800024aa:	e8a2                	sd	s0,80(sp)
    800024ac:	1080                	addi	s0,sp,96
    800024ae:	faa43c23          	sd	a0,-72(s0)
    800024b2:	fab43823          	sd	a1,-80(s0)
    800024b6:	fac43423          	sd	a2,-88(s0)
    800024ba:	fad43023          	sd	a3,-96(s0)
    800024be:	fe042223          	sw	zero,-28(s0)
    800024c2:	a0f1                	j	8000258e <copyinstr+0xe8>
    800024c4:	fa843703          	ld	a4,-88(s0)
    800024c8:	77fd                	lui	a5,0xfffff
    800024ca:	8ff9                	and	a5,a5,a4
    800024cc:	fcf43823          	sd	a5,-48(s0)
    800024d0:	fd043583          	ld	a1,-48(s0)
    800024d4:	fb843503          	ld	a0,-72(s0)
    800024d8:	fffff097          	auipc	ra,0xfffff
    800024dc:	6d2080e7          	jalr	1746(ra) # 80001baa <walkaddr>
    800024e0:	fca43423          	sd	a0,-56(s0)
    800024e4:	fc843783          	ld	a5,-56(s0)
    800024e8:	e399                	bnez	a5,800024ee <copyinstr+0x48>
    800024ea:	57fd                	li	a5,-1
    800024ec:	a87d                	j	800025aa <copyinstr+0x104>
    800024ee:	fd043703          	ld	a4,-48(s0)
    800024f2:	fa843783          	ld	a5,-88(s0)
    800024f6:	8f1d                	sub	a4,a4,a5
    800024f8:	6785                	lui	a5,0x1
    800024fa:	97ba                	add	a5,a5,a4
    800024fc:	fef43423          	sd	a5,-24(s0)
    80002500:	fe843703          	ld	a4,-24(s0)
    80002504:	fa043783          	ld	a5,-96(s0)
    80002508:	00e7f663          	bgeu	a5,a4,80002514 <copyinstr+0x6e>
    8000250c:	fa043783          	ld	a5,-96(s0)
    80002510:	fef43423          	sd	a5,-24(s0)
    80002514:	fa843703          	ld	a4,-88(s0)
    80002518:	fd043783          	ld	a5,-48(s0)
    8000251c:	8f1d                	sub	a4,a4,a5
    8000251e:	fc843783          	ld	a5,-56(s0)
    80002522:	97ba                	add	a5,a5,a4
    80002524:	fcf43c23          	sd	a5,-40(s0)
    80002528:	a891                	j	8000257c <copyinstr+0xd6>
    8000252a:	fd843783          	ld	a5,-40(s0)
    8000252e:	0007c783          	lbu	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002532:	eb89                	bnez	a5,80002544 <copyinstr+0x9e>
    80002534:	fb043783          	ld	a5,-80(s0)
    80002538:	00078023          	sb	zero,0(a5)
    8000253c:	4785                	li	a5,1
    8000253e:	fef42223          	sw	a5,-28(s0)
    80002542:	a081                	j	80002582 <copyinstr+0xdc>
    80002544:	fd843783          	ld	a5,-40(s0)
    80002548:	0007c703          	lbu	a4,0(a5)
    8000254c:	fb043783          	ld	a5,-80(s0)
    80002550:	00e78023          	sb	a4,0(a5)
    80002554:	fe843783          	ld	a5,-24(s0)
    80002558:	17fd                	addi	a5,a5,-1
    8000255a:	fef43423          	sd	a5,-24(s0)
    8000255e:	fa043783          	ld	a5,-96(s0)
    80002562:	17fd                	addi	a5,a5,-1
    80002564:	faf43023          	sd	a5,-96(s0)
    80002568:	fd843783          	ld	a5,-40(s0)
    8000256c:	0785                	addi	a5,a5,1
    8000256e:	fcf43c23          	sd	a5,-40(s0)
    80002572:	fb043783          	ld	a5,-80(s0)
    80002576:	0785                	addi	a5,a5,1
    80002578:	faf43823          	sd	a5,-80(s0)
    8000257c:	fe843783          	ld	a5,-24(s0)
    80002580:	f7cd                	bnez	a5,8000252a <copyinstr+0x84>
    80002582:	fd043703          	ld	a4,-48(s0)
    80002586:	6785                	lui	a5,0x1
    80002588:	97ba                	add	a5,a5,a4
    8000258a:	faf43423          	sd	a5,-88(s0)
    8000258e:	fe442783          	lw	a5,-28(s0)
    80002592:	2781                	sext.w	a5,a5
    80002594:	e781                	bnez	a5,8000259c <copyinstr+0xf6>
    80002596:	fa043783          	ld	a5,-96(s0)
    8000259a:	f78d                	bnez	a5,800024c4 <copyinstr+0x1e>
    8000259c:	fe442783          	lw	a5,-28(s0)
    800025a0:	2781                	sext.w	a5,a5
    800025a2:	c399                	beqz	a5,800025a8 <copyinstr+0x102>
    800025a4:	4781                	li	a5,0
    800025a6:	a011                	j	800025aa <copyinstr+0x104>
    800025a8:	57fd                	li	a5,-1
    800025aa:	853e                	mv	a0,a5
    800025ac:	60e6                	ld	ra,88(sp)
    800025ae:	6446                	ld	s0,80(sp)
    800025b0:	6125                	addi	sp,sp,96
    800025b2:	8082                	ret

00000000800025b4 <r_sstatus>:
    800025b4:	1101                	addi	sp,sp,-32
    800025b6:	ec22                	sd	s0,24(sp)
    800025b8:	1000                	addi	s0,sp,32
    800025ba:	100027f3          	csrr	a5,sstatus
    800025be:	fef43423          	sd	a5,-24(s0)
    800025c2:	fe843783          	ld	a5,-24(s0)
    800025c6:	853e                	mv	a0,a5
    800025c8:	6462                	ld	s0,24(sp)
    800025ca:	6105                	addi	sp,sp,32
    800025cc:	8082                	ret

00000000800025ce <w_sstatus>:
    800025ce:	1101                	addi	sp,sp,-32
    800025d0:	ec22                	sd	s0,24(sp)
    800025d2:	1000                	addi	s0,sp,32
    800025d4:	fea43423          	sd	a0,-24(s0)
    800025d8:	fe843783          	ld	a5,-24(s0)
    800025dc:	10079073          	csrw	sstatus,a5
    800025e0:	0001                	nop
    800025e2:	6462                	ld	s0,24(sp)
    800025e4:	6105                	addi	sp,sp,32
    800025e6:	8082                	ret

00000000800025e8 <intr_on>:
    800025e8:	1141                	addi	sp,sp,-16
    800025ea:	e406                	sd	ra,8(sp)
    800025ec:	e022                	sd	s0,0(sp)
    800025ee:	0800                	addi	s0,sp,16
    800025f0:	00000097          	auipc	ra,0x0
    800025f4:	fc4080e7          	jalr	-60(ra) # 800025b4 <r_sstatus>
    800025f8:	87aa                	mv	a5,a0
    800025fa:	0027e793          	ori	a5,a5,2
    800025fe:	853e                	mv	a0,a5
    80002600:	00000097          	auipc	ra,0x0
    80002604:	fce080e7          	jalr	-50(ra) # 800025ce <w_sstatus>
    80002608:	0001                	nop
    8000260a:	60a2                	ld	ra,8(sp)
    8000260c:	6402                	ld	s0,0(sp)
    8000260e:	0141                	addi	sp,sp,16
    80002610:	8082                	ret

0000000080002612 <intr_get>:
    80002612:	1101                	addi	sp,sp,-32
    80002614:	ec06                	sd	ra,24(sp)
    80002616:	e822                	sd	s0,16(sp)
    80002618:	1000                	addi	s0,sp,32
    8000261a:	00000097          	auipc	ra,0x0
    8000261e:	f9a080e7          	jalr	-102(ra) # 800025b4 <r_sstatus>
    80002622:	fea43423          	sd	a0,-24(s0)
    80002626:	fe843783          	ld	a5,-24(s0)
    8000262a:	8b89                	andi	a5,a5,2
    8000262c:	00f037b3          	snez	a5,a5
    80002630:	0ff7f793          	zext.b	a5,a5
    80002634:	2781                	sext.w	a5,a5
    80002636:	853e                	mv	a0,a5
    80002638:	60e2                	ld	ra,24(sp)
    8000263a:	6442                	ld	s0,16(sp)
    8000263c:	6105                	addi	sp,sp,32
    8000263e:	8082                	ret

0000000080002640 <r_tp>:
    80002640:	1101                	addi	sp,sp,-32
    80002642:	ec22                	sd	s0,24(sp)
    80002644:	1000                	addi	s0,sp,32
    80002646:	8792                	mv	a5,tp
    80002648:	fef43423          	sd	a5,-24(s0)
    8000264c:	fe843783          	ld	a5,-24(s0)
    80002650:	853e                	mv	a0,a5
    80002652:	6462                	ld	s0,24(sp)
    80002654:	6105                	addi	sp,sp,32
    80002656:	8082                	ret

0000000080002658 <rand>:
    80002658:	1101                	addi	sp,sp,-32
    8000265a:	ec06                	sd	ra,24(sp)
    8000265c:	e822                	sd	s0,16(sp)
    8000265e:	1000                	addi	s0,sp,32
    80002660:	0001a517          	auipc	a0,0x1a
    80002664:	d1850513          	addi	a0,a0,-744 # 8001c378 <rand_lock>
    80002668:	fffff097          	auipc	ra,0xfffff
    8000266c:	c10080e7          	jalr	-1008(ra) # 80001278 <acquire>
    80002670:	0000a797          	auipc	a5,0xa
    80002674:	2d478793          	addi	a5,a5,724 # 8000c944 <seed>
    80002678:	439c                	lw	a5,0(a5)
    8000267a:	fef42623          	sw	a5,-20(s0)
    8000267e:	0000a797          	auipc	a5,0xa
    80002682:	2c678793          	addi	a5,a5,710 # 8000c944 <seed>
    80002686:	4398                	lw	a4,0(a5)
    80002688:	41c657b7          	lui	a5,0x41c65
    8000268c:	e6d7879b          	addiw	a5,a5,-403 # 41c64e6d <_entry-0x3e39b193>
    80002690:	02f707bb          	mulw	a5,a4,a5
    80002694:	0007871b          	sext.w	a4,a5
    80002698:	678d                	lui	a5,0x3
    8000269a:	0397879b          	addiw	a5,a5,57 # 3039 <_entry-0x7fffcfc7>
    8000269e:	9fb9                	addw	a5,a5,a4
    800026a0:	2781                	sext.w	a5,a5
    800026a2:	873e                	mv	a4,a5
    800026a4:	800007b7          	lui	a5,0x80000
    800026a8:	fff7c793          	not	a5,a5
    800026ac:	8ff9                	and	a5,a5,a4
    800026ae:	0007871b          	sext.w	a4,a5
    800026b2:	0000a797          	auipc	a5,0xa
    800026b6:	29278793          	addi	a5,a5,658 # 8000c944 <seed>
    800026ba:	c398                	sw	a4,0(a5)
    800026bc:	0001a517          	auipc	a0,0x1a
    800026c0:	cbc50513          	addi	a0,a0,-836 # 8001c378 <rand_lock>
    800026c4:	fffff097          	auipc	ra,0xfffff
    800026c8:	c18080e7          	jalr	-1000(ra) # 800012dc <release>
    800026cc:	fec42783          	lw	a5,-20(s0)
    800026d0:	853e                	mv	a0,a5
    800026d2:	60e2                	ld	ra,24(sp)
    800026d4:	6442                	ld	s0,16(sp)
    800026d6:	6105                	addi	sp,sp,32
    800026d8:	8082                	ret

00000000800026da <proc_mapstacks>:
    800026da:	7139                	addi	sp,sp,-64
    800026dc:	fc06                	sd	ra,56(sp)
    800026de:	f822                	sd	s0,48(sp)
    800026e0:	0080                	addi	s0,sp,64
    800026e2:	fca43423          	sd	a0,-56(s0)
    800026e6:	00013797          	auipc	a5,0x13
    800026ea:	a6278793          	addi	a5,a5,-1438 # 80015148 <proc>
    800026ee:	fef43423          	sd	a5,-24(s0)
    800026f2:	a061                	j	8000277a <proc_mapstacks+0xa0>
    800026f4:	fffff097          	auipc	ra,0xfffff
    800026f8:	a30080e7          	jalr	-1488(ra) # 80001124 <kalloc>
    800026fc:	fea43023          	sd	a0,-32(s0)
    80002700:	fe043783          	ld	a5,-32(s0)
    80002704:	eb89                	bnez	a5,80002716 <proc_mapstacks+0x3c>
    80002706:	0000a517          	auipc	a0,0xa
    8000270a:	aba50513          	addi	a0,a0,-1350 # 8000c1c0 <etext+0x1c0>
    8000270e:	ffffe097          	auipc	ra,0xffffe
    80002712:	57c080e7          	jalr	1404(ra) # 80000c8a <panic>
    80002716:	fe843703          	ld	a4,-24(s0)
    8000271a:	00013797          	auipc	a5,0x13
    8000271e:	a2e78793          	addi	a5,a5,-1490 # 80015148 <proc>
    80002722:	40f707b3          	sub	a5,a4,a5
    80002726:	4037d713          	srai	a4,a5,0x3
    8000272a:	0000a797          	auipc	a5,0xa
    8000272e:	d7678793          	addi	a5,a5,-650 # 8000c4a0 <etext+0x4a0>
    80002732:	639c                	ld	a5,0(a5)
    80002734:	02f707b3          	mul	a5,a4,a5
    80002738:	2781                	sext.w	a5,a5
    8000273a:	2785                	addiw	a5,a5,1
    8000273c:	2781                	sext.w	a5,a5
    8000273e:	00d7979b          	slliw	a5,a5,0xd
    80002742:	2781                	sext.w	a5,a5
    80002744:	873e                	mv	a4,a5
    80002746:	040007b7          	lui	a5,0x4000
    8000274a:	17fd                	addi	a5,a5,-1 # 3ffffff <_entry-0x7c000001>
    8000274c:	07b2                	slli	a5,a5,0xc
    8000274e:	8f99                	sub	a5,a5,a4
    80002750:	fcf43c23          	sd	a5,-40(s0)
    80002754:	fe043783          	ld	a5,-32(s0)
    80002758:	4719                	li	a4,6
    8000275a:	6685                	lui	a3,0x1
    8000275c:	863e                	mv	a2,a5
    8000275e:	fd843583          	ld	a1,-40(s0)
    80002762:	fc843503          	ld	a0,-56(s0)
    80002766:	fffff097          	auipc	ra,0xfffff
    8000276a:	4bc080e7          	jalr	1212(ra) # 80001c22 <kvmmap>
    8000276e:	fe843783          	ld	a5,-24(s0)
    80002772:	1c878793          	addi	a5,a5,456
    80002776:	fef43423          	sd	a5,-24(s0)
    8000277a:	fe843703          	ld	a4,-24(s0)
    8000277e:	0001a797          	auipc	a5,0x1a
    80002782:	bca78793          	addi	a5,a5,-1078 # 8001c348 <pid_lock>
    80002786:	f6f767e3          	bltu	a4,a5,800026f4 <proc_mapstacks+0x1a>
    8000278a:	0001                	nop
    8000278c:	0001                	nop
    8000278e:	70e2                	ld	ra,56(sp)
    80002790:	7442                	ld	s0,48(sp)
    80002792:	6121                	addi	sp,sp,64
    80002794:	8082                	ret

0000000080002796 <procinit>:
    80002796:	1101                	addi	sp,sp,-32
    80002798:	ec06                	sd	ra,24(sp)
    8000279a:	e822                	sd	s0,16(sp)
    8000279c:	1000                	addi	s0,sp,32
    8000279e:	0000a597          	auipc	a1,0xa
    800027a2:	a2a58593          	addi	a1,a1,-1494 # 8000c1c8 <etext+0x1c8>
    800027a6:	0001a517          	auipc	a0,0x1a
    800027aa:	ba250513          	addi	a0,a0,-1118 # 8001c348 <pid_lock>
    800027ae:	fffff097          	auipc	ra,0xfffff
    800027b2:	a9a080e7          	jalr	-1382(ra) # 80001248 <initlock>
    800027b6:	0000a597          	auipc	a1,0xa
    800027ba:	a1a58593          	addi	a1,a1,-1510 # 8000c1d0 <etext+0x1d0>
    800027be:	0001a517          	auipc	a0,0x1a
    800027c2:	ba250513          	addi	a0,a0,-1118 # 8001c360 <wait_lock>
    800027c6:	fffff097          	auipc	ra,0xfffff
    800027ca:	a82080e7          	jalr	-1406(ra) # 80001248 <initlock>
    800027ce:	0000a597          	auipc	a1,0xa
    800027d2:	a1258593          	addi	a1,a1,-1518 # 8000c1e0 <etext+0x1e0>
    800027d6:	0001a517          	auipc	a0,0x1a
    800027da:	ba250513          	addi	a0,a0,-1118 # 8001c378 <rand_lock>
    800027de:	fffff097          	auipc	ra,0xfffff
    800027e2:	a6a080e7          	jalr	-1430(ra) # 80001248 <initlock>
    800027e6:	00013797          	auipc	a5,0x13
    800027ea:	96278793          	addi	a5,a5,-1694 # 80015148 <proc>
    800027ee:	fef43423          	sd	a5,-24(s0)
    800027f2:	a0bd                	j	80002860 <procinit+0xca>
    800027f4:	fe843783          	ld	a5,-24(s0)
    800027f8:	0000a597          	auipc	a1,0xa
    800027fc:	9f058593          	addi	a1,a1,-1552 # 8000c1e8 <etext+0x1e8>
    80002800:	853e                	mv	a0,a5
    80002802:	fffff097          	auipc	ra,0xfffff
    80002806:	a46080e7          	jalr	-1466(ra) # 80001248 <initlock>
    8000280a:	fe843783          	ld	a5,-24(s0)
    8000280e:	0007ac23          	sw	zero,24(a5)
    80002812:	fe843703          	ld	a4,-24(s0)
    80002816:	00013797          	auipc	a5,0x13
    8000281a:	93278793          	addi	a5,a5,-1742 # 80015148 <proc>
    8000281e:	40f707b3          	sub	a5,a4,a5
    80002822:	4037d713          	srai	a4,a5,0x3
    80002826:	0000a797          	auipc	a5,0xa
    8000282a:	c7a78793          	addi	a5,a5,-902 # 8000c4a0 <etext+0x4a0>
    8000282e:	639c                	ld	a5,0(a5)
    80002830:	02f707b3          	mul	a5,a4,a5
    80002834:	2781                	sext.w	a5,a5
    80002836:	2785                	addiw	a5,a5,1
    80002838:	2781                	sext.w	a5,a5
    8000283a:	00d7979b          	slliw	a5,a5,0xd
    8000283e:	2781                	sext.w	a5,a5
    80002840:	873e                	mv	a4,a5
    80002842:	040007b7          	lui	a5,0x4000
    80002846:	17fd                	addi	a5,a5,-1 # 3ffffff <_entry-0x7c000001>
    80002848:	07b2                	slli	a5,a5,0xc
    8000284a:	8f99                	sub	a5,a5,a4
    8000284c:	873e                	mv	a4,a5
    8000284e:	fe843783          	ld	a5,-24(s0)
    80002852:	ebd8                	sd	a4,144(a5)
    80002854:	fe843783          	ld	a5,-24(s0)
    80002858:	1c878793          	addi	a5,a5,456
    8000285c:	fef43423          	sd	a5,-24(s0)
    80002860:	fe843703          	ld	a4,-24(s0)
    80002864:	0001a797          	auipc	a5,0x1a
    80002868:	ae478793          	addi	a5,a5,-1308 # 8001c348 <pid_lock>
    8000286c:	f8f764e3          	bltu	a4,a5,800027f4 <procinit+0x5e>
    80002870:	0001                	nop
    80002872:	0001                	nop
    80002874:	60e2                	ld	ra,24(sp)
    80002876:	6442                	ld	s0,16(sp)
    80002878:	6105                	addi	sp,sp,32
    8000287a:	8082                	ret

000000008000287c <cpuid>:
    8000287c:	1101                	addi	sp,sp,-32
    8000287e:	ec06                	sd	ra,24(sp)
    80002880:	e822                	sd	s0,16(sp)
    80002882:	1000                	addi	s0,sp,32
    80002884:	00000097          	auipc	ra,0x0
    80002888:	dbc080e7          	jalr	-580(ra) # 80002640 <r_tp>
    8000288c:	87aa                	mv	a5,a0
    8000288e:	fef42623          	sw	a5,-20(s0)
    80002892:	fec42783          	lw	a5,-20(s0)
    80002896:	853e                	mv	a0,a5
    80002898:	60e2                	ld	ra,24(sp)
    8000289a:	6442                	ld	s0,16(sp)
    8000289c:	6105                	addi	sp,sp,32
    8000289e:	8082                	ret

00000000800028a0 <mycpu>:
    800028a0:	1101                	addi	sp,sp,-32
    800028a2:	ec06                	sd	ra,24(sp)
    800028a4:	e822                	sd	s0,16(sp)
    800028a6:	1000                	addi	s0,sp,32
    800028a8:	00000097          	auipc	ra,0x0
    800028ac:	fd4080e7          	jalr	-44(ra) # 8000287c <cpuid>
    800028b0:	87aa                	mv	a5,a0
    800028b2:	fef42623          	sw	a5,-20(s0)
    800028b6:	fec42783          	lw	a5,-20(s0)
    800028ba:	00779713          	slli	a4,a5,0x7
    800028be:	00012797          	auipc	a5,0x12
    800028c2:	48a78793          	addi	a5,a5,1162 # 80014d48 <cpus>
    800028c6:	97ba                	add	a5,a5,a4
    800028c8:	fef43023          	sd	a5,-32(s0)
    800028cc:	fe043783          	ld	a5,-32(s0)
    800028d0:	853e                	mv	a0,a5
    800028d2:	60e2                	ld	ra,24(sp)
    800028d4:	6442                	ld	s0,16(sp)
    800028d6:	6105                	addi	sp,sp,32
    800028d8:	8082                	ret

00000000800028da <myproc>:
    800028da:	1101                	addi	sp,sp,-32
    800028dc:	ec06                	sd	ra,24(sp)
    800028de:	e822                	sd	s0,16(sp)
    800028e0:	1000                	addi	s0,sp,32
    800028e2:	fffff097          	auipc	ra,0xfffff
    800028e6:	a94080e7          	jalr	-1388(ra) # 80001376 <push_off>
    800028ea:	00000097          	auipc	ra,0x0
    800028ee:	fb6080e7          	jalr	-74(ra) # 800028a0 <mycpu>
    800028f2:	fea43423          	sd	a0,-24(s0)
    800028f6:	fe843783          	ld	a5,-24(s0)
    800028fa:	639c                	ld	a5,0(a5)
    800028fc:	fef43023          	sd	a5,-32(s0)
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	ace080e7          	jalr	-1330(ra) # 800013ce <pop_off>
    80002908:	fe043783          	ld	a5,-32(s0)
    8000290c:	853e                	mv	a0,a5
    8000290e:	60e2                	ld	ra,24(sp)
    80002910:	6442                	ld	s0,16(sp)
    80002912:	6105                	addi	sp,sp,32
    80002914:	8082                	ret

0000000080002916 <allocpid>:
    80002916:	1101                	addi	sp,sp,-32
    80002918:	ec06                	sd	ra,24(sp)
    8000291a:	e822                	sd	s0,16(sp)
    8000291c:	1000                	addi	s0,sp,32
    8000291e:	0001a517          	auipc	a0,0x1a
    80002922:	a2a50513          	addi	a0,a0,-1494 # 8001c348 <pid_lock>
    80002926:	fffff097          	auipc	ra,0xfffff
    8000292a:	952080e7          	jalr	-1710(ra) # 80001278 <acquire>
    8000292e:	0000a797          	auipc	a5,0xa
    80002932:	01278793          	addi	a5,a5,18 # 8000c940 <nextpid>
    80002936:	439c                	lw	a5,0(a5)
    80002938:	fef42623          	sw	a5,-20(s0)
    8000293c:	0000a797          	auipc	a5,0xa
    80002940:	00478793          	addi	a5,a5,4 # 8000c940 <nextpid>
    80002944:	439c                	lw	a5,0(a5)
    80002946:	2785                	addiw	a5,a5,1
    80002948:	0007871b          	sext.w	a4,a5
    8000294c:	0000a797          	auipc	a5,0xa
    80002950:	ff478793          	addi	a5,a5,-12 # 8000c940 <nextpid>
    80002954:	c398                	sw	a4,0(a5)
    80002956:	0001a517          	auipc	a0,0x1a
    8000295a:	9f250513          	addi	a0,a0,-1550 # 8001c348 <pid_lock>
    8000295e:	fffff097          	auipc	ra,0xfffff
    80002962:	97e080e7          	jalr	-1666(ra) # 800012dc <release>
    80002966:	fec42783          	lw	a5,-20(s0)
    8000296a:	853e                	mv	a0,a5
    8000296c:	60e2                	ld	ra,24(sp)
    8000296e:	6442                	ld	s0,16(sp)
    80002970:	6105                	addi	sp,sp,32
    80002972:	8082                	ret

0000000080002974 <allocproc>:
    80002974:	1101                	addi	sp,sp,-32
    80002976:	ec06                	sd	ra,24(sp)
    80002978:	e822                	sd	s0,16(sp)
    8000297a:	1000                	addi	s0,sp,32
    8000297c:	00012797          	auipc	a5,0x12
    80002980:	7cc78793          	addi	a5,a5,1996 # 80015148 <proc>
    80002984:	fef43423          	sd	a5,-24(s0)
    80002988:	a80d                	j	800029ba <allocproc+0x46>
    8000298a:	fe843783          	ld	a5,-24(s0)
    8000298e:	853e                	mv	a0,a5
    80002990:	fffff097          	auipc	ra,0xfffff
    80002994:	8e8080e7          	jalr	-1816(ra) # 80001278 <acquire>
    80002998:	fe843783          	ld	a5,-24(s0)
    8000299c:	4f9c                	lw	a5,24(a5)
    8000299e:	cb85                	beqz	a5,800029ce <allocproc+0x5a>
    800029a0:	fe843783          	ld	a5,-24(s0)
    800029a4:	853e                	mv	a0,a5
    800029a6:	fffff097          	auipc	ra,0xfffff
    800029aa:	936080e7          	jalr	-1738(ra) # 800012dc <release>
    800029ae:	fe843783          	ld	a5,-24(s0)
    800029b2:	1c878793          	addi	a5,a5,456
    800029b6:	fef43423          	sd	a5,-24(s0)
    800029ba:	fe843703          	ld	a4,-24(s0)
    800029be:	0001a797          	auipc	a5,0x1a
    800029c2:	98a78793          	addi	a5,a5,-1654 # 8001c348 <pid_lock>
    800029c6:	fcf762e3          	bltu	a4,a5,8000298a <allocproc+0x16>
    800029ca:	4781                	li	a5,0
    800029cc:	a241                	j	80002b4c <allocproc+0x1d8>
    800029ce:	0001                	nop
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	f46080e7          	jalr	-186(ra) # 80002916 <allocpid>
    800029d8:	87aa                	mv	a5,a0
    800029da:	873e                	mv	a4,a5
    800029dc:	fe843783          	ld	a5,-24(s0)
    800029e0:	db98                	sw	a4,48(a5)
    800029e2:	fe843783          	ld	a5,-24(s0)
    800029e6:	4705                	li	a4,1
    800029e8:	cf98                	sw	a4,24(a5)
    800029ea:	fe843783          	ld	a5,-24(s0)
    800029ee:	4705                	li	a4,1
    800029f0:	d7f8                	sw	a4,108(a5)
    800029f2:	0000a797          	auipc	a5,0xa
    800029f6:	0ea78793          	addi	a5,a5,234 # 8000cadc <ticks1>
    800029fa:	439c                	lw	a5,0(a5)
    800029fc:	0007871b          	sext.w	a4,a5
    80002a00:	fe843783          	ld	a5,-24(s0)
    80002a04:	08e7a023          	sw	a4,128(a5)
    80002a08:	0000a797          	auipc	a5,0xa
    80002a0c:	0d078793          	addi	a5,a5,208 # 8000cad8 <ticks>
    80002a10:	439c                	lw	a5,0(a5)
    80002a12:	0007871b          	sext.w	a4,a5
    80002a16:	fe843783          	ld	a5,-24(s0)
    80002a1a:	08e7a223          	sw	a4,132(a5)
    80002a1e:	ffffe097          	auipc	ra,0xffffe
    80002a22:	706080e7          	jalr	1798(ra) # 80001124 <kalloc>
    80002a26:	872a                	mv	a4,a0
    80002a28:	fe843783          	ld	a5,-24(s0)
    80002a2c:	f7d8                	sd	a4,168(a5)
    80002a2e:	fe843783          	ld	a5,-24(s0)
    80002a32:	77dc                	ld	a5,168(a5)
    80002a34:	e385                	bnez	a5,80002a54 <allocproc+0xe0>
    80002a36:	fe843503          	ld	a0,-24(s0)
    80002a3a:	00000097          	auipc	ra,0x0
    80002a3e:	11c080e7          	jalr	284(ra) # 80002b56 <freeproc>
    80002a42:	fe843783          	ld	a5,-24(s0)
    80002a46:	853e                	mv	a0,a5
    80002a48:	fffff097          	auipc	ra,0xfffff
    80002a4c:	894080e7          	jalr	-1900(ra) # 800012dc <release>
    80002a50:	4781                	li	a5,0
    80002a52:	a8ed                	j	80002b4c <allocproc+0x1d8>
    80002a54:	fe843503          	ld	a0,-24(s0)
    80002a58:	00000097          	auipc	ra,0x0
    80002a5c:	19c080e7          	jalr	412(ra) # 80002bf4 <proc_pagetable>
    80002a60:	872a                	mv	a4,a0
    80002a62:	fe843783          	ld	a5,-24(s0)
    80002a66:	f3d8                	sd	a4,160(a5)
    80002a68:	fe843783          	ld	a5,-24(s0)
    80002a6c:	73dc                	ld	a5,160(a5)
    80002a6e:	e385                	bnez	a5,80002a8e <allocproc+0x11a>
    80002a70:	fe843503          	ld	a0,-24(s0)
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	0e2080e7          	jalr	226(ra) # 80002b56 <freeproc>
    80002a7c:	fe843783          	ld	a5,-24(s0)
    80002a80:	853e                	mv	a0,a5
    80002a82:	fffff097          	auipc	ra,0xfffff
    80002a86:	85a080e7          	jalr	-1958(ra) # 800012dc <release>
    80002a8a:	4781                	li	a5,0
    80002a8c:	a0c1                	j	80002b4c <allocproc+0x1d8>
    80002a8e:	fe843783          	ld	a5,-24(s0)
    80002a92:	0b078793          	addi	a5,a5,176
    80002a96:	07000613          	li	a2,112
    80002a9a:	4581                	li	a1,0
    80002a9c:	853e                	mv	a0,a5
    80002a9e:	fffff097          	auipc	ra,0xfffff
    80002aa2:	9ae080e7          	jalr	-1618(ra) # 8000144c <memset>
    80002aa6:	00001717          	auipc	a4,0x1
    80002aaa:	fde70713          	addi	a4,a4,-34 # 80003a84 <forkret>
    80002aae:	fe843783          	ld	a5,-24(s0)
    80002ab2:	fbd8                	sd	a4,176(a5)
    80002ab4:	fe843783          	ld	a5,-24(s0)
    80002ab8:	6bd8                	ld	a4,144(a5)
    80002aba:	6785                	lui	a5,0x1
    80002abc:	973e                	add	a4,a4,a5
    80002abe:	fe843783          	ld	a5,-24(s0)
    80002ac2:	ffd8                	sd	a4,184(a5)
    80002ac4:	fe843783          	ld	a5,-24(s0)
    80002ac8:	1a07ac23          	sw	zero,440(a5) # 11b8 <_entry-0x7fffee48>
    80002acc:	fe843783          	ld	a5,-24(s0)
    80002ad0:	1c07a023          	sw	zero,448(a5)
    80002ad4:	0000a797          	auipc	a5,0xa
    80002ad8:	00478793          	addi	a5,a5,4 # 8000cad8 <ticks>
    80002adc:	4398                	lw	a4,0(a5)
    80002ade:	fe843783          	ld	a5,-24(s0)
    80002ae2:	1ae7ae23          	sw	a4,444(a5)
    80002ae6:	fe843783          	ld	a5,-24(s0)
    80002aea:	0407a023          	sw	zero,64(a5)
    80002aee:	fe843783          	ld	a5,-24(s0)
    80002af2:	0407b423          	sd	zero,72(a5)
    80002af6:	fe843783          	ld	a5,-24(s0)
    80002afa:	0407a823          	sw	zero,80(a5)
    80002afe:	fe843783          	ld	a5,-24(s0)
    80002b02:	0407aa23          	sw	zero,84(a5)
    80002b06:	fe843783          	ld	a5,-24(s0)
    80002b0a:	0407bc23          	sd	zero,88(a5)
    80002b0e:	fe843783          	ld	a5,-24(s0)
    80002b12:	4705                	li	a4,1
    80002b14:	cf98                	sw	a4,24(a5)
    80002b16:	00000097          	auipc	ra,0x0
    80002b1a:	e00080e7          	jalr	-512(ra) # 80002916 <allocpid>
    80002b1e:	87aa                	mv	a5,a0
    80002b20:	873e                	mv	a4,a5
    80002b22:	fe843783          	ld	a5,-24(s0)
    80002b26:	db98                	sw	a4,48(a5)
    80002b28:	fe843783          	ld	a5,-24(s0)
    80002b2c:	0607a823          	sw	zero,112(a5)
    80002b30:	fe843783          	ld	a5,-24(s0)
    80002b34:	0607aa23          	sw	zero,116(a5)
    80002b38:	fe843783          	ld	a5,-24(s0)
    80002b3c:	0607ac23          	sw	zero,120(a5)
    80002b40:	fe843783          	ld	a5,-24(s0)
    80002b44:	0607ae23          	sw	zero,124(a5)
    80002b48:	fe843783          	ld	a5,-24(s0)
    80002b4c:	853e                	mv	a0,a5
    80002b4e:	60e2                	ld	ra,24(sp)
    80002b50:	6442                	ld	s0,16(sp)
    80002b52:	6105                	addi	sp,sp,32
    80002b54:	8082                	ret

0000000080002b56 <freeproc>:
    80002b56:	1101                	addi	sp,sp,-32
    80002b58:	ec06                	sd	ra,24(sp)
    80002b5a:	e822                	sd	s0,16(sp)
    80002b5c:	1000                	addi	s0,sp,32
    80002b5e:	fea43423          	sd	a0,-24(s0)
    80002b62:	fe843783          	ld	a5,-24(s0)
    80002b66:	77dc                	ld	a5,168(a5)
    80002b68:	cb89                	beqz	a5,80002b7a <freeproc+0x24>
    80002b6a:	fe843783          	ld	a5,-24(s0)
    80002b6e:	77dc                	ld	a5,168(a5)
    80002b70:	853e                	mv	a0,a5
    80002b72:	ffffe097          	auipc	ra,0xffffe
    80002b76:	50e080e7          	jalr	1294(ra) # 80001080 <kfree>
    80002b7a:	fe843783          	ld	a5,-24(s0)
    80002b7e:	0a07b423          	sd	zero,168(a5)
    80002b82:	fe843783          	ld	a5,-24(s0)
    80002b86:	73dc                	ld	a5,160(a5)
    80002b88:	cf89                	beqz	a5,80002ba2 <freeproc+0x4c>
    80002b8a:	fe843783          	ld	a5,-24(s0)
    80002b8e:	73d8                	ld	a4,160(a5)
    80002b90:	fe843783          	ld	a5,-24(s0)
    80002b94:	6fdc                	ld	a5,152(a5)
    80002b96:	85be                	mv	a1,a5
    80002b98:	853a                	mv	a0,a4
    80002b9a:	00000097          	auipc	ra,0x0
    80002b9e:	11a080e7          	jalr	282(ra) # 80002cb4 <proc_freepagetable>
    80002ba2:	fe843783          	ld	a5,-24(s0)
    80002ba6:	0a07b023          	sd	zero,160(a5)
    80002baa:	fe843783          	ld	a5,-24(s0)
    80002bae:	0807bc23          	sd	zero,152(a5)
    80002bb2:	fe843783          	ld	a5,-24(s0)
    80002bb6:	0207a823          	sw	zero,48(a5)
    80002bba:	fe843783          	ld	a5,-24(s0)
    80002bbe:	0807b423          	sd	zero,136(a5)
    80002bc2:	fe843783          	ld	a5,-24(s0)
    80002bc6:	1a078423          	sb	zero,424(a5)
    80002bca:	fe843783          	ld	a5,-24(s0)
    80002bce:	0207b023          	sd	zero,32(a5)
    80002bd2:	fe843783          	ld	a5,-24(s0)
    80002bd6:	0207a423          	sw	zero,40(a5)
    80002bda:	fe843783          	ld	a5,-24(s0)
    80002bde:	0207a623          	sw	zero,44(a5)
    80002be2:	fe843783          	ld	a5,-24(s0)
    80002be6:	0007ac23          	sw	zero,24(a5)
    80002bea:	0001                	nop
    80002bec:	60e2                	ld	ra,24(sp)
    80002bee:	6442                	ld	s0,16(sp)
    80002bf0:	6105                	addi	sp,sp,32
    80002bf2:	8082                	ret

0000000080002bf4 <proc_pagetable>:
    80002bf4:	7179                	addi	sp,sp,-48
    80002bf6:	f406                	sd	ra,40(sp)
    80002bf8:	f022                	sd	s0,32(sp)
    80002bfa:	1800                	addi	s0,sp,48
    80002bfc:	fca43c23          	sd	a0,-40(s0)
    80002c00:	fffff097          	auipc	ra,0xfffff
    80002c04:	25a080e7          	jalr	602(ra) # 80001e5a <uvmcreate>
    80002c08:	fea43423          	sd	a0,-24(s0)
    80002c0c:	fe843783          	ld	a5,-24(s0)
    80002c10:	e399                	bnez	a5,80002c16 <proc_pagetable+0x22>
    80002c12:	4781                	li	a5,0
    80002c14:	a859                	j	80002caa <proc_pagetable+0xb6>
    80002c16:	00008797          	auipc	a5,0x8
    80002c1a:	3ea78793          	addi	a5,a5,1002 # 8000b000 <_trampoline>
    80002c1e:	4729                	li	a4,10
    80002c20:	86be                	mv	a3,a5
    80002c22:	6605                	lui	a2,0x1
    80002c24:	040007b7          	lui	a5,0x4000
    80002c28:	17fd                	addi	a5,a5,-1 # 3ffffff <_entry-0x7c000001>
    80002c2a:	00c79593          	slli	a1,a5,0xc
    80002c2e:	fe843503          	ld	a0,-24(s0)
    80002c32:	fffff097          	auipc	ra,0xfffff
    80002c36:	04a080e7          	jalr	74(ra) # 80001c7c <mappages>
    80002c3a:	87aa                	mv	a5,a0
    80002c3c:	0007db63          	bgez	a5,80002c52 <proc_pagetable+0x5e>
    80002c40:	4581                	li	a1,0
    80002c42:	fe843503          	ld	a0,-24(s0)
    80002c46:	fffff097          	auipc	ra,0xfffff
    80002c4a:	510080e7          	jalr	1296(ra) # 80002156 <uvmfree>
    80002c4e:	4781                	li	a5,0
    80002c50:	a8a9                	j	80002caa <proc_pagetable+0xb6>
    80002c52:	fd843783          	ld	a5,-40(s0)
    80002c56:	77dc                	ld	a5,168(a5)
    80002c58:	4719                	li	a4,6
    80002c5a:	86be                	mv	a3,a5
    80002c5c:	6605                	lui	a2,0x1
    80002c5e:	020007b7          	lui	a5,0x2000
    80002c62:	17fd                	addi	a5,a5,-1 # 1ffffff <_entry-0x7e000001>
    80002c64:	00d79593          	slli	a1,a5,0xd
    80002c68:	fe843503          	ld	a0,-24(s0)
    80002c6c:	fffff097          	auipc	ra,0xfffff
    80002c70:	010080e7          	jalr	16(ra) # 80001c7c <mappages>
    80002c74:	87aa                	mv	a5,a0
    80002c76:	0207d863          	bgez	a5,80002ca6 <proc_pagetable+0xb2>
    80002c7a:	4681                	li	a3,0
    80002c7c:	4605                	li	a2,1
    80002c7e:	040007b7          	lui	a5,0x4000
    80002c82:	17fd                	addi	a5,a5,-1 # 3ffffff <_entry-0x7c000001>
    80002c84:	00c79593          	slli	a1,a5,0xc
    80002c88:	fe843503          	ld	a0,-24(s0)
    80002c8c:	fffff097          	auipc	ra,0xfffff
    80002c90:	0ce080e7          	jalr	206(ra) # 80001d5a <uvmunmap>
    80002c94:	4581                	li	a1,0
    80002c96:	fe843503          	ld	a0,-24(s0)
    80002c9a:	fffff097          	auipc	ra,0xfffff
    80002c9e:	4bc080e7          	jalr	1212(ra) # 80002156 <uvmfree>
    80002ca2:	4781                	li	a5,0
    80002ca4:	a019                	j	80002caa <proc_pagetable+0xb6>
    80002ca6:	fe843783          	ld	a5,-24(s0)
    80002caa:	853e                	mv	a0,a5
    80002cac:	70a2                	ld	ra,40(sp)
    80002cae:	7402                	ld	s0,32(sp)
    80002cb0:	6145                	addi	sp,sp,48
    80002cb2:	8082                	ret

0000000080002cb4 <proc_freepagetable>:
    80002cb4:	1101                	addi	sp,sp,-32
    80002cb6:	ec06                	sd	ra,24(sp)
    80002cb8:	e822                	sd	s0,16(sp)
    80002cba:	1000                	addi	s0,sp,32
    80002cbc:	fea43423          	sd	a0,-24(s0)
    80002cc0:	feb43023          	sd	a1,-32(s0)
    80002cc4:	4681                	li	a3,0
    80002cc6:	4605                	li	a2,1
    80002cc8:	040007b7          	lui	a5,0x4000
    80002ccc:	17fd                	addi	a5,a5,-1 # 3ffffff <_entry-0x7c000001>
    80002cce:	00c79593          	slli	a1,a5,0xc
    80002cd2:	fe843503          	ld	a0,-24(s0)
    80002cd6:	fffff097          	auipc	ra,0xfffff
    80002cda:	084080e7          	jalr	132(ra) # 80001d5a <uvmunmap>
    80002cde:	4681                	li	a3,0
    80002ce0:	4605                	li	a2,1
    80002ce2:	020007b7          	lui	a5,0x2000
    80002ce6:	17fd                	addi	a5,a5,-1 # 1ffffff <_entry-0x7e000001>
    80002ce8:	00d79593          	slli	a1,a5,0xd
    80002cec:	fe843503          	ld	a0,-24(s0)
    80002cf0:	fffff097          	auipc	ra,0xfffff
    80002cf4:	06a080e7          	jalr	106(ra) # 80001d5a <uvmunmap>
    80002cf8:	fe043583          	ld	a1,-32(s0)
    80002cfc:	fe843503          	ld	a0,-24(s0)
    80002d00:	fffff097          	auipc	ra,0xfffff
    80002d04:	456080e7          	jalr	1110(ra) # 80002156 <uvmfree>
    80002d08:	0001                	nop
    80002d0a:	60e2                	ld	ra,24(sp)
    80002d0c:	6442                	ld	s0,16(sp)
    80002d0e:	6105                	addi	sp,sp,32
    80002d10:	8082                	ret

0000000080002d12 <userinit>:
    80002d12:	1101                	addi	sp,sp,-32
    80002d14:	ec06                	sd	ra,24(sp)
    80002d16:	e822                	sd	s0,16(sp)
    80002d18:	1000                	addi	s0,sp,32
    80002d1a:	00000097          	auipc	ra,0x0
    80002d1e:	c5a080e7          	jalr	-934(ra) # 80002974 <allocproc>
    80002d22:	fea43423          	sd	a0,-24(s0)
    80002d26:	0000a797          	auipc	a5,0xa
    80002d2a:	daa78793          	addi	a5,a5,-598 # 8000cad0 <initproc>
    80002d2e:	fe843703          	ld	a4,-24(s0)
    80002d32:	e398                	sd	a4,0(a5)
    80002d34:	fe843783          	ld	a5,-24(s0)
    80002d38:	73dc                	ld	a5,160(a5)
    80002d3a:	03400613          	li	a2,52
    80002d3e:	0000a597          	auipc	a1,0xa
    80002d42:	c2a58593          	addi	a1,a1,-982 # 8000c968 <initcode>
    80002d46:	853e                	mv	a0,a5
    80002d48:	fffff097          	auipc	ra,0xfffff
    80002d4c:	14e080e7          	jalr	334(ra) # 80001e96 <uvmfirst>
    80002d50:	fe843783          	ld	a5,-24(s0)
    80002d54:	6705                	lui	a4,0x1
    80002d56:	efd8                	sd	a4,152(a5)
    80002d58:	fe843783          	ld	a5,-24(s0)
    80002d5c:	77dc                	ld	a5,168(a5)
    80002d5e:	0007bc23          	sd	zero,24(a5)
    80002d62:	fe843783          	ld	a5,-24(s0)
    80002d66:	77dc                	ld	a5,168(a5)
    80002d68:	6705                	lui	a4,0x1
    80002d6a:	fb98                	sd	a4,48(a5)
    80002d6c:	fe843783          	ld	a5,-24(s0)
    80002d70:	1a878793          	addi	a5,a5,424
    80002d74:	4641                	li	a2,16
    80002d76:	00009597          	auipc	a1,0x9
    80002d7a:	47a58593          	addi	a1,a1,1146 # 8000c1f0 <etext+0x1f0>
    80002d7e:	853e                	mv	a0,a5
    80002d80:	fffff097          	auipc	ra,0xfffff
    80002d84:	9d0080e7          	jalr	-1584(ra) # 80001750 <safestrcpy>
    80002d88:	00009517          	auipc	a0,0x9
    80002d8c:	47850513          	addi	a0,a0,1144 # 8000c200 <etext+0x200>
    80002d90:	00004097          	auipc	ra,0x4
    80002d94:	c3e080e7          	jalr	-962(ra) # 800069ce <namei>
    80002d98:	872a                	mv	a4,a0
    80002d9a:	fe843783          	ld	a5,-24(s0)
    80002d9e:	1ae7b023          	sd	a4,416(a5)
    80002da2:	fe843783          	ld	a5,-24(s0)
    80002da6:	470d                	li	a4,3
    80002da8:	cf98                	sw	a4,24(a5)
    80002daa:	fe843783          	ld	a5,-24(s0)
    80002dae:	853e                	mv	a0,a5
    80002db0:	ffffe097          	auipc	ra,0xffffe
    80002db4:	52c080e7          	jalr	1324(ra) # 800012dc <release>
    80002db8:	0001                	nop
    80002dba:	60e2                	ld	ra,24(sp)
    80002dbc:	6442                	ld	s0,16(sp)
    80002dbe:	6105                	addi	sp,sp,32
    80002dc0:	8082                	ret

0000000080002dc2 <growproc>:
    80002dc2:	7179                	addi	sp,sp,-48
    80002dc4:	f406                	sd	ra,40(sp)
    80002dc6:	f022                	sd	s0,32(sp)
    80002dc8:	1800                	addi	s0,sp,48
    80002dca:	87aa                	mv	a5,a0
    80002dcc:	fcf42e23          	sw	a5,-36(s0)
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	b0a080e7          	jalr	-1270(ra) # 800028da <myproc>
    80002dd8:	fea43023          	sd	a0,-32(s0)
    80002ddc:	fe043783          	ld	a5,-32(s0)
    80002de0:	6fdc                	ld	a5,152(a5)
    80002de2:	fef43423          	sd	a5,-24(s0)
    80002de6:	fdc42783          	lw	a5,-36(s0)
    80002dea:	2781                	sext.w	a5,a5
    80002dec:	02f05963          	blez	a5,80002e1e <growproc+0x5c>
    80002df0:	fe043783          	ld	a5,-32(s0)
    80002df4:	73c8                	ld	a0,160(a5)
    80002df6:	fdc42703          	lw	a4,-36(s0)
    80002dfa:	fe843783          	ld	a5,-24(s0)
    80002dfe:	97ba                	add	a5,a5,a4
    80002e00:	4691                	li	a3,4
    80002e02:	863e                	mv	a2,a5
    80002e04:	fe843583          	ld	a1,-24(s0)
    80002e08:	fffff097          	auipc	ra,0xfffff
    80002e0c:	116080e7          	jalr	278(ra) # 80001f1e <uvmalloc>
    80002e10:	fea43423          	sd	a0,-24(s0)
    80002e14:	fe843783          	ld	a5,-24(s0)
    80002e18:	eb95                	bnez	a5,80002e4c <growproc+0x8a>
    80002e1a:	57fd                	li	a5,-1
    80002e1c:	a835                	j	80002e58 <growproc+0x96>
    80002e1e:	fdc42783          	lw	a5,-36(s0)
    80002e22:	2781                	sext.w	a5,a5
    80002e24:	0207d463          	bgez	a5,80002e4c <growproc+0x8a>
    80002e28:	fe043783          	ld	a5,-32(s0)
    80002e2c:	73d4                	ld	a3,160(a5)
    80002e2e:	fdc42703          	lw	a4,-36(s0)
    80002e32:	fe843783          	ld	a5,-24(s0)
    80002e36:	97ba                	add	a5,a5,a4
    80002e38:	863e                	mv	a2,a5
    80002e3a:	fe843583          	ld	a1,-24(s0)
    80002e3e:	8536                	mv	a0,a3
    80002e40:	fffff097          	auipc	ra,0xfffff
    80002e44:	1d0080e7          	jalr	464(ra) # 80002010 <uvmdealloc>
    80002e48:	fea43423          	sd	a0,-24(s0)
    80002e4c:	fe043783          	ld	a5,-32(s0)
    80002e50:	fe843703          	ld	a4,-24(s0)
    80002e54:	efd8                	sd	a4,152(a5)
    80002e56:	4781                	li	a5,0
    80002e58:	853e                	mv	a0,a5
    80002e5a:	70a2                	ld	ra,40(sp)
    80002e5c:	7402                	ld	s0,32(sp)
    80002e5e:	6145                	addi	sp,sp,48
    80002e60:	8082                	ret

0000000080002e62 <fork>:
    80002e62:	7179                	addi	sp,sp,-48
    80002e64:	f406                	sd	ra,40(sp)
    80002e66:	f022                	sd	s0,32(sp)
    80002e68:	1800                	addi	s0,sp,48
    80002e6a:	00000097          	auipc	ra,0x0
    80002e6e:	a70080e7          	jalr	-1424(ra) # 800028da <myproc>
    80002e72:	fea43023          	sd	a0,-32(s0)
    80002e76:	00000097          	auipc	ra,0x0
    80002e7a:	afe080e7          	jalr	-1282(ra) # 80002974 <allocproc>
    80002e7e:	fca43c23          	sd	a0,-40(s0)
    80002e82:	fd843783          	ld	a5,-40(s0)
    80002e86:	e399                	bnez	a5,80002e8c <fork+0x2a>
    80002e88:	57fd                	li	a5,-1
    80002e8a:	a255                	j	8000302e <fork+0x1cc>
    80002e8c:	fe043783          	ld	a5,-32(s0)
    80002e90:	73d8                	ld	a4,160(a5)
    80002e92:	fd843783          	ld	a5,-40(s0)
    80002e96:	73d4                	ld	a3,160(a5)
    80002e98:	fe043783          	ld	a5,-32(s0)
    80002e9c:	6fdc                	ld	a5,152(a5)
    80002e9e:	863e                	mv	a2,a5
    80002ea0:	85b6                	mv	a1,a3
    80002ea2:	853a                	mv	a0,a4
    80002ea4:	fffff097          	auipc	ra,0xfffff
    80002ea8:	2fc080e7          	jalr	764(ra) # 800021a0 <uvmcopy>
    80002eac:	87aa                	mv	a5,a0
    80002eae:	0207d163          	bgez	a5,80002ed0 <fork+0x6e>
    80002eb2:	fd843503          	ld	a0,-40(s0)
    80002eb6:	00000097          	auipc	ra,0x0
    80002eba:	ca0080e7          	jalr	-864(ra) # 80002b56 <freeproc>
    80002ebe:	fd843783          	ld	a5,-40(s0)
    80002ec2:	853e                	mv	a0,a5
    80002ec4:	ffffe097          	auipc	ra,0xffffe
    80002ec8:	418080e7          	jalr	1048(ra) # 800012dc <release>
    80002ecc:	57fd                	li	a5,-1
    80002ece:	a285                	j	8000302e <fork+0x1cc>
    80002ed0:	fe043783          	ld	a5,-32(s0)
    80002ed4:	6fd8                	ld	a4,152(a5)
    80002ed6:	fd843783          	ld	a5,-40(s0)
    80002eda:	efd8                	sd	a4,152(a5)
    80002edc:	fe043783          	ld	a5,-32(s0)
    80002ee0:	77d8                	ld	a4,168(a5)
    80002ee2:	fd843783          	ld	a5,-40(s0)
    80002ee6:	77dc                	ld	a5,168(a5)
    80002ee8:	86be                	mv	a3,a5
    80002eea:	12000793          	li	a5,288
    80002eee:	863e                	mv	a2,a5
    80002ef0:	85ba                	mv	a1,a4
    80002ef2:	8536                	mv	a0,a3
    80002ef4:	ffffe097          	auipc	ra,0xffffe
    80002ef8:	718080e7          	jalr	1816(ra) # 8000160c <memcpy>
    80002efc:	fd843783          	ld	a5,-40(s0)
    80002f00:	77dc                	ld	a5,168(a5)
    80002f02:	0607b823          	sd	zero,112(a5)
    80002f06:	fe043783          	ld	a5,-32(s0)
    80002f0a:	5bd8                	lw	a4,52(a5)
    80002f0c:	fd843783          	ld	a5,-40(s0)
    80002f10:	dbd8                	sw	a4,52(a5)
    80002f12:	fd843783          	ld	a5,-40(s0)
    80002f16:	0207ac23          	sw	zero,56(a5)
    80002f1a:	fe042623          	sw	zero,-20(s0)
    80002f1e:	a881                	j	80002f6e <fork+0x10c>
    80002f20:	fe043703          	ld	a4,-32(s0)
    80002f24:	fec42783          	lw	a5,-20(s0)
    80002f28:	02478793          	addi	a5,a5,36
    80002f2c:	078e                	slli	a5,a5,0x3
    80002f2e:	97ba                	add	a5,a5,a4
    80002f30:	639c                	ld	a5,0(a5)
    80002f32:	cb8d                	beqz	a5,80002f64 <fork+0x102>
    80002f34:	fe043703          	ld	a4,-32(s0)
    80002f38:	fec42783          	lw	a5,-20(s0)
    80002f3c:	02478793          	addi	a5,a5,36
    80002f40:	078e                	slli	a5,a5,0x3
    80002f42:	97ba                	add	a5,a5,a4
    80002f44:	639c                	ld	a5,0(a5)
    80002f46:	853e                	mv	a0,a5
    80002f48:	00004097          	auipc	ra,0x4
    80002f4c:	41e080e7          	jalr	1054(ra) # 80007366 <filedup>
    80002f50:	86aa                	mv	a3,a0
    80002f52:	fd843703          	ld	a4,-40(s0)
    80002f56:	fec42783          	lw	a5,-20(s0)
    80002f5a:	02478793          	addi	a5,a5,36
    80002f5e:	078e                	slli	a5,a5,0x3
    80002f60:	97ba                	add	a5,a5,a4
    80002f62:	e394                	sd	a3,0(a5)
    80002f64:	fec42783          	lw	a5,-20(s0)
    80002f68:	2785                	addiw	a5,a5,1
    80002f6a:	fef42623          	sw	a5,-20(s0)
    80002f6e:	fec42783          	lw	a5,-20(s0)
    80002f72:	0007871b          	sext.w	a4,a5
    80002f76:	47bd                	li	a5,15
    80002f78:	fae7d4e3          	bge	a5,a4,80002f20 <fork+0xbe>
    80002f7c:	fe043783          	ld	a5,-32(s0)
    80002f80:	1a07b783          	ld	a5,416(a5)
    80002f84:	853e                	mv	a0,a5
    80002f86:	00003097          	auipc	ra,0x3
    80002f8a:	ccc080e7          	jalr	-820(ra) # 80005c52 <idup>
    80002f8e:	872a                	mv	a4,a0
    80002f90:	fd843783          	ld	a5,-40(s0)
    80002f94:	1ae7b023          	sd	a4,416(a5)
    80002f98:	fd843783          	ld	a5,-40(s0)
    80002f9c:	1a878713          	addi	a4,a5,424
    80002fa0:	fe043783          	ld	a5,-32(s0)
    80002fa4:	1a878793          	addi	a5,a5,424
    80002fa8:	4641                	li	a2,16
    80002faa:	85be                	mv	a1,a5
    80002fac:	853a                	mv	a0,a4
    80002fae:	ffffe097          	auipc	ra,0xffffe
    80002fb2:	7a2080e7          	jalr	1954(ra) # 80001750 <safestrcpy>
    80002fb6:	fd843783          	ld	a5,-40(s0)
    80002fba:	5b9c                	lw	a5,48(a5)
    80002fbc:	fcf42a23          	sw	a5,-44(s0)
    80002fc0:	fd843783          	ld	a5,-40(s0)
    80002fc4:	853e                	mv	a0,a5
    80002fc6:	ffffe097          	auipc	ra,0xffffe
    80002fca:	316080e7          	jalr	790(ra) # 800012dc <release>
    80002fce:	00019517          	auipc	a0,0x19
    80002fd2:	39250513          	addi	a0,a0,914 # 8001c360 <wait_lock>
    80002fd6:	ffffe097          	auipc	ra,0xffffe
    80002fda:	2a2080e7          	jalr	674(ra) # 80001278 <acquire>
    80002fde:	fd843783          	ld	a5,-40(s0)
    80002fe2:	fe043703          	ld	a4,-32(s0)
    80002fe6:	e7d8                	sd	a4,136(a5)
    80002fe8:	fd843783          	ld	a5,-40(s0)
    80002fec:	67dc                	ld	a5,136(a5)
    80002fee:	57f8                	lw	a4,108(a5)
    80002ff0:	fd843783          	ld	a5,-40(s0)
    80002ff4:	d7f8                	sw	a4,108(a5)
    80002ff6:	00019517          	auipc	a0,0x19
    80002ffa:	36a50513          	addi	a0,a0,874 # 8001c360 <wait_lock>
    80002ffe:	ffffe097          	auipc	ra,0xffffe
    80003002:	2de080e7          	jalr	734(ra) # 800012dc <release>
    80003006:	fd843783          	ld	a5,-40(s0)
    8000300a:	853e                	mv	a0,a5
    8000300c:	ffffe097          	auipc	ra,0xffffe
    80003010:	26c080e7          	jalr	620(ra) # 80001278 <acquire>
    80003014:	fd843783          	ld	a5,-40(s0)
    80003018:	470d                	li	a4,3
    8000301a:	cf98                	sw	a4,24(a5)
    8000301c:	fd843783          	ld	a5,-40(s0)
    80003020:	853e                	mv	a0,a5
    80003022:	ffffe097          	auipc	ra,0xffffe
    80003026:	2ba080e7          	jalr	698(ra) # 800012dc <release>
    8000302a:	fd442783          	lw	a5,-44(s0)
    8000302e:	853e                	mv	a0,a5
    80003030:	70a2                	ld	ra,40(sp)
    80003032:	7402                	ld	s0,32(sp)
    80003034:	6145                	addi	sp,sp,48
    80003036:	8082                	ret

0000000080003038 <reparent>:
    80003038:	7179                	addi	sp,sp,-48
    8000303a:	f406                	sd	ra,40(sp)
    8000303c:	f022                	sd	s0,32(sp)
    8000303e:	1800                	addi	s0,sp,48
    80003040:	fca43c23          	sd	a0,-40(s0)
    80003044:	00012797          	auipc	a5,0x12
    80003048:	10478793          	addi	a5,a5,260 # 80015148 <proc>
    8000304c:	fef43423          	sd	a5,-24(s0)
    80003050:	a081                	j	80003090 <reparent+0x58>
    80003052:	fe843783          	ld	a5,-24(s0)
    80003056:	67dc                	ld	a5,136(a5)
    80003058:	fd843703          	ld	a4,-40(s0)
    8000305c:	02f71463          	bne	a4,a5,80003084 <reparent+0x4c>
    80003060:	0000a797          	auipc	a5,0xa
    80003064:	a7078793          	addi	a5,a5,-1424 # 8000cad0 <initproc>
    80003068:	6398                	ld	a4,0(a5)
    8000306a:	fe843783          	ld	a5,-24(s0)
    8000306e:	e7d8                	sd	a4,136(a5)
    80003070:	0000a797          	auipc	a5,0xa
    80003074:	a6078793          	addi	a5,a5,-1440 # 8000cad0 <initproc>
    80003078:	639c                	ld	a5,0(a5)
    8000307a:	853e                	mv	a0,a5
    8000307c:	00001097          	auipc	ra,0x1
    80003080:	ad4080e7          	jalr	-1324(ra) # 80003b50 <wakeup>
    80003084:	fe843783          	ld	a5,-24(s0)
    80003088:	1c878793          	addi	a5,a5,456
    8000308c:	fef43423          	sd	a5,-24(s0)
    80003090:	fe843703          	ld	a4,-24(s0)
    80003094:	00019797          	auipc	a5,0x19
    80003098:	2b478793          	addi	a5,a5,692 # 8001c348 <pid_lock>
    8000309c:	faf76be3          	bltu	a4,a5,80003052 <reparent+0x1a>
    800030a0:	0001                	nop
    800030a2:	0001                	nop
    800030a4:	70a2                	ld	ra,40(sp)
    800030a6:	7402                	ld	s0,32(sp)
    800030a8:	6145                	addi	sp,sp,48
    800030aa:	8082                	ret

00000000800030ac <exit>:
    800030ac:	715d                	addi	sp,sp,-80
    800030ae:	e486                	sd	ra,72(sp)
    800030b0:	e0a2                	sd	s0,64(sp)
    800030b2:	0880                	addi	s0,sp,80
    800030b4:	87aa                	mv	a5,a0
    800030b6:	faf42e23          	sw	a5,-68(s0)
    800030ba:	00000097          	auipc	ra,0x0
    800030be:	820080e7          	jalr	-2016(ra) # 800028da <myproc>
    800030c2:	fca43423          	sd	a0,-56(s0)
    800030c6:	0000a797          	auipc	a5,0xa
    800030ca:	a0a78793          	addi	a5,a5,-1526 # 8000cad0 <initproc>
    800030ce:	639c                	ld	a5,0(a5)
    800030d0:	fc843703          	ld	a4,-56(s0)
    800030d4:	00f71a63          	bne	a4,a5,800030e8 <exit+0x3c>
    800030d8:	00009517          	auipc	a0,0x9
    800030dc:	13050513          	addi	a0,a0,304 # 8000c208 <etext+0x208>
    800030e0:	ffffe097          	auipc	ra,0xffffe
    800030e4:	baa080e7          	jalr	-1110(ra) # 80000c8a <panic>
    800030e8:	fc843783          	ld	a5,-56(s0)
    800030ec:	5bdc                	lw	a5,52(a5)
    800030ee:	28078263          	beqz	a5,80003372 <exit+0x2c6>
    800030f2:	00009797          	auipc	a5,0x9
    800030f6:	12678793          	addi	a5,a5,294 # 8000c218 <etext+0x218>
    800030fa:	fef43423          	sd	a5,-24(s0)
    800030fe:	57fd                	li	a5,-1
    80003100:	fef42223          	sw	a5,-28(s0)
    80003104:	fe042023          	sw	zero,-32(s0)
    80003108:	a03d                	j	80003136 <exit+0x8a>
    8000310a:	fc843783          	ld	a5,-56(s0)
    8000310e:	5bd8                	lw	a4,52(a5)
    80003110:	fe042783          	lw	a5,-32(s0)
    80003114:	86be                	mv	a3,a5
    80003116:	4785                	li	a5,1
    80003118:	00d797bb          	sllw	a5,a5,a3
    8000311c:	2781                	sext.w	a5,a5
    8000311e:	00f71763          	bne	a4,a5,8000312c <exit+0x80>
    80003122:	fe042783          	lw	a5,-32(s0)
    80003126:	fef42223          	sw	a5,-28(s0)
    8000312a:	a829                	j	80003144 <exit+0x98>
    8000312c:	fe042783          	lw	a5,-32(s0)
    80003130:	2785                	addiw	a5,a5,1
    80003132:	fef42023          	sw	a5,-32(s0)
    80003136:	fe042783          	lw	a5,-32(s0)
    8000313a:	0007871b          	sext.w	a4,a5
    8000313e:	47f9                	li	a5,30
    80003140:	fce7d5e3          	bge	a5,a4,8000310a <exit+0x5e>
    80003144:	fe442783          	lw	a5,-28(s0)
    80003148:	0007871b          	sext.w	a4,a5
    8000314c:	47ed                	li	a5,27
    8000314e:	1ae7e163          	bltu	a5,a4,800032f0 <exit+0x244>
    80003152:	fe446783          	lwu	a5,-28(s0)
    80003156:	00279713          	slli	a4,a5,0x2
    8000315a:	00009797          	auipc	a5,0x9
    8000315e:	1f278793          	addi	a5,a5,498 # 8000c34c <etext+0x34c>
    80003162:	97ba                	add	a5,a5,a4
    80003164:	439c                	lw	a5,0(a5)
    80003166:	0007871b          	sext.w	a4,a5
    8000316a:	00009797          	auipc	a5,0x9
    8000316e:	1e278793          	addi	a5,a5,482 # 8000c34c <etext+0x34c>
    80003172:	97ba                	add	a5,a5,a4
    80003174:	8782                	jr	a5
    80003176:	00009797          	auipc	a5,0x9
    8000317a:	0aa78793          	addi	a5,a5,170 # 8000c220 <etext+0x220>
    8000317e:	fef43423          	sd	a5,-24(s0)
    80003182:	aab5                	j	800032fe <exit+0x252>
    80003184:	00009797          	auipc	a5,0x9
    80003188:	0a478793          	addi	a5,a5,164 # 8000c228 <etext+0x228>
    8000318c:	fef43423          	sd	a5,-24(s0)
    80003190:	a2bd                	j	800032fe <exit+0x252>
    80003192:	00009797          	auipc	a5,0x9
    80003196:	09e78793          	addi	a5,a5,158 # 8000c230 <etext+0x230>
    8000319a:	fef43423          	sd	a5,-24(s0)
    8000319e:	a285                	j	800032fe <exit+0x252>
    800031a0:	00009797          	auipc	a5,0x9
    800031a4:	09878793          	addi	a5,a5,152 # 8000c238 <etext+0x238>
    800031a8:	fef43423          	sd	a5,-24(s0)
    800031ac:	aa89                	j	800032fe <exit+0x252>
    800031ae:	00009797          	auipc	a5,0x9
    800031b2:	09278793          	addi	a5,a5,146 # 8000c240 <etext+0x240>
    800031b6:	fef43423          	sd	a5,-24(s0)
    800031ba:	a291                	j	800032fe <exit+0x252>
    800031bc:	00009797          	auipc	a5,0x9
    800031c0:	08c78793          	addi	a5,a5,140 # 8000c248 <etext+0x248>
    800031c4:	fef43423          	sd	a5,-24(s0)
    800031c8:	aa1d                	j	800032fe <exit+0x252>
    800031ca:	00009797          	auipc	a5,0x9
    800031ce:	08678793          	addi	a5,a5,134 # 8000c250 <etext+0x250>
    800031d2:	fef43423          	sd	a5,-24(s0)
    800031d6:	a225                	j	800032fe <exit+0x252>
    800031d8:	00009797          	auipc	a5,0x9
    800031dc:	08078793          	addi	a5,a5,128 # 8000c258 <etext+0x258>
    800031e0:	fef43423          	sd	a5,-24(s0)
    800031e4:	aa29                	j	800032fe <exit+0x252>
    800031e6:	00009797          	auipc	a5,0x9
    800031ea:	07a78793          	addi	a5,a5,122 # 8000c260 <etext+0x260>
    800031ee:	fef43423          	sd	a5,-24(s0)
    800031f2:	a231                	j	800032fe <exit+0x252>
    800031f4:	00009797          	auipc	a5,0x9
    800031f8:	07478793          	addi	a5,a5,116 # 8000c268 <etext+0x268>
    800031fc:	fef43423          	sd	a5,-24(s0)
    80003200:	a8fd                	j	800032fe <exit+0x252>
    80003202:	00009797          	auipc	a5,0x9
    80003206:	06e78793          	addi	a5,a5,110 # 8000c270 <etext+0x270>
    8000320a:	fef43423          	sd	a5,-24(s0)
    8000320e:	a8c5                	j	800032fe <exit+0x252>
    80003210:	00009797          	auipc	a5,0x9
    80003214:	06878793          	addi	a5,a5,104 # 8000c278 <etext+0x278>
    80003218:	fef43423          	sd	a5,-24(s0)
    8000321c:	a0cd                	j	800032fe <exit+0x252>
    8000321e:	00009797          	auipc	a5,0x9
    80003222:	06278793          	addi	a5,a5,98 # 8000c280 <etext+0x280>
    80003226:	fef43423          	sd	a5,-24(s0)
    8000322a:	a8d1                	j	800032fe <exit+0x252>
    8000322c:	00009797          	auipc	a5,0x9
    80003230:	05c78793          	addi	a5,a5,92 # 8000c288 <etext+0x288>
    80003234:	fef43423          	sd	a5,-24(s0)
    80003238:	a0d9                	j	800032fe <exit+0x252>
    8000323a:	00009797          	auipc	a5,0x9
    8000323e:	05678793          	addi	a5,a5,86 # 8000c290 <etext+0x290>
    80003242:	fef43423          	sd	a5,-24(s0)
    80003246:	a865                	j	800032fe <exit+0x252>
    80003248:	00009797          	auipc	a5,0x9
    8000324c:	05078793          	addi	a5,a5,80 # 8000c298 <etext+0x298>
    80003250:	fef43423          	sd	a5,-24(s0)
    80003254:	a06d                	j	800032fe <exit+0x252>
    80003256:	00009797          	auipc	a5,0x9
    8000325a:	04a78793          	addi	a5,a5,74 # 8000c2a0 <etext+0x2a0>
    8000325e:	fef43423          	sd	a5,-24(s0)
    80003262:	a871                	j	800032fe <exit+0x252>
    80003264:	00009797          	auipc	a5,0x9
    80003268:	04478793          	addi	a5,a5,68 # 8000c2a8 <etext+0x2a8>
    8000326c:	fef43423          	sd	a5,-24(s0)
    80003270:	a079                	j	800032fe <exit+0x252>
    80003272:	00009797          	auipc	a5,0x9
    80003276:	03e78793          	addi	a5,a5,62 # 8000c2b0 <etext+0x2b0>
    8000327a:	fef43423          	sd	a5,-24(s0)
    8000327e:	a041                	j	800032fe <exit+0x252>
    80003280:	00009797          	auipc	a5,0x9
    80003284:	03878793          	addi	a5,a5,56 # 8000c2b8 <etext+0x2b8>
    80003288:	fef43423          	sd	a5,-24(s0)
    8000328c:	a88d                	j	800032fe <exit+0x252>
    8000328e:	00009797          	auipc	a5,0x9
    80003292:	03278793          	addi	a5,a5,50 # 8000c2c0 <etext+0x2c0>
    80003296:	fef43423          	sd	a5,-24(s0)
    8000329a:	a095                	j	800032fe <exit+0x252>
    8000329c:	00009797          	auipc	a5,0x9
    800032a0:	02c78793          	addi	a5,a5,44 # 8000c2c8 <etext+0x2c8>
    800032a4:	fef43423          	sd	a5,-24(s0)
    800032a8:	a899                	j	800032fe <exit+0x252>
    800032aa:	00009797          	auipc	a5,0x9
    800032ae:	02678793          	addi	a5,a5,38 # 8000c2d0 <etext+0x2d0>
    800032b2:	fef43423          	sd	a5,-24(s0)
    800032b6:	a0a1                	j	800032fe <exit+0x252>
    800032b8:	00009797          	auipc	a5,0x9
    800032bc:	02878793          	addi	a5,a5,40 # 8000c2e0 <etext+0x2e0>
    800032c0:	fef43423          	sd	a5,-24(s0)
    800032c4:	a82d                	j	800032fe <exit+0x252>
    800032c6:	00009797          	auipc	a5,0x9
    800032ca:	02a78793          	addi	a5,a5,42 # 8000c2f0 <etext+0x2f0>
    800032ce:	fef43423          	sd	a5,-24(s0)
    800032d2:	a035                	j	800032fe <exit+0x252>
    800032d4:	00009797          	auipc	a5,0x9
    800032d8:	02c78793          	addi	a5,a5,44 # 8000c300 <etext+0x300>
    800032dc:	fef43423          	sd	a5,-24(s0)
    800032e0:	a839                	j	800032fe <exit+0x252>
    800032e2:	00009797          	auipc	a5,0x9
    800032e6:	02e78793          	addi	a5,a5,46 # 8000c310 <etext+0x310>
    800032ea:	fef43423          	sd	a5,-24(s0)
    800032ee:	a801                	j	800032fe <exit+0x252>
    800032f0:	00009797          	auipc	a5,0x9
    800032f4:	f2878793          	addi	a5,a5,-216 # 8000c218 <etext+0x218>
    800032f8:	fef43423          	sd	a5,-24(s0)
    800032fc:	0001                	nop
    800032fe:	fc843783          	ld	a5,-56(s0)
    80003302:	5f9c                	lw	a5,56(a5)
    80003304:	fcf42a23          	sw	a5,-44(s0)
    80003308:	00012797          	auipc	a5,0x12
    8000330c:	e4078793          	addi	a5,a5,-448 # 80015148 <proc>
    80003310:	fcf43c23          	sd	a5,-40(s0)
    80003314:	a035                	j	80003340 <exit+0x294>
    80003316:	fd843783          	ld	a5,-40(s0)
    8000331a:	67dc                	ld	a5,136(a5)
    8000331c:	fc843703          	ld	a4,-56(s0)
    80003320:	00f71a63          	bne	a4,a5,80003334 <exit+0x288>
    80003324:	fd843783          	ld	a5,-40(s0)
    80003328:	5f9c                	lw	a5,56(a5)
    8000332a:	fd442703          	lw	a4,-44(s0)
    8000332e:	9fb9                	addw	a5,a5,a4
    80003330:	fcf42a23          	sw	a5,-44(s0)
    80003334:	fd843783          	ld	a5,-40(s0)
    80003338:	1c878793          	addi	a5,a5,456
    8000333c:	fcf43c23          	sd	a5,-40(s0)
    80003340:	fd843703          	ld	a4,-40(s0)
    80003344:	00019797          	auipc	a5,0x19
    80003348:	00478793          	addi	a5,a5,4 # 8001c348 <pid_lock>
    8000334c:	fcf765e3          	bltu	a4,a5,80003316 <exit+0x26a>
    80003350:	fc843783          	ld	a5,-56(s0)
    80003354:	5b9c                	lw	a5,48(a5)
    80003356:	fd442703          	lw	a4,-44(s0)
    8000335a:	86ba                	mv	a3,a4
    8000335c:	fe843603          	ld	a2,-24(s0)
    80003360:	85be                	mv	a1,a5
    80003362:	00009517          	auipc	a0,0x9
    80003366:	fbe50513          	addi	a0,a0,-66 # 8000c320 <etext+0x320>
    8000336a:	ffffd097          	auipc	ra,0xffffd
    8000336e:	6ca080e7          	jalr	1738(ra) # 80000a34 <printf>
    80003372:	fc042823          	sw	zero,-48(s0)
    80003376:	a899                	j	800033cc <exit+0x320>
    80003378:	fc843703          	ld	a4,-56(s0)
    8000337c:	fd042783          	lw	a5,-48(s0)
    80003380:	02478793          	addi	a5,a5,36
    80003384:	078e                	slli	a5,a5,0x3
    80003386:	97ba                	add	a5,a5,a4
    80003388:	639c                	ld	a5,0(a5)
    8000338a:	cf85                	beqz	a5,800033c2 <exit+0x316>
    8000338c:	fc843703          	ld	a4,-56(s0)
    80003390:	fd042783          	lw	a5,-48(s0)
    80003394:	02478793          	addi	a5,a5,36
    80003398:	078e                	slli	a5,a5,0x3
    8000339a:	97ba                	add	a5,a5,a4
    8000339c:	639c                	ld	a5,0(a5)
    8000339e:	fcf43023          	sd	a5,-64(s0)
    800033a2:	fc043503          	ld	a0,-64(s0)
    800033a6:	00004097          	auipc	ra,0x4
    800033aa:	026080e7          	jalr	38(ra) # 800073cc <fileclose>
    800033ae:	fc843703          	ld	a4,-56(s0)
    800033b2:	fd042783          	lw	a5,-48(s0)
    800033b6:	02478793          	addi	a5,a5,36
    800033ba:	078e                	slli	a5,a5,0x3
    800033bc:	97ba                	add	a5,a5,a4
    800033be:	0007b023          	sd	zero,0(a5)
    800033c2:	fd042783          	lw	a5,-48(s0)
    800033c6:	2785                	addiw	a5,a5,1
    800033c8:	fcf42823          	sw	a5,-48(s0)
    800033cc:	fd042783          	lw	a5,-48(s0)
    800033d0:	0007871b          	sext.w	a4,a5
    800033d4:	47bd                	li	a5,15
    800033d6:	fae7d1e3          	bge	a5,a4,80003378 <exit+0x2cc>
    800033da:	00004097          	auipc	ra,0x4
    800033de:	958080e7          	jalr	-1704(ra) # 80006d32 <begin_op>
    800033e2:	fc843783          	ld	a5,-56(s0)
    800033e6:	1a07b783          	ld	a5,416(a5)
    800033ea:	853e                	mv	a0,a5
    800033ec:	00003097          	auipc	ra,0x3
    800033f0:	a40080e7          	jalr	-1472(ra) # 80005e2c <iput>
    800033f4:	00004097          	auipc	ra,0x4
    800033f8:	a00080e7          	jalr	-1536(ra) # 80006df4 <end_op>
    800033fc:	fc843783          	ld	a5,-56(s0)
    80003400:	1a07b023          	sd	zero,416(a5)
    80003404:	00019517          	auipc	a0,0x19
    80003408:	f5c50513          	addi	a0,a0,-164 # 8001c360 <wait_lock>
    8000340c:	ffffe097          	auipc	ra,0xffffe
    80003410:	e6c080e7          	jalr	-404(ra) # 80001278 <acquire>
    80003414:	fc843503          	ld	a0,-56(s0)
    80003418:	00000097          	auipc	ra,0x0
    8000341c:	c20080e7          	jalr	-992(ra) # 80003038 <reparent>
    80003420:	fc843783          	ld	a5,-56(s0)
    80003424:	67dc                	ld	a5,136(a5)
    80003426:	853e                	mv	a0,a5
    80003428:	00000097          	auipc	ra,0x0
    8000342c:	728080e7          	jalr	1832(ra) # 80003b50 <wakeup>
    80003430:	fc843783          	ld	a5,-56(s0)
    80003434:	853e                	mv	a0,a5
    80003436:	ffffe097          	auipc	ra,0xffffe
    8000343a:	e42080e7          	jalr	-446(ra) # 80001278 <acquire>
    8000343e:	fc843783          	ld	a5,-56(s0)
    80003442:	fbc42703          	lw	a4,-68(s0)
    80003446:	d7d8                	sw	a4,44(a5)
    80003448:	fc843783          	ld	a5,-56(s0)
    8000344c:	4715                	li	a4,5
    8000344e:	cf98                	sw	a4,24(a5)
    80003450:	00009797          	auipc	a5,0x9
    80003454:	68878793          	addi	a5,a5,1672 # 8000cad8 <ticks>
    80003458:	4398                	lw	a4,0(a5)
    8000345a:	fc843783          	ld	a5,-56(s0)
    8000345e:	1ce7a023          	sw	a4,448(a5)
    80003462:	00019517          	auipc	a0,0x19
    80003466:	efe50513          	addi	a0,a0,-258 # 8001c360 <wait_lock>
    8000346a:	ffffe097          	auipc	ra,0xffffe
    8000346e:	e72080e7          	jalr	-398(ra) # 800012dc <release>
    80003472:	00000097          	auipc	ra,0x0
    80003476:	4e6080e7          	jalr	1254(ra) # 80003958 <sched>
    8000347a:	00009517          	auipc	a0,0x9
    8000347e:	ec650513          	addi	a0,a0,-314 # 8000c340 <etext+0x340>
    80003482:	ffffe097          	auipc	ra,0xffffe
    80003486:	808080e7          	jalr	-2040(ra) # 80000c8a <panic>

000000008000348a <wait>:
    8000348a:	7139                	addi	sp,sp,-64
    8000348c:	fc06                	sd	ra,56(sp)
    8000348e:	f822                	sd	s0,48(sp)
    80003490:	0080                	addi	s0,sp,64
    80003492:	fca43423          	sd	a0,-56(s0)
    80003496:	fffff097          	auipc	ra,0xfffff
    8000349a:	444080e7          	jalr	1092(ra) # 800028da <myproc>
    8000349e:	fca43c23          	sd	a0,-40(s0)
    800034a2:	00019517          	auipc	a0,0x19
    800034a6:	ebe50513          	addi	a0,a0,-322 # 8001c360 <wait_lock>
    800034aa:	ffffe097          	auipc	ra,0xffffe
    800034ae:	dce080e7          	jalr	-562(ra) # 80001278 <acquire>
    800034b2:	fe042223          	sw	zero,-28(s0)
    800034b6:	00012797          	auipc	a5,0x12
    800034ba:	c9278793          	addi	a5,a5,-878 # 80015148 <proc>
    800034be:	fef43423          	sd	a5,-24(s0)
    800034c2:	a8d1                	j	80003596 <wait+0x10c>
    800034c4:	fe843783          	ld	a5,-24(s0)
    800034c8:	67dc                	ld	a5,136(a5)
    800034ca:	fd843703          	ld	a4,-40(s0)
    800034ce:	0af71e63          	bne	a4,a5,8000358a <wait+0x100>
    800034d2:	fe843783          	ld	a5,-24(s0)
    800034d6:	853e                	mv	a0,a5
    800034d8:	ffffe097          	auipc	ra,0xffffe
    800034dc:	da0080e7          	jalr	-608(ra) # 80001278 <acquire>
    800034e0:	4785                	li	a5,1
    800034e2:	fef42223          	sw	a5,-28(s0)
    800034e6:	fe843783          	ld	a5,-24(s0)
    800034ea:	4f9c                	lw	a5,24(a5)
    800034ec:	873e                	mv	a4,a5
    800034ee:	4795                	li	a5,5
    800034f0:	08f71663          	bne	a4,a5,8000357c <wait+0xf2>
    800034f4:	fe843783          	ld	a5,-24(s0)
    800034f8:	5b9c                	lw	a5,48(a5)
    800034fa:	fcf42a23          	sw	a5,-44(s0)
    800034fe:	fc843783          	ld	a5,-56(s0)
    80003502:	c7a9                	beqz	a5,8000354c <wait+0xc2>
    80003504:	fd843783          	ld	a5,-40(s0)
    80003508:	73d8                	ld	a4,160(a5)
    8000350a:	fe843783          	ld	a5,-24(s0)
    8000350e:	02c78793          	addi	a5,a5,44
    80003512:	4691                	li	a3,4
    80003514:	863e                	mv	a2,a5
    80003516:	fc843583          	ld	a1,-56(s0)
    8000351a:	853a                	mv	a0,a4
    8000351c:	fffff097          	auipc	ra,0xfffff
    80003520:	dee080e7          	jalr	-530(ra) # 8000230a <copyout>
    80003524:	87aa                	mv	a5,a0
    80003526:	0207d363          	bgez	a5,8000354c <wait+0xc2>
    8000352a:	fe843783          	ld	a5,-24(s0)
    8000352e:	853e                	mv	a0,a5
    80003530:	ffffe097          	auipc	ra,0xffffe
    80003534:	dac080e7          	jalr	-596(ra) # 800012dc <release>
    80003538:	00019517          	auipc	a0,0x19
    8000353c:	e2850513          	addi	a0,a0,-472 # 8001c360 <wait_lock>
    80003540:	ffffe097          	auipc	ra,0xffffe
    80003544:	d9c080e7          	jalr	-612(ra) # 800012dc <release>
    80003548:	57fd                	li	a5,-1
    8000354a:	a879                	j	800035e8 <wait+0x15e>
    8000354c:	fe843503          	ld	a0,-24(s0)
    80003550:	fffff097          	auipc	ra,0xfffff
    80003554:	606080e7          	jalr	1542(ra) # 80002b56 <freeproc>
    80003558:	fe843783          	ld	a5,-24(s0)
    8000355c:	853e                	mv	a0,a5
    8000355e:	ffffe097          	auipc	ra,0xffffe
    80003562:	d7e080e7          	jalr	-642(ra) # 800012dc <release>
    80003566:	00019517          	auipc	a0,0x19
    8000356a:	dfa50513          	addi	a0,a0,-518 # 8001c360 <wait_lock>
    8000356e:	ffffe097          	auipc	ra,0xffffe
    80003572:	d6e080e7          	jalr	-658(ra) # 800012dc <release>
    80003576:	fd442783          	lw	a5,-44(s0)
    8000357a:	a0bd                	j	800035e8 <wait+0x15e>
    8000357c:	fe843783          	ld	a5,-24(s0)
    80003580:	853e                	mv	a0,a5
    80003582:	ffffe097          	auipc	ra,0xffffe
    80003586:	d5a080e7          	jalr	-678(ra) # 800012dc <release>
    8000358a:	fe843783          	ld	a5,-24(s0)
    8000358e:	1c878793          	addi	a5,a5,456
    80003592:	fef43423          	sd	a5,-24(s0)
    80003596:	fe843703          	ld	a4,-24(s0)
    8000359a:	00019797          	auipc	a5,0x19
    8000359e:	dae78793          	addi	a5,a5,-594 # 8001c348 <pid_lock>
    800035a2:	f2f761e3          	bltu	a4,a5,800034c4 <wait+0x3a>
    800035a6:	fe442783          	lw	a5,-28(s0)
    800035aa:	2781                	sext.w	a5,a5
    800035ac:	cb89                	beqz	a5,800035be <wait+0x134>
    800035ae:	fd843503          	ld	a0,-40(s0)
    800035b2:	00000097          	auipc	ra,0x0
    800035b6:	70c080e7          	jalr	1804(ra) # 80003cbe <killed>
    800035ba:	87aa                	mv	a5,a0
    800035bc:	cb99                	beqz	a5,800035d2 <wait+0x148>
    800035be:	00019517          	auipc	a0,0x19
    800035c2:	da250513          	addi	a0,a0,-606 # 8001c360 <wait_lock>
    800035c6:	ffffe097          	auipc	ra,0xffffe
    800035ca:	d16080e7          	jalr	-746(ra) # 800012dc <release>
    800035ce:	57fd                	li	a5,-1
    800035d0:	a821                	j	800035e8 <wait+0x15e>
    800035d2:	00019597          	auipc	a1,0x19
    800035d6:	d8e58593          	addi	a1,a1,-626 # 8001c360 <wait_lock>
    800035da:	fd843503          	ld	a0,-40(s0)
    800035de:	00000097          	auipc	ra,0x0
    800035e2:	4f6080e7          	jalr	1270(ra) # 80003ad4 <sleep>
    800035e6:	b5f1                	j	800034b2 <wait+0x28>
    800035e8:	853e                	mv	a0,a5
    800035ea:	70e2                	ld	ra,56(sp)
    800035ec:	7442                	ld	s0,48(sp)
    800035ee:	6121                	addi	sp,sp,64
    800035f0:	8082                	ret

00000000800035f2 <settickets>:
    800035f2:	7179                	addi	sp,sp,-48
    800035f4:	f406                	sd	ra,40(sp)
    800035f6:	f022                	sd	s0,32(sp)
    800035f8:	1800                	addi	s0,sp,48
    800035fa:	87aa                	mv	a5,a0
    800035fc:	fcf42e23          	sw	a5,-36(s0)
    80003600:	fffff097          	auipc	ra,0xfffff
    80003604:	2da080e7          	jalr	730(ra) # 800028da <myproc>
    80003608:	fea43423          	sd	a0,-24(s0)
    8000360c:	fe843783          	ld	a5,-24(s0)
    80003610:	853e                	mv	a0,a5
    80003612:	ffffe097          	auipc	ra,0xffffe
    80003616:	c66080e7          	jalr	-922(ra) # 80001278 <acquire>
    8000361a:	fdc42783          	lw	a5,-36(s0)
    8000361e:	2781                	sext.w	a5,a5
    80003620:	00f04b63          	bgtz	a5,80003636 <settickets+0x44>
    80003624:	fe843783          	ld	a5,-24(s0)
    80003628:	853e                	mv	a0,a5
    8000362a:	ffffe097          	auipc	ra,0xffffe
    8000362e:	cb2080e7          	jalr	-846(ra) # 800012dc <release>
    80003632:	57fd                	li	a5,-1
    80003634:	a839                	j	80003652 <settickets+0x60>
    80003636:	fe843783          	ld	a5,-24(s0)
    8000363a:	fdc42703          	lw	a4,-36(s0)
    8000363e:	d7f8                	sw	a4,108(a5)
    80003640:	fe843783          	ld	a5,-24(s0)
    80003644:	853e                	mv	a0,a5
    80003646:	ffffe097          	auipc	ra,0xffffe
    8000364a:	c96080e7          	jalr	-874(ra) # 800012dc <release>
    8000364e:	fdc42783          	lw	a5,-36(s0)
    80003652:	853e                	mv	a0,a5
    80003654:	70a2                	ld	ra,40(sp)
    80003656:	7402                	ld	s0,32(sp)
    80003658:	6145                	addi	sp,sp,48
    8000365a:	8082                	ret

000000008000365c <scheduler>:
    8000365c:	715d                	addi	sp,sp,-80
    8000365e:	e486                	sd	ra,72(sp)
    80003660:	e0a2                	sd	s0,64(sp)
    80003662:	0880                	addi	s0,sp,80
    80003664:	fffff097          	auipc	ra,0xfffff
    80003668:	23c080e7          	jalr	572(ra) # 800028a0 <mycpu>
    8000366c:	fca43423          	sd	a0,-56(s0)
    80003670:	fc843783          	ld	a5,-56(s0)
    80003674:	0007b023          	sd	zero,0(a5)
    80003678:	00009517          	auipc	a0,0x9
    8000367c:	d4850513          	addi	a0,a0,-696 # 8000c3c0 <etext+0x3c0>
    80003680:	ffffd097          	auipc	ra,0xffffd
    80003684:	3b4080e7          	jalr	948(ra) # 80000a34 <printf>
    80003688:	00009797          	auipc	a5,0x9
    8000368c:	d5878793          	addi	a5,a5,-680 # 8000c3e0 <etext+0x3e0>
    80003690:	6398                	ld	a4,0(a5)
    80003692:	fae43c23          	sd	a4,-72(s0)
    80003696:	679c                	ld	a5,8(a5)
    80003698:	fcf43023          	sd	a5,-64(s0)
    8000369c:	4791                	li	a5,4
    8000369e:	fef42623          	sw	a5,-20(s0)
    800036a2:	00009797          	auipc	a5,0x9
    800036a6:	43678793          	addi	a5,a5,1078 # 8000cad8 <ticks>
    800036aa:	4398                	lw	a4,0(a5)
    800036ac:	00009797          	auipc	a5,0x9
    800036b0:	43078793          	addi	a5,a5,1072 # 8000cadc <ticks1>
    800036b4:	c398                	sw	a4,0(a5)
    800036b6:	000f47b7          	lui	a5,0xf4
    800036ba:	24078793          	addi	a5,a5,576 # f4240 <_entry-0x7ff0bdc0>
    800036be:	fcf42e23          	sw	a5,-36(s0)
    800036c2:	fffff097          	auipc	ra,0xfffff
    800036c6:	f26080e7          	jalr	-218(ra) # 800025e8 <intr_on>
    800036ca:	4791                	li	a5,4
    800036cc:	fef42623          	sw	a5,-20(s0)
    800036d0:	00009797          	auipc	a5,0x9
    800036d4:	40878793          	addi	a5,a5,1032 # 8000cad8 <ticks>
    800036d8:	439c                	lw	a5,0(a5)
    800036da:	873e                	mv	a4,a5
    800036dc:	03000793          	li	a5,48
    800036e0:	02f777bb          	remuw	a5,a4,a5
    800036e4:	2781                	sext.w	a5,a5
    800036e6:	e7ad                	bnez	a5,80003750 <scheduler+0xf4>
    800036e8:	00012797          	auipc	a5,0x12
    800036ec:	a6078793          	addi	a5,a5,-1440 # 80015148 <proc>
    800036f0:	fef43023          	sd	a5,-32(s0)
    800036f4:	a0b1                	j	80003740 <scheduler+0xe4>
    800036f6:	fe043783          	ld	a5,-32(s0)
    800036fa:	853e                	mv	a0,a5
    800036fc:	ffffe097          	auipc	ra,0xffffe
    80003700:	b7c080e7          	jalr	-1156(ra) # 80001278 <acquire>
    80003704:	fe043783          	ld	a5,-32(s0)
    80003708:	4f9c                	lw	a5,24(a5)
    8000370a:	cf91                	beqz	a5,80003726 <scheduler+0xca>
    8000370c:	fe043783          	ld	a5,-32(s0)
    80003710:	5bfc                	lw	a5,116(a5)
    80003712:	00f05a63          	blez	a5,80003726 <scheduler+0xca>
    80003716:	fe043783          	ld	a5,-32(s0)
    8000371a:	0607aa23          	sw	zero,116(a5)
    8000371e:	fe043783          	ld	a5,-32(s0)
    80003722:	0607a823          	sw	zero,112(a5)
    80003726:	fe043783          	ld	a5,-32(s0)
    8000372a:	853e                	mv	a0,a5
    8000372c:	ffffe097          	auipc	ra,0xffffe
    80003730:	bb0080e7          	jalr	-1104(ra) # 800012dc <release>
    80003734:	fe043783          	ld	a5,-32(s0)
    80003738:	1c878793          	addi	a5,a5,456
    8000373c:	fef43023          	sd	a5,-32(s0)
    80003740:	fe043703          	ld	a4,-32(s0)
    80003744:	00019797          	auipc	a5,0x19
    80003748:	c0478793          	addi	a5,a5,-1020 # 8001c348 <pid_lock>
    8000374c:	faf765e3          	bltu	a4,a5,800036f6 <scheduler+0x9a>
    80003750:	00012797          	auipc	a5,0x12
    80003754:	9f878793          	addi	a5,a5,-1544 # 80015148 <proc>
    80003758:	fef43023          	sd	a5,-32(s0)
    8000375c:	a889                	j	800037ae <scheduler+0x152>
    8000375e:	fe043783          	ld	a5,-32(s0)
    80003762:	853e                	mv	a0,a5
    80003764:	ffffe097          	auipc	ra,0xffffe
    80003768:	b14080e7          	jalr	-1260(ra) # 80001278 <acquire>
    8000376c:	fe043783          	ld	a5,-32(s0)
    80003770:	4f9c                	lw	a5,24(a5)
    80003772:	873e                	mv	a4,a5
    80003774:	478d                	li	a5,3
    80003776:	00f71f63          	bne	a4,a5,80003794 <scheduler+0x138>
    8000377a:	fe043783          	ld	a5,-32(s0)
    8000377e:	5bf8                	lw	a4,116(a5)
    80003780:	fec42783          	lw	a5,-20(s0)
    80003784:	2781                	sext.w	a5,a5
    80003786:	00f75763          	bge	a4,a5,80003794 <scheduler+0x138>
    8000378a:	fe043783          	ld	a5,-32(s0)
    8000378e:	5bfc                	lw	a5,116(a5)
    80003790:	fef42623          	sw	a5,-20(s0)
    80003794:	fe043783          	ld	a5,-32(s0)
    80003798:	853e                	mv	a0,a5
    8000379a:	ffffe097          	auipc	ra,0xffffe
    8000379e:	b42080e7          	jalr	-1214(ra) # 800012dc <release>
    800037a2:	fe043783          	ld	a5,-32(s0)
    800037a6:	1c878793          	addi	a5,a5,456
    800037aa:	fef43023          	sd	a5,-32(s0)
    800037ae:	fe043703          	ld	a4,-32(s0)
    800037b2:	00019797          	auipc	a5,0x19
    800037b6:	b9678793          	addi	a5,a5,-1130 # 8001c348 <pid_lock>
    800037ba:	faf762e3          	bltu	a4,a5,8000375e <scheduler+0x102>
    800037be:	fc043823          	sd	zero,-48(s0)
    800037c2:	000f47b7          	lui	a5,0xf4
    800037c6:	24078793          	addi	a5,a5,576 # f4240 <_entry-0x7ff0bdc0>
    800037ca:	fcf42e23          	sw	a5,-36(s0)
    800037ce:	00012797          	auipc	a5,0x12
    800037d2:	97a78793          	addi	a5,a5,-1670 # 80015148 <proc>
    800037d6:	fef43023          	sd	a5,-32(s0)
    800037da:	a859                	j	80003870 <scheduler+0x214>
    800037dc:	fe043783          	ld	a5,-32(s0)
    800037e0:	853e                	mv	a0,a5
    800037e2:	ffffe097          	auipc	ra,0xffffe
    800037e6:	a96080e7          	jalr	-1386(ra) # 80001278 <acquire>
    800037ea:	fe043783          	ld	a5,-32(s0)
    800037ee:	4f9c                	lw	a5,24(a5)
    800037f0:	873e                	mv	a4,a5
    800037f2:	478d                	li	a5,3
    800037f4:	06f71163          	bne	a4,a5,80003856 <scheduler+0x1fa>
    800037f8:	fe043783          	ld	a5,-32(s0)
    800037fc:	5bf8                	lw	a4,116(a5)
    800037fe:	fec42783          	lw	a5,-20(s0)
    80003802:	2781                	sext.w	a5,a5
    80003804:	04e79963          	bne	a5,a4,80003856 <scheduler+0x1fa>
    80003808:	fec42783          	lw	a5,-20(s0)
    8000380c:	0007871b          	sext.w	a4,a5
    80003810:	4789                	li	a5,2
    80003812:	02e7c663          	blt	a5,a4,8000383e <scheduler+0x1e2>
    80003816:	fe043783          	ld	a5,-32(s0)
    8000381a:	0807a703          	lw	a4,128(a5)
    8000381e:	fdc42783          	lw	a5,-36(s0)
    80003822:	2781                	sext.w	a5,a5
    80003824:	02f75963          	bge	a4,a5,80003856 <scheduler+0x1fa>
    80003828:	fe043783          	ld	a5,-32(s0)
    8000382c:	fcf43823          	sd	a5,-48(s0)
    80003830:	fe043783          	ld	a5,-32(s0)
    80003834:	0807a783          	lw	a5,128(a5)
    80003838:	fcf42e23          	sw	a5,-36(s0)
    8000383c:	a829                	j	80003856 <scheduler+0x1fa>
    8000383e:	fe043783          	ld	a5,-32(s0)
    80003842:	fcf43823          	sd	a5,-48(s0)
    80003846:	fe043783          	ld	a5,-32(s0)
    8000384a:	853e                	mv	a0,a5
    8000384c:	ffffe097          	auipc	ra,0xffffe
    80003850:	a90080e7          	jalr	-1392(ra) # 800012dc <release>
    80003854:	a035                	j	80003880 <scheduler+0x224>
    80003856:	fe043783          	ld	a5,-32(s0)
    8000385a:	853e                	mv	a0,a5
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	a80080e7          	jalr	-1408(ra) # 800012dc <release>
    80003864:	fe043783          	ld	a5,-32(s0)
    80003868:	1c878793          	addi	a5,a5,456
    8000386c:	fef43023          	sd	a5,-32(s0)
    80003870:	fe043703          	ld	a4,-32(s0)
    80003874:	00019797          	auipc	a5,0x19
    80003878:	ad478793          	addi	a5,a5,-1324 # 8001c348 <pid_lock>
    8000387c:	f6f760e3          	bltu	a4,a5,800037dc <scheduler+0x180>
    80003880:	fd043783          	ld	a5,-48(s0)
    80003884:	e2078fe3          	beqz	a5,800036c2 <scheduler+0x66>
    80003888:	fd043783          	ld	a5,-48(s0)
    8000388c:	853e                	mv	a0,a5
    8000388e:	ffffe097          	auipc	ra,0xffffe
    80003892:	9ea080e7          	jalr	-1558(ra) # 80001278 <acquire>
    80003896:	fd043783          	ld	a5,-48(s0)
    8000389a:	4f9c                	lw	a5,24(a5)
    8000389c:	873e                	mv	a4,a5
    8000389e:	478d                	li	a5,3
    800038a0:	0af71463          	bne	a4,a5,80003948 <scheduler+0x2ec>
    800038a4:	fd043783          	ld	a5,-48(s0)
    800038a8:	4711                	li	a4,4
    800038aa:	cf98                	sw	a4,24(a5)
    800038ac:	fc843783          	ld	a5,-56(s0)
    800038b0:	fd043703          	ld	a4,-48(s0)
    800038b4:	e398                	sd	a4,0(a5)
    800038b6:	fc843783          	ld	a5,-56(s0)
    800038ba:	00878713          	addi	a4,a5,8
    800038be:	fd043783          	ld	a5,-48(s0)
    800038c2:	0b078793          	addi	a5,a5,176
    800038c6:	85be                	mv	a1,a5
    800038c8:	853a                	mv	a0,a4
    800038ca:	00001097          	auipc	ra,0x1
    800038ce:	814080e7          	jalr	-2028(ra) # 800040de <swtch>
    800038d2:	fc843783          	ld	a5,-56(s0)
    800038d6:	0007b023          	sd	zero,0(a5)
    800038da:	00009797          	auipc	a5,0x9
    800038de:	20278793          	addi	a5,a5,514 # 8000cadc <ticks1>
    800038e2:	439c                	lw	a5,0(a5)
    800038e4:	2785                	addiw	a5,a5,1
    800038e6:	0007871b          	sext.w	a4,a5
    800038ea:	00009797          	auipc	a5,0x9
    800038ee:	1f278793          	addi	a5,a5,498 # 8000cadc <ticks1>
    800038f2:	c398                	sw	a4,0(a5)
    800038f4:	fd043783          	ld	a5,-48(s0)
    800038f8:	5ffc                	lw	a5,124(a5)
    800038fa:	2785                	addiw	a5,a5,1
    800038fc:	0007871b          	sext.w	a4,a5
    80003900:	fd043783          	ld	a5,-48(s0)
    80003904:	dff8                	sw	a4,124(a5)
    80003906:	fd043783          	ld	a5,-48(s0)
    8000390a:	5bb8                	lw	a4,112(a5)
    8000390c:	fd043783          	ld	a5,-48(s0)
    80003910:	5bfc                	lw	a5,116(a5)
    80003912:	078a                	slli	a5,a5,0x2
    80003914:	17c1                	addi	a5,a5,-16
    80003916:	97a2                	add	a5,a5,s0
    80003918:	fc87a783          	lw	a5,-56(a5)
    8000391c:	02f74663          	blt	a4,a5,80003948 <scheduler+0x2ec>
    80003920:	fd043783          	ld	a5,-48(s0)
    80003924:	5bfc                	lw	a5,116(a5)
    80003926:	873e                	mv	a4,a5
    80003928:	4789                	li	a5,2
    8000392a:	00e7cf63          	blt	a5,a4,80003948 <scheduler+0x2ec>
    8000392e:	fd043783          	ld	a5,-48(s0)
    80003932:	5bfc                	lw	a5,116(a5)
    80003934:	2785                	addiw	a5,a5,1
    80003936:	0007871b          	sext.w	a4,a5
    8000393a:	fd043783          	ld	a5,-48(s0)
    8000393e:	dbf8                	sw	a4,116(a5)
    80003940:	fd043783          	ld	a5,-48(s0)
    80003944:	0607a823          	sw	zero,112(a5)
    80003948:	fd043783          	ld	a5,-48(s0)
    8000394c:	853e                	mv	a0,a5
    8000394e:	ffffe097          	auipc	ra,0xffffe
    80003952:	98e080e7          	jalr	-1650(ra) # 800012dc <release>
    80003956:	b3b5                	j	800036c2 <scheduler+0x66>

0000000080003958 <sched>:
    80003958:	7179                	addi	sp,sp,-48
    8000395a:	f406                	sd	ra,40(sp)
    8000395c:	f022                	sd	s0,32(sp)
    8000395e:	ec26                	sd	s1,24(sp)
    80003960:	1800                	addi	s0,sp,48
    80003962:	fffff097          	auipc	ra,0xfffff
    80003966:	f78080e7          	jalr	-136(ra) # 800028da <myproc>
    8000396a:	fca43c23          	sd	a0,-40(s0)
    8000396e:	fd843783          	ld	a5,-40(s0)
    80003972:	853e                	mv	a0,a5
    80003974:	ffffe097          	auipc	ra,0xffffe
    80003978:	9be080e7          	jalr	-1602(ra) # 80001332 <holding>
    8000397c:	87aa                	mv	a5,a0
    8000397e:	eb89                	bnez	a5,80003990 <sched+0x38>
    80003980:	00009517          	auipc	a0,0x9
    80003984:	a7050513          	addi	a0,a0,-1424 # 8000c3f0 <etext+0x3f0>
    80003988:	ffffd097          	auipc	ra,0xffffd
    8000398c:	302080e7          	jalr	770(ra) # 80000c8a <panic>
    80003990:	fffff097          	auipc	ra,0xfffff
    80003994:	f10080e7          	jalr	-240(ra) # 800028a0 <mycpu>
    80003998:	87aa                	mv	a5,a0
    8000399a:	5fbc                	lw	a5,120(a5)
    8000399c:	873e                	mv	a4,a5
    8000399e:	4785                	li	a5,1
    800039a0:	00f70a63          	beq	a4,a5,800039b4 <sched+0x5c>
    800039a4:	00009517          	auipc	a0,0x9
    800039a8:	a5c50513          	addi	a0,a0,-1444 # 8000c400 <etext+0x400>
    800039ac:	ffffd097          	auipc	ra,0xffffd
    800039b0:	2de080e7          	jalr	734(ra) # 80000c8a <panic>
    800039b4:	fd843783          	ld	a5,-40(s0)
    800039b8:	4f9c                	lw	a5,24(a5)
    800039ba:	873e                	mv	a4,a5
    800039bc:	4791                	li	a5,4
    800039be:	00f71a63          	bne	a4,a5,800039d2 <sched+0x7a>
    800039c2:	00009517          	auipc	a0,0x9
    800039c6:	a4e50513          	addi	a0,a0,-1458 # 8000c410 <etext+0x410>
    800039ca:	ffffd097          	auipc	ra,0xffffd
    800039ce:	2c0080e7          	jalr	704(ra) # 80000c8a <panic>
    800039d2:	fffff097          	auipc	ra,0xfffff
    800039d6:	c40080e7          	jalr	-960(ra) # 80002612 <intr_get>
    800039da:	87aa                	mv	a5,a0
    800039dc:	cb89                	beqz	a5,800039ee <sched+0x96>
    800039de:	00009517          	auipc	a0,0x9
    800039e2:	a4250513          	addi	a0,a0,-1470 # 8000c420 <etext+0x420>
    800039e6:	ffffd097          	auipc	ra,0xffffd
    800039ea:	2a4080e7          	jalr	676(ra) # 80000c8a <panic>
    800039ee:	fffff097          	auipc	ra,0xfffff
    800039f2:	eb2080e7          	jalr	-334(ra) # 800028a0 <mycpu>
    800039f6:	87aa                	mv	a5,a0
    800039f8:	5ffc                	lw	a5,124(a5)
    800039fa:	fcf42a23          	sw	a5,-44(s0)
    800039fe:	fd843783          	ld	a5,-40(s0)
    80003a02:	0b078493          	addi	s1,a5,176
    80003a06:	fffff097          	auipc	ra,0xfffff
    80003a0a:	e9a080e7          	jalr	-358(ra) # 800028a0 <mycpu>
    80003a0e:	87aa                	mv	a5,a0
    80003a10:	07a1                	addi	a5,a5,8
    80003a12:	85be                	mv	a1,a5
    80003a14:	8526                	mv	a0,s1
    80003a16:	00000097          	auipc	ra,0x0
    80003a1a:	6c8080e7          	jalr	1736(ra) # 800040de <swtch>
    80003a1e:	fffff097          	auipc	ra,0xfffff
    80003a22:	e82080e7          	jalr	-382(ra) # 800028a0 <mycpu>
    80003a26:	872a                	mv	a4,a0
    80003a28:	fd442783          	lw	a5,-44(s0)
    80003a2c:	df7c                	sw	a5,124(a4)
    80003a2e:	0001                	nop
    80003a30:	70a2                	ld	ra,40(sp)
    80003a32:	7402                	ld	s0,32(sp)
    80003a34:	64e2                	ld	s1,24(sp)
    80003a36:	6145                	addi	sp,sp,48
    80003a38:	8082                	ret

0000000080003a3a <yield>:
    80003a3a:	1101                	addi	sp,sp,-32
    80003a3c:	ec06                	sd	ra,24(sp)
    80003a3e:	e822                	sd	s0,16(sp)
    80003a40:	1000                	addi	s0,sp,32
    80003a42:	fffff097          	auipc	ra,0xfffff
    80003a46:	e98080e7          	jalr	-360(ra) # 800028da <myproc>
    80003a4a:	fea43423          	sd	a0,-24(s0)
    80003a4e:	fe843783          	ld	a5,-24(s0)
    80003a52:	853e                	mv	a0,a5
    80003a54:	ffffe097          	auipc	ra,0xffffe
    80003a58:	824080e7          	jalr	-2012(ra) # 80001278 <acquire>
    80003a5c:	fe843783          	ld	a5,-24(s0)
    80003a60:	470d                	li	a4,3
    80003a62:	cf98                	sw	a4,24(a5)
    80003a64:	00000097          	auipc	ra,0x0
    80003a68:	ef4080e7          	jalr	-268(ra) # 80003958 <sched>
    80003a6c:	fe843783          	ld	a5,-24(s0)
    80003a70:	853e                	mv	a0,a5
    80003a72:	ffffe097          	auipc	ra,0xffffe
    80003a76:	86a080e7          	jalr	-1942(ra) # 800012dc <release>
    80003a7a:	0001                	nop
    80003a7c:	60e2                	ld	ra,24(sp)
    80003a7e:	6442                	ld	s0,16(sp)
    80003a80:	6105                	addi	sp,sp,32
    80003a82:	8082                	ret

0000000080003a84 <forkret>:
    80003a84:	1141                	addi	sp,sp,-16
    80003a86:	e406                	sd	ra,8(sp)
    80003a88:	e022                	sd	s0,0(sp)
    80003a8a:	0800                	addi	s0,sp,16
    80003a8c:	fffff097          	auipc	ra,0xfffff
    80003a90:	e4e080e7          	jalr	-434(ra) # 800028da <myproc>
    80003a94:	87aa                	mv	a5,a0
    80003a96:	853e                	mv	a0,a5
    80003a98:	ffffe097          	auipc	ra,0xffffe
    80003a9c:	844080e7          	jalr	-1980(ra) # 800012dc <release>
    80003aa0:	00009797          	auipc	a5,0x9
    80003aa4:	ea878793          	addi	a5,a5,-344 # 8000c948 <first.1>
    80003aa8:	439c                	lw	a5,0(a5)
    80003aaa:	cf81                	beqz	a5,80003ac2 <forkret+0x3e>
    80003aac:	00009797          	auipc	a5,0x9
    80003ab0:	e9c78793          	addi	a5,a5,-356 # 8000c948 <first.1>
    80003ab4:	0007a023          	sw	zero,0(a5)
    80003ab8:	4505                	li	a0,1
    80003aba:	00002097          	auipc	ra,0x2
    80003abe:	a86080e7          	jalr	-1402(ra) # 80005540 <fsinit>
    80003ac2:	00001097          	auipc	ra,0x1
    80003ac6:	ac0080e7          	jalr	-1344(ra) # 80004582 <usertrapret>
    80003aca:	0001                	nop
    80003acc:	60a2                	ld	ra,8(sp)
    80003ace:	6402                	ld	s0,0(sp)
    80003ad0:	0141                	addi	sp,sp,16
    80003ad2:	8082                	ret

0000000080003ad4 <sleep>:
    80003ad4:	7179                	addi	sp,sp,-48
    80003ad6:	f406                	sd	ra,40(sp)
    80003ad8:	f022                	sd	s0,32(sp)
    80003ada:	1800                	addi	s0,sp,48
    80003adc:	fca43c23          	sd	a0,-40(s0)
    80003ae0:	fcb43823          	sd	a1,-48(s0)
    80003ae4:	fffff097          	auipc	ra,0xfffff
    80003ae8:	df6080e7          	jalr	-522(ra) # 800028da <myproc>
    80003aec:	fea43423          	sd	a0,-24(s0)
    80003af0:	fe843783          	ld	a5,-24(s0)
    80003af4:	853e                	mv	a0,a5
    80003af6:	ffffd097          	auipc	ra,0xffffd
    80003afa:	782080e7          	jalr	1922(ra) # 80001278 <acquire>
    80003afe:	fd043503          	ld	a0,-48(s0)
    80003b02:	ffffd097          	auipc	ra,0xffffd
    80003b06:	7da080e7          	jalr	2010(ra) # 800012dc <release>
    80003b0a:	fe843783          	ld	a5,-24(s0)
    80003b0e:	fd843703          	ld	a4,-40(s0)
    80003b12:	f398                	sd	a4,32(a5)
    80003b14:	fe843783          	ld	a5,-24(s0)
    80003b18:	4709                	li	a4,2
    80003b1a:	cf98                	sw	a4,24(a5)
    80003b1c:	00000097          	auipc	ra,0x0
    80003b20:	e3c080e7          	jalr	-452(ra) # 80003958 <sched>
    80003b24:	fe843783          	ld	a5,-24(s0)
    80003b28:	0207b023          	sd	zero,32(a5)
    80003b2c:	fe843783          	ld	a5,-24(s0)
    80003b30:	853e                	mv	a0,a5
    80003b32:	ffffd097          	auipc	ra,0xffffd
    80003b36:	7aa080e7          	jalr	1962(ra) # 800012dc <release>
    80003b3a:	fd043503          	ld	a0,-48(s0)
    80003b3e:	ffffd097          	auipc	ra,0xffffd
    80003b42:	73a080e7          	jalr	1850(ra) # 80001278 <acquire>
    80003b46:	0001                	nop
    80003b48:	70a2                	ld	ra,40(sp)
    80003b4a:	7402                	ld	s0,32(sp)
    80003b4c:	6145                	addi	sp,sp,48
    80003b4e:	8082                	ret

0000000080003b50 <wakeup>:
    80003b50:	7179                	addi	sp,sp,-48
    80003b52:	f406                	sd	ra,40(sp)
    80003b54:	f022                	sd	s0,32(sp)
    80003b56:	1800                	addi	s0,sp,48
    80003b58:	fca43c23          	sd	a0,-40(s0)
    80003b5c:	00011797          	auipc	a5,0x11
    80003b60:	5ec78793          	addi	a5,a5,1516 # 80015148 <proc>
    80003b64:	fef43423          	sd	a5,-24(s0)
    80003b68:	a085                	j	80003bc8 <wakeup+0x78>
    80003b6a:	fffff097          	auipc	ra,0xfffff
    80003b6e:	d70080e7          	jalr	-656(ra) # 800028da <myproc>
    80003b72:	872a                	mv	a4,a0
    80003b74:	fe843783          	ld	a5,-24(s0)
    80003b78:	04e78263          	beq	a5,a4,80003bbc <wakeup+0x6c>
    80003b7c:	fe843783          	ld	a5,-24(s0)
    80003b80:	853e                	mv	a0,a5
    80003b82:	ffffd097          	auipc	ra,0xffffd
    80003b86:	6f6080e7          	jalr	1782(ra) # 80001278 <acquire>
    80003b8a:	fe843783          	ld	a5,-24(s0)
    80003b8e:	4f9c                	lw	a5,24(a5)
    80003b90:	873e                	mv	a4,a5
    80003b92:	4789                	li	a5,2
    80003b94:	00f71d63          	bne	a4,a5,80003bae <wakeup+0x5e>
    80003b98:	fe843783          	ld	a5,-24(s0)
    80003b9c:	739c                	ld	a5,32(a5)
    80003b9e:	fd843703          	ld	a4,-40(s0)
    80003ba2:	00f71663          	bne	a4,a5,80003bae <wakeup+0x5e>
    80003ba6:	fe843783          	ld	a5,-24(s0)
    80003baa:	470d                	li	a4,3
    80003bac:	cf98                	sw	a4,24(a5)
    80003bae:	fe843783          	ld	a5,-24(s0)
    80003bb2:	853e                	mv	a0,a5
    80003bb4:	ffffd097          	auipc	ra,0xffffd
    80003bb8:	728080e7          	jalr	1832(ra) # 800012dc <release>
    80003bbc:	fe843783          	ld	a5,-24(s0)
    80003bc0:	1c878793          	addi	a5,a5,456
    80003bc4:	fef43423          	sd	a5,-24(s0)
    80003bc8:	fe843703          	ld	a4,-24(s0)
    80003bcc:	00018797          	auipc	a5,0x18
    80003bd0:	77c78793          	addi	a5,a5,1916 # 8001c348 <pid_lock>
    80003bd4:	f8f76be3          	bltu	a4,a5,80003b6a <wakeup+0x1a>
    80003bd8:	0001                	nop
    80003bda:	0001                	nop
    80003bdc:	70a2                	ld	ra,40(sp)
    80003bde:	7402                	ld	s0,32(sp)
    80003be0:	6145                	addi	sp,sp,48
    80003be2:	8082                	ret

0000000080003be4 <kill>:
    80003be4:	7179                	addi	sp,sp,-48
    80003be6:	f406                	sd	ra,40(sp)
    80003be8:	f022                	sd	s0,32(sp)
    80003bea:	1800                	addi	s0,sp,48
    80003bec:	87aa                	mv	a5,a0
    80003bee:	fcf42e23          	sw	a5,-36(s0)
    80003bf2:	00011797          	auipc	a5,0x11
    80003bf6:	55678793          	addi	a5,a5,1366 # 80015148 <proc>
    80003bfa:	fef43423          	sd	a5,-24(s0)
    80003bfe:	a0ad                	j	80003c68 <kill+0x84>
    80003c00:	fe843783          	ld	a5,-24(s0)
    80003c04:	853e                	mv	a0,a5
    80003c06:	ffffd097          	auipc	ra,0xffffd
    80003c0a:	672080e7          	jalr	1650(ra) # 80001278 <acquire>
    80003c0e:	fe843783          	ld	a5,-24(s0)
    80003c12:	5b98                	lw	a4,48(a5)
    80003c14:	fdc42783          	lw	a5,-36(s0)
    80003c18:	2781                	sext.w	a5,a5
    80003c1a:	02e79a63          	bne	a5,a4,80003c4e <kill+0x6a>
    80003c1e:	fe843783          	ld	a5,-24(s0)
    80003c22:	4705                	li	a4,1
    80003c24:	d798                	sw	a4,40(a5)
    80003c26:	fe843783          	ld	a5,-24(s0)
    80003c2a:	4f9c                	lw	a5,24(a5)
    80003c2c:	873e                	mv	a4,a5
    80003c2e:	4789                	li	a5,2
    80003c30:	00f71663          	bne	a4,a5,80003c3c <kill+0x58>
    80003c34:	fe843783          	ld	a5,-24(s0)
    80003c38:	470d                	li	a4,3
    80003c3a:	cf98                	sw	a4,24(a5)
    80003c3c:	fe843783          	ld	a5,-24(s0)
    80003c40:	853e                	mv	a0,a5
    80003c42:	ffffd097          	auipc	ra,0xffffd
    80003c46:	69a080e7          	jalr	1690(ra) # 800012dc <release>
    80003c4a:	4781                	li	a5,0
    80003c4c:	a03d                	j	80003c7a <kill+0x96>
    80003c4e:	fe843783          	ld	a5,-24(s0)
    80003c52:	853e                	mv	a0,a5
    80003c54:	ffffd097          	auipc	ra,0xffffd
    80003c58:	688080e7          	jalr	1672(ra) # 800012dc <release>
    80003c5c:	fe843783          	ld	a5,-24(s0)
    80003c60:	1c878793          	addi	a5,a5,456
    80003c64:	fef43423          	sd	a5,-24(s0)
    80003c68:	fe843703          	ld	a4,-24(s0)
    80003c6c:	00018797          	auipc	a5,0x18
    80003c70:	6dc78793          	addi	a5,a5,1756 # 8001c348 <pid_lock>
    80003c74:	f8f766e3          	bltu	a4,a5,80003c00 <kill+0x1c>
    80003c78:	57fd                	li	a5,-1
    80003c7a:	853e                	mv	a0,a5
    80003c7c:	70a2                	ld	ra,40(sp)
    80003c7e:	7402                	ld	s0,32(sp)
    80003c80:	6145                	addi	sp,sp,48
    80003c82:	8082                	ret

0000000080003c84 <setkilled>:
    80003c84:	1101                	addi	sp,sp,-32
    80003c86:	ec06                	sd	ra,24(sp)
    80003c88:	e822                	sd	s0,16(sp)
    80003c8a:	1000                	addi	s0,sp,32
    80003c8c:	fea43423          	sd	a0,-24(s0)
    80003c90:	fe843783          	ld	a5,-24(s0)
    80003c94:	853e                	mv	a0,a5
    80003c96:	ffffd097          	auipc	ra,0xffffd
    80003c9a:	5e2080e7          	jalr	1506(ra) # 80001278 <acquire>
    80003c9e:	fe843783          	ld	a5,-24(s0)
    80003ca2:	4705                	li	a4,1
    80003ca4:	d798                	sw	a4,40(a5)
    80003ca6:	fe843783          	ld	a5,-24(s0)
    80003caa:	853e                	mv	a0,a5
    80003cac:	ffffd097          	auipc	ra,0xffffd
    80003cb0:	630080e7          	jalr	1584(ra) # 800012dc <release>
    80003cb4:	0001                	nop
    80003cb6:	60e2                	ld	ra,24(sp)
    80003cb8:	6442                	ld	s0,16(sp)
    80003cba:	6105                	addi	sp,sp,32
    80003cbc:	8082                	ret

0000000080003cbe <killed>:
    80003cbe:	7179                	addi	sp,sp,-48
    80003cc0:	f406                	sd	ra,40(sp)
    80003cc2:	f022                	sd	s0,32(sp)
    80003cc4:	1800                	addi	s0,sp,48
    80003cc6:	fca43c23          	sd	a0,-40(s0)
    80003cca:	fd843783          	ld	a5,-40(s0)
    80003cce:	853e                	mv	a0,a5
    80003cd0:	ffffd097          	auipc	ra,0xffffd
    80003cd4:	5a8080e7          	jalr	1448(ra) # 80001278 <acquire>
    80003cd8:	fd843783          	ld	a5,-40(s0)
    80003cdc:	579c                	lw	a5,40(a5)
    80003cde:	fef42623          	sw	a5,-20(s0)
    80003ce2:	fd843783          	ld	a5,-40(s0)
    80003ce6:	853e                	mv	a0,a5
    80003ce8:	ffffd097          	auipc	ra,0xffffd
    80003cec:	5f4080e7          	jalr	1524(ra) # 800012dc <release>
    80003cf0:	fec42783          	lw	a5,-20(s0)
    80003cf4:	853e                	mv	a0,a5
    80003cf6:	70a2                	ld	ra,40(sp)
    80003cf8:	7402                	ld	s0,32(sp)
    80003cfa:	6145                	addi	sp,sp,48
    80003cfc:	8082                	ret

0000000080003cfe <either_copyout>:
    80003cfe:	7139                	addi	sp,sp,-64
    80003d00:	fc06                	sd	ra,56(sp)
    80003d02:	f822                	sd	s0,48(sp)
    80003d04:	0080                	addi	s0,sp,64
    80003d06:	87aa                	mv	a5,a0
    80003d08:	fcb43823          	sd	a1,-48(s0)
    80003d0c:	fcc43423          	sd	a2,-56(s0)
    80003d10:	fcd43023          	sd	a3,-64(s0)
    80003d14:	fcf42e23          	sw	a5,-36(s0)
    80003d18:	fffff097          	auipc	ra,0xfffff
    80003d1c:	bc2080e7          	jalr	-1086(ra) # 800028da <myproc>
    80003d20:	fea43423          	sd	a0,-24(s0)
    80003d24:	fdc42783          	lw	a5,-36(s0)
    80003d28:	2781                	sext.w	a5,a5
    80003d2a:	c38d                	beqz	a5,80003d4c <either_copyout+0x4e>
    80003d2c:	fe843783          	ld	a5,-24(s0)
    80003d30:	73dc                	ld	a5,160(a5)
    80003d32:	fc043683          	ld	a3,-64(s0)
    80003d36:	fc843603          	ld	a2,-56(s0)
    80003d3a:	fd043583          	ld	a1,-48(s0)
    80003d3e:	853e                	mv	a0,a5
    80003d40:	ffffe097          	auipc	ra,0xffffe
    80003d44:	5ca080e7          	jalr	1482(ra) # 8000230a <copyout>
    80003d48:	87aa                	mv	a5,a0
    80003d4a:	a839                	j	80003d68 <either_copyout+0x6a>
    80003d4c:	fd043783          	ld	a5,-48(s0)
    80003d50:	fc043703          	ld	a4,-64(s0)
    80003d54:	2701                	sext.w	a4,a4
    80003d56:	863a                	mv	a2,a4
    80003d58:	fc843583          	ld	a1,-56(s0)
    80003d5c:	853e                	mv	a0,a5
    80003d5e:	ffffd097          	auipc	ra,0xffffd
    80003d62:	7d2080e7          	jalr	2002(ra) # 80001530 <memmove>
    80003d66:	4781                	li	a5,0
    80003d68:	853e                	mv	a0,a5
    80003d6a:	70e2                	ld	ra,56(sp)
    80003d6c:	7442                	ld	s0,48(sp)
    80003d6e:	6121                	addi	sp,sp,64
    80003d70:	8082                	ret

0000000080003d72 <either_copyin>:
    80003d72:	7139                	addi	sp,sp,-64
    80003d74:	fc06                	sd	ra,56(sp)
    80003d76:	f822                	sd	s0,48(sp)
    80003d78:	0080                	addi	s0,sp,64
    80003d7a:	fca43c23          	sd	a0,-40(s0)
    80003d7e:	87ae                	mv	a5,a1
    80003d80:	fcc43423          	sd	a2,-56(s0)
    80003d84:	fcd43023          	sd	a3,-64(s0)
    80003d88:	fcf42a23          	sw	a5,-44(s0)
    80003d8c:	fffff097          	auipc	ra,0xfffff
    80003d90:	b4e080e7          	jalr	-1202(ra) # 800028da <myproc>
    80003d94:	fea43423          	sd	a0,-24(s0)
    80003d98:	fd442783          	lw	a5,-44(s0)
    80003d9c:	2781                	sext.w	a5,a5
    80003d9e:	c38d                	beqz	a5,80003dc0 <either_copyin+0x4e>
    80003da0:	fe843783          	ld	a5,-24(s0)
    80003da4:	73dc                	ld	a5,160(a5)
    80003da6:	fc043683          	ld	a3,-64(s0)
    80003daa:	fc843603          	ld	a2,-56(s0)
    80003dae:	fd843583          	ld	a1,-40(s0)
    80003db2:	853e                	mv	a0,a5
    80003db4:	ffffe097          	auipc	ra,0xffffe
    80003db8:	624080e7          	jalr	1572(ra) # 800023d8 <copyin>
    80003dbc:	87aa                	mv	a5,a0
    80003dbe:	a839                	j	80003ddc <either_copyin+0x6a>
    80003dc0:	fc843783          	ld	a5,-56(s0)
    80003dc4:	fc043703          	ld	a4,-64(s0)
    80003dc8:	2701                	sext.w	a4,a4
    80003dca:	863a                	mv	a2,a4
    80003dcc:	85be                	mv	a1,a5
    80003dce:	fd843503          	ld	a0,-40(s0)
    80003dd2:	ffffd097          	auipc	ra,0xffffd
    80003dd6:	75e080e7          	jalr	1886(ra) # 80001530 <memmove>
    80003dda:	4781                	li	a5,0
    80003ddc:	853e                	mv	a0,a5
    80003dde:	70e2                	ld	ra,56(sp)
    80003de0:	7442                	ld	s0,48(sp)
    80003de2:	6121                	addi	sp,sp,64
    80003de4:	8082                	ret

0000000080003de6 <procdump>:
    80003de6:	1101                	addi	sp,sp,-32
    80003de8:	ec06                	sd	ra,24(sp)
    80003dea:	e822                	sd	s0,16(sp)
    80003dec:	1000                	addi	s0,sp,32
    80003dee:	00008517          	auipc	a0,0x8
    80003df2:	64a50513          	addi	a0,a0,1610 # 8000c438 <etext+0x438>
    80003df6:	ffffd097          	auipc	ra,0xffffd
    80003dfa:	c3e080e7          	jalr	-962(ra) # 80000a34 <printf>
    80003dfe:	00011797          	auipc	a5,0x11
    80003e02:	34a78793          	addi	a5,a5,842 # 80015148 <proc>
    80003e06:	fef43423          	sd	a5,-24(s0)
    80003e0a:	a859                	j	80003ea0 <procdump+0xba>
    80003e0c:	fe843783          	ld	a5,-24(s0)
    80003e10:	4f9c                	lw	a5,24(a5)
    80003e12:	c3c1                	beqz	a5,80003e92 <procdump+0xac>
    80003e14:	fe843783          	ld	a5,-24(s0)
    80003e18:	4f9c                	lw	a5,24(a5)
    80003e1a:	873e                	mv	a4,a5
    80003e1c:	4795                	li	a5,5
    80003e1e:	02e7ee63          	bltu	a5,a4,80003e5a <procdump+0x74>
    80003e22:	fe843783          	ld	a5,-24(s0)
    80003e26:	4f9c                	lw	a5,24(a5)
    80003e28:	00009717          	auipc	a4,0x9
    80003e2c:	b7870713          	addi	a4,a4,-1160 # 8000c9a0 <states.0>
    80003e30:	1782                	slli	a5,a5,0x20
    80003e32:	9381                	srli	a5,a5,0x20
    80003e34:	078e                	slli	a5,a5,0x3
    80003e36:	97ba                	add	a5,a5,a4
    80003e38:	639c                	ld	a5,0(a5)
    80003e3a:	c385                	beqz	a5,80003e5a <procdump+0x74>
    80003e3c:	fe843783          	ld	a5,-24(s0)
    80003e40:	4f9c                	lw	a5,24(a5)
    80003e42:	00009717          	auipc	a4,0x9
    80003e46:	b5e70713          	addi	a4,a4,-1186 # 8000c9a0 <states.0>
    80003e4a:	1782                	slli	a5,a5,0x20
    80003e4c:	9381                	srli	a5,a5,0x20
    80003e4e:	078e                	slli	a5,a5,0x3
    80003e50:	97ba                	add	a5,a5,a4
    80003e52:	639c                	ld	a5,0(a5)
    80003e54:	fef43023          	sd	a5,-32(s0)
    80003e58:	a039                	j	80003e66 <procdump+0x80>
    80003e5a:	00008797          	auipc	a5,0x8
    80003e5e:	5fe78793          	addi	a5,a5,1534 # 8000c458 <etext+0x458>
    80003e62:	fef43023          	sd	a5,-32(s0)
    80003e66:	fe843783          	ld	a5,-24(s0)
    80003e6a:	5b8c                	lw	a1,48(a5)
    80003e6c:	fe843783          	ld	a5,-24(s0)
    80003e70:	57f4                	lw	a3,108(a5)
    80003e72:	fe843783          	ld	a5,-24(s0)
    80003e76:	1b87a783          	lw	a5,440(a5)
    80003e7a:	873e                	mv	a4,a5
    80003e7c:	fe043603          	ld	a2,-32(s0)
    80003e80:	00008517          	auipc	a0,0x8
    80003e84:	5e050513          	addi	a0,a0,1504 # 8000c460 <etext+0x460>
    80003e88:	ffffd097          	auipc	ra,0xffffd
    80003e8c:	bac080e7          	jalr	-1108(ra) # 80000a34 <printf>
    80003e90:	a011                	j	80003e94 <procdump+0xae>
    80003e92:	0001                	nop
    80003e94:	fe843783          	ld	a5,-24(s0)
    80003e98:	1c878793          	addi	a5,a5,456
    80003e9c:	fef43423          	sd	a5,-24(s0)
    80003ea0:	fe843703          	ld	a4,-24(s0)
    80003ea4:	00018797          	auipc	a5,0x18
    80003ea8:	4a478793          	addi	a5,a5,1188 # 8001c348 <pid_lock>
    80003eac:	f6f760e3          	bltu	a4,a5,80003e0c <procdump+0x26>
    80003eb0:	0001                	nop
    80003eb2:	0001                	nop
    80003eb4:	60e2                	ld	ra,24(sp)
    80003eb6:	6442                	ld	s0,16(sp)
    80003eb8:	6105                	addi	sp,sp,32
    80003eba:	8082                	ret

0000000080003ebc <waitx>:
    80003ebc:	715d                	addi	sp,sp,-80
    80003ebe:	e486                	sd	ra,72(sp)
    80003ec0:	e0a2                	sd	s0,64(sp)
    80003ec2:	0880                	addi	s0,sp,80
    80003ec4:	fca43423          	sd	a0,-56(s0)
    80003ec8:	fcb43023          	sd	a1,-64(s0)
    80003ecc:	fac43c23          	sd	a2,-72(s0)
    80003ed0:	fffff097          	auipc	ra,0xfffff
    80003ed4:	a0a080e7          	jalr	-1526(ra) # 800028da <myproc>
    80003ed8:	fca43c23          	sd	a0,-40(s0)
    80003edc:	00018517          	auipc	a0,0x18
    80003ee0:	48450513          	addi	a0,a0,1156 # 8001c360 <wait_lock>
    80003ee4:	ffffd097          	auipc	ra,0xffffd
    80003ee8:	394080e7          	jalr	916(ra) # 80001278 <acquire>
    80003eec:	fe042223          	sw	zero,-28(s0)
    80003ef0:	00011797          	auipc	a5,0x11
    80003ef4:	25878793          	addi	a5,a5,600 # 80015148 <proc>
    80003ef8:	fef43423          	sd	a5,-24(s0)
    80003efc:	aa01                	j	8000400c <waitx+0x150>
    80003efe:	fe843783          	ld	a5,-24(s0)
    80003f02:	67dc                	ld	a5,136(a5)
    80003f04:	fd843703          	ld	a4,-40(s0)
    80003f08:	0ef71c63          	bne	a4,a5,80004000 <waitx+0x144>
    80003f0c:	fe843783          	ld	a5,-24(s0)
    80003f10:	853e                	mv	a0,a5
    80003f12:	ffffd097          	auipc	ra,0xffffd
    80003f16:	366080e7          	jalr	870(ra) # 80001278 <acquire>
    80003f1a:	4785                	li	a5,1
    80003f1c:	fef42223          	sw	a5,-28(s0)
    80003f20:	fe843783          	ld	a5,-24(s0)
    80003f24:	4f9c                	lw	a5,24(a5)
    80003f26:	873e                	mv	a4,a5
    80003f28:	4795                	li	a5,5
    80003f2a:	0cf71463          	bne	a4,a5,80003ff2 <waitx+0x136>
    80003f2e:	fe843783          	ld	a5,-24(s0)
    80003f32:	5b9c                	lw	a5,48(a5)
    80003f34:	fcf42a23          	sw	a5,-44(s0)
    80003f38:	fe843783          	ld	a5,-24(s0)
    80003f3c:	1b87a703          	lw	a4,440(a5)
    80003f40:	fb843783          	ld	a5,-72(s0)
    80003f44:	c398                	sw	a4,0(a5)
    80003f46:	fe843783          	ld	a5,-24(s0)
    80003f4a:	1c07a703          	lw	a4,448(a5)
    80003f4e:	fe843783          	ld	a5,-24(s0)
    80003f52:	1bc7a783          	lw	a5,444(a5)
    80003f56:	40f707bb          	subw	a5,a4,a5
    80003f5a:	0007871b          	sext.w	a4,a5
    80003f5e:	fe843783          	ld	a5,-24(s0)
    80003f62:	1b87a783          	lw	a5,440(a5)
    80003f66:	40f707bb          	subw	a5,a4,a5
    80003f6a:	0007871b          	sext.w	a4,a5
    80003f6e:	fc043783          	ld	a5,-64(s0)
    80003f72:	c398                	sw	a4,0(a5)
    80003f74:	fc843783          	ld	a5,-56(s0)
    80003f78:	c7a9                	beqz	a5,80003fc2 <waitx+0x106>
    80003f7a:	fd843783          	ld	a5,-40(s0)
    80003f7e:	73d8                	ld	a4,160(a5)
    80003f80:	fe843783          	ld	a5,-24(s0)
    80003f84:	02c78793          	addi	a5,a5,44
    80003f88:	4691                	li	a3,4
    80003f8a:	863e                	mv	a2,a5
    80003f8c:	fc843583          	ld	a1,-56(s0)
    80003f90:	853a                	mv	a0,a4
    80003f92:	ffffe097          	auipc	ra,0xffffe
    80003f96:	378080e7          	jalr	888(ra) # 8000230a <copyout>
    80003f9a:	87aa                	mv	a5,a0
    80003f9c:	0207d363          	bgez	a5,80003fc2 <waitx+0x106>
    80003fa0:	fe843783          	ld	a5,-24(s0)
    80003fa4:	853e                	mv	a0,a5
    80003fa6:	ffffd097          	auipc	ra,0xffffd
    80003faa:	336080e7          	jalr	822(ra) # 800012dc <release>
    80003fae:	00018517          	auipc	a0,0x18
    80003fb2:	3b250513          	addi	a0,a0,946 # 8001c360 <wait_lock>
    80003fb6:	ffffd097          	auipc	ra,0xffffd
    80003fba:	326080e7          	jalr	806(ra) # 800012dc <release>
    80003fbe:	57fd                	li	a5,-1
    80003fc0:	a859                	j	80004056 <waitx+0x19a>
    80003fc2:	fe843503          	ld	a0,-24(s0)
    80003fc6:	fffff097          	auipc	ra,0xfffff
    80003fca:	b90080e7          	jalr	-1136(ra) # 80002b56 <freeproc>
    80003fce:	fe843783          	ld	a5,-24(s0)
    80003fd2:	853e                	mv	a0,a5
    80003fd4:	ffffd097          	auipc	ra,0xffffd
    80003fd8:	308080e7          	jalr	776(ra) # 800012dc <release>
    80003fdc:	00018517          	auipc	a0,0x18
    80003fe0:	38450513          	addi	a0,a0,900 # 8001c360 <wait_lock>
    80003fe4:	ffffd097          	auipc	ra,0xffffd
    80003fe8:	2f8080e7          	jalr	760(ra) # 800012dc <release>
    80003fec:	fd442783          	lw	a5,-44(s0)
    80003ff0:	a09d                	j	80004056 <waitx+0x19a>
    80003ff2:	fe843783          	ld	a5,-24(s0)
    80003ff6:	853e                	mv	a0,a5
    80003ff8:	ffffd097          	auipc	ra,0xffffd
    80003ffc:	2e4080e7          	jalr	740(ra) # 800012dc <release>
    80004000:	fe843783          	ld	a5,-24(s0)
    80004004:	1c878793          	addi	a5,a5,456
    80004008:	fef43423          	sd	a5,-24(s0)
    8000400c:	fe843703          	ld	a4,-24(s0)
    80004010:	00018797          	auipc	a5,0x18
    80004014:	33878793          	addi	a5,a5,824 # 8001c348 <pid_lock>
    80004018:	eef763e3          	bltu	a4,a5,80003efe <waitx+0x42>
    8000401c:	fe442783          	lw	a5,-28(s0)
    80004020:	2781                	sext.w	a5,a5
    80004022:	c789                	beqz	a5,8000402c <waitx+0x170>
    80004024:	fd843783          	ld	a5,-40(s0)
    80004028:	579c                	lw	a5,40(a5)
    8000402a:	cb99                	beqz	a5,80004040 <waitx+0x184>
    8000402c:	00018517          	auipc	a0,0x18
    80004030:	33450513          	addi	a0,a0,820 # 8001c360 <wait_lock>
    80004034:	ffffd097          	auipc	ra,0xffffd
    80004038:	2a8080e7          	jalr	680(ra) # 800012dc <release>
    8000403c:	57fd                	li	a5,-1
    8000403e:	a821                	j	80004056 <waitx+0x19a>
    80004040:	00018597          	auipc	a1,0x18
    80004044:	32058593          	addi	a1,a1,800 # 8001c360 <wait_lock>
    80004048:	fd843503          	ld	a0,-40(s0)
    8000404c:	00000097          	auipc	ra,0x0
    80004050:	a88080e7          	jalr	-1400(ra) # 80003ad4 <sleep>
    80004054:	bd61                	j	80003eec <waitx+0x30>
    80004056:	853e                	mv	a0,a5
    80004058:	60a6                	ld	ra,72(sp)
    8000405a:	6406                	ld	s0,64(sp)
    8000405c:	6161                	addi	sp,sp,80
    8000405e:	8082                	ret

0000000080004060 <update_time>:
    80004060:	1101                	addi	sp,sp,-32
    80004062:	ec06                	sd	ra,24(sp)
    80004064:	e822                	sd	s0,16(sp)
    80004066:	1000                	addi	s0,sp,32
    80004068:	00011797          	auipc	a5,0x11
    8000406c:	0e078793          	addi	a5,a5,224 # 80015148 <proc>
    80004070:	fef43423          	sd	a5,-24(s0)
    80004074:	a0b9                	j	800040c2 <update_time+0x62>
    80004076:	fe843783          	ld	a5,-24(s0)
    8000407a:	853e                	mv	a0,a5
    8000407c:	ffffd097          	auipc	ra,0xffffd
    80004080:	1fc080e7          	jalr	508(ra) # 80001278 <acquire>
    80004084:	fe843783          	ld	a5,-24(s0)
    80004088:	4f9c                	lw	a5,24(a5)
    8000408a:	873e                	mv	a4,a5
    8000408c:	4791                	li	a5,4
    8000408e:	00f71d63          	bne	a4,a5,800040a8 <update_time+0x48>
    80004092:	fe843783          	ld	a5,-24(s0)
    80004096:	1b87a783          	lw	a5,440(a5)
    8000409a:	2785                	addiw	a5,a5,1
    8000409c:	0007871b          	sext.w	a4,a5
    800040a0:	fe843783          	ld	a5,-24(s0)
    800040a4:	1ae7ac23          	sw	a4,440(a5)
    800040a8:	fe843783          	ld	a5,-24(s0)
    800040ac:	853e                	mv	a0,a5
    800040ae:	ffffd097          	auipc	ra,0xffffd
    800040b2:	22e080e7          	jalr	558(ra) # 800012dc <release>
    800040b6:	fe843783          	ld	a5,-24(s0)
    800040ba:	1c878793          	addi	a5,a5,456
    800040be:	fef43423          	sd	a5,-24(s0)
    800040c2:	fe843703          	ld	a4,-24(s0)
    800040c6:	00018797          	auipc	a5,0x18
    800040ca:	28278793          	addi	a5,a5,642 # 8001c348 <pid_lock>
    800040ce:	faf764e3          	bltu	a4,a5,80004076 <update_time+0x16>
    800040d2:	0001                	nop
    800040d4:	0001                	nop
    800040d6:	60e2                	ld	ra,24(sp)
    800040d8:	6442                	ld	s0,16(sp)
    800040da:	6105                	addi	sp,sp,32
    800040dc:	8082                	ret

00000000800040de <swtch>:
    800040de:	00153023          	sd	ra,0(a0)
    800040e2:	00253423          	sd	sp,8(a0)
    800040e6:	e900                	sd	s0,16(a0)
    800040e8:	ed04                	sd	s1,24(a0)
    800040ea:	03253023          	sd	s2,32(a0)
    800040ee:	03353423          	sd	s3,40(a0)
    800040f2:	03453823          	sd	s4,48(a0)
    800040f6:	03553c23          	sd	s5,56(a0)
    800040fa:	05653023          	sd	s6,64(a0)
    800040fe:	05753423          	sd	s7,72(a0)
    80004102:	05853823          	sd	s8,80(a0)
    80004106:	05953c23          	sd	s9,88(a0)
    8000410a:	07a53023          	sd	s10,96(a0)
    8000410e:	07b53423          	sd	s11,104(a0)
    80004112:	0005b083          	ld	ra,0(a1)
    80004116:	0085b103          	ld	sp,8(a1)
    8000411a:	6980                	ld	s0,16(a1)
    8000411c:	6d84                	ld	s1,24(a1)
    8000411e:	0205b903          	ld	s2,32(a1)
    80004122:	0285b983          	ld	s3,40(a1)
    80004126:	0305ba03          	ld	s4,48(a1)
    8000412a:	0385ba83          	ld	s5,56(a1)
    8000412e:	0405bb03          	ld	s6,64(a1)
    80004132:	0485bb83          	ld	s7,72(a1)
    80004136:	0505bc03          	ld	s8,80(a1)
    8000413a:	0585bc83          	ld	s9,88(a1)
    8000413e:	0605bd03          	ld	s10,96(a1)
    80004142:	0685bd83          	ld	s11,104(a1)
    80004146:	8082                	ret

0000000080004148 <r_sstatus>:
    80004148:	1101                	addi	sp,sp,-32
    8000414a:	ec22                	sd	s0,24(sp)
    8000414c:	1000                	addi	s0,sp,32
    8000414e:	100027f3          	csrr	a5,sstatus
    80004152:	fef43423          	sd	a5,-24(s0)
    80004156:	fe843783          	ld	a5,-24(s0)
    8000415a:	853e                	mv	a0,a5
    8000415c:	6462                	ld	s0,24(sp)
    8000415e:	6105                	addi	sp,sp,32
    80004160:	8082                	ret

0000000080004162 <w_sstatus>:
    80004162:	1101                	addi	sp,sp,-32
    80004164:	ec22                	sd	s0,24(sp)
    80004166:	1000                	addi	s0,sp,32
    80004168:	fea43423          	sd	a0,-24(s0)
    8000416c:	fe843783          	ld	a5,-24(s0)
    80004170:	10079073          	csrw	sstatus,a5
    80004174:	0001                	nop
    80004176:	6462                	ld	s0,24(sp)
    80004178:	6105                	addi	sp,sp,32
    8000417a:	8082                	ret

000000008000417c <r_sip>:
    8000417c:	1101                	addi	sp,sp,-32
    8000417e:	ec22                	sd	s0,24(sp)
    80004180:	1000                	addi	s0,sp,32
    80004182:	144027f3          	csrr	a5,sip
    80004186:	fef43423          	sd	a5,-24(s0)
    8000418a:	fe843783          	ld	a5,-24(s0)
    8000418e:	853e                	mv	a0,a5
    80004190:	6462                	ld	s0,24(sp)
    80004192:	6105                	addi	sp,sp,32
    80004194:	8082                	ret

0000000080004196 <w_sip>:
    80004196:	1101                	addi	sp,sp,-32
    80004198:	ec22                	sd	s0,24(sp)
    8000419a:	1000                	addi	s0,sp,32
    8000419c:	fea43423          	sd	a0,-24(s0)
    800041a0:	fe843783          	ld	a5,-24(s0)
    800041a4:	14479073          	csrw	sip,a5
    800041a8:	0001                	nop
    800041aa:	6462                	ld	s0,24(sp)
    800041ac:	6105                	addi	sp,sp,32
    800041ae:	8082                	ret

00000000800041b0 <w_sepc>:
    800041b0:	1101                	addi	sp,sp,-32
    800041b2:	ec22                	sd	s0,24(sp)
    800041b4:	1000                	addi	s0,sp,32
    800041b6:	fea43423          	sd	a0,-24(s0)
    800041ba:	fe843783          	ld	a5,-24(s0)
    800041be:	14179073          	csrw	sepc,a5
    800041c2:	0001                	nop
    800041c4:	6462                	ld	s0,24(sp)
    800041c6:	6105                	addi	sp,sp,32
    800041c8:	8082                	ret

00000000800041ca <r_sepc>:
    800041ca:	1101                	addi	sp,sp,-32
    800041cc:	ec22                	sd	s0,24(sp)
    800041ce:	1000                	addi	s0,sp,32
    800041d0:	141027f3          	csrr	a5,sepc
    800041d4:	fef43423          	sd	a5,-24(s0)
    800041d8:	fe843783          	ld	a5,-24(s0)
    800041dc:	853e                	mv	a0,a5
    800041de:	6462                	ld	s0,24(sp)
    800041e0:	6105                	addi	sp,sp,32
    800041e2:	8082                	ret

00000000800041e4 <w_stvec>:
    800041e4:	1101                	addi	sp,sp,-32
    800041e6:	ec22                	sd	s0,24(sp)
    800041e8:	1000                	addi	s0,sp,32
    800041ea:	fea43423          	sd	a0,-24(s0)
    800041ee:	fe843783          	ld	a5,-24(s0)
    800041f2:	10579073          	csrw	stvec,a5
    800041f6:	0001                	nop
    800041f8:	6462                	ld	s0,24(sp)
    800041fa:	6105                	addi	sp,sp,32
    800041fc:	8082                	ret

00000000800041fe <r_satp>:
    800041fe:	1101                	addi	sp,sp,-32
    80004200:	ec22                	sd	s0,24(sp)
    80004202:	1000                	addi	s0,sp,32
    80004204:	180027f3          	csrr	a5,satp
    80004208:	fef43423          	sd	a5,-24(s0)
    8000420c:	fe843783          	ld	a5,-24(s0)
    80004210:	853e                	mv	a0,a5
    80004212:	6462                	ld	s0,24(sp)
    80004214:	6105                	addi	sp,sp,32
    80004216:	8082                	ret

0000000080004218 <r_scause>:
    80004218:	1101                	addi	sp,sp,-32
    8000421a:	ec22                	sd	s0,24(sp)
    8000421c:	1000                	addi	s0,sp,32
    8000421e:	142027f3          	csrr	a5,scause
    80004222:	fef43423          	sd	a5,-24(s0)
    80004226:	fe843783          	ld	a5,-24(s0)
    8000422a:	853e                	mv	a0,a5
    8000422c:	6462                	ld	s0,24(sp)
    8000422e:	6105                	addi	sp,sp,32
    80004230:	8082                	ret

0000000080004232 <r_stval>:
    80004232:	1101                	addi	sp,sp,-32
    80004234:	ec22                	sd	s0,24(sp)
    80004236:	1000                	addi	s0,sp,32
    80004238:	143027f3          	csrr	a5,stval
    8000423c:	fef43423          	sd	a5,-24(s0)
    80004240:	fe843783          	ld	a5,-24(s0)
    80004244:	853e                	mv	a0,a5
    80004246:	6462                	ld	s0,24(sp)
    80004248:	6105                	addi	sp,sp,32
    8000424a:	8082                	ret

000000008000424c <intr_on>:
    8000424c:	1141                	addi	sp,sp,-16
    8000424e:	e406                	sd	ra,8(sp)
    80004250:	e022                	sd	s0,0(sp)
    80004252:	0800                	addi	s0,sp,16
    80004254:	00000097          	auipc	ra,0x0
    80004258:	ef4080e7          	jalr	-268(ra) # 80004148 <r_sstatus>
    8000425c:	87aa                	mv	a5,a0
    8000425e:	0027e793          	ori	a5,a5,2
    80004262:	853e                	mv	a0,a5
    80004264:	00000097          	auipc	ra,0x0
    80004268:	efe080e7          	jalr	-258(ra) # 80004162 <w_sstatus>
    8000426c:	0001                	nop
    8000426e:	60a2                	ld	ra,8(sp)
    80004270:	6402                	ld	s0,0(sp)
    80004272:	0141                	addi	sp,sp,16
    80004274:	8082                	ret

0000000080004276 <intr_off>:
    80004276:	1141                	addi	sp,sp,-16
    80004278:	e406                	sd	ra,8(sp)
    8000427a:	e022                	sd	s0,0(sp)
    8000427c:	0800                	addi	s0,sp,16
    8000427e:	00000097          	auipc	ra,0x0
    80004282:	eca080e7          	jalr	-310(ra) # 80004148 <r_sstatus>
    80004286:	87aa                	mv	a5,a0
    80004288:	9bf5                	andi	a5,a5,-3
    8000428a:	853e                	mv	a0,a5
    8000428c:	00000097          	auipc	ra,0x0
    80004290:	ed6080e7          	jalr	-298(ra) # 80004162 <w_sstatus>
    80004294:	0001                	nop
    80004296:	60a2                	ld	ra,8(sp)
    80004298:	6402                	ld	s0,0(sp)
    8000429a:	0141                	addi	sp,sp,16
    8000429c:	8082                	ret

000000008000429e <intr_get>:
    8000429e:	1101                	addi	sp,sp,-32
    800042a0:	ec06                	sd	ra,24(sp)
    800042a2:	e822                	sd	s0,16(sp)
    800042a4:	1000                	addi	s0,sp,32
    800042a6:	00000097          	auipc	ra,0x0
    800042aa:	ea2080e7          	jalr	-350(ra) # 80004148 <r_sstatus>
    800042ae:	fea43423          	sd	a0,-24(s0)
    800042b2:	fe843783          	ld	a5,-24(s0)
    800042b6:	8b89                	andi	a5,a5,2
    800042b8:	00f037b3          	snez	a5,a5
    800042bc:	0ff7f793          	zext.b	a5,a5
    800042c0:	2781                	sext.w	a5,a5
    800042c2:	853e                	mv	a0,a5
    800042c4:	60e2                	ld	ra,24(sp)
    800042c6:	6442                	ld	s0,16(sp)
    800042c8:	6105                	addi	sp,sp,32
    800042ca:	8082                	ret

00000000800042cc <r_tp>:
    800042cc:	1101                	addi	sp,sp,-32
    800042ce:	ec22                	sd	s0,24(sp)
    800042d0:	1000                	addi	s0,sp,32
    800042d2:	8792                	mv	a5,tp
    800042d4:	fef43423          	sd	a5,-24(s0)
    800042d8:	fe843783          	ld	a5,-24(s0)
    800042dc:	853e                	mv	a0,a5
    800042de:	6462                	ld	s0,24(sp)
    800042e0:	6105                	addi	sp,sp,32
    800042e2:	8082                	ret

00000000800042e4 <trapinit>:
    800042e4:	1141                	addi	sp,sp,-16
    800042e6:	e406                	sd	ra,8(sp)
    800042e8:	e022                	sd	s0,0(sp)
    800042ea:	0800                	addi	s0,sp,16
    800042ec:	00008597          	auipc	a1,0x8
    800042f0:	1bc58593          	addi	a1,a1,444 # 8000c4a8 <etext+0x4a8>
    800042f4:	00018517          	auipc	a0,0x18
    800042f8:	09c50513          	addi	a0,a0,156 # 8001c390 <tickslock>
    800042fc:	ffffd097          	auipc	ra,0xffffd
    80004300:	f4c080e7          	jalr	-180(ra) # 80001248 <initlock>
    80004304:	0001                	nop
    80004306:	60a2                	ld	ra,8(sp)
    80004308:	6402                	ld	s0,0(sp)
    8000430a:	0141                	addi	sp,sp,16
    8000430c:	8082                	ret

000000008000430e <trapinithart>:
    8000430e:	1141                	addi	sp,sp,-16
    80004310:	e406                	sd	ra,8(sp)
    80004312:	e022                	sd	s0,0(sp)
    80004314:	0800                	addi	s0,sp,16
    80004316:	00005797          	auipc	a5,0x5
    8000431a:	0ea78793          	addi	a5,a5,234 # 80009400 <kernelvec>
    8000431e:	853e                	mv	a0,a5
    80004320:	00000097          	auipc	ra,0x0
    80004324:	ec4080e7          	jalr	-316(ra) # 800041e4 <w_stvec>
    80004328:	0001                	nop
    8000432a:	60a2                	ld	ra,8(sp)
    8000432c:	6402                	ld	s0,0(sp)
    8000432e:	0141                	addi	sp,sp,16
    80004330:	8082                	ret

0000000080004332 <usertrap>:
    80004332:	7179                	addi	sp,sp,-48
    80004334:	f406                	sd	ra,40(sp)
    80004336:	f022                	sd	s0,32(sp)
    80004338:	ec26                	sd	s1,24(sp)
    8000433a:	1800                	addi	s0,sp,48
    8000433c:	fc042e23          	sw	zero,-36(s0)
    80004340:	00000097          	auipc	ra,0x0
    80004344:	e08080e7          	jalr	-504(ra) # 80004148 <r_sstatus>
    80004348:	87aa                	mv	a5,a0
    8000434a:	1007f793          	andi	a5,a5,256
    8000434e:	cb89                	beqz	a5,80004360 <usertrap+0x2e>
    80004350:	00008517          	auipc	a0,0x8
    80004354:	16050513          	addi	a0,a0,352 # 8000c4b0 <etext+0x4b0>
    80004358:	ffffd097          	auipc	ra,0xffffd
    8000435c:	932080e7          	jalr	-1742(ra) # 80000c8a <panic>
    80004360:	00005797          	auipc	a5,0x5
    80004364:	0a078793          	addi	a5,a5,160 # 80009400 <kernelvec>
    80004368:	853e                	mv	a0,a5
    8000436a:	00000097          	auipc	ra,0x0
    8000436e:	e7a080e7          	jalr	-390(ra) # 800041e4 <w_stvec>
    80004372:	ffffe097          	auipc	ra,0xffffe
    80004376:	568080e7          	jalr	1384(ra) # 800028da <myproc>
    8000437a:	fca43823          	sd	a0,-48(s0)
    8000437e:	fd043783          	ld	a5,-48(s0)
    80004382:	77c4                	ld	s1,168(a5)
    80004384:	00000097          	auipc	ra,0x0
    80004388:	e46080e7          	jalr	-442(ra) # 800041ca <r_sepc>
    8000438c:	87aa                	mv	a5,a0
    8000438e:	ec9c                	sd	a5,24(s1)
    80004390:	00000097          	auipc	ra,0x0
    80004394:	e88080e7          	jalr	-376(ra) # 80004218 <r_scause>
    80004398:	872a                	mv	a4,a0
    8000439a:	47a1                	li	a5,8
    8000439c:	04f71163          	bne	a4,a5,800043de <usertrap+0xac>
    800043a0:	fd043503          	ld	a0,-48(s0)
    800043a4:	00000097          	auipc	ra,0x0
    800043a8:	91a080e7          	jalr	-1766(ra) # 80003cbe <killed>
    800043ac:	87aa                	mv	a5,a0
    800043ae:	c791                	beqz	a5,800043ba <usertrap+0x88>
    800043b0:	557d                	li	a0,-1
    800043b2:	fffff097          	auipc	ra,0xfffff
    800043b6:	cfa080e7          	jalr	-774(ra) # 800030ac <exit>
    800043ba:	fd043783          	ld	a5,-48(s0)
    800043be:	77dc                	ld	a5,168(a5)
    800043c0:	6f98                	ld	a4,24(a5)
    800043c2:	fd043783          	ld	a5,-48(s0)
    800043c6:	77dc                	ld	a5,168(a5)
    800043c8:	0711                	addi	a4,a4,4
    800043ca:	ef98                	sd	a4,24(a5)
    800043cc:	00000097          	auipc	ra,0x0
    800043d0:	e80080e7          	jalr	-384(ra) # 8000424c <intr_on>
    800043d4:	00000097          	auipc	ra,0x0
    800043d8:	778080e7          	jalr	1912(ra) # 80004b4c <syscall>
    800043dc:	a859                	j	80004472 <usertrap+0x140>
    800043de:	00000097          	auipc	ra,0x0
    800043e2:	45a080e7          	jalr	1114(ra) # 80004838 <devintr>
    800043e6:	87aa                	mv	a5,a0
    800043e8:	fcf42e23          	sw	a5,-36(s0)
    800043ec:	fdc42783          	lw	a5,-36(s0)
    800043f0:	2781                	sext.w	a5,a5
    800043f2:	c785                	beqz	a5,8000441a <usertrap+0xe8>
    800043f4:	fdc42783          	lw	a5,-36(s0)
    800043f8:	0007871b          	sext.w	a4,a5
    800043fc:	4785                	li	a5,1
    800043fe:	06f71a63          	bne	a4,a5,80004472 <usertrap+0x140>
    80004402:	00008797          	auipc	a5,0x8
    80004406:	6da78793          	addi	a5,a5,1754 # 8000cadc <ticks1>
    8000440a:	439c                	lw	a5,0(a5)
    8000440c:	0007871b          	sext.w	a4,a5
    80004410:	fd043783          	ld	a5,-48(s0)
    80004414:	08e7a023          	sw	a4,128(a5)
    80004418:	a8a9                	j	80004472 <usertrap+0x140>
    8000441a:	00000097          	auipc	ra,0x0
    8000441e:	dfe080e7          	jalr	-514(ra) # 80004218 <r_scause>
    80004422:	872a                	mv	a4,a0
    80004424:	fd043783          	ld	a5,-48(s0)
    80004428:	5b9c                	lw	a5,48(a5)
    8000442a:	863e                	mv	a2,a5
    8000442c:	85ba                	mv	a1,a4
    8000442e:	00008517          	auipc	a0,0x8
    80004432:	0a250513          	addi	a0,a0,162 # 8000c4d0 <etext+0x4d0>
    80004436:	ffffc097          	auipc	ra,0xffffc
    8000443a:	5fe080e7          	jalr	1534(ra) # 80000a34 <printf>
    8000443e:	00000097          	auipc	ra,0x0
    80004442:	d8c080e7          	jalr	-628(ra) # 800041ca <r_sepc>
    80004446:	84aa                	mv	s1,a0
    80004448:	00000097          	auipc	ra,0x0
    8000444c:	dea080e7          	jalr	-534(ra) # 80004232 <r_stval>
    80004450:	87aa                	mv	a5,a0
    80004452:	863e                	mv	a2,a5
    80004454:	85a6                	mv	a1,s1
    80004456:	00008517          	auipc	a0,0x8
    8000445a:	0aa50513          	addi	a0,a0,170 # 8000c500 <etext+0x500>
    8000445e:	ffffc097          	auipc	ra,0xffffc
    80004462:	5d6080e7          	jalr	1494(ra) # 80000a34 <printf>
    80004466:	fd043503          	ld	a0,-48(s0)
    8000446a:	00000097          	auipc	ra,0x0
    8000446e:	81a080e7          	jalr	-2022(ra) # 80003c84 <setkilled>
    80004472:	fd043503          	ld	a0,-48(s0)
    80004476:	00000097          	auipc	ra,0x0
    8000447a:	848080e7          	jalr	-1976(ra) # 80003cbe <killed>
    8000447e:	87aa                	mv	a5,a0
    80004480:	c791                	beqz	a5,8000448c <usertrap+0x15a>
    80004482:	557d                	li	a0,-1
    80004484:	fffff097          	auipc	ra,0xfffff
    80004488:	c28080e7          	jalr	-984(ra) # 800030ac <exit>
    8000448c:	fdc42783          	lw	a5,-36(s0)
    80004490:	0007871b          	sext.w	a4,a5
    80004494:	4789                	li	a5,2
    80004496:	0cf71c63          	bne	a4,a5,8000456e <usertrap+0x23c>
    8000449a:	fd043783          	ld	a5,-48(s0)
    8000449e:	5bbc                	lw	a5,112(a5)
    800044a0:	2785                	addiw	a5,a5,1
    800044a2:	0007871b          	sext.w	a4,a5
    800044a6:	fd043783          	ld	a5,-48(s0)
    800044aa:	dbb8                	sw	a4,112(a5)
    800044ac:	fd043783          	ld	a5,-48(s0)
    800044b0:	4f9c                	lw	a5,24(a5)
    800044b2:	cb81                	beqz	a5,800044c2 <usertrap+0x190>
    800044b4:	fd043783          	ld	a5,-48(s0)
    800044b8:	4f9c                	lw	a5,24(a5)
    800044ba:	873e                	mv	a4,a5
    800044bc:	478d                	li	a5,3
    800044be:	00f71663          	bne	a4,a5,800044ca <usertrap+0x198>
    800044c2:	fffff097          	auipc	ra,0xfffff
    800044c6:	578080e7          	jalr	1400(ra) # 80003a3a <yield>
    800044ca:	fd043783          	ld	a5,-48(s0)
    800044ce:	4f9c                	lw	a5,24(a5)
    800044d0:	873e                	mv	a4,a5
    800044d2:	4791                	li	a5,4
    800044d4:	08f71963          	bne	a4,a5,80004566 <usertrap+0x234>
    800044d8:	fd043783          	ld	a5,-48(s0)
    800044dc:	43bc                	lw	a5,64(a5)
    800044de:	08f05463          	blez	a5,80004566 <usertrap+0x234>
    800044e2:	fd043783          	ld	a5,-48(s0)
    800044e6:	4bbc                	lw	a5,80(a5)
    800044e8:	2785                	addiw	a5,a5,1
    800044ea:	0007871b          	sext.w	a4,a5
    800044ee:	fd043783          	ld	a5,-48(s0)
    800044f2:	cbb8                	sw	a4,80(a5)
    800044f4:	fd043783          	ld	a5,-48(s0)
    800044f8:	4bb8                	lw	a4,80(a5)
    800044fa:	fd043783          	ld	a5,-48(s0)
    800044fe:	43bc                	lw	a5,64(a5)
    80004500:	06f74363          	blt	a4,a5,80004566 <usertrap+0x234>
    80004504:	fd043783          	ld	a5,-48(s0)
    80004508:	4bfc                	lw	a5,84(a5)
    8000450a:	efb1                	bnez	a5,80004566 <usertrap+0x234>
    8000450c:	fd043783          	ld	a5,-48(s0)
    80004510:	4705                	li	a4,1
    80004512:	cbf8                	sw	a4,84(a5)
    80004514:	fd043783          	ld	a5,-48(s0)
    80004518:	6fbc                	ld	a5,88(a5)
    8000451a:	eb89                	bnez	a5,8000452c <usertrap+0x1fa>
    8000451c:	ffffd097          	auipc	ra,0xffffd
    80004520:	c08080e7          	jalr	-1016(ra) # 80001124 <kalloc>
    80004524:	872a                	mv	a4,a0
    80004526:	fd043783          	ld	a5,-48(s0)
    8000452a:	efb8                	sd	a4,88(a5)
    8000452c:	fd043783          	ld	a5,-48(s0)
    80004530:	6fbc                	ld	a5,88(a5)
    80004532:	cf99                	beqz	a5,80004550 <usertrap+0x21e>
    80004534:	fd043783          	ld	a5,-48(s0)
    80004538:	6fb8                	ld	a4,88(a5)
    8000453a:	fd043783          	ld	a5,-48(s0)
    8000453e:	77dc                	ld	a5,168(a5)
    80004540:	12000613          	li	a2,288
    80004544:	85be                	mv	a1,a5
    80004546:	853a                	mv	a0,a4
    80004548:	ffffd097          	auipc	ra,0xffffd
    8000454c:	fe8080e7          	jalr	-24(ra) # 80001530 <memmove>
    80004550:	fd043783          	ld	a5,-48(s0)
    80004554:	67b8                	ld	a4,72(a5)
    80004556:	fd043783          	ld	a5,-48(s0)
    8000455a:	77dc                	ld	a5,168(a5)
    8000455c:	ef98                	sd	a4,24(a5)
    8000455e:	fd043783          	ld	a5,-48(s0)
    80004562:	0407a823          	sw	zero,80(a5)
    80004566:	fffff097          	auipc	ra,0xfffff
    8000456a:	4d4080e7          	jalr	1236(ra) # 80003a3a <yield>
    8000456e:	00000097          	auipc	ra,0x0
    80004572:	014080e7          	jalr	20(ra) # 80004582 <usertrapret>
    80004576:	0001                	nop
    80004578:	70a2                	ld	ra,40(sp)
    8000457a:	7402                	ld	s0,32(sp)
    8000457c:	64e2                	ld	s1,24(sp)
    8000457e:	6145                	addi	sp,sp,48
    80004580:	8082                	ret

0000000080004582 <usertrapret>:
    80004582:	715d                	addi	sp,sp,-80
    80004584:	e486                	sd	ra,72(sp)
    80004586:	e0a2                	sd	s0,64(sp)
    80004588:	fc26                	sd	s1,56(sp)
    8000458a:	0880                	addi	s0,sp,80
    8000458c:	ffffe097          	auipc	ra,0xffffe
    80004590:	34e080e7          	jalr	846(ra) # 800028da <myproc>
    80004594:	fca43c23          	sd	a0,-40(s0)
    80004598:	00000097          	auipc	ra,0x0
    8000459c:	cde080e7          	jalr	-802(ra) # 80004276 <intr_off>
    800045a0:	00007717          	auipc	a4,0x7
    800045a4:	a6070713          	addi	a4,a4,-1440 # 8000b000 <_trampoline>
    800045a8:	00007797          	auipc	a5,0x7
    800045ac:	a5878793          	addi	a5,a5,-1448 # 8000b000 <_trampoline>
    800045b0:	8f1d                	sub	a4,a4,a5
    800045b2:	040007b7          	lui	a5,0x4000
    800045b6:	17fd                	addi	a5,a5,-1 # 3ffffff <_entry-0x7c000001>
    800045b8:	07b2                	slli	a5,a5,0xc
    800045ba:	97ba                	add	a5,a5,a4
    800045bc:	fcf43823          	sd	a5,-48(s0)
    800045c0:	fd043503          	ld	a0,-48(s0)
    800045c4:	00000097          	auipc	ra,0x0
    800045c8:	c20080e7          	jalr	-992(ra) # 800041e4 <w_stvec>
    800045cc:	fd843783          	ld	a5,-40(s0)
    800045d0:	77c4                	ld	s1,168(a5)
    800045d2:	00000097          	auipc	ra,0x0
    800045d6:	c2c080e7          	jalr	-980(ra) # 800041fe <r_satp>
    800045da:	87aa                	mv	a5,a0
    800045dc:	e09c                	sd	a5,0(s1)
    800045de:	fd843783          	ld	a5,-40(s0)
    800045e2:	6bd4                	ld	a3,144(a5)
    800045e4:	fd843783          	ld	a5,-40(s0)
    800045e8:	77dc                	ld	a5,168(a5)
    800045ea:	6705                	lui	a4,0x1
    800045ec:	9736                	add	a4,a4,a3
    800045ee:	e798                	sd	a4,8(a5)
    800045f0:	fd843783          	ld	a5,-40(s0)
    800045f4:	77dc                	ld	a5,168(a5)
    800045f6:	00000717          	auipc	a4,0x0
    800045fa:	d3c70713          	addi	a4,a4,-708 # 80004332 <usertrap>
    800045fe:	eb98                	sd	a4,16(a5)
    80004600:	fd843783          	ld	a5,-40(s0)
    80004604:	77c4                	ld	s1,168(a5)
    80004606:	00000097          	auipc	ra,0x0
    8000460a:	cc6080e7          	jalr	-826(ra) # 800042cc <r_tp>
    8000460e:	87aa                	mv	a5,a0
    80004610:	f09c                	sd	a5,32(s1)
    80004612:	00000097          	auipc	ra,0x0
    80004616:	b36080e7          	jalr	-1226(ra) # 80004148 <r_sstatus>
    8000461a:	fca43423          	sd	a0,-56(s0)
    8000461e:	fc843783          	ld	a5,-56(s0)
    80004622:	eff7f793          	andi	a5,a5,-257
    80004626:	fcf43423          	sd	a5,-56(s0)
    8000462a:	fc843783          	ld	a5,-56(s0)
    8000462e:	0207e793          	ori	a5,a5,32
    80004632:	fcf43423          	sd	a5,-56(s0)
    80004636:	fc843503          	ld	a0,-56(s0)
    8000463a:	00000097          	auipc	ra,0x0
    8000463e:	b28080e7          	jalr	-1240(ra) # 80004162 <w_sstatus>
    80004642:	fd843783          	ld	a5,-40(s0)
    80004646:	77dc                	ld	a5,168(a5)
    80004648:	6f9c                	ld	a5,24(a5)
    8000464a:	853e                	mv	a0,a5
    8000464c:	00000097          	auipc	ra,0x0
    80004650:	b64080e7          	jalr	-1180(ra) # 800041b0 <w_sepc>
    80004654:	fd843783          	ld	a5,-40(s0)
    80004658:	73dc                	ld	a5,160(a5)
    8000465a:	00c7d713          	srli	a4,a5,0xc
    8000465e:	57fd                	li	a5,-1
    80004660:	17fe                	slli	a5,a5,0x3f
    80004662:	8fd9                	or	a5,a5,a4
    80004664:	fcf43023          	sd	a5,-64(s0)
    80004668:	00007717          	auipc	a4,0x7
    8000466c:	a3470713          	addi	a4,a4,-1484 # 8000b09c <userret>
    80004670:	00007797          	auipc	a5,0x7
    80004674:	99078793          	addi	a5,a5,-1648 # 8000b000 <_trampoline>
    80004678:	8f1d                	sub	a4,a4,a5
    8000467a:	040007b7          	lui	a5,0x4000
    8000467e:	17fd                	addi	a5,a5,-1 # 3ffffff <_entry-0x7c000001>
    80004680:	07b2                	slli	a5,a5,0xc
    80004682:	97ba                	add	a5,a5,a4
    80004684:	faf43c23          	sd	a5,-72(s0)
    80004688:	fb843783          	ld	a5,-72(s0)
    8000468c:	fc043503          	ld	a0,-64(s0)
    80004690:	9782                	jalr	a5
    80004692:	0001                	nop
    80004694:	60a6                	ld	ra,72(sp)
    80004696:	6406                	ld	s0,64(sp)
    80004698:	74e2                	ld	s1,56(sp)
    8000469a:	6161                	addi	sp,sp,80
    8000469c:	8082                	ret

000000008000469e <kerneltrap>:
    8000469e:	7139                	addi	sp,sp,-64
    800046a0:	fc06                	sd	ra,56(sp)
    800046a2:	f822                	sd	s0,48(sp)
    800046a4:	f426                	sd	s1,40(sp)
    800046a6:	0080                	addi	s0,sp,64
    800046a8:	fc042e23          	sw	zero,-36(s0)
    800046ac:	00000097          	auipc	ra,0x0
    800046b0:	b1e080e7          	jalr	-1250(ra) # 800041ca <r_sepc>
    800046b4:	fca43823          	sd	a0,-48(s0)
    800046b8:	00000097          	auipc	ra,0x0
    800046bc:	a90080e7          	jalr	-1392(ra) # 80004148 <r_sstatus>
    800046c0:	fca43423          	sd	a0,-56(s0)
    800046c4:	00000097          	auipc	ra,0x0
    800046c8:	b54080e7          	jalr	-1196(ra) # 80004218 <r_scause>
    800046cc:	fca43023          	sd	a0,-64(s0)
    800046d0:	fc843783          	ld	a5,-56(s0)
    800046d4:	1007f793          	andi	a5,a5,256
    800046d8:	eb89                	bnez	a5,800046ea <kerneltrap+0x4c>
    800046da:	00008517          	auipc	a0,0x8
    800046de:	e4650513          	addi	a0,a0,-442 # 8000c520 <etext+0x520>
    800046e2:	ffffc097          	auipc	ra,0xffffc
    800046e6:	5a8080e7          	jalr	1448(ra) # 80000c8a <panic>
    800046ea:	00000097          	auipc	ra,0x0
    800046ee:	bb4080e7          	jalr	-1100(ra) # 8000429e <intr_get>
    800046f2:	87aa                	mv	a5,a0
    800046f4:	cb89                	beqz	a5,80004706 <kerneltrap+0x68>
    800046f6:	00008517          	auipc	a0,0x8
    800046fa:	e5250513          	addi	a0,a0,-430 # 8000c548 <etext+0x548>
    800046fe:	ffffc097          	auipc	ra,0xffffc
    80004702:	58c080e7          	jalr	1420(ra) # 80000c8a <panic>
    80004706:	00000097          	auipc	ra,0x0
    8000470a:	132080e7          	jalr	306(ra) # 80004838 <devintr>
    8000470e:	87aa                	mv	a5,a0
    80004710:	fcf42e23          	sw	a5,-36(s0)
    80004714:	fdc42783          	lw	a5,-36(s0)
    80004718:	2781                	sext.w	a5,a5
    8000471a:	e7b9                	bnez	a5,80004768 <kerneltrap+0xca>
    8000471c:	fc043583          	ld	a1,-64(s0)
    80004720:	00008517          	auipc	a0,0x8
    80004724:	e4850513          	addi	a0,a0,-440 # 8000c568 <etext+0x568>
    80004728:	ffffc097          	auipc	ra,0xffffc
    8000472c:	30c080e7          	jalr	780(ra) # 80000a34 <printf>
    80004730:	00000097          	auipc	ra,0x0
    80004734:	a9a080e7          	jalr	-1382(ra) # 800041ca <r_sepc>
    80004738:	84aa                	mv	s1,a0
    8000473a:	00000097          	auipc	ra,0x0
    8000473e:	af8080e7          	jalr	-1288(ra) # 80004232 <r_stval>
    80004742:	87aa                	mv	a5,a0
    80004744:	863e                	mv	a2,a5
    80004746:	85a6                	mv	a1,s1
    80004748:	00008517          	auipc	a0,0x8
    8000474c:	e3050513          	addi	a0,a0,-464 # 8000c578 <etext+0x578>
    80004750:	ffffc097          	auipc	ra,0xffffc
    80004754:	2e4080e7          	jalr	740(ra) # 80000a34 <printf>
    80004758:	00008517          	auipc	a0,0x8
    8000475c:	e3850513          	addi	a0,a0,-456 # 8000c590 <etext+0x590>
    80004760:	ffffc097          	auipc	ra,0xffffc
    80004764:	52a080e7          	jalr	1322(ra) # 80000c8a <panic>
    80004768:	fdc42783          	lw	a5,-36(s0)
    8000476c:	0007871b          	sext.w	a4,a5
    80004770:	4789                	li	a5,2
    80004772:	02f71f63          	bne	a4,a5,800047b0 <kerneltrap+0x112>
    80004776:	ffffe097          	auipc	ra,0xffffe
    8000477a:	164080e7          	jalr	356(ra) # 800028da <myproc>
    8000477e:	87aa                	mv	a5,a0
    80004780:	cb85                	beqz	a5,800047b0 <kerneltrap+0x112>
    80004782:	ffffe097          	auipc	ra,0xffffe
    80004786:	158080e7          	jalr	344(ra) # 800028da <myproc>
    8000478a:	87aa                	mv	a5,a0
    8000478c:	4f9c                	lw	a5,24(a5)
    8000478e:	873e                	mv	a4,a5
    80004790:	4791                	li	a5,4
    80004792:	00f71f63          	bne	a4,a5,800047b0 <kerneltrap+0x112>
    80004796:	ffffe097          	auipc	ra,0xffffe
    8000479a:	144080e7          	jalr	324(ra) # 800028da <myproc>
    8000479e:	87aa                	mv	a5,a0
    800047a0:	5bb8                	lw	a4,112(a5)
    800047a2:	2705                	addiw	a4,a4,1
    800047a4:	2701                	sext.w	a4,a4
    800047a6:	dbb8                	sw	a4,112(a5)
    800047a8:	fffff097          	auipc	ra,0xfffff
    800047ac:	292080e7          	jalr	658(ra) # 80003a3a <yield>
    800047b0:	fd043503          	ld	a0,-48(s0)
    800047b4:	00000097          	auipc	ra,0x0
    800047b8:	9fc080e7          	jalr	-1540(ra) # 800041b0 <w_sepc>
    800047bc:	fc843503          	ld	a0,-56(s0)
    800047c0:	00000097          	auipc	ra,0x0
    800047c4:	9a2080e7          	jalr	-1630(ra) # 80004162 <w_sstatus>
    800047c8:	0001                	nop
    800047ca:	70e2                	ld	ra,56(sp)
    800047cc:	7442                	ld	s0,48(sp)
    800047ce:	74a2                	ld	s1,40(sp)
    800047d0:	6121                	addi	sp,sp,64
    800047d2:	8082                	ret

00000000800047d4 <clockintr>:
    800047d4:	1141                	addi	sp,sp,-16
    800047d6:	e406                	sd	ra,8(sp)
    800047d8:	e022                	sd	s0,0(sp)
    800047da:	0800                	addi	s0,sp,16
    800047dc:	00018517          	auipc	a0,0x18
    800047e0:	bb450513          	addi	a0,a0,-1100 # 8001c390 <tickslock>
    800047e4:	ffffd097          	auipc	ra,0xffffd
    800047e8:	a94080e7          	jalr	-1388(ra) # 80001278 <acquire>
    800047ec:	00008797          	auipc	a5,0x8
    800047f0:	2ec78793          	addi	a5,a5,748 # 8000cad8 <ticks>
    800047f4:	439c                	lw	a5,0(a5)
    800047f6:	2785                	addiw	a5,a5,1
    800047f8:	0007871b          	sext.w	a4,a5
    800047fc:	00008797          	auipc	a5,0x8
    80004800:	2dc78793          	addi	a5,a5,732 # 8000cad8 <ticks>
    80004804:	c398                	sw	a4,0(a5)
    80004806:	00000097          	auipc	ra,0x0
    8000480a:	85a080e7          	jalr	-1958(ra) # 80004060 <update_time>
    8000480e:	00008517          	auipc	a0,0x8
    80004812:	2ca50513          	addi	a0,a0,714 # 8000cad8 <ticks>
    80004816:	fffff097          	auipc	ra,0xfffff
    8000481a:	33a080e7          	jalr	826(ra) # 80003b50 <wakeup>
    8000481e:	00018517          	auipc	a0,0x18
    80004822:	b7250513          	addi	a0,a0,-1166 # 8001c390 <tickslock>
    80004826:	ffffd097          	auipc	ra,0xffffd
    8000482a:	ab6080e7          	jalr	-1354(ra) # 800012dc <release>
    8000482e:	0001                	nop
    80004830:	60a2                	ld	ra,8(sp)
    80004832:	6402                	ld	s0,0(sp)
    80004834:	0141                	addi	sp,sp,16
    80004836:	8082                	ret

0000000080004838 <devintr>:
    80004838:	1101                	addi	sp,sp,-32
    8000483a:	ec06                	sd	ra,24(sp)
    8000483c:	e822                	sd	s0,16(sp)
    8000483e:	1000                	addi	s0,sp,32
    80004840:	00000097          	auipc	ra,0x0
    80004844:	9d8080e7          	jalr	-1576(ra) # 80004218 <r_scause>
    80004848:	fea43423          	sd	a0,-24(s0)
    8000484c:	fe843783          	ld	a5,-24(s0)
    80004850:	0807d463          	bgez	a5,800048d8 <devintr+0xa0>
    80004854:	fe843783          	ld	a5,-24(s0)
    80004858:	0ff7f713          	zext.b	a4,a5
    8000485c:	47a5                	li	a5,9
    8000485e:	06f71d63          	bne	a4,a5,800048d8 <devintr+0xa0>
    80004862:	00005097          	auipc	ra,0x5
    80004866:	cd0080e7          	jalr	-816(ra) # 80009532 <plic_claim>
    8000486a:	87aa                	mv	a5,a0
    8000486c:	fef42223          	sw	a5,-28(s0)
    80004870:	fe442783          	lw	a5,-28(s0)
    80004874:	0007871b          	sext.w	a4,a5
    80004878:	47a9                	li	a5,10
    8000487a:	00f71763          	bne	a4,a5,80004888 <devintr+0x50>
    8000487e:	ffffc097          	auipc	ra,0xffffc
    80004882:	702080e7          	jalr	1794(ra) # 80000f80 <uartintr>
    80004886:	a825                	j	800048be <devintr+0x86>
    80004888:	fe442783          	lw	a5,-28(s0)
    8000488c:	0007871b          	sext.w	a4,a5
    80004890:	4785                	li	a5,1
    80004892:	00f71763          	bne	a4,a5,800048a0 <devintr+0x68>
    80004896:	00005097          	auipc	ra,0x5
    8000489a:	65e080e7          	jalr	1630(ra) # 80009ef4 <virtio_disk_intr>
    8000489e:	a005                	j	800048be <devintr+0x86>
    800048a0:	fe442783          	lw	a5,-28(s0)
    800048a4:	2781                	sext.w	a5,a5
    800048a6:	cf81                	beqz	a5,800048be <devintr+0x86>
    800048a8:	fe442783          	lw	a5,-28(s0)
    800048ac:	85be                	mv	a1,a5
    800048ae:	00008517          	auipc	a0,0x8
    800048b2:	cf250513          	addi	a0,a0,-782 # 8000c5a0 <etext+0x5a0>
    800048b6:	ffffc097          	auipc	ra,0xffffc
    800048ba:	17e080e7          	jalr	382(ra) # 80000a34 <printf>
    800048be:	fe442783          	lw	a5,-28(s0)
    800048c2:	2781                	sext.w	a5,a5
    800048c4:	cb81                	beqz	a5,800048d4 <devintr+0x9c>
    800048c6:	fe442783          	lw	a5,-28(s0)
    800048ca:	853e                	mv	a0,a5
    800048cc:	00005097          	auipc	ra,0x5
    800048d0:	ca4080e7          	jalr	-860(ra) # 80009570 <plic_complete>
    800048d4:	4785                	li	a5,1
    800048d6:	a081                	j	80004916 <devintr+0xde>
    800048d8:	fe843703          	ld	a4,-24(s0)
    800048dc:	57fd                	li	a5,-1
    800048de:	17fe                	slli	a5,a5,0x3f
    800048e0:	0785                	addi	a5,a5,1
    800048e2:	02f71963          	bne	a4,a5,80004914 <devintr+0xdc>
    800048e6:	ffffe097          	auipc	ra,0xffffe
    800048ea:	f96080e7          	jalr	-106(ra) # 8000287c <cpuid>
    800048ee:	87aa                	mv	a5,a0
    800048f0:	e789                	bnez	a5,800048fa <devintr+0xc2>
    800048f2:	00000097          	auipc	ra,0x0
    800048f6:	ee2080e7          	jalr	-286(ra) # 800047d4 <clockintr>
    800048fa:	00000097          	auipc	ra,0x0
    800048fe:	882080e7          	jalr	-1918(ra) # 8000417c <r_sip>
    80004902:	87aa                	mv	a5,a0
    80004904:	9bf5                	andi	a5,a5,-3
    80004906:	853e                	mv	a0,a5
    80004908:	00000097          	auipc	ra,0x0
    8000490c:	88e080e7          	jalr	-1906(ra) # 80004196 <w_sip>
    80004910:	4789                	li	a5,2
    80004912:	a011                	j	80004916 <devintr+0xde>
    80004914:	4781                	li	a5,0
    80004916:	853e                	mv	a0,a5
    80004918:	60e2                	ld	ra,24(sp)
    8000491a:	6442                	ld	s0,16(sp)
    8000491c:	6105                	addi	sp,sp,32
    8000491e:	8082                	ret

0000000080004920 <fetchaddr>:
    80004920:	7179                	addi	sp,sp,-48
    80004922:	f406                	sd	ra,40(sp)
    80004924:	f022                	sd	s0,32(sp)
    80004926:	1800                	addi	s0,sp,48
    80004928:	fca43c23          	sd	a0,-40(s0)
    8000492c:	fcb43823          	sd	a1,-48(s0)
    80004930:	ffffe097          	auipc	ra,0xffffe
    80004934:	faa080e7          	jalr	-86(ra) # 800028da <myproc>
    80004938:	fea43423          	sd	a0,-24(s0)
    8000493c:	fe843783          	ld	a5,-24(s0)
    80004940:	6fdc                	ld	a5,152(a5)
    80004942:	fd843703          	ld	a4,-40(s0)
    80004946:	00f77b63          	bgeu	a4,a5,8000495c <fetchaddr+0x3c>
    8000494a:	fd843783          	ld	a5,-40(s0)
    8000494e:	00878713          	addi	a4,a5,8
    80004952:	fe843783          	ld	a5,-24(s0)
    80004956:	6fdc                	ld	a5,152(a5)
    80004958:	00e7f463          	bgeu	a5,a4,80004960 <fetchaddr+0x40>
    8000495c:	57fd                	li	a5,-1
    8000495e:	a01d                	j	80004984 <fetchaddr+0x64>
    80004960:	fe843783          	ld	a5,-24(s0)
    80004964:	73dc                	ld	a5,160(a5)
    80004966:	46a1                	li	a3,8
    80004968:	fd843603          	ld	a2,-40(s0)
    8000496c:	fd043583          	ld	a1,-48(s0)
    80004970:	853e                	mv	a0,a5
    80004972:	ffffe097          	auipc	ra,0xffffe
    80004976:	a66080e7          	jalr	-1434(ra) # 800023d8 <copyin>
    8000497a:	87aa                	mv	a5,a0
    8000497c:	c399                	beqz	a5,80004982 <fetchaddr+0x62>
    8000497e:	57fd                	li	a5,-1
    80004980:	a011                	j	80004984 <fetchaddr+0x64>
    80004982:	4781                	li	a5,0
    80004984:	853e                	mv	a0,a5
    80004986:	70a2                	ld	ra,40(sp)
    80004988:	7402                	ld	s0,32(sp)
    8000498a:	6145                	addi	sp,sp,48
    8000498c:	8082                	ret

000000008000498e <fetchstr>:
    8000498e:	7139                	addi	sp,sp,-64
    80004990:	fc06                	sd	ra,56(sp)
    80004992:	f822                	sd	s0,48(sp)
    80004994:	0080                	addi	s0,sp,64
    80004996:	fca43c23          	sd	a0,-40(s0)
    8000499a:	fcb43823          	sd	a1,-48(s0)
    8000499e:	87b2                	mv	a5,a2
    800049a0:	fcf42623          	sw	a5,-52(s0)
    800049a4:	ffffe097          	auipc	ra,0xffffe
    800049a8:	f36080e7          	jalr	-202(ra) # 800028da <myproc>
    800049ac:	fea43423          	sd	a0,-24(s0)
    800049b0:	fe843783          	ld	a5,-24(s0)
    800049b4:	73dc                	ld	a5,160(a5)
    800049b6:	fcc42703          	lw	a4,-52(s0)
    800049ba:	86ba                	mv	a3,a4
    800049bc:	fd843603          	ld	a2,-40(s0)
    800049c0:	fd043583          	ld	a1,-48(s0)
    800049c4:	853e                	mv	a0,a5
    800049c6:	ffffe097          	auipc	ra,0xffffe
    800049ca:	ae0080e7          	jalr	-1312(ra) # 800024a6 <copyinstr>
    800049ce:	87aa                	mv	a5,a0
    800049d0:	0007d463          	bgez	a5,800049d8 <fetchstr+0x4a>
    800049d4:	57fd                	li	a5,-1
    800049d6:	a801                	j	800049e6 <fetchstr+0x58>
    800049d8:	fd043503          	ld	a0,-48(s0)
    800049dc:	ffffd097          	auipc	ra,0xffffd
    800049e0:	df0080e7          	jalr	-528(ra) # 800017cc <strlen>
    800049e4:	87aa                	mv	a5,a0
    800049e6:	853e                	mv	a0,a5
    800049e8:	70e2                	ld	ra,56(sp)
    800049ea:	7442                	ld	s0,48(sp)
    800049ec:	6121                	addi	sp,sp,64
    800049ee:	8082                	ret

00000000800049f0 <argraw>:
    800049f0:	7179                	addi	sp,sp,-48
    800049f2:	f406                	sd	ra,40(sp)
    800049f4:	f022                	sd	s0,32(sp)
    800049f6:	1800                	addi	s0,sp,48
    800049f8:	87aa                	mv	a5,a0
    800049fa:	fcf42e23          	sw	a5,-36(s0)
    800049fe:	ffffe097          	auipc	ra,0xffffe
    80004a02:	edc080e7          	jalr	-292(ra) # 800028da <myproc>
    80004a06:	fea43423          	sd	a0,-24(s0)
    80004a0a:	fdc42783          	lw	a5,-36(s0)
    80004a0e:	0007871b          	sext.w	a4,a5
    80004a12:	4795                	li	a5,5
    80004a14:	06e7e263          	bltu	a5,a4,80004a78 <argraw+0x88>
    80004a18:	fdc46783          	lwu	a5,-36(s0)
    80004a1c:	00279713          	slli	a4,a5,0x2
    80004a20:	00008797          	auipc	a5,0x8
    80004a24:	ba878793          	addi	a5,a5,-1112 # 8000c5c8 <etext+0x5c8>
    80004a28:	97ba                	add	a5,a5,a4
    80004a2a:	439c                	lw	a5,0(a5)
    80004a2c:	0007871b          	sext.w	a4,a5
    80004a30:	00008797          	auipc	a5,0x8
    80004a34:	b9878793          	addi	a5,a5,-1128 # 8000c5c8 <etext+0x5c8>
    80004a38:	97ba                	add	a5,a5,a4
    80004a3a:	8782                	jr	a5
    80004a3c:	fe843783          	ld	a5,-24(s0)
    80004a40:	77dc                	ld	a5,168(a5)
    80004a42:	7bbc                	ld	a5,112(a5)
    80004a44:	a091                	j	80004a88 <argraw+0x98>
    80004a46:	fe843783          	ld	a5,-24(s0)
    80004a4a:	77dc                	ld	a5,168(a5)
    80004a4c:	7fbc                	ld	a5,120(a5)
    80004a4e:	a82d                	j	80004a88 <argraw+0x98>
    80004a50:	fe843783          	ld	a5,-24(s0)
    80004a54:	77dc                	ld	a5,168(a5)
    80004a56:	63dc                	ld	a5,128(a5)
    80004a58:	a805                	j	80004a88 <argraw+0x98>
    80004a5a:	fe843783          	ld	a5,-24(s0)
    80004a5e:	77dc                	ld	a5,168(a5)
    80004a60:	67dc                	ld	a5,136(a5)
    80004a62:	a01d                	j	80004a88 <argraw+0x98>
    80004a64:	fe843783          	ld	a5,-24(s0)
    80004a68:	77dc                	ld	a5,168(a5)
    80004a6a:	6bdc                	ld	a5,144(a5)
    80004a6c:	a831                	j	80004a88 <argraw+0x98>
    80004a6e:	fe843783          	ld	a5,-24(s0)
    80004a72:	77dc                	ld	a5,168(a5)
    80004a74:	6fdc                	ld	a5,152(a5)
    80004a76:	a809                	j	80004a88 <argraw+0x98>
    80004a78:	00008517          	auipc	a0,0x8
    80004a7c:	b4850513          	addi	a0,a0,-1208 # 8000c5c0 <etext+0x5c0>
    80004a80:	ffffc097          	auipc	ra,0xffffc
    80004a84:	20a080e7          	jalr	522(ra) # 80000c8a <panic>
    80004a88:	853e                	mv	a0,a5
    80004a8a:	70a2                	ld	ra,40(sp)
    80004a8c:	7402                	ld	s0,32(sp)
    80004a8e:	6145                	addi	sp,sp,48
    80004a90:	8082                	ret

0000000080004a92 <argint>:
    80004a92:	1101                	addi	sp,sp,-32
    80004a94:	ec06                	sd	ra,24(sp)
    80004a96:	e822                	sd	s0,16(sp)
    80004a98:	1000                	addi	s0,sp,32
    80004a9a:	87aa                	mv	a5,a0
    80004a9c:	feb43023          	sd	a1,-32(s0)
    80004aa0:	fef42623          	sw	a5,-20(s0)
    80004aa4:	fec42783          	lw	a5,-20(s0)
    80004aa8:	853e                	mv	a0,a5
    80004aaa:	00000097          	auipc	ra,0x0
    80004aae:	f46080e7          	jalr	-186(ra) # 800049f0 <argraw>
    80004ab2:	87aa                	mv	a5,a0
    80004ab4:	0007871b          	sext.w	a4,a5
    80004ab8:	fe043783          	ld	a5,-32(s0)
    80004abc:	c398                	sw	a4,0(a5)
    80004abe:	0001                	nop
    80004ac0:	60e2                	ld	ra,24(sp)
    80004ac2:	6442                	ld	s0,16(sp)
    80004ac4:	6105                	addi	sp,sp,32
    80004ac6:	8082                	ret

0000000080004ac8 <argaddr>:
    80004ac8:	1101                	addi	sp,sp,-32
    80004aca:	ec06                	sd	ra,24(sp)
    80004acc:	e822                	sd	s0,16(sp)
    80004ace:	1000                	addi	s0,sp,32
    80004ad0:	87aa                	mv	a5,a0
    80004ad2:	feb43023          	sd	a1,-32(s0)
    80004ad6:	fef42623          	sw	a5,-20(s0)
    80004ada:	fec42783          	lw	a5,-20(s0)
    80004ade:	853e                	mv	a0,a5
    80004ae0:	00000097          	auipc	ra,0x0
    80004ae4:	f10080e7          	jalr	-240(ra) # 800049f0 <argraw>
    80004ae8:	872a                	mv	a4,a0
    80004aea:	fe043783          	ld	a5,-32(s0)
    80004aee:	e398                	sd	a4,0(a5)
    80004af0:	0001                	nop
    80004af2:	60e2                	ld	ra,24(sp)
    80004af4:	6442                	ld	s0,16(sp)
    80004af6:	6105                	addi	sp,sp,32
    80004af8:	8082                	ret

0000000080004afa <argstr>:
    80004afa:	7179                	addi	sp,sp,-48
    80004afc:	f406                	sd	ra,40(sp)
    80004afe:	f022                	sd	s0,32(sp)
    80004b00:	1800                	addi	s0,sp,48
    80004b02:	87aa                	mv	a5,a0
    80004b04:	fcb43823          	sd	a1,-48(s0)
    80004b08:	8732                	mv	a4,a2
    80004b0a:	fcf42e23          	sw	a5,-36(s0)
    80004b0e:	87ba                	mv	a5,a4
    80004b10:	fcf42c23          	sw	a5,-40(s0)
    80004b14:	fe840713          	addi	a4,s0,-24
    80004b18:	fdc42783          	lw	a5,-36(s0)
    80004b1c:	85ba                	mv	a1,a4
    80004b1e:	853e                	mv	a0,a5
    80004b20:	00000097          	auipc	ra,0x0
    80004b24:	fa8080e7          	jalr	-88(ra) # 80004ac8 <argaddr>
    80004b28:	fe843783          	ld	a5,-24(s0)
    80004b2c:	fd842703          	lw	a4,-40(s0)
    80004b30:	863a                	mv	a2,a4
    80004b32:	fd043583          	ld	a1,-48(s0)
    80004b36:	853e                	mv	a0,a5
    80004b38:	00000097          	auipc	ra,0x0
    80004b3c:	e56080e7          	jalr	-426(ra) # 8000498e <fetchstr>
    80004b40:	87aa                	mv	a5,a0
    80004b42:	853e                	mv	a0,a5
    80004b44:	70a2                	ld	ra,40(sp)
    80004b46:	7402                	ld	s0,32(sp)
    80004b48:	6145                	addi	sp,sp,48
    80004b4a:	8082                	ret

0000000080004b4c <syscall>:
    80004b4c:	7179                	addi	sp,sp,-48
    80004b4e:	f406                	sd	ra,40(sp)
    80004b50:	f022                	sd	s0,32(sp)
    80004b52:	ec26                	sd	s1,24(sp)
    80004b54:	1800                	addi	s0,sp,48
    80004b56:	ffffe097          	auipc	ra,0xffffe
    80004b5a:	d84080e7          	jalr	-636(ra) # 800028da <myproc>
    80004b5e:	fca43c23          	sd	a0,-40(s0)
    80004b62:	fd843783          	ld	a5,-40(s0)
    80004b66:	77dc                	ld	a5,168(a5)
    80004b68:	77dc                	ld	a5,168(a5)
    80004b6a:	fcf42a23          	sw	a5,-44(s0)
    80004b6e:	fd442783          	lw	a5,-44(s0)
    80004b72:	2781                	sext.w	a5,a5
    80004b74:	06f05863          	blez	a5,80004be4 <syscall+0x98>
    80004b78:	fd442783          	lw	a5,-44(s0)
    80004b7c:	873e                	mv	a4,a5
    80004b7e:	47e9                	li	a5,26
    80004b80:	06e7e263          	bltu	a5,a4,80004be4 <syscall+0x98>
    80004b84:	00008717          	auipc	a4,0x8
    80004b88:	e4c70713          	addi	a4,a4,-436 # 8000c9d0 <syscalls>
    80004b8c:	fd442783          	lw	a5,-44(s0)
    80004b90:	078e                	slli	a5,a5,0x3
    80004b92:	97ba                	add	a5,a5,a4
    80004b94:	639c                	ld	a5,0(a5)
    80004b96:	c7b9                	beqz	a5,80004be4 <syscall+0x98>
    80004b98:	fd442783          	lw	a5,-44(s0)
    80004b9c:	873e                	mv	a4,a5
    80004b9e:	4785                	li	a5,1
    80004ba0:	00e797bb          	sllw	a5,a5,a4
    80004ba4:	0007871b          	sext.w	a4,a5
    80004ba8:	fd843783          	ld	a5,-40(s0)
    80004bac:	5bdc                	lw	a5,52(a5)
    80004bae:	00f71b63          	bne	a4,a5,80004bc4 <syscall+0x78>
    80004bb2:	fd843783          	ld	a5,-40(s0)
    80004bb6:	5f9c                	lw	a5,56(a5)
    80004bb8:	2785                	addiw	a5,a5,1
    80004bba:	0007871b          	sext.w	a4,a5
    80004bbe:	fd843783          	ld	a5,-40(s0)
    80004bc2:	df98                	sw	a4,56(a5)
    80004bc4:	00008717          	auipc	a4,0x8
    80004bc8:	e0c70713          	addi	a4,a4,-500 # 8000c9d0 <syscalls>
    80004bcc:	fd442783          	lw	a5,-44(s0)
    80004bd0:	078e                	slli	a5,a5,0x3
    80004bd2:	97ba                	add	a5,a5,a4
    80004bd4:	639c                	ld	a5,0(a5)
    80004bd6:	fd843703          	ld	a4,-40(s0)
    80004bda:	7744                	ld	s1,168(a4)
    80004bdc:	9782                	jalr	a5
    80004bde:	87aa                	mv	a5,a0
    80004be0:	f8bc                	sd	a5,112(s1)
    80004be2:	a815                	j	80004c16 <syscall+0xca>
    80004be4:	fd843783          	ld	a5,-40(s0)
    80004be8:	5b98                	lw	a4,48(a5)
    80004bea:	fd843783          	ld	a5,-40(s0)
    80004bee:	1a878793          	addi	a5,a5,424
    80004bf2:	fd442683          	lw	a3,-44(s0)
    80004bf6:	863e                	mv	a2,a5
    80004bf8:	85ba                	mv	a1,a4
    80004bfa:	00008517          	auipc	a0,0x8
    80004bfe:	9e650513          	addi	a0,a0,-1562 # 8000c5e0 <etext+0x5e0>
    80004c02:	ffffc097          	auipc	ra,0xffffc
    80004c06:	e32080e7          	jalr	-462(ra) # 80000a34 <printf>
    80004c0a:	fd843783          	ld	a5,-40(s0)
    80004c0e:	77dc                	ld	a5,168(a5)
    80004c10:	577d                	li	a4,-1
    80004c12:	fbb8                	sd	a4,112(a5)
    80004c14:	0001                	nop
    80004c16:	0001                	nop
    80004c18:	70a2                	ld	ra,40(sp)
    80004c1a:	7402                	ld	s0,32(sp)
    80004c1c:	64e2                	ld	s1,24(sp)
    80004c1e:	6145                	addi	sp,sp,48
    80004c20:	8082                	ret

0000000080004c22 <sys_exit>:
    80004c22:	1101                	addi	sp,sp,-32
    80004c24:	ec06                	sd	ra,24(sp)
    80004c26:	e822                	sd	s0,16(sp)
    80004c28:	1000                	addi	s0,sp,32
    80004c2a:	fec40793          	addi	a5,s0,-20
    80004c2e:	85be                	mv	a1,a5
    80004c30:	4501                	li	a0,0
    80004c32:	00000097          	auipc	ra,0x0
    80004c36:	e60080e7          	jalr	-416(ra) # 80004a92 <argint>
    80004c3a:	fec42783          	lw	a5,-20(s0)
    80004c3e:	853e                	mv	a0,a5
    80004c40:	ffffe097          	auipc	ra,0xffffe
    80004c44:	46c080e7          	jalr	1132(ra) # 800030ac <exit>
    80004c48:	4781                	li	a5,0
    80004c4a:	853e                	mv	a0,a5
    80004c4c:	60e2                	ld	ra,24(sp)
    80004c4e:	6442                	ld	s0,16(sp)
    80004c50:	6105                	addi	sp,sp,32
    80004c52:	8082                	ret

0000000080004c54 <sys_getpid>:
    80004c54:	1141                	addi	sp,sp,-16
    80004c56:	e406                	sd	ra,8(sp)
    80004c58:	e022                	sd	s0,0(sp)
    80004c5a:	0800                	addi	s0,sp,16
    80004c5c:	ffffe097          	auipc	ra,0xffffe
    80004c60:	c7e080e7          	jalr	-898(ra) # 800028da <myproc>
    80004c64:	87aa                	mv	a5,a0
    80004c66:	5b9c                	lw	a5,48(a5)
    80004c68:	853e                	mv	a0,a5
    80004c6a:	60a2                	ld	ra,8(sp)
    80004c6c:	6402                	ld	s0,0(sp)
    80004c6e:	0141                	addi	sp,sp,16
    80004c70:	8082                	ret

0000000080004c72 <sys_fork>:
    80004c72:	1141                	addi	sp,sp,-16
    80004c74:	e406                	sd	ra,8(sp)
    80004c76:	e022                	sd	s0,0(sp)
    80004c78:	0800                	addi	s0,sp,16
    80004c7a:	ffffe097          	auipc	ra,0xffffe
    80004c7e:	1e8080e7          	jalr	488(ra) # 80002e62 <fork>
    80004c82:	87aa                	mv	a5,a0
    80004c84:	853e                	mv	a0,a5
    80004c86:	60a2                	ld	ra,8(sp)
    80004c88:	6402                	ld	s0,0(sp)
    80004c8a:	0141                	addi	sp,sp,16
    80004c8c:	8082                	ret

0000000080004c8e <sys_wait>:
    80004c8e:	1101                	addi	sp,sp,-32
    80004c90:	ec06                	sd	ra,24(sp)
    80004c92:	e822                	sd	s0,16(sp)
    80004c94:	1000                	addi	s0,sp,32
    80004c96:	fe840793          	addi	a5,s0,-24
    80004c9a:	85be                	mv	a1,a5
    80004c9c:	4501                	li	a0,0
    80004c9e:	00000097          	auipc	ra,0x0
    80004ca2:	e2a080e7          	jalr	-470(ra) # 80004ac8 <argaddr>
    80004ca6:	fe843783          	ld	a5,-24(s0)
    80004caa:	853e                	mv	a0,a5
    80004cac:	ffffe097          	auipc	ra,0xffffe
    80004cb0:	7de080e7          	jalr	2014(ra) # 8000348a <wait>
    80004cb4:	87aa                	mv	a5,a0
    80004cb6:	853e                	mv	a0,a5
    80004cb8:	60e2                	ld	ra,24(sp)
    80004cba:	6442                	ld	s0,16(sp)
    80004cbc:	6105                	addi	sp,sp,32
    80004cbe:	8082                	ret

0000000080004cc0 <sys_sbrk>:
    80004cc0:	1101                	addi	sp,sp,-32
    80004cc2:	ec06                	sd	ra,24(sp)
    80004cc4:	e822                	sd	s0,16(sp)
    80004cc6:	1000                	addi	s0,sp,32
    80004cc8:	fe440793          	addi	a5,s0,-28
    80004ccc:	85be                	mv	a1,a5
    80004cce:	4501                	li	a0,0
    80004cd0:	00000097          	auipc	ra,0x0
    80004cd4:	dc2080e7          	jalr	-574(ra) # 80004a92 <argint>
    80004cd8:	ffffe097          	auipc	ra,0xffffe
    80004cdc:	c02080e7          	jalr	-1022(ra) # 800028da <myproc>
    80004ce0:	87aa                	mv	a5,a0
    80004ce2:	6fdc                	ld	a5,152(a5)
    80004ce4:	fef43423          	sd	a5,-24(s0)
    80004ce8:	fe442783          	lw	a5,-28(s0)
    80004cec:	853e                	mv	a0,a5
    80004cee:	ffffe097          	auipc	ra,0xffffe
    80004cf2:	0d4080e7          	jalr	212(ra) # 80002dc2 <growproc>
    80004cf6:	87aa                	mv	a5,a0
    80004cf8:	0007d463          	bgez	a5,80004d00 <sys_sbrk+0x40>
    80004cfc:	57fd                	li	a5,-1
    80004cfe:	a019                	j	80004d04 <sys_sbrk+0x44>
    80004d00:	fe843783          	ld	a5,-24(s0)
    80004d04:	853e                	mv	a0,a5
    80004d06:	60e2                	ld	ra,24(sp)
    80004d08:	6442                	ld	s0,16(sp)
    80004d0a:	6105                	addi	sp,sp,32
    80004d0c:	8082                	ret

0000000080004d0e <sys_sleep>:
    80004d0e:	1101                	addi	sp,sp,-32
    80004d10:	ec06                	sd	ra,24(sp)
    80004d12:	e822                	sd	s0,16(sp)
    80004d14:	1000                	addi	s0,sp,32
    80004d16:	fe840793          	addi	a5,s0,-24
    80004d1a:	85be                	mv	a1,a5
    80004d1c:	4501                	li	a0,0
    80004d1e:	00000097          	auipc	ra,0x0
    80004d22:	d74080e7          	jalr	-652(ra) # 80004a92 <argint>
    80004d26:	00017517          	auipc	a0,0x17
    80004d2a:	66a50513          	addi	a0,a0,1642 # 8001c390 <tickslock>
    80004d2e:	ffffc097          	auipc	ra,0xffffc
    80004d32:	54a080e7          	jalr	1354(ra) # 80001278 <acquire>
    80004d36:	00008797          	auipc	a5,0x8
    80004d3a:	da278793          	addi	a5,a5,-606 # 8000cad8 <ticks>
    80004d3e:	439c                	lw	a5,0(a5)
    80004d40:	fef42623          	sw	a5,-20(s0)
    80004d44:	a099                	j	80004d8a <sys_sleep+0x7c>
    80004d46:	ffffe097          	auipc	ra,0xffffe
    80004d4a:	b94080e7          	jalr	-1132(ra) # 800028da <myproc>
    80004d4e:	87aa                	mv	a5,a0
    80004d50:	853e                	mv	a0,a5
    80004d52:	fffff097          	auipc	ra,0xfffff
    80004d56:	f6c080e7          	jalr	-148(ra) # 80003cbe <killed>
    80004d5a:	87aa                	mv	a5,a0
    80004d5c:	cb99                	beqz	a5,80004d72 <sys_sleep+0x64>
    80004d5e:	00017517          	auipc	a0,0x17
    80004d62:	63250513          	addi	a0,a0,1586 # 8001c390 <tickslock>
    80004d66:	ffffc097          	auipc	ra,0xffffc
    80004d6a:	576080e7          	jalr	1398(ra) # 800012dc <release>
    80004d6e:	57fd                	li	a5,-1
    80004d70:	a0a9                	j	80004dba <sys_sleep+0xac>
    80004d72:	00017597          	auipc	a1,0x17
    80004d76:	61e58593          	addi	a1,a1,1566 # 8001c390 <tickslock>
    80004d7a:	00008517          	auipc	a0,0x8
    80004d7e:	d5e50513          	addi	a0,a0,-674 # 8000cad8 <ticks>
    80004d82:	fffff097          	auipc	ra,0xfffff
    80004d86:	d52080e7          	jalr	-686(ra) # 80003ad4 <sleep>
    80004d8a:	00008797          	auipc	a5,0x8
    80004d8e:	d4e78793          	addi	a5,a5,-690 # 8000cad8 <ticks>
    80004d92:	439c                	lw	a5,0(a5)
    80004d94:	fec42703          	lw	a4,-20(s0)
    80004d98:	9f99                	subw	a5,a5,a4
    80004d9a:	0007871b          	sext.w	a4,a5
    80004d9e:	fe842783          	lw	a5,-24(s0)
    80004da2:	2781                	sext.w	a5,a5
    80004da4:	faf761e3          	bltu	a4,a5,80004d46 <sys_sleep+0x38>
    80004da8:	00017517          	auipc	a0,0x17
    80004dac:	5e850513          	addi	a0,a0,1512 # 8001c390 <tickslock>
    80004db0:	ffffc097          	auipc	ra,0xffffc
    80004db4:	52c080e7          	jalr	1324(ra) # 800012dc <release>
    80004db8:	4781                	li	a5,0
    80004dba:	853e                	mv	a0,a5
    80004dbc:	60e2                	ld	ra,24(sp)
    80004dbe:	6442                	ld	s0,16(sp)
    80004dc0:	6105                	addi	sp,sp,32
    80004dc2:	8082                	ret

0000000080004dc4 <sys_kill>:
    80004dc4:	1101                	addi	sp,sp,-32
    80004dc6:	ec06                	sd	ra,24(sp)
    80004dc8:	e822                	sd	s0,16(sp)
    80004dca:	1000                	addi	s0,sp,32
    80004dcc:	fec40793          	addi	a5,s0,-20
    80004dd0:	85be                	mv	a1,a5
    80004dd2:	4501                	li	a0,0
    80004dd4:	00000097          	auipc	ra,0x0
    80004dd8:	cbe080e7          	jalr	-834(ra) # 80004a92 <argint>
    80004ddc:	fec42783          	lw	a5,-20(s0)
    80004de0:	853e                	mv	a0,a5
    80004de2:	fffff097          	auipc	ra,0xfffff
    80004de6:	e02080e7          	jalr	-510(ra) # 80003be4 <kill>
    80004dea:	87aa                	mv	a5,a0
    80004dec:	853e                	mv	a0,a5
    80004dee:	60e2                	ld	ra,24(sp)
    80004df0:	6442                	ld	s0,16(sp)
    80004df2:	6105                	addi	sp,sp,32
    80004df4:	8082                	ret

0000000080004df6 <sys_uptime>:
    80004df6:	1101                	addi	sp,sp,-32
    80004df8:	ec06                	sd	ra,24(sp)
    80004dfa:	e822                	sd	s0,16(sp)
    80004dfc:	1000                	addi	s0,sp,32
    80004dfe:	00017517          	auipc	a0,0x17
    80004e02:	59250513          	addi	a0,a0,1426 # 8001c390 <tickslock>
    80004e06:	ffffc097          	auipc	ra,0xffffc
    80004e0a:	472080e7          	jalr	1138(ra) # 80001278 <acquire>
    80004e0e:	00008797          	auipc	a5,0x8
    80004e12:	cca78793          	addi	a5,a5,-822 # 8000cad8 <ticks>
    80004e16:	439c                	lw	a5,0(a5)
    80004e18:	fef42623          	sw	a5,-20(s0)
    80004e1c:	00017517          	auipc	a0,0x17
    80004e20:	57450513          	addi	a0,a0,1396 # 8001c390 <tickslock>
    80004e24:	ffffc097          	auipc	ra,0xffffc
    80004e28:	4b8080e7          	jalr	1208(ra) # 800012dc <release>
    80004e2c:	fec46783          	lwu	a5,-20(s0)
    80004e30:	853e                	mv	a0,a5
    80004e32:	60e2                	ld	ra,24(sp)
    80004e34:	6442                	ld	s0,16(sp)
    80004e36:	6105                	addi	sp,sp,32
    80004e38:	8082                	ret

0000000080004e3a <sys_waitx>:
    80004e3a:	7139                	addi	sp,sp,-64
    80004e3c:	fc06                	sd	ra,56(sp)
    80004e3e:	f822                	sd	s0,48(sp)
    80004e40:	0080                	addi	s0,sp,64
    80004e42:	fd840793          	addi	a5,s0,-40
    80004e46:	85be                	mv	a1,a5
    80004e48:	4501                	li	a0,0
    80004e4a:	00000097          	auipc	ra,0x0
    80004e4e:	c7e080e7          	jalr	-898(ra) # 80004ac8 <argaddr>
    80004e52:	fd040793          	addi	a5,s0,-48
    80004e56:	85be                	mv	a1,a5
    80004e58:	4505                	li	a0,1
    80004e5a:	00000097          	auipc	ra,0x0
    80004e5e:	c6e080e7          	jalr	-914(ra) # 80004ac8 <argaddr>
    80004e62:	fc840793          	addi	a5,s0,-56
    80004e66:	85be                	mv	a1,a5
    80004e68:	4509                	li	a0,2
    80004e6a:	00000097          	auipc	ra,0x0
    80004e6e:	c5e080e7          	jalr	-930(ra) # 80004ac8 <argaddr>
    80004e72:	fd843783          	ld	a5,-40(s0)
    80004e76:	fc040693          	addi	a3,s0,-64
    80004e7a:	fc440713          	addi	a4,s0,-60
    80004e7e:	8636                	mv	a2,a3
    80004e80:	85ba                	mv	a1,a4
    80004e82:	853e                	mv	a0,a5
    80004e84:	fffff097          	auipc	ra,0xfffff
    80004e88:	038080e7          	jalr	56(ra) # 80003ebc <waitx>
    80004e8c:	87aa                	mv	a5,a0
    80004e8e:	fef42623          	sw	a5,-20(s0)
    80004e92:	ffffe097          	auipc	ra,0xffffe
    80004e96:	a48080e7          	jalr	-1464(ra) # 800028da <myproc>
    80004e9a:	fea43023          	sd	a0,-32(s0)
    80004e9e:	fe043783          	ld	a5,-32(s0)
    80004ea2:	73dc                	ld	a5,160(a5)
    80004ea4:	fd043703          	ld	a4,-48(s0)
    80004ea8:	fc440613          	addi	a2,s0,-60
    80004eac:	4691                	li	a3,4
    80004eae:	85ba                	mv	a1,a4
    80004eb0:	853e                	mv	a0,a5
    80004eb2:	ffffd097          	auipc	ra,0xffffd
    80004eb6:	458080e7          	jalr	1112(ra) # 8000230a <copyout>
    80004eba:	87aa                	mv	a5,a0
    80004ebc:	0007d463          	bgez	a5,80004ec4 <sys_waitx+0x8a>
    80004ec0:	57fd                	li	a5,-1
    80004ec2:	a035                	j	80004eee <sys_waitx+0xb4>
    80004ec4:	fe043783          	ld	a5,-32(s0)
    80004ec8:	73dc                	ld	a5,160(a5)
    80004eca:	fc843703          	ld	a4,-56(s0)
    80004ece:	fc040613          	addi	a2,s0,-64
    80004ed2:	4691                	li	a3,4
    80004ed4:	85ba                	mv	a1,a4
    80004ed6:	853e                	mv	a0,a5
    80004ed8:	ffffd097          	auipc	ra,0xffffd
    80004edc:	432080e7          	jalr	1074(ra) # 8000230a <copyout>
    80004ee0:	87aa                	mv	a5,a0
    80004ee2:	0007d463          	bgez	a5,80004eea <sys_waitx+0xb0>
    80004ee6:	57fd                	li	a5,-1
    80004ee8:	a019                	j	80004eee <sys_waitx+0xb4>
    80004eea:	fec42783          	lw	a5,-20(s0)
    80004eee:	853e                	mv	a0,a5
    80004ef0:	70e2                	ld	ra,56(sp)
    80004ef2:	7442                	ld	s0,48(sp)
    80004ef4:	6121                	addi	sp,sp,64
    80004ef6:	8082                	ret

0000000080004ef8 <sys_getsyscount>:
    80004ef8:	7179                	addi	sp,sp,-48
    80004efa:	f406                	sd	ra,40(sp)
    80004efc:	f022                	sd	s0,32(sp)
    80004efe:	1800                	addi	s0,sp,48
    80004f00:	fdc40793          	addi	a5,s0,-36
    80004f04:	85be                	mv	a1,a5
    80004f06:	4501                	li	a0,0
    80004f08:	00000097          	auipc	ra,0x0
    80004f0c:	b8a080e7          	jalr	-1142(ra) # 80004a92 <argint>
    80004f10:	ffffe097          	auipc	ra,0xffffe
    80004f14:	9ca080e7          	jalr	-1590(ra) # 800028da <myproc>
    80004f18:	fea43023          	sd	a0,-32(s0)
    80004f1c:	fdc42703          	lw	a4,-36(s0)
    80004f20:	fe043783          	ld	a5,-32(s0)
    80004f24:	dbd8                	sw	a4,52(a5)
    80004f26:	fe043783          	ld	a5,-32(s0)
    80004f2a:	0207ac23          	sw	zero,56(a5)
    80004f2e:	fe042623          	sw	zero,-20(s0)
    80004f32:	a805                	j	80004f62 <sys_getsyscount+0x6a>
    80004f34:	fec42783          	lw	a5,-20(s0)
    80004f38:	873e                	mv	a4,a5
    80004f3a:	4785                	li	a5,1
    80004f3c:	00e797bb          	sllw	a5,a5,a4
    80004f40:	0007871b          	sext.w	a4,a5
    80004f44:	fdc42783          	lw	a5,-36(s0)
    80004f48:	00f71863          	bne	a4,a5,80004f58 <sys_getsyscount+0x60>
    80004f4c:	fe043783          	ld	a5,-32(s0)
    80004f50:	fec42703          	lw	a4,-20(s0)
    80004f54:	dfd8                	sw	a4,60(a5)
    80004f56:	a829                	j	80004f70 <sys_getsyscount+0x78>
    80004f58:	fec42783          	lw	a5,-20(s0)
    80004f5c:	2785                	addiw	a5,a5,1
    80004f5e:	fef42623          	sw	a5,-20(s0)
    80004f62:	fec42783          	lw	a5,-20(s0)
    80004f66:	0007871b          	sext.w	a4,a5
    80004f6a:	47fd                	li	a5,31
    80004f6c:	fce7d4e3          	bge	a5,a4,80004f34 <sys_getsyscount+0x3c>
    80004f70:	4781                	li	a5,0
    80004f72:	853e                	mv	a0,a5
    80004f74:	70a2                	ld	ra,40(sp)
    80004f76:	7402                	ld	s0,32(sp)
    80004f78:	6145                	addi	sp,sp,48
    80004f7a:	8082                	ret

0000000080004f7c <sys_sigalarm>:
    80004f7c:	7179                	addi	sp,sp,-48
    80004f7e:	f406                	sd	ra,40(sp)
    80004f80:	f022                	sd	s0,32(sp)
    80004f82:	1800                	addi	s0,sp,48
    80004f84:	fe440793          	addi	a5,s0,-28
    80004f88:	85be                	mv	a1,a5
    80004f8a:	4501                	li	a0,0
    80004f8c:	00000097          	auipc	ra,0x0
    80004f90:	b06080e7          	jalr	-1274(ra) # 80004a92 <argint>
    80004f94:	fd840793          	addi	a5,s0,-40
    80004f98:	85be                	mv	a1,a5
    80004f9a:	4505                	li	a0,1
    80004f9c:	00000097          	auipc	ra,0x0
    80004fa0:	b2c080e7          	jalr	-1236(ra) # 80004ac8 <argaddr>
    80004fa4:	fe442783          	lw	a5,-28(s0)
    80004fa8:	0007d463          	bgez	a5,80004fb0 <sys_sigalarm+0x34>
    80004fac:	57fd                	li	a5,-1
    80004fae:	a81d                	j	80004fe4 <sys_sigalarm+0x68>
    80004fb0:	ffffe097          	auipc	ra,0xffffe
    80004fb4:	92a080e7          	jalr	-1750(ra) # 800028da <myproc>
    80004fb8:	fea43423          	sd	a0,-24(s0)
    80004fbc:	fe442703          	lw	a4,-28(s0)
    80004fc0:	fe843783          	ld	a5,-24(s0)
    80004fc4:	c3b8                	sw	a4,64(a5)
    80004fc6:	fd843783          	ld	a5,-40(s0)
    80004fca:	873e                	mv	a4,a5
    80004fcc:	fe843783          	ld	a5,-24(s0)
    80004fd0:	e7b8                	sd	a4,72(a5)
    80004fd2:	fe843783          	ld	a5,-24(s0)
    80004fd6:	0407a823          	sw	zero,80(a5)
    80004fda:	fe843783          	ld	a5,-24(s0)
    80004fde:	0407aa23          	sw	zero,84(a5)
    80004fe2:	4781                	li	a5,0
    80004fe4:	853e                	mv	a0,a5
    80004fe6:	70a2                	ld	ra,40(sp)
    80004fe8:	7402                	ld	s0,32(sp)
    80004fea:	6145                	addi	sp,sp,48
    80004fec:	8082                	ret

0000000080004fee <sys_sigreturn>:
    80004fee:	1101                	addi	sp,sp,-32
    80004ff0:	ec06                	sd	ra,24(sp)
    80004ff2:	e822                	sd	s0,16(sp)
    80004ff4:	1000                	addi	s0,sp,32
    80004ff6:	ffffe097          	auipc	ra,0xffffe
    80004ffa:	8e4080e7          	jalr	-1820(ra) # 800028da <myproc>
    80004ffe:	fea43423          	sd	a0,-24(s0)
    80005002:	fe843783          	ld	a5,-24(s0)
    80005006:	4bfc                	lw	a5,84(a5)
    80005008:	c3b9                	beqz	a5,8000504e <sys_sigreturn+0x60>
    8000500a:	fe843783          	ld	a5,-24(s0)
    8000500e:	6fbc                	ld	a5,88(a5)
    80005010:	cf9d                	beqz	a5,8000504e <sys_sigreturn+0x60>
    80005012:	fe843783          	ld	a5,-24(s0)
    80005016:	77d8                	ld	a4,168(a5)
    80005018:	fe843783          	ld	a5,-24(s0)
    8000501c:	6fbc                	ld	a5,88(a5)
    8000501e:	12000613          	li	a2,288
    80005022:	85be                	mv	a1,a5
    80005024:	853a                	mv	a0,a4
    80005026:	ffffc097          	auipc	ra,0xffffc
    8000502a:	50a080e7          	jalr	1290(ra) # 80001530 <memmove>
    8000502e:	fe843783          	ld	a5,-24(s0)
    80005032:	6fbc                	ld	a5,88(a5)
    80005034:	853e                	mv	a0,a5
    80005036:	ffffc097          	auipc	ra,0xffffc
    8000503a:	04a080e7          	jalr	74(ra) # 80001080 <kfree>
    8000503e:	fe843783          	ld	a5,-24(s0)
    80005042:	0407bc23          	sd	zero,88(a5)
    80005046:	fe843783          	ld	a5,-24(s0)
    8000504a:	0407aa23          	sw	zero,84(a5)
    8000504e:	4781                	li	a5,0
    80005050:	853e                	mv	a0,a5
    80005052:	60e2                	ld	ra,24(sp)
    80005054:	6442                	ld	s0,16(sp)
    80005056:	6105                	addi	sp,sp,32
    80005058:	8082                	ret

000000008000505a <sys_settickets>:
    8000505a:	1101                	addi	sp,sp,-32
    8000505c:	ec06                	sd	ra,24(sp)
    8000505e:	e822                	sd	s0,16(sp)
    80005060:	1000                	addi	s0,sp,32
    80005062:	ffffe097          	auipc	ra,0xffffe
    80005066:	878080e7          	jalr	-1928(ra) # 800028da <myproc>
    8000506a:	fea43423          	sd	a0,-24(s0)
    8000506e:	fe440793          	addi	a5,s0,-28
    80005072:	85be                	mv	a1,a5
    80005074:	4501                	li	a0,0
    80005076:	00000097          	auipc	ra,0x0
    8000507a:	a1c080e7          	jalr	-1508(ra) # 80004a92 <argint>
    8000507e:	fe442703          	lw	a4,-28(s0)
    80005082:	fe843783          	ld	a5,-24(s0)
    80005086:	d7f8                	sw	a4,108(a5)
    80005088:	4781                	li	a5,0
    8000508a:	853e                	mv	a0,a5
    8000508c:	60e2                	ld	ra,24(sp)
    8000508e:	6442                	ld	s0,16(sp)
    80005090:	6105                	addi	sp,sp,32
    80005092:	8082                	ret

0000000080005094 <binit>:
    80005094:	1101                	addi	sp,sp,-32
    80005096:	ec06                	sd	ra,24(sp)
    80005098:	e822                	sd	s0,16(sp)
    8000509a:	1000                	addi	s0,sp,32
    8000509c:	00007597          	auipc	a1,0x7
    800050a0:	56458593          	addi	a1,a1,1380 # 8000c600 <etext+0x600>
    800050a4:	00017517          	auipc	a0,0x17
    800050a8:	30450513          	addi	a0,a0,772 # 8001c3a8 <bcache>
    800050ac:	ffffc097          	auipc	ra,0xffffc
    800050b0:	19c080e7          	jalr	412(ra) # 80001248 <initlock>
    800050b4:	00017717          	auipc	a4,0x17
    800050b8:	2f470713          	addi	a4,a4,756 # 8001c3a8 <bcache>
    800050bc:	67a1                	lui	a5,0x8
    800050be:	97ba                	add	a5,a5,a4
    800050c0:	0001f717          	auipc	a4,0x1f
    800050c4:	55070713          	addi	a4,a4,1360 # 80024610 <bcache+0x8268>
    800050c8:	2ae7b823          	sd	a4,688(a5) # 82b0 <_entry-0x7fff7d50>
    800050cc:	00017717          	auipc	a4,0x17
    800050d0:	2dc70713          	addi	a4,a4,732 # 8001c3a8 <bcache>
    800050d4:	67a1                	lui	a5,0x8
    800050d6:	97ba                	add	a5,a5,a4
    800050d8:	0001f717          	auipc	a4,0x1f
    800050dc:	53870713          	addi	a4,a4,1336 # 80024610 <bcache+0x8268>
    800050e0:	2ae7bc23          	sd	a4,696(a5) # 82b8 <_entry-0x7fff7d48>
    800050e4:	00017797          	auipc	a5,0x17
    800050e8:	2dc78793          	addi	a5,a5,732 # 8001c3c0 <bcache+0x18>
    800050ec:	fef43423          	sd	a5,-24(s0)
    800050f0:	a895                	j	80005164 <binit+0xd0>
    800050f2:	00017717          	auipc	a4,0x17
    800050f6:	2b670713          	addi	a4,a4,694 # 8001c3a8 <bcache>
    800050fa:	67a1                	lui	a5,0x8
    800050fc:	97ba                	add	a5,a5,a4
    800050fe:	2b87b703          	ld	a4,696(a5) # 82b8 <_entry-0x7fff7d48>
    80005102:	fe843783          	ld	a5,-24(s0)
    80005106:	ebb8                	sd	a4,80(a5)
    80005108:	fe843783          	ld	a5,-24(s0)
    8000510c:	0001f717          	auipc	a4,0x1f
    80005110:	50470713          	addi	a4,a4,1284 # 80024610 <bcache+0x8268>
    80005114:	e7b8                	sd	a4,72(a5)
    80005116:	fe843783          	ld	a5,-24(s0)
    8000511a:	07c1                	addi	a5,a5,16
    8000511c:	00007597          	auipc	a1,0x7
    80005120:	4ec58593          	addi	a1,a1,1260 # 8000c608 <etext+0x608>
    80005124:	853e                	mv	a0,a5
    80005126:	00002097          	auipc	ra,0x2
    8000512a:	01e080e7          	jalr	30(ra) # 80007144 <initsleeplock>
    8000512e:	00017717          	auipc	a4,0x17
    80005132:	27a70713          	addi	a4,a4,634 # 8001c3a8 <bcache>
    80005136:	67a1                	lui	a5,0x8
    80005138:	97ba                	add	a5,a5,a4
    8000513a:	2b87b783          	ld	a5,696(a5) # 82b8 <_entry-0x7fff7d48>
    8000513e:	fe843703          	ld	a4,-24(s0)
    80005142:	e7b8                	sd	a4,72(a5)
    80005144:	00017717          	auipc	a4,0x17
    80005148:	26470713          	addi	a4,a4,612 # 8001c3a8 <bcache>
    8000514c:	67a1                	lui	a5,0x8
    8000514e:	97ba                	add	a5,a5,a4
    80005150:	fe843703          	ld	a4,-24(s0)
    80005154:	2ae7bc23          	sd	a4,696(a5) # 82b8 <_entry-0x7fff7d48>
    80005158:	fe843783          	ld	a5,-24(s0)
    8000515c:	45878793          	addi	a5,a5,1112
    80005160:	fef43423          	sd	a5,-24(s0)
    80005164:	0001f797          	auipc	a5,0x1f
    80005168:	4ac78793          	addi	a5,a5,1196 # 80024610 <bcache+0x8268>
    8000516c:	fe843703          	ld	a4,-24(s0)
    80005170:	f8f761e3          	bltu	a4,a5,800050f2 <binit+0x5e>
    80005174:	0001                	nop
    80005176:	0001                	nop
    80005178:	60e2                	ld	ra,24(sp)
    8000517a:	6442                	ld	s0,16(sp)
    8000517c:	6105                	addi	sp,sp,32
    8000517e:	8082                	ret

0000000080005180 <bget>:
    80005180:	7179                	addi	sp,sp,-48
    80005182:	f406                	sd	ra,40(sp)
    80005184:	f022                	sd	s0,32(sp)
    80005186:	1800                	addi	s0,sp,48
    80005188:	87aa                	mv	a5,a0
    8000518a:	872e                	mv	a4,a1
    8000518c:	fcf42e23          	sw	a5,-36(s0)
    80005190:	87ba                	mv	a5,a4
    80005192:	fcf42c23          	sw	a5,-40(s0)
    80005196:	00017517          	auipc	a0,0x17
    8000519a:	21250513          	addi	a0,a0,530 # 8001c3a8 <bcache>
    8000519e:	ffffc097          	auipc	ra,0xffffc
    800051a2:	0da080e7          	jalr	218(ra) # 80001278 <acquire>
    800051a6:	00017717          	auipc	a4,0x17
    800051aa:	20270713          	addi	a4,a4,514 # 8001c3a8 <bcache>
    800051ae:	67a1                	lui	a5,0x8
    800051b0:	97ba                	add	a5,a5,a4
    800051b2:	2b87b783          	ld	a5,696(a5) # 82b8 <_entry-0x7fff7d48>
    800051b6:	fef43423          	sd	a5,-24(s0)
    800051ba:	a095                	j	8000521e <bget+0x9e>
    800051bc:	fe843783          	ld	a5,-24(s0)
    800051c0:	4798                	lw	a4,8(a5)
    800051c2:	fdc42783          	lw	a5,-36(s0)
    800051c6:	2781                	sext.w	a5,a5
    800051c8:	04e79663          	bne	a5,a4,80005214 <bget+0x94>
    800051cc:	fe843783          	ld	a5,-24(s0)
    800051d0:	47d8                	lw	a4,12(a5)
    800051d2:	fd842783          	lw	a5,-40(s0)
    800051d6:	2781                	sext.w	a5,a5
    800051d8:	02e79e63          	bne	a5,a4,80005214 <bget+0x94>
    800051dc:	fe843783          	ld	a5,-24(s0)
    800051e0:	43bc                	lw	a5,64(a5)
    800051e2:	2785                	addiw	a5,a5,1
    800051e4:	0007871b          	sext.w	a4,a5
    800051e8:	fe843783          	ld	a5,-24(s0)
    800051ec:	c3b8                	sw	a4,64(a5)
    800051ee:	00017517          	auipc	a0,0x17
    800051f2:	1ba50513          	addi	a0,a0,442 # 8001c3a8 <bcache>
    800051f6:	ffffc097          	auipc	ra,0xffffc
    800051fa:	0e6080e7          	jalr	230(ra) # 800012dc <release>
    800051fe:	fe843783          	ld	a5,-24(s0)
    80005202:	07c1                	addi	a5,a5,16
    80005204:	853e                	mv	a0,a5
    80005206:	00002097          	auipc	ra,0x2
    8000520a:	f8a080e7          	jalr	-118(ra) # 80007190 <acquiresleep>
    8000520e:	fe843783          	ld	a5,-24(s0)
    80005212:	a07d                	j	800052c0 <bget+0x140>
    80005214:	fe843783          	ld	a5,-24(s0)
    80005218:	6bbc                	ld	a5,80(a5)
    8000521a:	fef43423          	sd	a5,-24(s0)
    8000521e:	fe843703          	ld	a4,-24(s0)
    80005222:	0001f797          	auipc	a5,0x1f
    80005226:	3ee78793          	addi	a5,a5,1006 # 80024610 <bcache+0x8268>
    8000522a:	f8f719e3          	bne	a4,a5,800051bc <bget+0x3c>
    8000522e:	00017717          	auipc	a4,0x17
    80005232:	17a70713          	addi	a4,a4,378 # 8001c3a8 <bcache>
    80005236:	67a1                	lui	a5,0x8
    80005238:	97ba                	add	a5,a5,a4
    8000523a:	2b07b783          	ld	a5,688(a5) # 82b0 <_entry-0x7fff7d50>
    8000523e:	fef43423          	sd	a5,-24(s0)
    80005242:	a8b9                	j	800052a0 <bget+0x120>
    80005244:	fe843783          	ld	a5,-24(s0)
    80005248:	43bc                	lw	a5,64(a5)
    8000524a:	e7b1                	bnez	a5,80005296 <bget+0x116>
    8000524c:	fe843783          	ld	a5,-24(s0)
    80005250:	fdc42703          	lw	a4,-36(s0)
    80005254:	c798                	sw	a4,8(a5)
    80005256:	fe843783          	ld	a5,-24(s0)
    8000525a:	fd842703          	lw	a4,-40(s0)
    8000525e:	c7d8                	sw	a4,12(a5)
    80005260:	fe843783          	ld	a5,-24(s0)
    80005264:	0007a023          	sw	zero,0(a5)
    80005268:	fe843783          	ld	a5,-24(s0)
    8000526c:	4705                	li	a4,1
    8000526e:	c3b8                	sw	a4,64(a5)
    80005270:	00017517          	auipc	a0,0x17
    80005274:	13850513          	addi	a0,a0,312 # 8001c3a8 <bcache>
    80005278:	ffffc097          	auipc	ra,0xffffc
    8000527c:	064080e7          	jalr	100(ra) # 800012dc <release>
    80005280:	fe843783          	ld	a5,-24(s0)
    80005284:	07c1                	addi	a5,a5,16
    80005286:	853e                	mv	a0,a5
    80005288:	00002097          	auipc	ra,0x2
    8000528c:	f08080e7          	jalr	-248(ra) # 80007190 <acquiresleep>
    80005290:	fe843783          	ld	a5,-24(s0)
    80005294:	a035                	j	800052c0 <bget+0x140>
    80005296:	fe843783          	ld	a5,-24(s0)
    8000529a:	67bc                	ld	a5,72(a5)
    8000529c:	fef43423          	sd	a5,-24(s0)
    800052a0:	fe843703          	ld	a4,-24(s0)
    800052a4:	0001f797          	auipc	a5,0x1f
    800052a8:	36c78793          	addi	a5,a5,876 # 80024610 <bcache+0x8268>
    800052ac:	f8f71ce3          	bne	a4,a5,80005244 <bget+0xc4>
    800052b0:	00007517          	auipc	a0,0x7
    800052b4:	36050513          	addi	a0,a0,864 # 8000c610 <etext+0x610>
    800052b8:	ffffc097          	auipc	ra,0xffffc
    800052bc:	9d2080e7          	jalr	-1582(ra) # 80000c8a <panic>
    800052c0:	853e                	mv	a0,a5
    800052c2:	70a2                	ld	ra,40(sp)
    800052c4:	7402                	ld	s0,32(sp)
    800052c6:	6145                	addi	sp,sp,48
    800052c8:	8082                	ret

00000000800052ca <bread>:
    800052ca:	7179                	addi	sp,sp,-48
    800052cc:	f406                	sd	ra,40(sp)
    800052ce:	f022                	sd	s0,32(sp)
    800052d0:	1800                	addi	s0,sp,48
    800052d2:	87aa                	mv	a5,a0
    800052d4:	872e                	mv	a4,a1
    800052d6:	fcf42e23          	sw	a5,-36(s0)
    800052da:	87ba                	mv	a5,a4
    800052dc:	fcf42c23          	sw	a5,-40(s0)
    800052e0:	fd842703          	lw	a4,-40(s0)
    800052e4:	fdc42783          	lw	a5,-36(s0)
    800052e8:	85ba                	mv	a1,a4
    800052ea:	853e                	mv	a0,a5
    800052ec:	00000097          	auipc	ra,0x0
    800052f0:	e94080e7          	jalr	-364(ra) # 80005180 <bget>
    800052f4:	fea43423          	sd	a0,-24(s0)
    800052f8:	fe843783          	ld	a5,-24(s0)
    800052fc:	439c                	lw	a5,0(a5)
    800052fe:	ef81                	bnez	a5,80005316 <bread+0x4c>
    80005300:	4581                	li	a1,0
    80005302:	fe843503          	ld	a0,-24(s0)
    80005306:	00005097          	auipc	ra,0x5
    8000530a:	8ac080e7          	jalr	-1876(ra) # 80009bb2 <virtio_disk_rw>
    8000530e:	fe843783          	ld	a5,-24(s0)
    80005312:	4705                	li	a4,1
    80005314:	c398                	sw	a4,0(a5)
    80005316:	fe843783          	ld	a5,-24(s0)
    8000531a:	853e                	mv	a0,a5
    8000531c:	70a2                	ld	ra,40(sp)
    8000531e:	7402                	ld	s0,32(sp)
    80005320:	6145                	addi	sp,sp,48
    80005322:	8082                	ret

0000000080005324 <bwrite>:
    80005324:	1101                	addi	sp,sp,-32
    80005326:	ec06                	sd	ra,24(sp)
    80005328:	e822                	sd	s0,16(sp)
    8000532a:	1000                	addi	s0,sp,32
    8000532c:	fea43423          	sd	a0,-24(s0)
    80005330:	fe843783          	ld	a5,-24(s0)
    80005334:	07c1                	addi	a5,a5,16
    80005336:	853e                	mv	a0,a5
    80005338:	00002097          	auipc	ra,0x2
    8000533c:	f18080e7          	jalr	-232(ra) # 80007250 <holdingsleep>
    80005340:	87aa                	mv	a5,a0
    80005342:	eb89                	bnez	a5,80005354 <bwrite+0x30>
    80005344:	00007517          	auipc	a0,0x7
    80005348:	2e450513          	addi	a0,a0,740 # 8000c628 <etext+0x628>
    8000534c:	ffffc097          	auipc	ra,0xffffc
    80005350:	93e080e7          	jalr	-1730(ra) # 80000c8a <panic>
    80005354:	4585                	li	a1,1
    80005356:	fe843503          	ld	a0,-24(s0)
    8000535a:	00005097          	auipc	ra,0x5
    8000535e:	858080e7          	jalr	-1960(ra) # 80009bb2 <virtio_disk_rw>
    80005362:	0001                	nop
    80005364:	60e2                	ld	ra,24(sp)
    80005366:	6442                	ld	s0,16(sp)
    80005368:	6105                	addi	sp,sp,32
    8000536a:	8082                	ret

000000008000536c <brelse>:
    8000536c:	1101                	addi	sp,sp,-32
    8000536e:	ec06                	sd	ra,24(sp)
    80005370:	e822                	sd	s0,16(sp)
    80005372:	1000                	addi	s0,sp,32
    80005374:	fea43423          	sd	a0,-24(s0)
    80005378:	fe843783          	ld	a5,-24(s0)
    8000537c:	07c1                	addi	a5,a5,16
    8000537e:	853e                	mv	a0,a5
    80005380:	00002097          	auipc	ra,0x2
    80005384:	ed0080e7          	jalr	-304(ra) # 80007250 <holdingsleep>
    80005388:	87aa                	mv	a5,a0
    8000538a:	eb89                	bnez	a5,8000539c <brelse+0x30>
    8000538c:	00007517          	auipc	a0,0x7
    80005390:	2a450513          	addi	a0,a0,676 # 8000c630 <etext+0x630>
    80005394:	ffffc097          	auipc	ra,0xffffc
    80005398:	8f6080e7          	jalr	-1802(ra) # 80000c8a <panic>
    8000539c:	fe843783          	ld	a5,-24(s0)
    800053a0:	07c1                	addi	a5,a5,16
    800053a2:	853e                	mv	a0,a5
    800053a4:	00002097          	auipc	ra,0x2
    800053a8:	e5a080e7          	jalr	-422(ra) # 800071fe <releasesleep>
    800053ac:	00017517          	auipc	a0,0x17
    800053b0:	ffc50513          	addi	a0,a0,-4 # 8001c3a8 <bcache>
    800053b4:	ffffc097          	auipc	ra,0xffffc
    800053b8:	ec4080e7          	jalr	-316(ra) # 80001278 <acquire>
    800053bc:	fe843783          	ld	a5,-24(s0)
    800053c0:	43bc                	lw	a5,64(a5)
    800053c2:	37fd                	addiw	a5,a5,-1
    800053c4:	0007871b          	sext.w	a4,a5
    800053c8:	fe843783          	ld	a5,-24(s0)
    800053cc:	c3b8                	sw	a4,64(a5)
    800053ce:	fe843783          	ld	a5,-24(s0)
    800053d2:	43bc                	lw	a5,64(a5)
    800053d4:	e7b5                	bnez	a5,80005440 <brelse+0xd4>
    800053d6:	fe843783          	ld	a5,-24(s0)
    800053da:	6bbc                	ld	a5,80(a5)
    800053dc:	fe843703          	ld	a4,-24(s0)
    800053e0:	6738                	ld	a4,72(a4)
    800053e2:	e7b8                	sd	a4,72(a5)
    800053e4:	fe843783          	ld	a5,-24(s0)
    800053e8:	67bc                	ld	a5,72(a5)
    800053ea:	fe843703          	ld	a4,-24(s0)
    800053ee:	6b38                	ld	a4,80(a4)
    800053f0:	ebb8                	sd	a4,80(a5)
    800053f2:	00017717          	auipc	a4,0x17
    800053f6:	fb670713          	addi	a4,a4,-74 # 8001c3a8 <bcache>
    800053fa:	67a1                	lui	a5,0x8
    800053fc:	97ba                	add	a5,a5,a4
    800053fe:	2b87b703          	ld	a4,696(a5) # 82b8 <_entry-0x7fff7d48>
    80005402:	fe843783          	ld	a5,-24(s0)
    80005406:	ebb8                	sd	a4,80(a5)
    80005408:	fe843783          	ld	a5,-24(s0)
    8000540c:	0001f717          	auipc	a4,0x1f
    80005410:	20470713          	addi	a4,a4,516 # 80024610 <bcache+0x8268>
    80005414:	e7b8                	sd	a4,72(a5)
    80005416:	00017717          	auipc	a4,0x17
    8000541a:	f9270713          	addi	a4,a4,-110 # 8001c3a8 <bcache>
    8000541e:	67a1                	lui	a5,0x8
    80005420:	97ba                	add	a5,a5,a4
    80005422:	2b87b783          	ld	a5,696(a5) # 82b8 <_entry-0x7fff7d48>
    80005426:	fe843703          	ld	a4,-24(s0)
    8000542a:	e7b8                	sd	a4,72(a5)
    8000542c:	00017717          	auipc	a4,0x17
    80005430:	f7c70713          	addi	a4,a4,-132 # 8001c3a8 <bcache>
    80005434:	67a1                	lui	a5,0x8
    80005436:	97ba                	add	a5,a5,a4
    80005438:	fe843703          	ld	a4,-24(s0)
    8000543c:	2ae7bc23          	sd	a4,696(a5) # 82b8 <_entry-0x7fff7d48>
    80005440:	00017517          	auipc	a0,0x17
    80005444:	f6850513          	addi	a0,a0,-152 # 8001c3a8 <bcache>
    80005448:	ffffc097          	auipc	ra,0xffffc
    8000544c:	e94080e7          	jalr	-364(ra) # 800012dc <release>
    80005450:	0001                	nop
    80005452:	60e2                	ld	ra,24(sp)
    80005454:	6442                	ld	s0,16(sp)
    80005456:	6105                	addi	sp,sp,32
    80005458:	8082                	ret

000000008000545a <bpin>:
    8000545a:	1101                	addi	sp,sp,-32
    8000545c:	ec06                	sd	ra,24(sp)
    8000545e:	e822                	sd	s0,16(sp)
    80005460:	1000                	addi	s0,sp,32
    80005462:	fea43423          	sd	a0,-24(s0)
    80005466:	00017517          	auipc	a0,0x17
    8000546a:	f4250513          	addi	a0,a0,-190 # 8001c3a8 <bcache>
    8000546e:	ffffc097          	auipc	ra,0xffffc
    80005472:	e0a080e7          	jalr	-502(ra) # 80001278 <acquire>
    80005476:	fe843783          	ld	a5,-24(s0)
    8000547a:	43bc                	lw	a5,64(a5)
    8000547c:	2785                	addiw	a5,a5,1
    8000547e:	0007871b          	sext.w	a4,a5
    80005482:	fe843783          	ld	a5,-24(s0)
    80005486:	c3b8                	sw	a4,64(a5)
    80005488:	00017517          	auipc	a0,0x17
    8000548c:	f2050513          	addi	a0,a0,-224 # 8001c3a8 <bcache>
    80005490:	ffffc097          	auipc	ra,0xffffc
    80005494:	e4c080e7          	jalr	-436(ra) # 800012dc <release>
    80005498:	0001                	nop
    8000549a:	60e2                	ld	ra,24(sp)
    8000549c:	6442                	ld	s0,16(sp)
    8000549e:	6105                	addi	sp,sp,32
    800054a0:	8082                	ret

00000000800054a2 <bunpin>:
    800054a2:	1101                	addi	sp,sp,-32
    800054a4:	ec06                	sd	ra,24(sp)
    800054a6:	e822                	sd	s0,16(sp)
    800054a8:	1000                	addi	s0,sp,32
    800054aa:	fea43423          	sd	a0,-24(s0)
    800054ae:	00017517          	auipc	a0,0x17
    800054b2:	efa50513          	addi	a0,a0,-262 # 8001c3a8 <bcache>
    800054b6:	ffffc097          	auipc	ra,0xffffc
    800054ba:	dc2080e7          	jalr	-574(ra) # 80001278 <acquire>
    800054be:	fe843783          	ld	a5,-24(s0)
    800054c2:	43bc                	lw	a5,64(a5)
    800054c4:	37fd                	addiw	a5,a5,-1
    800054c6:	0007871b          	sext.w	a4,a5
    800054ca:	fe843783          	ld	a5,-24(s0)
    800054ce:	c3b8                	sw	a4,64(a5)
    800054d0:	00017517          	auipc	a0,0x17
    800054d4:	ed850513          	addi	a0,a0,-296 # 8001c3a8 <bcache>
    800054d8:	ffffc097          	auipc	ra,0xffffc
    800054dc:	e04080e7          	jalr	-508(ra) # 800012dc <release>
    800054e0:	0001                	nop
    800054e2:	60e2                	ld	ra,24(sp)
    800054e4:	6442                	ld	s0,16(sp)
    800054e6:	6105                	addi	sp,sp,32
    800054e8:	8082                	ret

00000000800054ea <readsb>:
    800054ea:	7179                	addi	sp,sp,-48
    800054ec:	f406                	sd	ra,40(sp)
    800054ee:	f022                	sd	s0,32(sp)
    800054f0:	1800                	addi	s0,sp,48
    800054f2:	87aa                	mv	a5,a0
    800054f4:	fcb43823          	sd	a1,-48(s0)
    800054f8:	fcf42e23          	sw	a5,-36(s0)
    800054fc:	fdc42783          	lw	a5,-36(s0)
    80005500:	4585                	li	a1,1
    80005502:	853e                	mv	a0,a5
    80005504:	00000097          	auipc	ra,0x0
    80005508:	dc6080e7          	jalr	-570(ra) # 800052ca <bread>
    8000550c:	fea43423          	sd	a0,-24(s0)
    80005510:	fe843783          	ld	a5,-24(s0)
    80005514:	05878793          	addi	a5,a5,88
    80005518:	02000613          	li	a2,32
    8000551c:	85be                	mv	a1,a5
    8000551e:	fd043503          	ld	a0,-48(s0)
    80005522:	ffffc097          	auipc	ra,0xffffc
    80005526:	00e080e7          	jalr	14(ra) # 80001530 <memmove>
    8000552a:	fe843503          	ld	a0,-24(s0)
    8000552e:	00000097          	auipc	ra,0x0
    80005532:	e3e080e7          	jalr	-450(ra) # 8000536c <brelse>
    80005536:	0001                	nop
    80005538:	70a2                	ld	ra,40(sp)
    8000553a:	7402                	ld	s0,32(sp)
    8000553c:	6145                	addi	sp,sp,48
    8000553e:	8082                	ret

0000000080005540 <fsinit>:
    80005540:	1101                	addi	sp,sp,-32
    80005542:	ec06                	sd	ra,24(sp)
    80005544:	e822                	sd	s0,16(sp)
    80005546:	1000                	addi	s0,sp,32
    80005548:	87aa                	mv	a5,a0
    8000554a:	fef42623          	sw	a5,-20(s0)
    8000554e:	fec42783          	lw	a5,-20(s0)
    80005552:	0001f597          	auipc	a1,0x1f
    80005556:	51658593          	addi	a1,a1,1302 # 80024a68 <sb>
    8000555a:	853e                	mv	a0,a5
    8000555c:	00000097          	auipc	ra,0x0
    80005560:	f8e080e7          	jalr	-114(ra) # 800054ea <readsb>
    80005564:	0001f797          	auipc	a5,0x1f
    80005568:	50478793          	addi	a5,a5,1284 # 80024a68 <sb>
    8000556c:	439c                	lw	a5,0(a5)
    8000556e:	873e                	mv	a4,a5
    80005570:	102037b7          	lui	a5,0x10203
    80005574:	04078793          	addi	a5,a5,64 # 10203040 <_entry-0x6fdfcfc0>
    80005578:	00f70a63          	beq	a4,a5,8000558c <fsinit+0x4c>
    8000557c:	00007517          	auipc	a0,0x7
    80005580:	0bc50513          	addi	a0,a0,188 # 8000c638 <etext+0x638>
    80005584:	ffffb097          	auipc	ra,0xffffb
    80005588:	706080e7          	jalr	1798(ra) # 80000c8a <panic>
    8000558c:	fec42783          	lw	a5,-20(s0)
    80005590:	0001f597          	auipc	a1,0x1f
    80005594:	4d858593          	addi	a1,a1,1240 # 80024a68 <sb>
    80005598:	853e                	mv	a0,a5
    8000559a:	00001097          	auipc	ra,0x1
    8000559e:	48e080e7          	jalr	1166(ra) # 80006a28 <initlog>
    800055a2:	0001                	nop
    800055a4:	60e2                	ld	ra,24(sp)
    800055a6:	6442                	ld	s0,16(sp)
    800055a8:	6105                	addi	sp,sp,32
    800055aa:	8082                	ret

00000000800055ac <bzero>:
    800055ac:	7179                	addi	sp,sp,-48
    800055ae:	f406                	sd	ra,40(sp)
    800055b0:	f022                	sd	s0,32(sp)
    800055b2:	1800                	addi	s0,sp,48
    800055b4:	87aa                	mv	a5,a0
    800055b6:	872e                	mv	a4,a1
    800055b8:	fcf42e23          	sw	a5,-36(s0)
    800055bc:	87ba                	mv	a5,a4
    800055be:	fcf42c23          	sw	a5,-40(s0)
    800055c2:	fdc42783          	lw	a5,-36(s0)
    800055c6:	fd842703          	lw	a4,-40(s0)
    800055ca:	85ba                	mv	a1,a4
    800055cc:	853e                	mv	a0,a5
    800055ce:	00000097          	auipc	ra,0x0
    800055d2:	cfc080e7          	jalr	-772(ra) # 800052ca <bread>
    800055d6:	fea43423          	sd	a0,-24(s0)
    800055da:	fe843783          	ld	a5,-24(s0)
    800055de:	05878793          	addi	a5,a5,88
    800055e2:	40000613          	li	a2,1024
    800055e6:	4581                	li	a1,0
    800055e8:	853e                	mv	a0,a5
    800055ea:	ffffc097          	auipc	ra,0xffffc
    800055ee:	e62080e7          	jalr	-414(ra) # 8000144c <memset>
    800055f2:	fe843503          	ld	a0,-24(s0)
    800055f6:	00002097          	auipc	ra,0x2
    800055fa:	a1a080e7          	jalr	-1510(ra) # 80007010 <log_write>
    800055fe:	fe843503          	ld	a0,-24(s0)
    80005602:	00000097          	auipc	ra,0x0
    80005606:	d6a080e7          	jalr	-662(ra) # 8000536c <brelse>
    8000560a:	0001                	nop
    8000560c:	70a2                	ld	ra,40(sp)
    8000560e:	7402                	ld	s0,32(sp)
    80005610:	6145                	addi	sp,sp,48
    80005612:	8082                	ret

0000000080005614 <balloc>:
    80005614:	7139                	addi	sp,sp,-64
    80005616:	fc06                	sd	ra,56(sp)
    80005618:	f822                	sd	s0,48(sp)
    8000561a:	0080                	addi	s0,sp,64
    8000561c:	87aa                	mv	a5,a0
    8000561e:	fcf42623          	sw	a5,-52(s0)
    80005622:	fe043023          	sd	zero,-32(s0)
    80005626:	fe042623          	sw	zero,-20(s0)
    8000562a:	a295                	j	8000578e <balloc+0x17a>
    8000562c:	fec42783          	lw	a5,-20(s0)
    80005630:	41f7d71b          	sraiw	a4,a5,0x1f
    80005634:	0137571b          	srliw	a4,a4,0x13
    80005638:	9fb9                	addw	a5,a5,a4
    8000563a:	40d7d79b          	sraiw	a5,a5,0xd
    8000563e:	2781                	sext.w	a5,a5
    80005640:	0007871b          	sext.w	a4,a5
    80005644:	0001f797          	auipc	a5,0x1f
    80005648:	42478793          	addi	a5,a5,1060 # 80024a68 <sb>
    8000564c:	4fdc                	lw	a5,28(a5)
    8000564e:	9fb9                	addw	a5,a5,a4
    80005650:	0007871b          	sext.w	a4,a5
    80005654:	fcc42783          	lw	a5,-52(s0)
    80005658:	85ba                	mv	a1,a4
    8000565a:	853e                	mv	a0,a5
    8000565c:	00000097          	auipc	ra,0x0
    80005660:	c6e080e7          	jalr	-914(ra) # 800052ca <bread>
    80005664:	fea43023          	sd	a0,-32(s0)
    80005668:	fe042423          	sw	zero,-24(s0)
    8000566c:	a8e9                	j	80005746 <balloc+0x132>
    8000566e:	fe842783          	lw	a5,-24(s0)
    80005672:	8b9d                	andi	a5,a5,7
    80005674:	2781                	sext.w	a5,a5
    80005676:	4705                	li	a4,1
    80005678:	00f717bb          	sllw	a5,a4,a5
    8000567c:	fcf42e23          	sw	a5,-36(s0)
    80005680:	fe842783          	lw	a5,-24(s0)
    80005684:	41f7d71b          	sraiw	a4,a5,0x1f
    80005688:	01d7571b          	srliw	a4,a4,0x1d
    8000568c:	9fb9                	addw	a5,a5,a4
    8000568e:	4037d79b          	sraiw	a5,a5,0x3
    80005692:	2781                	sext.w	a5,a5
    80005694:	fe043703          	ld	a4,-32(s0)
    80005698:	97ba                	add	a5,a5,a4
    8000569a:	0587c783          	lbu	a5,88(a5)
    8000569e:	2781                	sext.w	a5,a5
    800056a0:	fdc42703          	lw	a4,-36(s0)
    800056a4:	8ff9                	and	a5,a5,a4
    800056a6:	2781                	sext.w	a5,a5
    800056a8:	ebd1                	bnez	a5,8000573c <balloc+0x128>
    800056aa:	fe842783          	lw	a5,-24(s0)
    800056ae:	41f7d71b          	sraiw	a4,a5,0x1f
    800056b2:	01d7571b          	srliw	a4,a4,0x1d
    800056b6:	9fb9                	addw	a5,a5,a4
    800056b8:	4037d79b          	sraiw	a5,a5,0x3
    800056bc:	2781                	sext.w	a5,a5
    800056be:	fe043703          	ld	a4,-32(s0)
    800056c2:	973e                	add	a4,a4,a5
    800056c4:	05874703          	lbu	a4,88(a4)
    800056c8:	0187169b          	slliw	a3,a4,0x18
    800056cc:	4186d69b          	sraiw	a3,a3,0x18
    800056d0:	fdc42703          	lw	a4,-36(s0)
    800056d4:	0187171b          	slliw	a4,a4,0x18
    800056d8:	4187571b          	sraiw	a4,a4,0x18
    800056dc:	8f55                	or	a4,a4,a3
    800056de:	0187171b          	slliw	a4,a4,0x18
    800056e2:	4187571b          	sraiw	a4,a4,0x18
    800056e6:	0ff77713          	zext.b	a4,a4
    800056ea:	fe043683          	ld	a3,-32(s0)
    800056ee:	97b6                	add	a5,a5,a3
    800056f0:	04e78c23          	sb	a4,88(a5)
    800056f4:	fe043503          	ld	a0,-32(s0)
    800056f8:	00002097          	auipc	ra,0x2
    800056fc:	918080e7          	jalr	-1768(ra) # 80007010 <log_write>
    80005700:	fe043503          	ld	a0,-32(s0)
    80005704:	00000097          	auipc	ra,0x0
    80005708:	c68080e7          	jalr	-920(ra) # 8000536c <brelse>
    8000570c:	fcc42783          	lw	a5,-52(s0)
    80005710:	fec42703          	lw	a4,-20(s0)
    80005714:	86ba                	mv	a3,a4
    80005716:	fe842703          	lw	a4,-24(s0)
    8000571a:	9f35                	addw	a4,a4,a3
    8000571c:	2701                	sext.w	a4,a4
    8000571e:	85ba                	mv	a1,a4
    80005720:	853e                	mv	a0,a5
    80005722:	00000097          	auipc	ra,0x0
    80005726:	e8a080e7          	jalr	-374(ra) # 800055ac <bzero>
    8000572a:	fec42783          	lw	a5,-20(s0)
    8000572e:	873e                	mv	a4,a5
    80005730:	fe842783          	lw	a5,-24(s0)
    80005734:	9fb9                	addw	a5,a5,a4
    80005736:	2781                	sext.w	a5,a5
    80005738:	2781                	sext.w	a5,a5
    8000573a:	a8a5                	j	800057b2 <balloc+0x19e>
    8000573c:	fe842783          	lw	a5,-24(s0)
    80005740:	2785                	addiw	a5,a5,1
    80005742:	fef42423          	sw	a5,-24(s0)
    80005746:	fe842783          	lw	a5,-24(s0)
    8000574a:	0007871b          	sext.w	a4,a5
    8000574e:	6789                	lui	a5,0x2
    80005750:	02f75263          	bge	a4,a5,80005774 <balloc+0x160>
    80005754:	fec42783          	lw	a5,-20(s0)
    80005758:	873e                	mv	a4,a5
    8000575a:	fe842783          	lw	a5,-24(s0)
    8000575e:	9fb9                	addw	a5,a5,a4
    80005760:	2781                	sext.w	a5,a5
    80005762:	0007871b          	sext.w	a4,a5
    80005766:	0001f797          	auipc	a5,0x1f
    8000576a:	30278793          	addi	a5,a5,770 # 80024a68 <sb>
    8000576e:	43dc                	lw	a5,4(a5)
    80005770:	eef76fe3          	bltu	a4,a5,8000566e <balloc+0x5a>
    80005774:	fe043503          	ld	a0,-32(s0)
    80005778:	00000097          	auipc	ra,0x0
    8000577c:	bf4080e7          	jalr	-1036(ra) # 8000536c <brelse>
    80005780:	fec42783          	lw	a5,-20(s0)
    80005784:	873e                	mv	a4,a5
    80005786:	6789                	lui	a5,0x2
    80005788:	9fb9                	addw	a5,a5,a4
    8000578a:	fef42623          	sw	a5,-20(s0)
    8000578e:	0001f797          	auipc	a5,0x1f
    80005792:	2da78793          	addi	a5,a5,730 # 80024a68 <sb>
    80005796:	43d8                	lw	a4,4(a5)
    80005798:	fec42783          	lw	a5,-20(s0)
    8000579c:	e8e7e8e3          	bltu	a5,a4,8000562c <balloc+0x18>
    800057a0:	00007517          	auipc	a0,0x7
    800057a4:	eb050513          	addi	a0,a0,-336 # 8000c650 <etext+0x650>
    800057a8:	ffffb097          	auipc	ra,0xffffb
    800057ac:	28c080e7          	jalr	652(ra) # 80000a34 <printf>
    800057b0:	4781                	li	a5,0
    800057b2:	853e                	mv	a0,a5
    800057b4:	70e2                	ld	ra,56(sp)
    800057b6:	7442                	ld	s0,48(sp)
    800057b8:	6121                	addi	sp,sp,64
    800057ba:	8082                	ret

00000000800057bc <bfree>:
    800057bc:	7179                	addi	sp,sp,-48
    800057be:	f406                	sd	ra,40(sp)
    800057c0:	f022                	sd	s0,32(sp)
    800057c2:	1800                	addi	s0,sp,48
    800057c4:	87aa                	mv	a5,a0
    800057c6:	872e                	mv	a4,a1
    800057c8:	fcf42e23          	sw	a5,-36(s0)
    800057cc:	87ba                	mv	a5,a4
    800057ce:	fcf42c23          	sw	a5,-40(s0)
    800057d2:	fdc42683          	lw	a3,-36(s0)
    800057d6:	fd842783          	lw	a5,-40(s0)
    800057da:	00d7d79b          	srliw	a5,a5,0xd
    800057de:	0007871b          	sext.w	a4,a5
    800057e2:	0001f797          	auipc	a5,0x1f
    800057e6:	28678793          	addi	a5,a5,646 # 80024a68 <sb>
    800057ea:	4fdc                	lw	a5,28(a5)
    800057ec:	9fb9                	addw	a5,a5,a4
    800057ee:	2781                	sext.w	a5,a5
    800057f0:	85be                	mv	a1,a5
    800057f2:	8536                	mv	a0,a3
    800057f4:	00000097          	auipc	ra,0x0
    800057f8:	ad6080e7          	jalr	-1322(ra) # 800052ca <bread>
    800057fc:	fea43423          	sd	a0,-24(s0)
    80005800:	fd842703          	lw	a4,-40(s0)
    80005804:	6789                	lui	a5,0x2
    80005806:	17fd                	addi	a5,a5,-1 # 1fff <_entry-0x7fffe001>
    80005808:	8ff9                	and	a5,a5,a4
    8000580a:	fef42223          	sw	a5,-28(s0)
    8000580e:	fe442783          	lw	a5,-28(s0)
    80005812:	8b9d                	andi	a5,a5,7
    80005814:	2781                	sext.w	a5,a5
    80005816:	4705                	li	a4,1
    80005818:	00f717bb          	sllw	a5,a4,a5
    8000581c:	fef42023          	sw	a5,-32(s0)
    80005820:	fe442783          	lw	a5,-28(s0)
    80005824:	41f7d71b          	sraiw	a4,a5,0x1f
    80005828:	01d7571b          	srliw	a4,a4,0x1d
    8000582c:	9fb9                	addw	a5,a5,a4
    8000582e:	4037d79b          	sraiw	a5,a5,0x3
    80005832:	2781                	sext.w	a5,a5
    80005834:	fe843703          	ld	a4,-24(s0)
    80005838:	97ba                	add	a5,a5,a4
    8000583a:	0587c783          	lbu	a5,88(a5)
    8000583e:	2781                	sext.w	a5,a5
    80005840:	fe042703          	lw	a4,-32(s0)
    80005844:	8ff9                	and	a5,a5,a4
    80005846:	2781                	sext.w	a5,a5
    80005848:	eb89                	bnez	a5,8000585a <bfree+0x9e>
    8000584a:	00007517          	auipc	a0,0x7
    8000584e:	e1e50513          	addi	a0,a0,-482 # 8000c668 <etext+0x668>
    80005852:	ffffb097          	auipc	ra,0xffffb
    80005856:	438080e7          	jalr	1080(ra) # 80000c8a <panic>
    8000585a:	fe442783          	lw	a5,-28(s0)
    8000585e:	41f7d71b          	sraiw	a4,a5,0x1f
    80005862:	01d7571b          	srliw	a4,a4,0x1d
    80005866:	9fb9                	addw	a5,a5,a4
    80005868:	4037d79b          	sraiw	a5,a5,0x3
    8000586c:	2781                	sext.w	a5,a5
    8000586e:	fe843703          	ld	a4,-24(s0)
    80005872:	973e                	add	a4,a4,a5
    80005874:	05874703          	lbu	a4,88(a4)
    80005878:	0187169b          	slliw	a3,a4,0x18
    8000587c:	4186d69b          	sraiw	a3,a3,0x18
    80005880:	fe042703          	lw	a4,-32(s0)
    80005884:	0187171b          	slliw	a4,a4,0x18
    80005888:	4187571b          	sraiw	a4,a4,0x18
    8000588c:	fff74713          	not	a4,a4
    80005890:	0187171b          	slliw	a4,a4,0x18
    80005894:	4187571b          	sraiw	a4,a4,0x18
    80005898:	8f75                	and	a4,a4,a3
    8000589a:	0187171b          	slliw	a4,a4,0x18
    8000589e:	4187571b          	sraiw	a4,a4,0x18
    800058a2:	0ff77713          	zext.b	a4,a4
    800058a6:	fe843683          	ld	a3,-24(s0)
    800058aa:	97b6                	add	a5,a5,a3
    800058ac:	04e78c23          	sb	a4,88(a5)
    800058b0:	fe843503          	ld	a0,-24(s0)
    800058b4:	00001097          	auipc	ra,0x1
    800058b8:	75c080e7          	jalr	1884(ra) # 80007010 <log_write>
    800058bc:	fe843503          	ld	a0,-24(s0)
    800058c0:	00000097          	auipc	ra,0x0
    800058c4:	aac080e7          	jalr	-1364(ra) # 8000536c <brelse>
    800058c8:	0001                	nop
    800058ca:	70a2                	ld	ra,40(sp)
    800058cc:	7402                	ld	s0,32(sp)
    800058ce:	6145                	addi	sp,sp,48
    800058d0:	8082                	ret

00000000800058d2 <iinit>:
    800058d2:	1101                	addi	sp,sp,-32
    800058d4:	ec06                	sd	ra,24(sp)
    800058d6:	e822                	sd	s0,16(sp)
    800058d8:	1000                	addi	s0,sp,32
    800058da:	fe042623          	sw	zero,-20(s0)
    800058de:	00007597          	auipc	a1,0x7
    800058e2:	da258593          	addi	a1,a1,-606 # 8000c680 <etext+0x680>
    800058e6:	0001f517          	auipc	a0,0x1f
    800058ea:	1a250513          	addi	a0,a0,418 # 80024a88 <itable>
    800058ee:	ffffc097          	auipc	ra,0xffffc
    800058f2:	95a080e7          	jalr	-1702(ra) # 80001248 <initlock>
    800058f6:	fe042623          	sw	zero,-20(s0)
    800058fa:	a82d                	j	80005934 <iinit+0x62>
    800058fc:	fec42703          	lw	a4,-20(s0)
    80005900:	87ba                	mv	a5,a4
    80005902:	0792                	slli	a5,a5,0x4
    80005904:	97ba                	add	a5,a5,a4
    80005906:	078e                	slli	a5,a5,0x3
    80005908:	02078713          	addi	a4,a5,32
    8000590c:	0001f797          	auipc	a5,0x1f
    80005910:	17c78793          	addi	a5,a5,380 # 80024a88 <itable>
    80005914:	97ba                	add	a5,a5,a4
    80005916:	07a1                	addi	a5,a5,8
    80005918:	00007597          	auipc	a1,0x7
    8000591c:	d7058593          	addi	a1,a1,-656 # 8000c688 <etext+0x688>
    80005920:	853e                	mv	a0,a5
    80005922:	00002097          	auipc	ra,0x2
    80005926:	822080e7          	jalr	-2014(ra) # 80007144 <initsleeplock>
    8000592a:	fec42783          	lw	a5,-20(s0)
    8000592e:	2785                	addiw	a5,a5,1
    80005930:	fef42623          	sw	a5,-20(s0)
    80005934:	fec42783          	lw	a5,-20(s0)
    80005938:	0007871b          	sext.w	a4,a5
    8000593c:	03100793          	li	a5,49
    80005940:	fae7dee3          	bge	a5,a4,800058fc <iinit+0x2a>
    80005944:	0001                	nop
    80005946:	0001                	nop
    80005948:	60e2                	ld	ra,24(sp)
    8000594a:	6442                	ld	s0,16(sp)
    8000594c:	6105                	addi	sp,sp,32
    8000594e:	8082                	ret

0000000080005950 <ialloc>:
    80005950:	7139                	addi	sp,sp,-64
    80005952:	fc06                	sd	ra,56(sp)
    80005954:	f822                	sd	s0,48(sp)
    80005956:	0080                	addi	s0,sp,64
    80005958:	87aa                	mv	a5,a0
    8000595a:	872e                	mv	a4,a1
    8000595c:	fcf42623          	sw	a5,-52(s0)
    80005960:	87ba                	mv	a5,a4
    80005962:	fcf41523          	sh	a5,-54(s0)
    80005966:	4785                	li	a5,1
    80005968:	fef42623          	sw	a5,-20(s0)
    8000596c:	a855                	j	80005a20 <ialloc+0xd0>
    8000596e:	fec42783          	lw	a5,-20(s0)
    80005972:	8391                	srli	a5,a5,0x4
    80005974:	0007871b          	sext.w	a4,a5
    80005978:	0001f797          	auipc	a5,0x1f
    8000597c:	0f078793          	addi	a5,a5,240 # 80024a68 <sb>
    80005980:	4f9c                	lw	a5,24(a5)
    80005982:	9fb9                	addw	a5,a5,a4
    80005984:	0007871b          	sext.w	a4,a5
    80005988:	fcc42783          	lw	a5,-52(s0)
    8000598c:	85ba                	mv	a1,a4
    8000598e:	853e                	mv	a0,a5
    80005990:	00000097          	auipc	ra,0x0
    80005994:	93a080e7          	jalr	-1734(ra) # 800052ca <bread>
    80005998:	fea43023          	sd	a0,-32(s0)
    8000599c:	fe043783          	ld	a5,-32(s0)
    800059a0:	05878713          	addi	a4,a5,88
    800059a4:	fec42783          	lw	a5,-20(s0)
    800059a8:	8bbd                	andi	a5,a5,15
    800059aa:	079a                	slli	a5,a5,0x6
    800059ac:	97ba                	add	a5,a5,a4
    800059ae:	fcf43c23          	sd	a5,-40(s0)
    800059b2:	fd843783          	ld	a5,-40(s0)
    800059b6:	00079783          	lh	a5,0(a5)
    800059ba:	eba1                	bnez	a5,80005a0a <ialloc+0xba>
    800059bc:	04000613          	li	a2,64
    800059c0:	4581                	li	a1,0
    800059c2:	fd843503          	ld	a0,-40(s0)
    800059c6:	ffffc097          	auipc	ra,0xffffc
    800059ca:	a86080e7          	jalr	-1402(ra) # 8000144c <memset>
    800059ce:	fd843783          	ld	a5,-40(s0)
    800059d2:	fca45703          	lhu	a4,-54(s0)
    800059d6:	00e79023          	sh	a4,0(a5)
    800059da:	fe043503          	ld	a0,-32(s0)
    800059de:	00001097          	auipc	ra,0x1
    800059e2:	632080e7          	jalr	1586(ra) # 80007010 <log_write>
    800059e6:	fe043503          	ld	a0,-32(s0)
    800059ea:	00000097          	auipc	ra,0x0
    800059ee:	982080e7          	jalr	-1662(ra) # 8000536c <brelse>
    800059f2:	fec42703          	lw	a4,-20(s0)
    800059f6:	fcc42783          	lw	a5,-52(s0)
    800059fa:	85ba                	mv	a1,a4
    800059fc:	853e                	mv	a0,a5
    800059fe:	00000097          	auipc	ra,0x0
    80005a02:	138080e7          	jalr	312(ra) # 80005b36 <iget>
    80005a06:	87aa                	mv	a5,a0
    80005a08:	a835                	j	80005a44 <ialloc+0xf4>
    80005a0a:	fe043503          	ld	a0,-32(s0)
    80005a0e:	00000097          	auipc	ra,0x0
    80005a12:	95e080e7          	jalr	-1698(ra) # 8000536c <brelse>
    80005a16:	fec42783          	lw	a5,-20(s0)
    80005a1a:	2785                	addiw	a5,a5,1
    80005a1c:	fef42623          	sw	a5,-20(s0)
    80005a20:	0001f797          	auipc	a5,0x1f
    80005a24:	04878793          	addi	a5,a5,72 # 80024a68 <sb>
    80005a28:	47d8                	lw	a4,12(a5)
    80005a2a:	fec42783          	lw	a5,-20(s0)
    80005a2e:	f4e7e0e3          	bltu	a5,a4,8000596e <ialloc+0x1e>
    80005a32:	00007517          	auipc	a0,0x7
    80005a36:	c5e50513          	addi	a0,a0,-930 # 8000c690 <etext+0x690>
    80005a3a:	ffffb097          	auipc	ra,0xffffb
    80005a3e:	ffa080e7          	jalr	-6(ra) # 80000a34 <printf>
    80005a42:	4781                	li	a5,0
    80005a44:	853e                	mv	a0,a5
    80005a46:	70e2                	ld	ra,56(sp)
    80005a48:	7442                	ld	s0,48(sp)
    80005a4a:	6121                	addi	sp,sp,64
    80005a4c:	8082                	ret

0000000080005a4e <iupdate>:
    80005a4e:	7179                	addi	sp,sp,-48
    80005a50:	f406                	sd	ra,40(sp)
    80005a52:	f022                	sd	s0,32(sp)
    80005a54:	1800                	addi	s0,sp,48
    80005a56:	fca43c23          	sd	a0,-40(s0)
    80005a5a:	fd843783          	ld	a5,-40(s0)
    80005a5e:	4394                	lw	a3,0(a5)
    80005a60:	fd843783          	ld	a5,-40(s0)
    80005a64:	43dc                	lw	a5,4(a5)
    80005a66:	0047d79b          	srliw	a5,a5,0x4
    80005a6a:	0007871b          	sext.w	a4,a5
    80005a6e:	0001f797          	auipc	a5,0x1f
    80005a72:	ffa78793          	addi	a5,a5,-6 # 80024a68 <sb>
    80005a76:	4f9c                	lw	a5,24(a5)
    80005a78:	9fb9                	addw	a5,a5,a4
    80005a7a:	2781                	sext.w	a5,a5
    80005a7c:	85be                	mv	a1,a5
    80005a7e:	8536                	mv	a0,a3
    80005a80:	00000097          	auipc	ra,0x0
    80005a84:	84a080e7          	jalr	-1974(ra) # 800052ca <bread>
    80005a88:	fea43423          	sd	a0,-24(s0)
    80005a8c:	fe843783          	ld	a5,-24(s0)
    80005a90:	05878713          	addi	a4,a5,88
    80005a94:	fd843783          	ld	a5,-40(s0)
    80005a98:	43dc                	lw	a5,4(a5)
    80005a9a:	1782                	slli	a5,a5,0x20
    80005a9c:	9381                	srli	a5,a5,0x20
    80005a9e:	8bbd                	andi	a5,a5,15
    80005aa0:	079a                	slli	a5,a5,0x6
    80005aa2:	97ba                	add	a5,a5,a4
    80005aa4:	fef43023          	sd	a5,-32(s0)
    80005aa8:	fd843783          	ld	a5,-40(s0)
    80005aac:	04479703          	lh	a4,68(a5)
    80005ab0:	fe043783          	ld	a5,-32(s0)
    80005ab4:	00e79023          	sh	a4,0(a5)
    80005ab8:	fd843783          	ld	a5,-40(s0)
    80005abc:	04679703          	lh	a4,70(a5)
    80005ac0:	fe043783          	ld	a5,-32(s0)
    80005ac4:	00e79123          	sh	a4,2(a5)
    80005ac8:	fd843783          	ld	a5,-40(s0)
    80005acc:	04879703          	lh	a4,72(a5)
    80005ad0:	fe043783          	ld	a5,-32(s0)
    80005ad4:	00e79223          	sh	a4,4(a5)
    80005ad8:	fd843783          	ld	a5,-40(s0)
    80005adc:	04a79703          	lh	a4,74(a5)
    80005ae0:	fe043783          	ld	a5,-32(s0)
    80005ae4:	00e79323          	sh	a4,6(a5)
    80005ae8:	fd843783          	ld	a5,-40(s0)
    80005aec:	47f8                	lw	a4,76(a5)
    80005aee:	fe043783          	ld	a5,-32(s0)
    80005af2:	c798                	sw	a4,8(a5)
    80005af4:	fe043783          	ld	a5,-32(s0)
    80005af8:	00c78713          	addi	a4,a5,12
    80005afc:	fd843783          	ld	a5,-40(s0)
    80005b00:	05078793          	addi	a5,a5,80
    80005b04:	03400613          	li	a2,52
    80005b08:	85be                	mv	a1,a5
    80005b0a:	853a                	mv	a0,a4
    80005b0c:	ffffc097          	auipc	ra,0xffffc
    80005b10:	a24080e7          	jalr	-1500(ra) # 80001530 <memmove>
    80005b14:	fe843503          	ld	a0,-24(s0)
    80005b18:	00001097          	auipc	ra,0x1
    80005b1c:	4f8080e7          	jalr	1272(ra) # 80007010 <log_write>
    80005b20:	fe843503          	ld	a0,-24(s0)
    80005b24:	00000097          	auipc	ra,0x0
    80005b28:	848080e7          	jalr	-1976(ra) # 8000536c <brelse>
    80005b2c:	0001                	nop
    80005b2e:	70a2                	ld	ra,40(sp)
    80005b30:	7402                	ld	s0,32(sp)
    80005b32:	6145                	addi	sp,sp,48
    80005b34:	8082                	ret

0000000080005b36 <iget>:
    80005b36:	7179                	addi	sp,sp,-48
    80005b38:	f406                	sd	ra,40(sp)
    80005b3a:	f022                	sd	s0,32(sp)
    80005b3c:	1800                	addi	s0,sp,48
    80005b3e:	87aa                	mv	a5,a0
    80005b40:	872e                	mv	a4,a1
    80005b42:	fcf42e23          	sw	a5,-36(s0)
    80005b46:	87ba                	mv	a5,a4
    80005b48:	fcf42c23          	sw	a5,-40(s0)
    80005b4c:	0001f517          	auipc	a0,0x1f
    80005b50:	f3c50513          	addi	a0,a0,-196 # 80024a88 <itable>
    80005b54:	ffffb097          	auipc	ra,0xffffb
    80005b58:	724080e7          	jalr	1828(ra) # 80001278 <acquire>
    80005b5c:	fe043023          	sd	zero,-32(s0)
    80005b60:	0001f797          	auipc	a5,0x1f
    80005b64:	f4078793          	addi	a5,a5,-192 # 80024aa0 <itable+0x18>
    80005b68:	fef43423          	sd	a5,-24(s0)
    80005b6c:	a89d                	j	80005be2 <iget+0xac>
    80005b6e:	fe843783          	ld	a5,-24(s0)
    80005b72:	479c                	lw	a5,8(a5)
    80005b74:	04f05663          	blez	a5,80005bc0 <iget+0x8a>
    80005b78:	fe843783          	ld	a5,-24(s0)
    80005b7c:	4398                	lw	a4,0(a5)
    80005b7e:	fdc42783          	lw	a5,-36(s0)
    80005b82:	2781                	sext.w	a5,a5
    80005b84:	02e79e63          	bne	a5,a4,80005bc0 <iget+0x8a>
    80005b88:	fe843783          	ld	a5,-24(s0)
    80005b8c:	43d8                	lw	a4,4(a5)
    80005b8e:	fd842783          	lw	a5,-40(s0)
    80005b92:	2781                	sext.w	a5,a5
    80005b94:	02e79663          	bne	a5,a4,80005bc0 <iget+0x8a>
    80005b98:	fe843783          	ld	a5,-24(s0)
    80005b9c:	479c                	lw	a5,8(a5)
    80005b9e:	2785                	addiw	a5,a5,1
    80005ba0:	0007871b          	sext.w	a4,a5
    80005ba4:	fe843783          	ld	a5,-24(s0)
    80005ba8:	c798                	sw	a4,8(a5)
    80005baa:	0001f517          	auipc	a0,0x1f
    80005bae:	ede50513          	addi	a0,a0,-290 # 80024a88 <itable>
    80005bb2:	ffffb097          	auipc	ra,0xffffb
    80005bb6:	72a080e7          	jalr	1834(ra) # 800012dc <release>
    80005bba:	fe843783          	ld	a5,-24(s0)
    80005bbe:	a069                	j	80005c48 <iget+0x112>
    80005bc0:	fe043783          	ld	a5,-32(s0)
    80005bc4:	eb89                	bnez	a5,80005bd6 <iget+0xa0>
    80005bc6:	fe843783          	ld	a5,-24(s0)
    80005bca:	479c                	lw	a5,8(a5)
    80005bcc:	e789                	bnez	a5,80005bd6 <iget+0xa0>
    80005bce:	fe843783          	ld	a5,-24(s0)
    80005bd2:	fef43023          	sd	a5,-32(s0)
    80005bd6:	fe843783          	ld	a5,-24(s0)
    80005bda:	08878793          	addi	a5,a5,136
    80005bde:	fef43423          	sd	a5,-24(s0)
    80005be2:	fe843703          	ld	a4,-24(s0)
    80005be6:	00021797          	auipc	a5,0x21
    80005bea:	94a78793          	addi	a5,a5,-1718 # 80026530 <log>
    80005bee:	f8f760e3          	bltu	a4,a5,80005b6e <iget+0x38>
    80005bf2:	fe043783          	ld	a5,-32(s0)
    80005bf6:	eb89                	bnez	a5,80005c08 <iget+0xd2>
    80005bf8:	00007517          	auipc	a0,0x7
    80005bfc:	ab050513          	addi	a0,a0,-1360 # 8000c6a8 <etext+0x6a8>
    80005c00:	ffffb097          	auipc	ra,0xffffb
    80005c04:	08a080e7          	jalr	138(ra) # 80000c8a <panic>
    80005c08:	fe043783          	ld	a5,-32(s0)
    80005c0c:	fef43423          	sd	a5,-24(s0)
    80005c10:	fe843783          	ld	a5,-24(s0)
    80005c14:	fdc42703          	lw	a4,-36(s0)
    80005c18:	c398                	sw	a4,0(a5)
    80005c1a:	fe843783          	ld	a5,-24(s0)
    80005c1e:	fd842703          	lw	a4,-40(s0)
    80005c22:	c3d8                	sw	a4,4(a5)
    80005c24:	fe843783          	ld	a5,-24(s0)
    80005c28:	4705                	li	a4,1
    80005c2a:	c798                	sw	a4,8(a5)
    80005c2c:	fe843783          	ld	a5,-24(s0)
    80005c30:	0407a023          	sw	zero,64(a5)
    80005c34:	0001f517          	auipc	a0,0x1f
    80005c38:	e5450513          	addi	a0,a0,-428 # 80024a88 <itable>
    80005c3c:	ffffb097          	auipc	ra,0xffffb
    80005c40:	6a0080e7          	jalr	1696(ra) # 800012dc <release>
    80005c44:	fe843783          	ld	a5,-24(s0)
    80005c48:	853e                	mv	a0,a5
    80005c4a:	70a2                	ld	ra,40(sp)
    80005c4c:	7402                	ld	s0,32(sp)
    80005c4e:	6145                	addi	sp,sp,48
    80005c50:	8082                	ret

0000000080005c52 <idup>:
    80005c52:	1101                	addi	sp,sp,-32
    80005c54:	ec06                	sd	ra,24(sp)
    80005c56:	e822                	sd	s0,16(sp)
    80005c58:	1000                	addi	s0,sp,32
    80005c5a:	fea43423          	sd	a0,-24(s0)
    80005c5e:	0001f517          	auipc	a0,0x1f
    80005c62:	e2a50513          	addi	a0,a0,-470 # 80024a88 <itable>
    80005c66:	ffffb097          	auipc	ra,0xffffb
    80005c6a:	612080e7          	jalr	1554(ra) # 80001278 <acquire>
    80005c6e:	fe843783          	ld	a5,-24(s0)
    80005c72:	479c                	lw	a5,8(a5)
    80005c74:	2785                	addiw	a5,a5,1
    80005c76:	0007871b          	sext.w	a4,a5
    80005c7a:	fe843783          	ld	a5,-24(s0)
    80005c7e:	c798                	sw	a4,8(a5)
    80005c80:	0001f517          	auipc	a0,0x1f
    80005c84:	e0850513          	addi	a0,a0,-504 # 80024a88 <itable>
    80005c88:	ffffb097          	auipc	ra,0xffffb
    80005c8c:	654080e7          	jalr	1620(ra) # 800012dc <release>
    80005c90:	fe843783          	ld	a5,-24(s0)
    80005c94:	853e                	mv	a0,a5
    80005c96:	60e2                	ld	ra,24(sp)
    80005c98:	6442                	ld	s0,16(sp)
    80005c9a:	6105                	addi	sp,sp,32
    80005c9c:	8082                	ret

0000000080005c9e <ilock>:
    80005c9e:	7179                	addi	sp,sp,-48
    80005ca0:	f406                	sd	ra,40(sp)
    80005ca2:	f022                	sd	s0,32(sp)
    80005ca4:	1800                	addi	s0,sp,48
    80005ca6:	fca43c23          	sd	a0,-40(s0)
    80005caa:	fd843783          	ld	a5,-40(s0)
    80005cae:	c791                	beqz	a5,80005cba <ilock+0x1c>
    80005cb0:	fd843783          	ld	a5,-40(s0)
    80005cb4:	479c                	lw	a5,8(a5)
    80005cb6:	00f04a63          	bgtz	a5,80005cca <ilock+0x2c>
    80005cba:	00007517          	auipc	a0,0x7
    80005cbe:	9fe50513          	addi	a0,a0,-1538 # 8000c6b8 <etext+0x6b8>
    80005cc2:	ffffb097          	auipc	ra,0xffffb
    80005cc6:	fc8080e7          	jalr	-56(ra) # 80000c8a <panic>
    80005cca:	fd843783          	ld	a5,-40(s0)
    80005cce:	07c1                	addi	a5,a5,16
    80005cd0:	853e                	mv	a0,a5
    80005cd2:	00001097          	auipc	ra,0x1
    80005cd6:	4be080e7          	jalr	1214(ra) # 80007190 <acquiresleep>
    80005cda:	fd843783          	ld	a5,-40(s0)
    80005cde:	43bc                	lw	a5,64(a5)
    80005ce0:	e7e5                	bnez	a5,80005dc8 <ilock+0x12a>
    80005ce2:	fd843783          	ld	a5,-40(s0)
    80005ce6:	4394                	lw	a3,0(a5)
    80005ce8:	fd843783          	ld	a5,-40(s0)
    80005cec:	43dc                	lw	a5,4(a5)
    80005cee:	0047d79b          	srliw	a5,a5,0x4
    80005cf2:	0007871b          	sext.w	a4,a5
    80005cf6:	0001f797          	auipc	a5,0x1f
    80005cfa:	d7278793          	addi	a5,a5,-654 # 80024a68 <sb>
    80005cfe:	4f9c                	lw	a5,24(a5)
    80005d00:	9fb9                	addw	a5,a5,a4
    80005d02:	2781                	sext.w	a5,a5
    80005d04:	85be                	mv	a1,a5
    80005d06:	8536                	mv	a0,a3
    80005d08:	fffff097          	auipc	ra,0xfffff
    80005d0c:	5c2080e7          	jalr	1474(ra) # 800052ca <bread>
    80005d10:	fea43423          	sd	a0,-24(s0)
    80005d14:	fe843783          	ld	a5,-24(s0)
    80005d18:	05878713          	addi	a4,a5,88
    80005d1c:	fd843783          	ld	a5,-40(s0)
    80005d20:	43dc                	lw	a5,4(a5)
    80005d22:	1782                	slli	a5,a5,0x20
    80005d24:	9381                	srli	a5,a5,0x20
    80005d26:	8bbd                	andi	a5,a5,15
    80005d28:	079a                	slli	a5,a5,0x6
    80005d2a:	97ba                	add	a5,a5,a4
    80005d2c:	fef43023          	sd	a5,-32(s0)
    80005d30:	fe043783          	ld	a5,-32(s0)
    80005d34:	00079703          	lh	a4,0(a5)
    80005d38:	fd843783          	ld	a5,-40(s0)
    80005d3c:	04e79223          	sh	a4,68(a5)
    80005d40:	fe043783          	ld	a5,-32(s0)
    80005d44:	00279703          	lh	a4,2(a5)
    80005d48:	fd843783          	ld	a5,-40(s0)
    80005d4c:	04e79323          	sh	a4,70(a5)
    80005d50:	fe043783          	ld	a5,-32(s0)
    80005d54:	00479703          	lh	a4,4(a5)
    80005d58:	fd843783          	ld	a5,-40(s0)
    80005d5c:	04e79423          	sh	a4,72(a5)
    80005d60:	fe043783          	ld	a5,-32(s0)
    80005d64:	00679703          	lh	a4,6(a5)
    80005d68:	fd843783          	ld	a5,-40(s0)
    80005d6c:	04e79523          	sh	a4,74(a5)
    80005d70:	fe043783          	ld	a5,-32(s0)
    80005d74:	4798                	lw	a4,8(a5)
    80005d76:	fd843783          	ld	a5,-40(s0)
    80005d7a:	c7f8                	sw	a4,76(a5)
    80005d7c:	fd843783          	ld	a5,-40(s0)
    80005d80:	05078713          	addi	a4,a5,80
    80005d84:	fe043783          	ld	a5,-32(s0)
    80005d88:	07b1                	addi	a5,a5,12
    80005d8a:	03400613          	li	a2,52
    80005d8e:	85be                	mv	a1,a5
    80005d90:	853a                	mv	a0,a4
    80005d92:	ffffb097          	auipc	ra,0xffffb
    80005d96:	79e080e7          	jalr	1950(ra) # 80001530 <memmove>
    80005d9a:	fe843503          	ld	a0,-24(s0)
    80005d9e:	fffff097          	auipc	ra,0xfffff
    80005da2:	5ce080e7          	jalr	1486(ra) # 8000536c <brelse>
    80005da6:	fd843783          	ld	a5,-40(s0)
    80005daa:	4705                	li	a4,1
    80005dac:	c3b8                	sw	a4,64(a5)
    80005dae:	fd843783          	ld	a5,-40(s0)
    80005db2:	04479783          	lh	a5,68(a5)
    80005db6:	eb89                	bnez	a5,80005dc8 <ilock+0x12a>
    80005db8:	00007517          	auipc	a0,0x7
    80005dbc:	90850513          	addi	a0,a0,-1784 # 8000c6c0 <etext+0x6c0>
    80005dc0:	ffffb097          	auipc	ra,0xffffb
    80005dc4:	eca080e7          	jalr	-310(ra) # 80000c8a <panic>
    80005dc8:	0001                	nop
    80005dca:	70a2                	ld	ra,40(sp)
    80005dcc:	7402                	ld	s0,32(sp)
    80005dce:	6145                	addi	sp,sp,48
    80005dd0:	8082                	ret

0000000080005dd2 <iunlock>:
    80005dd2:	1101                	addi	sp,sp,-32
    80005dd4:	ec06                	sd	ra,24(sp)
    80005dd6:	e822                	sd	s0,16(sp)
    80005dd8:	1000                	addi	s0,sp,32
    80005dda:	fea43423          	sd	a0,-24(s0)
    80005dde:	fe843783          	ld	a5,-24(s0)
    80005de2:	c385                	beqz	a5,80005e02 <iunlock+0x30>
    80005de4:	fe843783          	ld	a5,-24(s0)
    80005de8:	07c1                	addi	a5,a5,16
    80005dea:	853e                	mv	a0,a5
    80005dec:	00001097          	auipc	ra,0x1
    80005df0:	464080e7          	jalr	1124(ra) # 80007250 <holdingsleep>
    80005df4:	87aa                	mv	a5,a0
    80005df6:	c791                	beqz	a5,80005e02 <iunlock+0x30>
    80005df8:	fe843783          	ld	a5,-24(s0)
    80005dfc:	479c                	lw	a5,8(a5)
    80005dfe:	00f04a63          	bgtz	a5,80005e12 <iunlock+0x40>
    80005e02:	00007517          	auipc	a0,0x7
    80005e06:	8ce50513          	addi	a0,a0,-1842 # 8000c6d0 <etext+0x6d0>
    80005e0a:	ffffb097          	auipc	ra,0xffffb
    80005e0e:	e80080e7          	jalr	-384(ra) # 80000c8a <panic>
    80005e12:	fe843783          	ld	a5,-24(s0)
    80005e16:	07c1                	addi	a5,a5,16
    80005e18:	853e                	mv	a0,a5
    80005e1a:	00001097          	auipc	ra,0x1
    80005e1e:	3e4080e7          	jalr	996(ra) # 800071fe <releasesleep>
    80005e22:	0001                	nop
    80005e24:	60e2                	ld	ra,24(sp)
    80005e26:	6442                	ld	s0,16(sp)
    80005e28:	6105                	addi	sp,sp,32
    80005e2a:	8082                	ret

0000000080005e2c <iput>:
    80005e2c:	1101                	addi	sp,sp,-32
    80005e2e:	ec06                	sd	ra,24(sp)
    80005e30:	e822                	sd	s0,16(sp)
    80005e32:	1000                	addi	s0,sp,32
    80005e34:	fea43423          	sd	a0,-24(s0)
    80005e38:	0001f517          	auipc	a0,0x1f
    80005e3c:	c5050513          	addi	a0,a0,-944 # 80024a88 <itable>
    80005e40:	ffffb097          	auipc	ra,0xffffb
    80005e44:	438080e7          	jalr	1080(ra) # 80001278 <acquire>
    80005e48:	fe843783          	ld	a5,-24(s0)
    80005e4c:	479c                	lw	a5,8(a5)
    80005e4e:	873e                	mv	a4,a5
    80005e50:	4785                	li	a5,1
    80005e52:	06f71f63          	bne	a4,a5,80005ed0 <iput+0xa4>
    80005e56:	fe843783          	ld	a5,-24(s0)
    80005e5a:	43bc                	lw	a5,64(a5)
    80005e5c:	cbb5                	beqz	a5,80005ed0 <iput+0xa4>
    80005e5e:	fe843783          	ld	a5,-24(s0)
    80005e62:	04a79783          	lh	a5,74(a5)
    80005e66:	e7ad                	bnez	a5,80005ed0 <iput+0xa4>
    80005e68:	fe843783          	ld	a5,-24(s0)
    80005e6c:	07c1                	addi	a5,a5,16
    80005e6e:	853e                	mv	a0,a5
    80005e70:	00001097          	auipc	ra,0x1
    80005e74:	320080e7          	jalr	800(ra) # 80007190 <acquiresleep>
    80005e78:	0001f517          	auipc	a0,0x1f
    80005e7c:	c1050513          	addi	a0,a0,-1008 # 80024a88 <itable>
    80005e80:	ffffb097          	auipc	ra,0xffffb
    80005e84:	45c080e7          	jalr	1116(ra) # 800012dc <release>
    80005e88:	fe843503          	ld	a0,-24(s0)
    80005e8c:	00000097          	auipc	ra,0x0
    80005e90:	21a080e7          	jalr	538(ra) # 800060a6 <itrunc>
    80005e94:	fe843783          	ld	a5,-24(s0)
    80005e98:	04079223          	sh	zero,68(a5)
    80005e9c:	fe843503          	ld	a0,-24(s0)
    80005ea0:	00000097          	auipc	ra,0x0
    80005ea4:	bae080e7          	jalr	-1106(ra) # 80005a4e <iupdate>
    80005ea8:	fe843783          	ld	a5,-24(s0)
    80005eac:	0407a023          	sw	zero,64(a5)
    80005eb0:	fe843783          	ld	a5,-24(s0)
    80005eb4:	07c1                	addi	a5,a5,16
    80005eb6:	853e                	mv	a0,a5
    80005eb8:	00001097          	auipc	ra,0x1
    80005ebc:	346080e7          	jalr	838(ra) # 800071fe <releasesleep>
    80005ec0:	0001f517          	auipc	a0,0x1f
    80005ec4:	bc850513          	addi	a0,a0,-1080 # 80024a88 <itable>
    80005ec8:	ffffb097          	auipc	ra,0xffffb
    80005ecc:	3b0080e7          	jalr	944(ra) # 80001278 <acquire>
    80005ed0:	fe843783          	ld	a5,-24(s0)
    80005ed4:	479c                	lw	a5,8(a5)
    80005ed6:	37fd                	addiw	a5,a5,-1
    80005ed8:	0007871b          	sext.w	a4,a5
    80005edc:	fe843783          	ld	a5,-24(s0)
    80005ee0:	c798                	sw	a4,8(a5)
    80005ee2:	0001f517          	auipc	a0,0x1f
    80005ee6:	ba650513          	addi	a0,a0,-1114 # 80024a88 <itable>
    80005eea:	ffffb097          	auipc	ra,0xffffb
    80005eee:	3f2080e7          	jalr	1010(ra) # 800012dc <release>
    80005ef2:	0001                	nop
    80005ef4:	60e2                	ld	ra,24(sp)
    80005ef6:	6442                	ld	s0,16(sp)
    80005ef8:	6105                	addi	sp,sp,32
    80005efa:	8082                	ret

0000000080005efc <iunlockput>:
    80005efc:	1101                	addi	sp,sp,-32
    80005efe:	ec06                	sd	ra,24(sp)
    80005f00:	e822                	sd	s0,16(sp)
    80005f02:	1000                	addi	s0,sp,32
    80005f04:	fea43423          	sd	a0,-24(s0)
    80005f08:	fe843503          	ld	a0,-24(s0)
    80005f0c:	00000097          	auipc	ra,0x0
    80005f10:	ec6080e7          	jalr	-314(ra) # 80005dd2 <iunlock>
    80005f14:	fe843503          	ld	a0,-24(s0)
    80005f18:	00000097          	auipc	ra,0x0
    80005f1c:	f14080e7          	jalr	-236(ra) # 80005e2c <iput>
    80005f20:	0001                	nop
    80005f22:	60e2                	ld	ra,24(sp)
    80005f24:	6442                	ld	s0,16(sp)
    80005f26:	6105                	addi	sp,sp,32
    80005f28:	8082                	ret

0000000080005f2a <bmap>:
    80005f2a:	7139                	addi	sp,sp,-64
    80005f2c:	fc06                	sd	ra,56(sp)
    80005f2e:	f822                	sd	s0,48(sp)
    80005f30:	0080                	addi	s0,sp,64
    80005f32:	fca43423          	sd	a0,-56(s0)
    80005f36:	87ae                	mv	a5,a1
    80005f38:	fcf42223          	sw	a5,-60(s0)
    80005f3c:	fc442783          	lw	a5,-60(s0)
    80005f40:	0007871b          	sext.w	a4,a5
    80005f44:	47ad                	li	a5,11
    80005f46:	04e7ee63          	bltu	a5,a4,80005fa2 <bmap+0x78>
    80005f4a:	fc843703          	ld	a4,-56(s0)
    80005f4e:	fc446783          	lwu	a5,-60(s0)
    80005f52:	07d1                	addi	a5,a5,20
    80005f54:	078a                	slli	a5,a5,0x2
    80005f56:	97ba                	add	a5,a5,a4
    80005f58:	439c                	lw	a5,0(a5)
    80005f5a:	fef42623          	sw	a5,-20(s0)
    80005f5e:	fec42783          	lw	a5,-20(s0)
    80005f62:	2781                	sext.w	a5,a5
    80005f64:	ef85                	bnez	a5,80005f9c <bmap+0x72>
    80005f66:	fc843783          	ld	a5,-56(s0)
    80005f6a:	439c                	lw	a5,0(a5)
    80005f6c:	853e                	mv	a0,a5
    80005f6e:	fffff097          	auipc	ra,0xfffff
    80005f72:	6a6080e7          	jalr	1702(ra) # 80005614 <balloc>
    80005f76:	87aa                	mv	a5,a0
    80005f78:	fef42623          	sw	a5,-20(s0)
    80005f7c:	fec42783          	lw	a5,-20(s0)
    80005f80:	2781                	sext.w	a5,a5
    80005f82:	e399                	bnez	a5,80005f88 <bmap+0x5e>
    80005f84:	4781                	li	a5,0
    80005f86:	aa19                	j	8000609c <bmap+0x172>
    80005f88:	fc843703          	ld	a4,-56(s0)
    80005f8c:	fc446783          	lwu	a5,-60(s0)
    80005f90:	07d1                	addi	a5,a5,20
    80005f92:	078a                	slli	a5,a5,0x2
    80005f94:	97ba                	add	a5,a5,a4
    80005f96:	fec42703          	lw	a4,-20(s0)
    80005f9a:	c398                	sw	a4,0(a5)
    80005f9c:	fec42783          	lw	a5,-20(s0)
    80005fa0:	a8f5                	j	8000609c <bmap+0x172>
    80005fa2:	fc442783          	lw	a5,-60(s0)
    80005fa6:	37d1                	addiw	a5,a5,-12
    80005fa8:	fcf42223          	sw	a5,-60(s0)
    80005fac:	fc442783          	lw	a5,-60(s0)
    80005fb0:	0007871b          	sext.w	a4,a5
    80005fb4:	0ff00793          	li	a5,255
    80005fb8:	0ce7ea63          	bltu	a5,a4,8000608c <bmap+0x162>
    80005fbc:	fc843783          	ld	a5,-56(s0)
    80005fc0:	0807a783          	lw	a5,128(a5)
    80005fc4:	fef42623          	sw	a5,-20(s0)
    80005fc8:	fec42783          	lw	a5,-20(s0)
    80005fcc:	2781                	sext.w	a5,a5
    80005fce:	eb85                	bnez	a5,80005ffe <bmap+0xd4>
    80005fd0:	fc843783          	ld	a5,-56(s0)
    80005fd4:	439c                	lw	a5,0(a5)
    80005fd6:	853e                	mv	a0,a5
    80005fd8:	fffff097          	auipc	ra,0xfffff
    80005fdc:	63c080e7          	jalr	1596(ra) # 80005614 <balloc>
    80005fe0:	87aa                	mv	a5,a0
    80005fe2:	fef42623          	sw	a5,-20(s0)
    80005fe6:	fec42783          	lw	a5,-20(s0)
    80005fea:	2781                	sext.w	a5,a5
    80005fec:	e399                	bnez	a5,80005ff2 <bmap+0xc8>
    80005fee:	4781                	li	a5,0
    80005ff0:	a075                	j	8000609c <bmap+0x172>
    80005ff2:	fc843783          	ld	a5,-56(s0)
    80005ff6:	fec42703          	lw	a4,-20(s0)
    80005ffa:	08e7a023          	sw	a4,128(a5)
    80005ffe:	fc843783          	ld	a5,-56(s0)
    80006002:	439c                	lw	a5,0(a5)
    80006004:	fec42703          	lw	a4,-20(s0)
    80006008:	85ba                	mv	a1,a4
    8000600a:	853e                	mv	a0,a5
    8000600c:	fffff097          	auipc	ra,0xfffff
    80006010:	2be080e7          	jalr	702(ra) # 800052ca <bread>
    80006014:	fea43023          	sd	a0,-32(s0)
    80006018:	fe043783          	ld	a5,-32(s0)
    8000601c:	05878793          	addi	a5,a5,88
    80006020:	fcf43c23          	sd	a5,-40(s0)
    80006024:	fc446783          	lwu	a5,-60(s0)
    80006028:	078a                	slli	a5,a5,0x2
    8000602a:	fd843703          	ld	a4,-40(s0)
    8000602e:	97ba                	add	a5,a5,a4
    80006030:	439c                	lw	a5,0(a5)
    80006032:	fef42623          	sw	a5,-20(s0)
    80006036:	fec42783          	lw	a5,-20(s0)
    8000603a:	2781                	sext.w	a5,a5
    8000603c:	ef9d                	bnez	a5,8000607a <bmap+0x150>
    8000603e:	fc843783          	ld	a5,-56(s0)
    80006042:	439c                	lw	a5,0(a5)
    80006044:	853e                	mv	a0,a5
    80006046:	fffff097          	auipc	ra,0xfffff
    8000604a:	5ce080e7          	jalr	1486(ra) # 80005614 <balloc>
    8000604e:	87aa                	mv	a5,a0
    80006050:	fef42623          	sw	a5,-20(s0)
    80006054:	fec42783          	lw	a5,-20(s0)
    80006058:	2781                	sext.w	a5,a5
    8000605a:	c385                	beqz	a5,8000607a <bmap+0x150>
    8000605c:	fc446783          	lwu	a5,-60(s0)
    80006060:	078a                	slli	a5,a5,0x2
    80006062:	fd843703          	ld	a4,-40(s0)
    80006066:	97ba                	add	a5,a5,a4
    80006068:	fec42703          	lw	a4,-20(s0)
    8000606c:	c398                	sw	a4,0(a5)
    8000606e:	fe043503          	ld	a0,-32(s0)
    80006072:	00001097          	auipc	ra,0x1
    80006076:	f9e080e7          	jalr	-98(ra) # 80007010 <log_write>
    8000607a:	fe043503          	ld	a0,-32(s0)
    8000607e:	fffff097          	auipc	ra,0xfffff
    80006082:	2ee080e7          	jalr	750(ra) # 8000536c <brelse>
    80006086:	fec42783          	lw	a5,-20(s0)
    8000608a:	a809                	j	8000609c <bmap+0x172>
    8000608c:	00006517          	auipc	a0,0x6
    80006090:	64c50513          	addi	a0,a0,1612 # 8000c6d8 <etext+0x6d8>
    80006094:	ffffb097          	auipc	ra,0xffffb
    80006098:	bf6080e7          	jalr	-1034(ra) # 80000c8a <panic>
    8000609c:	853e                	mv	a0,a5
    8000609e:	70e2                	ld	ra,56(sp)
    800060a0:	7442                	ld	s0,48(sp)
    800060a2:	6121                	addi	sp,sp,64
    800060a4:	8082                	ret

00000000800060a6 <itrunc>:
    800060a6:	7139                	addi	sp,sp,-64
    800060a8:	fc06                	sd	ra,56(sp)
    800060aa:	f822                	sd	s0,48(sp)
    800060ac:	0080                	addi	s0,sp,64
    800060ae:	fca43423          	sd	a0,-56(s0)
    800060b2:	fe042623          	sw	zero,-20(s0)
    800060b6:	a899                	j	8000610c <itrunc+0x66>
    800060b8:	fc843703          	ld	a4,-56(s0)
    800060bc:	fec42783          	lw	a5,-20(s0)
    800060c0:	07d1                	addi	a5,a5,20
    800060c2:	078a                	slli	a5,a5,0x2
    800060c4:	97ba                	add	a5,a5,a4
    800060c6:	439c                	lw	a5,0(a5)
    800060c8:	cf8d                	beqz	a5,80006102 <itrunc+0x5c>
    800060ca:	fc843783          	ld	a5,-56(s0)
    800060ce:	439c                	lw	a5,0(a5)
    800060d0:	0007869b          	sext.w	a3,a5
    800060d4:	fc843703          	ld	a4,-56(s0)
    800060d8:	fec42783          	lw	a5,-20(s0)
    800060dc:	07d1                	addi	a5,a5,20
    800060de:	078a                	slli	a5,a5,0x2
    800060e0:	97ba                	add	a5,a5,a4
    800060e2:	439c                	lw	a5,0(a5)
    800060e4:	85be                	mv	a1,a5
    800060e6:	8536                	mv	a0,a3
    800060e8:	fffff097          	auipc	ra,0xfffff
    800060ec:	6d4080e7          	jalr	1748(ra) # 800057bc <bfree>
    800060f0:	fc843703          	ld	a4,-56(s0)
    800060f4:	fec42783          	lw	a5,-20(s0)
    800060f8:	07d1                	addi	a5,a5,20
    800060fa:	078a                	slli	a5,a5,0x2
    800060fc:	97ba                	add	a5,a5,a4
    800060fe:	0007a023          	sw	zero,0(a5)
    80006102:	fec42783          	lw	a5,-20(s0)
    80006106:	2785                	addiw	a5,a5,1
    80006108:	fef42623          	sw	a5,-20(s0)
    8000610c:	fec42783          	lw	a5,-20(s0)
    80006110:	0007871b          	sext.w	a4,a5
    80006114:	47ad                	li	a5,11
    80006116:	fae7d1e3          	bge	a5,a4,800060b8 <itrunc+0x12>
    8000611a:	fc843783          	ld	a5,-56(s0)
    8000611e:	0807a783          	lw	a5,128(a5)
    80006122:	cbc5                	beqz	a5,800061d2 <itrunc+0x12c>
    80006124:	fc843783          	ld	a5,-56(s0)
    80006128:	4398                	lw	a4,0(a5)
    8000612a:	fc843783          	ld	a5,-56(s0)
    8000612e:	0807a783          	lw	a5,128(a5)
    80006132:	85be                	mv	a1,a5
    80006134:	853a                	mv	a0,a4
    80006136:	fffff097          	auipc	ra,0xfffff
    8000613a:	194080e7          	jalr	404(ra) # 800052ca <bread>
    8000613e:	fea43023          	sd	a0,-32(s0)
    80006142:	fe043783          	ld	a5,-32(s0)
    80006146:	05878793          	addi	a5,a5,88
    8000614a:	fcf43c23          	sd	a5,-40(s0)
    8000614e:	fe042423          	sw	zero,-24(s0)
    80006152:	a081                	j	80006192 <itrunc+0xec>
    80006154:	fe842783          	lw	a5,-24(s0)
    80006158:	078a                	slli	a5,a5,0x2
    8000615a:	fd843703          	ld	a4,-40(s0)
    8000615e:	97ba                	add	a5,a5,a4
    80006160:	439c                	lw	a5,0(a5)
    80006162:	c39d                	beqz	a5,80006188 <itrunc+0xe2>
    80006164:	fc843783          	ld	a5,-56(s0)
    80006168:	439c                	lw	a5,0(a5)
    8000616a:	0007869b          	sext.w	a3,a5
    8000616e:	fe842783          	lw	a5,-24(s0)
    80006172:	078a                	slli	a5,a5,0x2
    80006174:	fd843703          	ld	a4,-40(s0)
    80006178:	97ba                	add	a5,a5,a4
    8000617a:	439c                	lw	a5,0(a5)
    8000617c:	85be                	mv	a1,a5
    8000617e:	8536                	mv	a0,a3
    80006180:	fffff097          	auipc	ra,0xfffff
    80006184:	63c080e7          	jalr	1596(ra) # 800057bc <bfree>
    80006188:	fe842783          	lw	a5,-24(s0)
    8000618c:	2785                	addiw	a5,a5,1
    8000618e:	fef42423          	sw	a5,-24(s0)
    80006192:	fe842783          	lw	a5,-24(s0)
    80006196:	873e                	mv	a4,a5
    80006198:	0ff00793          	li	a5,255
    8000619c:	fae7fce3          	bgeu	a5,a4,80006154 <itrunc+0xae>
    800061a0:	fe043503          	ld	a0,-32(s0)
    800061a4:	fffff097          	auipc	ra,0xfffff
    800061a8:	1c8080e7          	jalr	456(ra) # 8000536c <brelse>
    800061ac:	fc843783          	ld	a5,-56(s0)
    800061b0:	439c                	lw	a5,0(a5)
    800061b2:	0007871b          	sext.w	a4,a5
    800061b6:	fc843783          	ld	a5,-56(s0)
    800061ba:	0807a783          	lw	a5,128(a5)
    800061be:	85be                	mv	a1,a5
    800061c0:	853a                	mv	a0,a4
    800061c2:	fffff097          	auipc	ra,0xfffff
    800061c6:	5fa080e7          	jalr	1530(ra) # 800057bc <bfree>
    800061ca:	fc843783          	ld	a5,-56(s0)
    800061ce:	0807a023          	sw	zero,128(a5)
    800061d2:	fc843783          	ld	a5,-56(s0)
    800061d6:	0407a623          	sw	zero,76(a5)
    800061da:	fc843503          	ld	a0,-56(s0)
    800061de:	00000097          	auipc	ra,0x0
    800061e2:	870080e7          	jalr	-1936(ra) # 80005a4e <iupdate>
    800061e6:	0001                	nop
    800061e8:	70e2                	ld	ra,56(sp)
    800061ea:	7442                	ld	s0,48(sp)
    800061ec:	6121                	addi	sp,sp,64
    800061ee:	8082                	ret

00000000800061f0 <stati>:
    800061f0:	1101                	addi	sp,sp,-32
    800061f2:	ec22                	sd	s0,24(sp)
    800061f4:	1000                	addi	s0,sp,32
    800061f6:	fea43423          	sd	a0,-24(s0)
    800061fa:	feb43023          	sd	a1,-32(s0)
    800061fe:	fe843783          	ld	a5,-24(s0)
    80006202:	439c                	lw	a5,0(a5)
    80006204:	0007871b          	sext.w	a4,a5
    80006208:	fe043783          	ld	a5,-32(s0)
    8000620c:	c398                	sw	a4,0(a5)
    8000620e:	fe843783          	ld	a5,-24(s0)
    80006212:	43d8                	lw	a4,4(a5)
    80006214:	fe043783          	ld	a5,-32(s0)
    80006218:	c3d8                	sw	a4,4(a5)
    8000621a:	fe843783          	ld	a5,-24(s0)
    8000621e:	04479703          	lh	a4,68(a5)
    80006222:	fe043783          	ld	a5,-32(s0)
    80006226:	00e79423          	sh	a4,8(a5)
    8000622a:	fe843783          	ld	a5,-24(s0)
    8000622e:	04a79703          	lh	a4,74(a5)
    80006232:	fe043783          	ld	a5,-32(s0)
    80006236:	00e79523          	sh	a4,10(a5)
    8000623a:	fe843783          	ld	a5,-24(s0)
    8000623e:	47fc                	lw	a5,76(a5)
    80006240:	02079713          	slli	a4,a5,0x20
    80006244:	9301                	srli	a4,a4,0x20
    80006246:	fe043783          	ld	a5,-32(s0)
    8000624a:	eb98                	sd	a4,16(a5)
    8000624c:	0001                	nop
    8000624e:	6462                	ld	s0,24(sp)
    80006250:	6105                	addi	sp,sp,32
    80006252:	8082                	ret

0000000080006254 <readi>:
    80006254:	715d                	addi	sp,sp,-80
    80006256:	e486                	sd	ra,72(sp)
    80006258:	e0a2                	sd	s0,64(sp)
    8000625a:	0880                	addi	s0,sp,80
    8000625c:	fca43423          	sd	a0,-56(s0)
    80006260:	87ae                	mv	a5,a1
    80006262:	fac43c23          	sd	a2,-72(s0)
    80006266:	fcf42223          	sw	a5,-60(s0)
    8000626a:	87b6                	mv	a5,a3
    8000626c:	fcf42023          	sw	a5,-64(s0)
    80006270:	87ba                	mv	a5,a4
    80006272:	faf42a23          	sw	a5,-76(s0)
    80006276:	fc843783          	ld	a5,-56(s0)
    8000627a:	47f8                	lw	a4,76(a5)
    8000627c:	fc042783          	lw	a5,-64(s0)
    80006280:	2781                	sext.w	a5,a5
    80006282:	00f76f63          	bltu	a4,a5,800062a0 <readi+0x4c>
    80006286:	fc042783          	lw	a5,-64(s0)
    8000628a:	873e                	mv	a4,a5
    8000628c:	fb442783          	lw	a5,-76(s0)
    80006290:	9fb9                	addw	a5,a5,a4
    80006292:	0007871b          	sext.w	a4,a5
    80006296:	fc042783          	lw	a5,-64(s0)
    8000629a:	2781                	sext.w	a5,a5
    8000629c:	00f77463          	bgeu	a4,a5,800062a4 <readi+0x50>
    800062a0:	4781                	li	a5,0
    800062a2:	a299                	j	800063e8 <readi+0x194>
    800062a4:	fc042783          	lw	a5,-64(s0)
    800062a8:	873e                	mv	a4,a5
    800062aa:	fb442783          	lw	a5,-76(s0)
    800062ae:	9fb9                	addw	a5,a5,a4
    800062b0:	0007871b          	sext.w	a4,a5
    800062b4:	fc843783          	ld	a5,-56(s0)
    800062b8:	47fc                	lw	a5,76(a5)
    800062ba:	00e7fa63          	bgeu	a5,a4,800062ce <readi+0x7a>
    800062be:	fc843783          	ld	a5,-56(s0)
    800062c2:	47fc                	lw	a5,76(a5)
    800062c4:	fc042703          	lw	a4,-64(s0)
    800062c8:	9f99                	subw	a5,a5,a4
    800062ca:	faf42a23          	sw	a5,-76(s0)
    800062ce:	fe042623          	sw	zero,-20(s0)
    800062d2:	a8f5                	j	800063ce <readi+0x17a>
    800062d4:	fc042783          	lw	a5,-64(s0)
    800062d8:	00a7d79b          	srliw	a5,a5,0xa
    800062dc:	2781                	sext.w	a5,a5
    800062de:	85be                	mv	a1,a5
    800062e0:	fc843503          	ld	a0,-56(s0)
    800062e4:	00000097          	auipc	ra,0x0
    800062e8:	c46080e7          	jalr	-954(ra) # 80005f2a <bmap>
    800062ec:	87aa                	mv	a5,a0
    800062ee:	fef42423          	sw	a5,-24(s0)
    800062f2:	fe842783          	lw	a5,-24(s0)
    800062f6:	2781                	sext.w	a5,a5
    800062f8:	c7ed                	beqz	a5,800063e2 <readi+0x18e>
    800062fa:	fc843783          	ld	a5,-56(s0)
    800062fe:	439c                	lw	a5,0(a5)
    80006300:	fe842703          	lw	a4,-24(s0)
    80006304:	85ba                	mv	a1,a4
    80006306:	853e                	mv	a0,a5
    80006308:	fffff097          	auipc	ra,0xfffff
    8000630c:	fc2080e7          	jalr	-62(ra) # 800052ca <bread>
    80006310:	fea43023          	sd	a0,-32(s0)
    80006314:	fc042783          	lw	a5,-64(s0)
    80006318:	3ff7f793          	andi	a5,a5,1023
    8000631c:	2781                	sext.w	a5,a5
    8000631e:	40000713          	li	a4,1024
    80006322:	40f707bb          	subw	a5,a4,a5
    80006326:	2781                	sext.w	a5,a5
    80006328:	fb442703          	lw	a4,-76(s0)
    8000632c:	86ba                	mv	a3,a4
    8000632e:	fec42703          	lw	a4,-20(s0)
    80006332:	40e6873b          	subw	a4,a3,a4
    80006336:	2701                	sext.w	a4,a4
    80006338:	863a                	mv	a2,a4
    8000633a:	0007869b          	sext.w	a3,a5
    8000633e:	0006071b          	sext.w	a4,a2
    80006342:	00d77363          	bgeu	a4,a3,80006348 <readi+0xf4>
    80006346:	87b2                	mv	a5,a2
    80006348:	fcf42e23          	sw	a5,-36(s0)
    8000634c:	fe043783          	ld	a5,-32(s0)
    80006350:	05878713          	addi	a4,a5,88
    80006354:	fc046783          	lwu	a5,-64(s0)
    80006358:	3ff7f793          	andi	a5,a5,1023
    8000635c:	973e                	add	a4,a4,a5
    8000635e:	fdc46683          	lwu	a3,-36(s0)
    80006362:	fc442783          	lw	a5,-60(s0)
    80006366:	863a                	mv	a2,a4
    80006368:	fb843583          	ld	a1,-72(s0)
    8000636c:	853e                	mv	a0,a5
    8000636e:	ffffe097          	auipc	ra,0xffffe
    80006372:	990080e7          	jalr	-1648(ra) # 80003cfe <either_copyout>
    80006376:	87aa                	mv	a5,a0
    80006378:	873e                	mv	a4,a5
    8000637a:	57fd                	li	a5,-1
    8000637c:	00f71c63          	bne	a4,a5,80006394 <readi+0x140>
    80006380:	fe043503          	ld	a0,-32(s0)
    80006384:	fffff097          	auipc	ra,0xfffff
    80006388:	fe8080e7          	jalr	-24(ra) # 8000536c <brelse>
    8000638c:	57fd                	li	a5,-1
    8000638e:	fef42623          	sw	a5,-20(s0)
    80006392:	a889                	j	800063e4 <readi+0x190>
    80006394:	fe043503          	ld	a0,-32(s0)
    80006398:	fffff097          	auipc	ra,0xfffff
    8000639c:	fd4080e7          	jalr	-44(ra) # 8000536c <brelse>
    800063a0:	fec42783          	lw	a5,-20(s0)
    800063a4:	873e                	mv	a4,a5
    800063a6:	fdc42783          	lw	a5,-36(s0)
    800063aa:	9fb9                	addw	a5,a5,a4
    800063ac:	fef42623          	sw	a5,-20(s0)
    800063b0:	fc042783          	lw	a5,-64(s0)
    800063b4:	873e                	mv	a4,a5
    800063b6:	fdc42783          	lw	a5,-36(s0)
    800063ba:	9fb9                	addw	a5,a5,a4
    800063bc:	fcf42023          	sw	a5,-64(s0)
    800063c0:	fdc46783          	lwu	a5,-36(s0)
    800063c4:	fb843703          	ld	a4,-72(s0)
    800063c8:	97ba                	add	a5,a5,a4
    800063ca:	faf43c23          	sd	a5,-72(s0)
    800063ce:	fec42783          	lw	a5,-20(s0)
    800063d2:	873e                	mv	a4,a5
    800063d4:	fb442783          	lw	a5,-76(s0)
    800063d8:	2701                	sext.w	a4,a4
    800063da:	2781                	sext.w	a5,a5
    800063dc:	eef76ce3          	bltu	a4,a5,800062d4 <readi+0x80>
    800063e0:	a011                	j	800063e4 <readi+0x190>
    800063e2:	0001                	nop
    800063e4:	fec42783          	lw	a5,-20(s0)
    800063e8:	853e                	mv	a0,a5
    800063ea:	60a6                	ld	ra,72(sp)
    800063ec:	6406                	ld	s0,64(sp)
    800063ee:	6161                	addi	sp,sp,80
    800063f0:	8082                	ret

00000000800063f2 <writei>:
    800063f2:	715d                	addi	sp,sp,-80
    800063f4:	e486                	sd	ra,72(sp)
    800063f6:	e0a2                	sd	s0,64(sp)
    800063f8:	0880                	addi	s0,sp,80
    800063fa:	fca43423          	sd	a0,-56(s0)
    800063fe:	87ae                	mv	a5,a1
    80006400:	fac43c23          	sd	a2,-72(s0)
    80006404:	fcf42223          	sw	a5,-60(s0)
    80006408:	87b6                	mv	a5,a3
    8000640a:	fcf42023          	sw	a5,-64(s0)
    8000640e:	87ba                	mv	a5,a4
    80006410:	faf42a23          	sw	a5,-76(s0)
    80006414:	fc843783          	ld	a5,-56(s0)
    80006418:	47f8                	lw	a4,76(a5)
    8000641a:	fc042783          	lw	a5,-64(s0)
    8000641e:	2781                	sext.w	a5,a5
    80006420:	00f76f63          	bltu	a4,a5,8000643e <writei+0x4c>
    80006424:	fc042783          	lw	a5,-64(s0)
    80006428:	873e                	mv	a4,a5
    8000642a:	fb442783          	lw	a5,-76(s0)
    8000642e:	9fb9                	addw	a5,a5,a4
    80006430:	0007871b          	sext.w	a4,a5
    80006434:	fc042783          	lw	a5,-64(s0)
    80006438:	2781                	sext.w	a5,a5
    8000643a:	00f77463          	bgeu	a4,a5,80006442 <writei+0x50>
    8000643e:	57fd                	li	a5,-1
    80006440:	a295                	j	800065a4 <writei+0x1b2>
    80006442:	fc042783          	lw	a5,-64(s0)
    80006446:	873e                	mv	a4,a5
    80006448:	fb442783          	lw	a5,-76(s0)
    8000644c:	9fb9                	addw	a5,a5,a4
    8000644e:	2781                	sext.w	a5,a5
    80006450:	873e                	mv	a4,a5
    80006452:	000437b7          	lui	a5,0x43
    80006456:	00e7f463          	bgeu	a5,a4,8000645e <writei+0x6c>
    8000645a:	57fd                	li	a5,-1
    8000645c:	a2a1                	j	800065a4 <writei+0x1b2>
    8000645e:	fe042623          	sw	zero,-20(s0)
    80006462:	a209                	j	80006564 <writei+0x172>
    80006464:	fc042783          	lw	a5,-64(s0)
    80006468:	00a7d79b          	srliw	a5,a5,0xa
    8000646c:	2781                	sext.w	a5,a5
    8000646e:	85be                	mv	a1,a5
    80006470:	fc843503          	ld	a0,-56(s0)
    80006474:	00000097          	auipc	ra,0x0
    80006478:	ab6080e7          	jalr	-1354(ra) # 80005f2a <bmap>
    8000647c:	87aa                	mv	a5,a0
    8000647e:	fef42423          	sw	a5,-24(s0)
    80006482:	fe842783          	lw	a5,-24(s0)
    80006486:	2781                	sext.w	a5,a5
    80006488:	cbe5                	beqz	a5,80006578 <writei+0x186>
    8000648a:	fc843783          	ld	a5,-56(s0)
    8000648e:	439c                	lw	a5,0(a5)
    80006490:	fe842703          	lw	a4,-24(s0)
    80006494:	85ba                	mv	a1,a4
    80006496:	853e                	mv	a0,a5
    80006498:	fffff097          	auipc	ra,0xfffff
    8000649c:	e32080e7          	jalr	-462(ra) # 800052ca <bread>
    800064a0:	fea43023          	sd	a0,-32(s0)
    800064a4:	fc042783          	lw	a5,-64(s0)
    800064a8:	3ff7f793          	andi	a5,a5,1023
    800064ac:	2781                	sext.w	a5,a5
    800064ae:	40000713          	li	a4,1024
    800064b2:	40f707bb          	subw	a5,a4,a5
    800064b6:	2781                	sext.w	a5,a5
    800064b8:	fb442703          	lw	a4,-76(s0)
    800064bc:	86ba                	mv	a3,a4
    800064be:	fec42703          	lw	a4,-20(s0)
    800064c2:	40e6873b          	subw	a4,a3,a4
    800064c6:	2701                	sext.w	a4,a4
    800064c8:	863a                	mv	a2,a4
    800064ca:	0007869b          	sext.w	a3,a5
    800064ce:	0006071b          	sext.w	a4,a2
    800064d2:	00d77363          	bgeu	a4,a3,800064d8 <writei+0xe6>
    800064d6:	87b2                	mv	a5,a2
    800064d8:	fcf42e23          	sw	a5,-36(s0)
    800064dc:	fe043783          	ld	a5,-32(s0)
    800064e0:	05878713          	addi	a4,a5,88 # 43058 <_entry-0x7ffbcfa8>
    800064e4:	fc046783          	lwu	a5,-64(s0)
    800064e8:	3ff7f793          	andi	a5,a5,1023
    800064ec:	97ba                	add	a5,a5,a4
    800064ee:	fdc46683          	lwu	a3,-36(s0)
    800064f2:	fc442703          	lw	a4,-60(s0)
    800064f6:	fb843603          	ld	a2,-72(s0)
    800064fa:	85ba                	mv	a1,a4
    800064fc:	853e                	mv	a0,a5
    800064fe:	ffffe097          	auipc	ra,0xffffe
    80006502:	874080e7          	jalr	-1932(ra) # 80003d72 <either_copyin>
    80006506:	87aa                	mv	a5,a0
    80006508:	873e                	mv	a4,a5
    8000650a:	57fd                	li	a5,-1
    8000650c:	00f71963          	bne	a4,a5,8000651e <writei+0x12c>
    80006510:	fe043503          	ld	a0,-32(s0)
    80006514:	fffff097          	auipc	ra,0xfffff
    80006518:	e58080e7          	jalr	-424(ra) # 8000536c <brelse>
    8000651c:	a8b9                	j	8000657a <writei+0x188>
    8000651e:	fe043503          	ld	a0,-32(s0)
    80006522:	00001097          	auipc	ra,0x1
    80006526:	aee080e7          	jalr	-1298(ra) # 80007010 <log_write>
    8000652a:	fe043503          	ld	a0,-32(s0)
    8000652e:	fffff097          	auipc	ra,0xfffff
    80006532:	e3e080e7          	jalr	-450(ra) # 8000536c <brelse>
    80006536:	fec42783          	lw	a5,-20(s0)
    8000653a:	873e                	mv	a4,a5
    8000653c:	fdc42783          	lw	a5,-36(s0)
    80006540:	9fb9                	addw	a5,a5,a4
    80006542:	fef42623          	sw	a5,-20(s0)
    80006546:	fc042783          	lw	a5,-64(s0)
    8000654a:	873e                	mv	a4,a5
    8000654c:	fdc42783          	lw	a5,-36(s0)
    80006550:	9fb9                	addw	a5,a5,a4
    80006552:	fcf42023          	sw	a5,-64(s0)
    80006556:	fdc46783          	lwu	a5,-36(s0)
    8000655a:	fb843703          	ld	a4,-72(s0)
    8000655e:	97ba                	add	a5,a5,a4
    80006560:	faf43c23          	sd	a5,-72(s0)
    80006564:	fec42783          	lw	a5,-20(s0)
    80006568:	873e                	mv	a4,a5
    8000656a:	fb442783          	lw	a5,-76(s0)
    8000656e:	2701                	sext.w	a4,a4
    80006570:	2781                	sext.w	a5,a5
    80006572:	eef769e3          	bltu	a4,a5,80006464 <writei+0x72>
    80006576:	a011                	j	8000657a <writei+0x188>
    80006578:	0001                	nop
    8000657a:	fc843783          	ld	a5,-56(s0)
    8000657e:	47f8                	lw	a4,76(a5)
    80006580:	fc042783          	lw	a5,-64(s0)
    80006584:	2781                	sext.w	a5,a5
    80006586:	00f77763          	bgeu	a4,a5,80006594 <writei+0x1a2>
    8000658a:	fc843783          	ld	a5,-56(s0)
    8000658e:	fc042703          	lw	a4,-64(s0)
    80006592:	c7f8                	sw	a4,76(a5)
    80006594:	fc843503          	ld	a0,-56(s0)
    80006598:	fffff097          	auipc	ra,0xfffff
    8000659c:	4b6080e7          	jalr	1206(ra) # 80005a4e <iupdate>
    800065a0:	fec42783          	lw	a5,-20(s0)
    800065a4:	853e                	mv	a0,a5
    800065a6:	60a6                	ld	ra,72(sp)
    800065a8:	6406                	ld	s0,64(sp)
    800065aa:	6161                	addi	sp,sp,80
    800065ac:	8082                	ret

00000000800065ae <namecmp>:
    800065ae:	1101                	addi	sp,sp,-32
    800065b0:	ec06                	sd	ra,24(sp)
    800065b2:	e822                	sd	s0,16(sp)
    800065b4:	1000                	addi	s0,sp,32
    800065b6:	fea43423          	sd	a0,-24(s0)
    800065ba:	feb43023          	sd	a1,-32(s0)
    800065be:	4639                	li	a2,14
    800065c0:	fe043583          	ld	a1,-32(s0)
    800065c4:	fe843503          	ld	a0,-24(s0)
    800065c8:	ffffb097          	auipc	ra,0xffffb
    800065cc:	07c080e7          	jalr	124(ra) # 80001644 <strncmp>
    800065d0:	87aa                	mv	a5,a0
    800065d2:	853e                	mv	a0,a5
    800065d4:	60e2                	ld	ra,24(sp)
    800065d6:	6442                	ld	s0,16(sp)
    800065d8:	6105                	addi	sp,sp,32
    800065da:	8082                	ret

00000000800065dc <dirlookup>:
    800065dc:	715d                	addi	sp,sp,-80
    800065de:	e486                	sd	ra,72(sp)
    800065e0:	e0a2                	sd	s0,64(sp)
    800065e2:	0880                	addi	s0,sp,80
    800065e4:	fca43423          	sd	a0,-56(s0)
    800065e8:	fcb43023          	sd	a1,-64(s0)
    800065ec:	fac43c23          	sd	a2,-72(s0)
    800065f0:	fc843783          	ld	a5,-56(s0)
    800065f4:	04479783          	lh	a5,68(a5)
    800065f8:	873e                	mv	a4,a5
    800065fa:	4785                	li	a5,1
    800065fc:	00f70a63          	beq	a4,a5,80006610 <dirlookup+0x34>
    80006600:	00006517          	auipc	a0,0x6
    80006604:	0f050513          	addi	a0,a0,240 # 8000c6f0 <etext+0x6f0>
    80006608:	ffffa097          	auipc	ra,0xffffa
    8000660c:	682080e7          	jalr	1666(ra) # 80000c8a <panic>
    80006610:	fe042623          	sw	zero,-20(s0)
    80006614:	a849                	j	800066a6 <dirlookup+0xca>
    80006616:	fd840793          	addi	a5,s0,-40
    8000661a:	fec42683          	lw	a3,-20(s0)
    8000661e:	4741                	li	a4,16
    80006620:	863e                	mv	a2,a5
    80006622:	4581                	li	a1,0
    80006624:	fc843503          	ld	a0,-56(s0)
    80006628:	00000097          	auipc	ra,0x0
    8000662c:	c2c080e7          	jalr	-980(ra) # 80006254 <readi>
    80006630:	87aa                	mv	a5,a0
    80006632:	873e                	mv	a4,a5
    80006634:	47c1                	li	a5,16
    80006636:	00f70a63          	beq	a4,a5,8000664a <dirlookup+0x6e>
    8000663a:	00006517          	auipc	a0,0x6
    8000663e:	0ce50513          	addi	a0,a0,206 # 8000c708 <etext+0x708>
    80006642:	ffffa097          	auipc	ra,0xffffa
    80006646:	648080e7          	jalr	1608(ra) # 80000c8a <panic>
    8000664a:	fd845783          	lhu	a5,-40(s0)
    8000664e:	c7b1                	beqz	a5,8000669a <dirlookup+0xbe>
    80006650:	fd840793          	addi	a5,s0,-40
    80006654:	0789                	addi	a5,a5,2
    80006656:	85be                	mv	a1,a5
    80006658:	fc043503          	ld	a0,-64(s0)
    8000665c:	00000097          	auipc	ra,0x0
    80006660:	f52080e7          	jalr	-174(ra) # 800065ae <namecmp>
    80006664:	87aa                	mv	a5,a0
    80006666:	eb9d                	bnez	a5,8000669c <dirlookup+0xc0>
    80006668:	fb843783          	ld	a5,-72(s0)
    8000666c:	c791                	beqz	a5,80006678 <dirlookup+0x9c>
    8000666e:	fb843783          	ld	a5,-72(s0)
    80006672:	fec42703          	lw	a4,-20(s0)
    80006676:	c398                	sw	a4,0(a5)
    80006678:	fd845783          	lhu	a5,-40(s0)
    8000667c:	fef42423          	sw	a5,-24(s0)
    80006680:	fc843783          	ld	a5,-56(s0)
    80006684:	439c                	lw	a5,0(a5)
    80006686:	fe842703          	lw	a4,-24(s0)
    8000668a:	85ba                	mv	a1,a4
    8000668c:	853e                	mv	a0,a5
    8000668e:	fffff097          	auipc	ra,0xfffff
    80006692:	4a8080e7          	jalr	1192(ra) # 80005b36 <iget>
    80006696:	87aa                	mv	a5,a0
    80006698:	a005                	j	800066b8 <dirlookup+0xdc>
    8000669a:	0001                	nop
    8000669c:	fec42783          	lw	a5,-20(s0)
    800066a0:	27c1                	addiw	a5,a5,16
    800066a2:	fef42623          	sw	a5,-20(s0)
    800066a6:	fc843783          	ld	a5,-56(s0)
    800066aa:	47f8                	lw	a4,76(a5)
    800066ac:	fec42783          	lw	a5,-20(s0)
    800066b0:	2781                	sext.w	a5,a5
    800066b2:	f6e7e2e3          	bltu	a5,a4,80006616 <dirlookup+0x3a>
    800066b6:	4781                	li	a5,0
    800066b8:	853e                	mv	a0,a5
    800066ba:	60a6                	ld	ra,72(sp)
    800066bc:	6406                	ld	s0,64(sp)
    800066be:	6161                	addi	sp,sp,80
    800066c0:	8082                	ret

00000000800066c2 <dirlink>:
    800066c2:	715d                	addi	sp,sp,-80
    800066c4:	e486                	sd	ra,72(sp)
    800066c6:	e0a2                	sd	s0,64(sp)
    800066c8:	0880                	addi	s0,sp,80
    800066ca:	fca43423          	sd	a0,-56(s0)
    800066ce:	fcb43023          	sd	a1,-64(s0)
    800066d2:	87b2                	mv	a5,a2
    800066d4:	faf42e23          	sw	a5,-68(s0)
    800066d8:	4601                	li	a2,0
    800066da:	fc043583          	ld	a1,-64(s0)
    800066de:	fc843503          	ld	a0,-56(s0)
    800066e2:	00000097          	auipc	ra,0x0
    800066e6:	efa080e7          	jalr	-262(ra) # 800065dc <dirlookup>
    800066ea:	fea43023          	sd	a0,-32(s0)
    800066ee:	fe043783          	ld	a5,-32(s0)
    800066f2:	cb89                	beqz	a5,80006704 <dirlink+0x42>
    800066f4:	fe043503          	ld	a0,-32(s0)
    800066f8:	fffff097          	auipc	ra,0xfffff
    800066fc:	734080e7          	jalr	1844(ra) # 80005e2c <iput>
    80006700:	57fd                	li	a5,-1
    80006702:	a075                	j	800067ae <dirlink+0xec>
    80006704:	fe042623          	sw	zero,-20(s0)
    80006708:	a0a1                	j	80006750 <dirlink+0x8e>
    8000670a:	fd040793          	addi	a5,s0,-48
    8000670e:	fec42683          	lw	a3,-20(s0)
    80006712:	4741                	li	a4,16
    80006714:	863e                	mv	a2,a5
    80006716:	4581                	li	a1,0
    80006718:	fc843503          	ld	a0,-56(s0)
    8000671c:	00000097          	auipc	ra,0x0
    80006720:	b38080e7          	jalr	-1224(ra) # 80006254 <readi>
    80006724:	87aa                	mv	a5,a0
    80006726:	873e                	mv	a4,a5
    80006728:	47c1                	li	a5,16
    8000672a:	00f70a63          	beq	a4,a5,8000673e <dirlink+0x7c>
    8000672e:	00006517          	auipc	a0,0x6
    80006732:	fea50513          	addi	a0,a0,-22 # 8000c718 <etext+0x718>
    80006736:	ffffa097          	auipc	ra,0xffffa
    8000673a:	554080e7          	jalr	1364(ra) # 80000c8a <panic>
    8000673e:	fd045783          	lhu	a5,-48(s0)
    80006742:	cf99                	beqz	a5,80006760 <dirlink+0x9e>
    80006744:	fec42783          	lw	a5,-20(s0)
    80006748:	27c1                	addiw	a5,a5,16
    8000674a:	2781                	sext.w	a5,a5
    8000674c:	fef42623          	sw	a5,-20(s0)
    80006750:	fc843783          	ld	a5,-56(s0)
    80006754:	47f8                	lw	a4,76(a5)
    80006756:	fec42783          	lw	a5,-20(s0)
    8000675a:	fae7e8e3          	bltu	a5,a4,8000670a <dirlink+0x48>
    8000675e:	a011                	j	80006762 <dirlink+0xa0>
    80006760:	0001                	nop
    80006762:	fd040793          	addi	a5,s0,-48
    80006766:	0789                	addi	a5,a5,2
    80006768:	4639                	li	a2,14
    8000676a:	fc043583          	ld	a1,-64(s0)
    8000676e:	853e                	mv	a0,a5
    80006770:	ffffb097          	auipc	ra,0xffffb
    80006774:	f5e080e7          	jalr	-162(ra) # 800016ce <strncpy>
    80006778:	fbc42783          	lw	a5,-68(s0)
    8000677c:	17c2                	slli	a5,a5,0x30
    8000677e:	93c1                	srli	a5,a5,0x30
    80006780:	fcf41823          	sh	a5,-48(s0)
    80006784:	fd040793          	addi	a5,s0,-48
    80006788:	fec42683          	lw	a3,-20(s0)
    8000678c:	4741                	li	a4,16
    8000678e:	863e                	mv	a2,a5
    80006790:	4581                	li	a1,0
    80006792:	fc843503          	ld	a0,-56(s0)
    80006796:	00000097          	auipc	ra,0x0
    8000679a:	c5c080e7          	jalr	-932(ra) # 800063f2 <writei>
    8000679e:	87aa                	mv	a5,a0
    800067a0:	873e                	mv	a4,a5
    800067a2:	47c1                	li	a5,16
    800067a4:	00f70463          	beq	a4,a5,800067ac <dirlink+0xea>
    800067a8:	57fd                	li	a5,-1
    800067aa:	a011                	j	800067ae <dirlink+0xec>
    800067ac:	4781                	li	a5,0
    800067ae:	853e                	mv	a0,a5
    800067b0:	60a6                	ld	ra,72(sp)
    800067b2:	6406                	ld	s0,64(sp)
    800067b4:	6161                	addi	sp,sp,80
    800067b6:	8082                	ret

00000000800067b8 <skipelem>:
    800067b8:	7179                	addi	sp,sp,-48
    800067ba:	f406                	sd	ra,40(sp)
    800067bc:	f022                	sd	s0,32(sp)
    800067be:	1800                	addi	s0,sp,48
    800067c0:	fca43c23          	sd	a0,-40(s0)
    800067c4:	fcb43823          	sd	a1,-48(s0)
    800067c8:	a031                	j	800067d4 <skipelem+0x1c>
    800067ca:	fd843783          	ld	a5,-40(s0)
    800067ce:	0785                	addi	a5,a5,1
    800067d0:	fcf43c23          	sd	a5,-40(s0)
    800067d4:	fd843783          	ld	a5,-40(s0)
    800067d8:	0007c783          	lbu	a5,0(a5)
    800067dc:	873e                	mv	a4,a5
    800067de:	02f00793          	li	a5,47
    800067e2:	fef704e3          	beq	a4,a5,800067ca <skipelem+0x12>
    800067e6:	fd843783          	ld	a5,-40(s0)
    800067ea:	0007c783          	lbu	a5,0(a5)
    800067ee:	e399                	bnez	a5,800067f4 <skipelem+0x3c>
    800067f0:	4781                	li	a5,0
    800067f2:	a06d                	j	8000689c <skipelem+0xe4>
    800067f4:	fd843783          	ld	a5,-40(s0)
    800067f8:	fef43423          	sd	a5,-24(s0)
    800067fc:	a031                	j	80006808 <skipelem+0x50>
    800067fe:	fd843783          	ld	a5,-40(s0)
    80006802:	0785                	addi	a5,a5,1
    80006804:	fcf43c23          	sd	a5,-40(s0)
    80006808:	fd843783          	ld	a5,-40(s0)
    8000680c:	0007c783          	lbu	a5,0(a5)
    80006810:	873e                	mv	a4,a5
    80006812:	02f00793          	li	a5,47
    80006816:	00f70763          	beq	a4,a5,80006824 <skipelem+0x6c>
    8000681a:	fd843783          	ld	a5,-40(s0)
    8000681e:	0007c783          	lbu	a5,0(a5)
    80006822:	fff1                	bnez	a5,800067fe <skipelem+0x46>
    80006824:	fd843703          	ld	a4,-40(s0)
    80006828:	fe843783          	ld	a5,-24(s0)
    8000682c:	40f707b3          	sub	a5,a4,a5
    80006830:	fef42223          	sw	a5,-28(s0)
    80006834:	fe442783          	lw	a5,-28(s0)
    80006838:	0007871b          	sext.w	a4,a5
    8000683c:	47b5                	li	a5,13
    8000683e:	00e7dc63          	bge	a5,a4,80006856 <skipelem+0x9e>
    80006842:	4639                	li	a2,14
    80006844:	fe843583          	ld	a1,-24(s0)
    80006848:	fd043503          	ld	a0,-48(s0)
    8000684c:	ffffb097          	auipc	ra,0xffffb
    80006850:	ce4080e7          	jalr	-796(ra) # 80001530 <memmove>
    80006854:	a80d                	j	80006886 <skipelem+0xce>
    80006856:	fe442783          	lw	a5,-28(s0)
    8000685a:	863e                	mv	a2,a5
    8000685c:	fe843583          	ld	a1,-24(s0)
    80006860:	fd043503          	ld	a0,-48(s0)
    80006864:	ffffb097          	auipc	ra,0xffffb
    80006868:	ccc080e7          	jalr	-820(ra) # 80001530 <memmove>
    8000686c:	fe442783          	lw	a5,-28(s0)
    80006870:	fd043703          	ld	a4,-48(s0)
    80006874:	97ba                	add	a5,a5,a4
    80006876:	00078023          	sb	zero,0(a5)
    8000687a:	a031                	j	80006886 <skipelem+0xce>
    8000687c:	fd843783          	ld	a5,-40(s0)
    80006880:	0785                	addi	a5,a5,1
    80006882:	fcf43c23          	sd	a5,-40(s0)
    80006886:	fd843783          	ld	a5,-40(s0)
    8000688a:	0007c783          	lbu	a5,0(a5)
    8000688e:	873e                	mv	a4,a5
    80006890:	02f00793          	li	a5,47
    80006894:	fef704e3          	beq	a4,a5,8000687c <skipelem+0xc4>
    80006898:	fd843783          	ld	a5,-40(s0)
    8000689c:	853e                	mv	a0,a5
    8000689e:	70a2                	ld	ra,40(sp)
    800068a0:	7402                	ld	s0,32(sp)
    800068a2:	6145                	addi	sp,sp,48
    800068a4:	8082                	ret

00000000800068a6 <namex>:
    800068a6:	7139                	addi	sp,sp,-64
    800068a8:	fc06                	sd	ra,56(sp)
    800068aa:	f822                	sd	s0,48(sp)
    800068ac:	0080                	addi	s0,sp,64
    800068ae:	fca43c23          	sd	a0,-40(s0)
    800068b2:	87ae                	mv	a5,a1
    800068b4:	fcc43423          	sd	a2,-56(s0)
    800068b8:	fcf42a23          	sw	a5,-44(s0)
    800068bc:	fd843783          	ld	a5,-40(s0)
    800068c0:	0007c783          	lbu	a5,0(a5)
    800068c4:	873e                	mv	a4,a5
    800068c6:	02f00793          	li	a5,47
    800068ca:	00f71b63          	bne	a4,a5,800068e0 <namex+0x3a>
    800068ce:	4585                	li	a1,1
    800068d0:	4505                	li	a0,1
    800068d2:	fffff097          	auipc	ra,0xfffff
    800068d6:	264080e7          	jalr	612(ra) # 80005b36 <iget>
    800068da:	fea43423          	sd	a0,-24(s0)
    800068de:	a845                	j	8000698e <namex+0xe8>
    800068e0:	ffffc097          	auipc	ra,0xffffc
    800068e4:	ffa080e7          	jalr	-6(ra) # 800028da <myproc>
    800068e8:	87aa                	mv	a5,a0
    800068ea:	1a07b783          	ld	a5,416(a5)
    800068ee:	853e                	mv	a0,a5
    800068f0:	fffff097          	auipc	ra,0xfffff
    800068f4:	362080e7          	jalr	866(ra) # 80005c52 <idup>
    800068f8:	fea43423          	sd	a0,-24(s0)
    800068fc:	a849                	j	8000698e <namex+0xe8>
    800068fe:	fe843503          	ld	a0,-24(s0)
    80006902:	fffff097          	auipc	ra,0xfffff
    80006906:	39c080e7          	jalr	924(ra) # 80005c9e <ilock>
    8000690a:	fe843783          	ld	a5,-24(s0)
    8000690e:	04479783          	lh	a5,68(a5)
    80006912:	873e                	mv	a4,a5
    80006914:	4785                	li	a5,1
    80006916:	00f70a63          	beq	a4,a5,8000692a <namex+0x84>
    8000691a:	fe843503          	ld	a0,-24(s0)
    8000691e:	fffff097          	auipc	ra,0xfffff
    80006922:	5de080e7          	jalr	1502(ra) # 80005efc <iunlockput>
    80006926:	4781                	li	a5,0
    80006928:	a871                	j	800069c4 <namex+0x11e>
    8000692a:	fd442783          	lw	a5,-44(s0)
    8000692e:	2781                	sext.w	a5,a5
    80006930:	cf99                	beqz	a5,8000694e <namex+0xa8>
    80006932:	fd843783          	ld	a5,-40(s0)
    80006936:	0007c783          	lbu	a5,0(a5)
    8000693a:	eb91                	bnez	a5,8000694e <namex+0xa8>
    8000693c:	fe843503          	ld	a0,-24(s0)
    80006940:	fffff097          	auipc	ra,0xfffff
    80006944:	492080e7          	jalr	1170(ra) # 80005dd2 <iunlock>
    80006948:	fe843783          	ld	a5,-24(s0)
    8000694c:	a8a5                	j	800069c4 <namex+0x11e>
    8000694e:	4601                	li	a2,0
    80006950:	fc843583          	ld	a1,-56(s0)
    80006954:	fe843503          	ld	a0,-24(s0)
    80006958:	00000097          	auipc	ra,0x0
    8000695c:	c84080e7          	jalr	-892(ra) # 800065dc <dirlookup>
    80006960:	fea43023          	sd	a0,-32(s0)
    80006964:	fe043783          	ld	a5,-32(s0)
    80006968:	eb89                	bnez	a5,8000697a <namex+0xd4>
    8000696a:	fe843503          	ld	a0,-24(s0)
    8000696e:	fffff097          	auipc	ra,0xfffff
    80006972:	58e080e7          	jalr	1422(ra) # 80005efc <iunlockput>
    80006976:	4781                	li	a5,0
    80006978:	a0b1                	j	800069c4 <namex+0x11e>
    8000697a:	fe843503          	ld	a0,-24(s0)
    8000697e:	fffff097          	auipc	ra,0xfffff
    80006982:	57e080e7          	jalr	1406(ra) # 80005efc <iunlockput>
    80006986:	fe043783          	ld	a5,-32(s0)
    8000698a:	fef43423          	sd	a5,-24(s0)
    8000698e:	fc843583          	ld	a1,-56(s0)
    80006992:	fd843503          	ld	a0,-40(s0)
    80006996:	00000097          	auipc	ra,0x0
    8000699a:	e22080e7          	jalr	-478(ra) # 800067b8 <skipelem>
    8000699e:	fca43c23          	sd	a0,-40(s0)
    800069a2:	fd843783          	ld	a5,-40(s0)
    800069a6:	ffa1                	bnez	a5,800068fe <namex+0x58>
    800069a8:	fd442783          	lw	a5,-44(s0)
    800069ac:	2781                	sext.w	a5,a5
    800069ae:	cb89                	beqz	a5,800069c0 <namex+0x11a>
    800069b0:	fe843503          	ld	a0,-24(s0)
    800069b4:	fffff097          	auipc	ra,0xfffff
    800069b8:	478080e7          	jalr	1144(ra) # 80005e2c <iput>
    800069bc:	4781                	li	a5,0
    800069be:	a019                	j	800069c4 <namex+0x11e>
    800069c0:	fe843783          	ld	a5,-24(s0)
    800069c4:	853e                	mv	a0,a5
    800069c6:	70e2                	ld	ra,56(sp)
    800069c8:	7442                	ld	s0,48(sp)
    800069ca:	6121                	addi	sp,sp,64
    800069cc:	8082                	ret

00000000800069ce <namei>:
    800069ce:	7179                	addi	sp,sp,-48
    800069d0:	f406                	sd	ra,40(sp)
    800069d2:	f022                	sd	s0,32(sp)
    800069d4:	1800                	addi	s0,sp,48
    800069d6:	fca43c23          	sd	a0,-40(s0)
    800069da:	fe040793          	addi	a5,s0,-32
    800069de:	863e                	mv	a2,a5
    800069e0:	4581                	li	a1,0
    800069e2:	fd843503          	ld	a0,-40(s0)
    800069e6:	00000097          	auipc	ra,0x0
    800069ea:	ec0080e7          	jalr	-320(ra) # 800068a6 <namex>
    800069ee:	87aa                	mv	a5,a0
    800069f0:	853e                	mv	a0,a5
    800069f2:	70a2                	ld	ra,40(sp)
    800069f4:	7402                	ld	s0,32(sp)
    800069f6:	6145                	addi	sp,sp,48
    800069f8:	8082                	ret

00000000800069fa <nameiparent>:
    800069fa:	1101                	addi	sp,sp,-32
    800069fc:	ec06                	sd	ra,24(sp)
    800069fe:	e822                	sd	s0,16(sp)
    80006a00:	1000                	addi	s0,sp,32
    80006a02:	fea43423          	sd	a0,-24(s0)
    80006a06:	feb43023          	sd	a1,-32(s0)
    80006a0a:	fe043603          	ld	a2,-32(s0)
    80006a0e:	4585                	li	a1,1
    80006a10:	fe843503          	ld	a0,-24(s0)
    80006a14:	00000097          	auipc	ra,0x0
    80006a18:	e92080e7          	jalr	-366(ra) # 800068a6 <namex>
    80006a1c:	87aa                	mv	a5,a0
    80006a1e:	853e                	mv	a0,a5
    80006a20:	60e2                	ld	ra,24(sp)
    80006a22:	6442                	ld	s0,16(sp)
    80006a24:	6105                	addi	sp,sp,32
    80006a26:	8082                	ret

0000000080006a28 <initlog>:
    80006a28:	1101                	addi	sp,sp,-32
    80006a2a:	ec06                	sd	ra,24(sp)
    80006a2c:	e822                	sd	s0,16(sp)
    80006a2e:	1000                	addi	s0,sp,32
    80006a30:	87aa                	mv	a5,a0
    80006a32:	feb43023          	sd	a1,-32(s0)
    80006a36:	fef42623          	sw	a5,-20(s0)
    80006a3a:	00006597          	auipc	a1,0x6
    80006a3e:	cee58593          	addi	a1,a1,-786 # 8000c728 <etext+0x728>
    80006a42:	00020517          	auipc	a0,0x20
    80006a46:	aee50513          	addi	a0,a0,-1298 # 80026530 <log>
    80006a4a:	ffffa097          	auipc	ra,0xffffa
    80006a4e:	7fe080e7          	jalr	2046(ra) # 80001248 <initlock>
    80006a52:	fe043783          	ld	a5,-32(s0)
    80006a56:	4bdc                	lw	a5,20(a5)
    80006a58:	0007871b          	sext.w	a4,a5
    80006a5c:	00020797          	auipc	a5,0x20
    80006a60:	ad478793          	addi	a5,a5,-1324 # 80026530 <log>
    80006a64:	cf98                	sw	a4,24(a5)
    80006a66:	fe043783          	ld	a5,-32(s0)
    80006a6a:	4b9c                	lw	a5,16(a5)
    80006a6c:	0007871b          	sext.w	a4,a5
    80006a70:	00020797          	auipc	a5,0x20
    80006a74:	ac078793          	addi	a5,a5,-1344 # 80026530 <log>
    80006a78:	cfd8                	sw	a4,28(a5)
    80006a7a:	00020797          	auipc	a5,0x20
    80006a7e:	ab678793          	addi	a5,a5,-1354 # 80026530 <log>
    80006a82:	fec42703          	lw	a4,-20(s0)
    80006a86:	d798                	sw	a4,40(a5)
    80006a88:	00000097          	auipc	ra,0x0
    80006a8c:	272080e7          	jalr	626(ra) # 80006cfa <recover_from_log>
    80006a90:	0001                	nop
    80006a92:	60e2                	ld	ra,24(sp)
    80006a94:	6442                	ld	s0,16(sp)
    80006a96:	6105                	addi	sp,sp,32
    80006a98:	8082                	ret

0000000080006a9a <install_trans>:
    80006a9a:	7139                	addi	sp,sp,-64
    80006a9c:	fc06                	sd	ra,56(sp)
    80006a9e:	f822                	sd	s0,48(sp)
    80006aa0:	0080                	addi	s0,sp,64
    80006aa2:	87aa                	mv	a5,a0
    80006aa4:	fcf42623          	sw	a5,-52(s0)
    80006aa8:	fe042623          	sw	zero,-20(s0)
    80006aac:	a0f9                	j	80006b7a <install_trans+0xe0>
    80006aae:	00020797          	auipc	a5,0x20
    80006ab2:	a8278793          	addi	a5,a5,-1406 # 80026530 <log>
    80006ab6:	579c                	lw	a5,40(a5)
    80006ab8:	0007871b          	sext.w	a4,a5
    80006abc:	00020797          	auipc	a5,0x20
    80006ac0:	a7478793          	addi	a5,a5,-1420 # 80026530 <log>
    80006ac4:	4f9c                	lw	a5,24(a5)
    80006ac6:	fec42683          	lw	a3,-20(s0)
    80006aca:	9fb5                	addw	a5,a5,a3
    80006acc:	2781                	sext.w	a5,a5
    80006ace:	2785                	addiw	a5,a5,1
    80006ad0:	2781                	sext.w	a5,a5
    80006ad2:	2781                	sext.w	a5,a5
    80006ad4:	85be                	mv	a1,a5
    80006ad6:	853a                	mv	a0,a4
    80006ad8:	ffffe097          	auipc	ra,0xffffe
    80006adc:	7f2080e7          	jalr	2034(ra) # 800052ca <bread>
    80006ae0:	fea43023          	sd	a0,-32(s0)
    80006ae4:	00020797          	auipc	a5,0x20
    80006ae8:	a4c78793          	addi	a5,a5,-1460 # 80026530 <log>
    80006aec:	579c                	lw	a5,40(a5)
    80006aee:	0007869b          	sext.w	a3,a5
    80006af2:	00020717          	auipc	a4,0x20
    80006af6:	a3e70713          	addi	a4,a4,-1474 # 80026530 <log>
    80006afa:	fec42783          	lw	a5,-20(s0)
    80006afe:	07a1                	addi	a5,a5,8
    80006b00:	078a                	slli	a5,a5,0x2
    80006b02:	97ba                	add	a5,a5,a4
    80006b04:	4b9c                	lw	a5,16(a5)
    80006b06:	2781                	sext.w	a5,a5
    80006b08:	85be                	mv	a1,a5
    80006b0a:	8536                	mv	a0,a3
    80006b0c:	ffffe097          	auipc	ra,0xffffe
    80006b10:	7be080e7          	jalr	1982(ra) # 800052ca <bread>
    80006b14:	fca43c23          	sd	a0,-40(s0)
    80006b18:	fd843783          	ld	a5,-40(s0)
    80006b1c:	05878713          	addi	a4,a5,88
    80006b20:	fe043783          	ld	a5,-32(s0)
    80006b24:	05878793          	addi	a5,a5,88
    80006b28:	40000613          	li	a2,1024
    80006b2c:	85be                	mv	a1,a5
    80006b2e:	853a                	mv	a0,a4
    80006b30:	ffffb097          	auipc	ra,0xffffb
    80006b34:	a00080e7          	jalr	-1536(ra) # 80001530 <memmove>
    80006b38:	fd843503          	ld	a0,-40(s0)
    80006b3c:	ffffe097          	auipc	ra,0xffffe
    80006b40:	7e8080e7          	jalr	2024(ra) # 80005324 <bwrite>
    80006b44:	fcc42783          	lw	a5,-52(s0)
    80006b48:	2781                	sext.w	a5,a5
    80006b4a:	e799                	bnez	a5,80006b58 <install_trans+0xbe>
    80006b4c:	fd843503          	ld	a0,-40(s0)
    80006b50:	fffff097          	auipc	ra,0xfffff
    80006b54:	952080e7          	jalr	-1710(ra) # 800054a2 <bunpin>
    80006b58:	fe043503          	ld	a0,-32(s0)
    80006b5c:	fffff097          	auipc	ra,0xfffff
    80006b60:	810080e7          	jalr	-2032(ra) # 8000536c <brelse>
    80006b64:	fd843503          	ld	a0,-40(s0)
    80006b68:	fffff097          	auipc	ra,0xfffff
    80006b6c:	804080e7          	jalr	-2044(ra) # 8000536c <brelse>
    80006b70:	fec42783          	lw	a5,-20(s0)
    80006b74:	2785                	addiw	a5,a5,1
    80006b76:	fef42623          	sw	a5,-20(s0)
    80006b7a:	00020797          	auipc	a5,0x20
    80006b7e:	9b678793          	addi	a5,a5,-1610 # 80026530 <log>
    80006b82:	57d8                	lw	a4,44(a5)
    80006b84:	fec42783          	lw	a5,-20(s0)
    80006b88:	2781                	sext.w	a5,a5
    80006b8a:	f2e7c2e3          	blt	a5,a4,80006aae <install_trans+0x14>
    80006b8e:	0001                	nop
    80006b90:	0001                	nop
    80006b92:	70e2                	ld	ra,56(sp)
    80006b94:	7442                	ld	s0,48(sp)
    80006b96:	6121                	addi	sp,sp,64
    80006b98:	8082                	ret

0000000080006b9a <read_head>:
    80006b9a:	7179                	addi	sp,sp,-48
    80006b9c:	f406                	sd	ra,40(sp)
    80006b9e:	f022                	sd	s0,32(sp)
    80006ba0:	1800                	addi	s0,sp,48
    80006ba2:	00020797          	auipc	a5,0x20
    80006ba6:	98e78793          	addi	a5,a5,-1650 # 80026530 <log>
    80006baa:	579c                	lw	a5,40(a5)
    80006bac:	0007871b          	sext.w	a4,a5
    80006bb0:	00020797          	auipc	a5,0x20
    80006bb4:	98078793          	addi	a5,a5,-1664 # 80026530 <log>
    80006bb8:	4f9c                	lw	a5,24(a5)
    80006bba:	2781                	sext.w	a5,a5
    80006bbc:	85be                	mv	a1,a5
    80006bbe:	853a                	mv	a0,a4
    80006bc0:	ffffe097          	auipc	ra,0xffffe
    80006bc4:	70a080e7          	jalr	1802(ra) # 800052ca <bread>
    80006bc8:	fea43023          	sd	a0,-32(s0)
    80006bcc:	fe043783          	ld	a5,-32(s0)
    80006bd0:	05878793          	addi	a5,a5,88
    80006bd4:	fcf43c23          	sd	a5,-40(s0)
    80006bd8:	fd843783          	ld	a5,-40(s0)
    80006bdc:	4398                	lw	a4,0(a5)
    80006bde:	00020797          	auipc	a5,0x20
    80006be2:	95278793          	addi	a5,a5,-1710 # 80026530 <log>
    80006be6:	d7d8                	sw	a4,44(a5)
    80006be8:	fe042623          	sw	zero,-20(s0)
    80006bec:	a03d                	j	80006c1a <read_head+0x80>
    80006bee:	fd843703          	ld	a4,-40(s0)
    80006bf2:	fec42783          	lw	a5,-20(s0)
    80006bf6:	078a                	slli	a5,a5,0x2
    80006bf8:	97ba                	add	a5,a5,a4
    80006bfa:	43d8                	lw	a4,4(a5)
    80006bfc:	00020697          	auipc	a3,0x20
    80006c00:	93468693          	addi	a3,a3,-1740 # 80026530 <log>
    80006c04:	fec42783          	lw	a5,-20(s0)
    80006c08:	07a1                	addi	a5,a5,8
    80006c0a:	078a                	slli	a5,a5,0x2
    80006c0c:	97b6                	add	a5,a5,a3
    80006c0e:	cb98                	sw	a4,16(a5)
    80006c10:	fec42783          	lw	a5,-20(s0)
    80006c14:	2785                	addiw	a5,a5,1
    80006c16:	fef42623          	sw	a5,-20(s0)
    80006c1a:	00020797          	auipc	a5,0x20
    80006c1e:	91678793          	addi	a5,a5,-1770 # 80026530 <log>
    80006c22:	57d8                	lw	a4,44(a5)
    80006c24:	fec42783          	lw	a5,-20(s0)
    80006c28:	2781                	sext.w	a5,a5
    80006c2a:	fce7c2e3          	blt	a5,a4,80006bee <read_head+0x54>
    80006c2e:	fe043503          	ld	a0,-32(s0)
    80006c32:	ffffe097          	auipc	ra,0xffffe
    80006c36:	73a080e7          	jalr	1850(ra) # 8000536c <brelse>
    80006c3a:	0001                	nop
    80006c3c:	70a2                	ld	ra,40(sp)
    80006c3e:	7402                	ld	s0,32(sp)
    80006c40:	6145                	addi	sp,sp,48
    80006c42:	8082                	ret

0000000080006c44 <write_head>:
    80006c44:	7179                	addi	sp,sp,-48
    80006c46:	f406                	sd	ra,40(sp)
    80006c48:	f022                	sd	s0,32(sp)
    80006c4a:	1800                	addi	s0,sp,48
    80006c4c:	00020797          	auipc	a5,0x20
    80006c50:	8e478793          	addi	a5,a5,-1820 # 80026530 <log>
    80006c54:	579c                	lw	a5,40(a5)
    80006c56:	0007871b          	sext.w	a4,a5
    80006c5a:	00020797          	auipc	a5,0x20
    80006c5e:	8d678793          	addi	a5,a5,-1834 # 80026530 <log>
    80006c62:	4f9c                	lw	a5,24(a5)
    80006c64:	2781                	sext.w	a5,a5
    80006c66:	85be                	mv	a1,a5
    80006c68:	853a                	mv	a0,a4
    80006c6a:	ffffe097          	auipc	ra,0xffffe
    80006c6e:	660080e7          	jalr	1632(ra) # 800052ca <bread>
    80006c72:	fea43023          	sd	a0,-32(s0)
    80006c76:	fe043783          	ld	a5,-32(s0)
    80006c7a:	05878793          	addi	a5,a5,88
    80006c7e:	fcf43c23          	sd	a5,-40(s0)
    80006c82:	00020797          	auipc	a5,0x20
    80006c86:	8ae78793          	addi	a5,a5,-1874 # 80026530 <log>
    80006c8a:	57d8                	lw	a4,44(a5)
    80006c8c:	fd843783          	ld	a5,-40(s0)
    80006c90:	c398                	sw	a4,0(a5)
    80006c92:	fe042623          	sw	zero,-20(s0)
    80006c96:	a03d                	j	80006cc4 <write_head+0x80>
    80006c98:	00020717          	auipc	a4,0x20
    80006c9c:	89870713          	addi	a4,a4,-1896 # 80026530 <log>
    80006ca0:	fec42783          	lw	a5,-20(s0)
    80006ca4:	07a1                	addi	a5,a5,8
    80006ca6:	078a                	slli	a5,a5,0x2
    80006ca8:	97ba                	add	a5,a5,a4
    80006caa:	4b98                	lw	a4,16(a5)
    80006cac:	fd843683          	ld	a3,-40(s0)
    80006cb0:	fec42783          	lw	a5,-20(s0)
    80006cb4:	078a                	slli	a5,a5,0x2
    80006cb6:	97b6                	add	a5,a5,a3
    80006cb8:	c3d8                	sw	a4,4(a5)
    80006cba:	fec42783          	lw	a5,-20(s0)
    80006cbe:	2785                	addiw	a5,a5,1
    80006cc0:	fef42623          	sw	a5,-20(s0)
    80006cc4:	00020797          	auipc	a5,0x20
    80006cc8:	86c78793          	addi	a5,a5,-1940 # 80026530 <log>
    80006ccc:	57d8                	lw	a4,44(a5)
    80006cce:	fec42783          	lw	a5,-20(s0)
    80006cd2:	2781                	sext.w	a5,a5
    80006cd4:	fce7c2e3          	blt	a5,a4,80006c98 <write_head+0x54>
    80006cd8:	fe043503          	ld	a0,-32(s0)
    80006cdc:	ffffe097          	auipc	ra,0xffffe
    80006ce0:	648080e7          	jalr	1608(ra) # 80005324 <bwrite>
    80006ce4:	fe043503          	ld	a0,-32(s0)
    80006ce8:	ffffe097          	auipc	ra,0xffffe
    80006cec:	684080e7          	jalr	1668(ra) # 8000536c <brelse>
    80006cf0:	0001                	nop
    80006cf2:	70a2                	ld	ra,40(sp)
    80006cf4:	7402                	ld	s0,32(sp)
    80006cf6:	6145                	addi	sp,sp,48
    80006cf8:	8082                	ret

0000000080006cfa <recover_from_log>:
    80006cfa:	1141                	addi	sp,sp,-16
    80006cfc:	e406                	sd	ra,8(sp)
    80006cfe:	e022                	sd	s0,0(sp)
    80006d00:	0800                	addi	s0,sp,16
    80006d02:	00000097          	auipc	ra,0x0
    80006d06:	e98080e7          	jalr	-360(ra) # 80006b9a <read_head>
    80006d0a:	4505                	li	a0,1
    80006d0c:	00000097          	auipc	ra,0x0
    80006d10:	d8e080e7          	jalr	-626(ra) # 80006a9a <install_trans>
    80006d14:	00020797          	auipc	a5,0x20
    80006d18:	81c78793          	addi	a5,a5,-2020 # 80026530 <log>
    80006d1c:	0207a623          	sw	zero,44(a5)
    80006d20:	00000097          	auipc	ra,0x0
    80006d24:	f24080e7          	jalr	-220(ra) # 80006c44 <write_head>
    80006d28:	0001                	nop
    80006d2a:	60a2                	ld	ra,8(sp)
    80006d2c:	6402                	ld	s0,0(sp)
    80006d2e:	0141                	addi	sp,sp,16
    80006d30:	8082                	ret

0000000080006d32 <begin_op>:
    80006d32:	1141                	addi	sp,sp,-16
    80006d34:	e406                	sd	ra,8(sp)
    80006d36:	e022                	sd	s0,0(sp)
    80006d38:	0800                	addi	s0,sp,16
    80006d3a:	0001f517          	auipc	a0,0x1f
    80006d3e:	7f650513          	addi	a0,a0,2038 # 80026530 <log>
    80006d42:	ffffa097          	auipc	ra,0xffffa
    80006d46:	536080e7          	jalr	1334(ra) # 80001278 <acquire>
    80006d4a:	0001f797          	auipc	a5,0x1f
    80006d4e:	7e678793          	addi	a5,a5,2022 # 80026530 <log>
    80006d52:	53dc                	lw	a5,36(a5)
    80006d54:	cf91                	beqz	a5,80006d70 <begin_op+0x3e>
    80006d56:	0001f597          	auipc	a1,0x1f
    80006d5a:	7da58593          	addi	a1,a1,2010 # 80026530 <log>
    80006d5e:	0001f517          	auipc	a0,0x1f
    80006d62:	7d250513          	addi	a0,a0,2002 # 80026530 <log>
    80006d66:	ffffd097          	auipc	ra,0xffffd
    80006d6a:	d6e080e7          	jalr	-658(ra) # 80003ad4 <sleep>
    80006d6e:	bff1                	j	80006d4a <begin_op+0x18>
    80006d70:	0001f797          	auipc	a5,0x1f
    80006d74:	7c078793          	addi	a5,a5,1984 # 80026530 <log>
    80006d78:	57d8                	lw	a4,44(a5)
    80006d7a:	0001f797          	auipc	a5,0x1f
    80006d7e:	7b678793          	addi	a5,a5,1974 # 80026530 <log>
    80006d82:	539c                	lw	a5,32(a5)
    80006d84:	2785                	addiw	a5,a5,1
    80006d86:	2781                	sext.w	a5,a5
    80006d88:	86be                	mv	a3,a5
    80006d8a:	87b6                	mv	a5,a3
    80006d8c:	0027979b          	slliw	a5,a5,0x2
    80006d90:	9fb5                	addw	a5,a5,a3
    80006d92:	0017979b          	slliw	a5,a5,0x1
    80006d96:	2781                	sext.w	a5,a5
    80006d98:	9fb9                	addw	a5,a5,a4
    80006d9a:	2781                	sext.w	a5,a5
    80006d9c:	873e                	mv	a4,a5
    80006d9e:	47f9                	li	a5,30
    80006da0:	00e7df63          	bge	a5,a4,80006dbe <begin_op+0x8c>
    80006da4:	0001f597          	auipc	a1,0x1f
    80006da8:	78c58593          	addi	a1,a1,1932 # 80026530 <log>
    80006dac:	0001f517          	auipc	a0,0x1f
    80006db0:	78450513          	addi	a0,a0,1924 # 80026530 <log>
    80006db4:	ffffd097          	auipc	ra,0xffffd
    80006db8:	d20080e7          	jalr	-736(ra) # 80003ad4 <sleep>
    80006dbc:	b779                	j	80006d4a <begin_op+0x18>
    80006dbe:	0001f797          	auipc	a5,0x1f
    80006dc2:	77278793          	addi	a5,a5,1906 # 80026530 <log>
    80006dc6:	539c                	lw	a5,32(a5)
    80006dc8:	2785                	addiw	a5,a5,1
    80006dca:	0007871b          	sext.w	a4,a5
    80006dce:	0001f797          	auipc	a5,0x1f
    80006dd2:	76278793          	addi	a5,a5,1890 # 80026530 <log>
    80006dd6:	d398                	sw	a4,32(a5)
    80006dd8:	0001f517          	auipc	a0,0x1f
    80006ddc:	75850513          	addi	a0,a0,1880 # 80026530 <log>
    80006de0:	ffffa097          	auipc	ra,0xffffa
    80006de4:	4fc080e7          	jalr	1276(ra) # 800012dc <release>
    80006de8:	0001                	nop
    80006dea:	0001                	nop
    80006dec:	60a2                	ld	ra,8(sp)
    80006dee:	6402                	ld	s0,0(sp)
    80006df0:	0141                	addi	sp,sp,16
    80006df2:	8082                	ret

0000000080006df4 <end_op>:
    80006df4:	1101                	addi	sp,sp,-32
    80006df6:	ec06                	sd	ra,24(sp)
    80006df8:	e822                	sd	s0,16(sp)
    80006dfa:	1000                	addi	s0,sp,32
    80006dfc:	fe042623          	sw	zero,-20(s0)
    80006e00:	0001f517          	auipc	a0,0x1f
    80006e04:	73050513          	addi	a0,a0,1840 # 80026530 <log>
    80006e08:	ffffa097          	auipc	ra,0xffffa
    80006e0c:	470080e7          	jalr	1136(ra) # 80001278 <acquire>
    80006e10:	0001f797          	auipc	a5,0x1f
    80006e14:	72078793          	addi	a5,a5,1824 # 80026530 <log>
    80006e18:	539c                	lw	a5,32(a5)
    80006e1a:	37fd                	addiw	a5,a5,-1
    80006e1c:	0007871b          	sext.w	a4,a5
    80006e20:	0001f797          	auipc	a5,0x1f
    80006e24:	71078793          	addi	a5,a5,1808 # 80026530 <log>
    80006e28:	d398                	sw	a4,32(a5)
    80006e2a:	0001f797          	auipc	a5,0x1f
    80006e2e:	70678793          	addi	a5,a5,1798 # 80026530 <log>
    80006e32:	53dc                	lw	a5,36(a5)
    80006e34:	cb89                	beqz	a5,80006e46 <end_op+0x52>
    80006e36:	00006517          	auipc	a0,0x6
    80006e3a:	8fa50513          	addi	a0,a0,-1798 # 8000c730 <etext+0x730>
    80006e3e:	ffffa097          	auipc	ra,0xffffa
    80006e42:	e4c080e7          	jalr	-436(ra) # 80000c8a <panic>
    80006e46:	0001f797          	auipc	a5,0x1f
    80006e4a:	6ea78793          	addi	a5,a5,1770 # 80026530 <log>
    80006e4e:	539c                	lw	a5,32(a5)
    80006e50:	eb99                	bnez	a5,80006e66 <end_op+0x72>
    80006e52:	4785                	li	a5,1
    80006e54:	fef42623          	sw	a5,-20(s0)
    80006e58:	0001f797          	auipc	a5,0x1f
    80006e5c:	6d878793          	addi	a5,a5,1752 # 80026530 <log>
    80006e60:	4705                	li	a4,1
    80006e62:	d3d8                	sw	a4,36(a5)
    80006e64:	a809                	j	80006e76 <end_op+0x82>
    80006e66:	0001f517          	auipc	a0,0x1f
    80006e6a:	6ca50513          	addi	a0,a0,1738 # 80026530 <log>
    80006e6e:	ffffd097          	auipc	ra,0xffffd
    80006e72:	ce2080e7          	jalr	-798(ra) # 80003b50 <wakeup>
    80006e76:	0001f517          	auipc	a0,0x1f
    80006e7a:	6ba50513          	addi	a0,a0,1722 # 80026530 <log>
    80006e7e:	ffffa097          	auipc	ra,0xffffa
    80006e82:	45e080e7          	jalr	1118(ra) # 800012dc <release>
    80006e86:	fec42783          	lw	a5,-20(s0)
    80006e8a:	2781                	sext.w	a5,a5
    80006e8c:	c3b9                	beqz	a5,80006ed2 <end_op+0xde>
    80006e8e:	00000097          	auipc	ra,0x0
    80006e92:	134080e7          	jalr	308(ra) # 80006fc2 <commit>
    80006e96:	0001f517          	auipc	a0,0x1f
    80006e9a:	69a50513          	addi	a0,a0,1690 # 80026530 <log>
    80006e9e:	ffffa097          	auipc	ra,0xffffa
    80006ea2:	3da080e7          	jalr	986(ra) # 80001278 <acquire>
    80006ea6:	0001f797          	auipc	a5,0x1f
    80006eaa:	68a78793          	addi	a5,a5,1674 # 80026530 <log>
    80006eae:	0207a223          	sw	zero,36(a5)
    80006eb2:	0001f517          	auipc	a0,0x1f
    80006eb6:	67e50513          	addi	a0,a0,1662 # 80026530 <log>
    80006eba:	ffffd097          	auipc	ra,0xffffd
    80006ebe:	c96080e7          	jalr	-874(ra) # 80003b50 <wakeup>
    80006ec2:	0001f517          	auipc	a0,0x1f
    80006ec6:	66e50513          	addi	a0,a0,1646 # 80026530 <log>
    80006eca:	ffffa097          	auipc	ra,0xffffa
    80006ece:	412080e7          	jalr	1042(ra) # 800012dc <release>
    80006ed2:	0001                	nop
    80006ed4:	60e2                	ld	ra,24(sp)
    80006ed6:	6442                	ld	s0,16(sp)
    80006ed8:	6105                	addi	sp,sp,32
    80006eda:	8082                	ret

0000000080006edc <write_log>:
    80006edc:	7179                	addi	sp,sp,-48
    80006ede:	f406                	sd	ra,40(sp)
    80006ee0:	f022                	sd	s0,32(sp)
    80006ee2:	1800                	addi	s0,sp,48
    80006ee4:	fe042623          	sw	zero,-20(s0)
    80006ee8:	a86d                	j	80006fa2 <write_log+0xc6>
    80006eea:	0001f797          	auipc	a5,0x1f
    80006eee:	64678793          	addi	a5,a5,1606 # 80026530 <log>
    80006ef2:	579c                	lw	a5,40(a5)
    80006ef4:	0007871b          	sext.w	a4,a5
    80006ef8:	0001f797          	auipc	a5,0x1f
    80006efc:	63878793          	addi	a5,a5,1592 # 80026530 <log>
    80006f00:	4f9c                	lw	a5,24(a5)
    80006f02:	fec42683          	lw	a3,-20(s0)
    80006f06:	9fb5                	addw	a5,a5,a3
    80006f08:	2781                	sext.w	a5,a5
    80006f0a:	2785                	addiw	a5,a5,1
    80006f0c:	2781                	sext.w	a5,a5
    80006f0e:	2781                	sext.w	a5,a5
    80006f10:	85be                	mv	a1,a5
    80006f12:	853a                	mv	a0,a4
    80006f14:	ffffe097          	auipc	ra,0xffffe
    80006f18:	3b6080e7          	jalr	950(ra) # 800052ca <bread>
    80006f1c:	fea43023          	sd	a0,-32(s0)
    80006f20:	0001f797          	auipc	a5,0x1f
    80006f24:	61078793          	addi	a5,a5,1552 # 80026530 <log>
    80006f28:	579c                	lw	a5,40(a5)
    80006f2a:	0007869b          	sext.w	a3,a5
    80006f2e:	0001f717          	auipc	a4,0x1f
    80006f32:	60270713          	addi	a4,a4,1538 # 80026530 <log>
    80006f36:	fec42783          	lw	a5,-20(s0)
    80006f3a:	07a1                	addi	a5,a5,8
    80006f3c:	078a                	slli	a5,a5,0x2
    80006f3e:	97ba                	add	a5,a5,a4
    80006f40:	4b9c                	lw	a5,16(a5)
    80006f42:	2781                	sext.w	a5,a5
    80006f44:	85be                	mv	a1,a5
    80006f46:	8536                	mv	a0,a3
    80006f48:	ffffe097          	auipc	ra,0xffffe
    80006f4c:	382080e7          	jalr	898(ra) # 800052ca <bread>
    80006f50:	fca43c23          	sd	a0,-40(s0)
    80006f54:	fe043783          	ld	a5,-32(s0)
    80006f58:	05878713          	addi	a4,a5,88
    80006f5c:	fd843783          	ld	a5,-40(s0)
    80006f60:	05878793          	addi	a5,a5,88
    80006f64:	40000613          	li	a2,1024
    80006f68:	85be                	mv	a1,a5
    80006f6a:	853a                	mv	a0,a4
    80006f6c:	ffffa097          	auipc	ra,0xffffa
    80006f70:	5c4080e7          	jalr	1476(ra) # 80001530 <memmove>
    80006f74:	fe043503          	ld	a0,-32(s0)
    80006f78:	ffffe097          	auipc	ra,0xffffe
    80006f7c:	3ac080e7          	jalr	940(ra) # 80005324 <bwrite>
    80006f80:	fd843503          	ld	a0,-40(s0)
    80006f84:	ffffe097          	auipc	ra,0xffffe
    80006f88:	3e8080e7          	jalr	1000(ra) # 8000536c <brelse>
    80006f8c:	fe043503          	ld	a0,-32(s0)
    80006f90:	ffffe097          	auipc	ra,0xffffe
    80006f94:	3dc080e7          	jalr	988(ra) # 8000536c <brelse>
    80006f98:	fec42783          	lw	a5,-20(s0)
    80006f9c:	2785                	addiw	a5,a5,1
    80006f9e:	fef42623          	sw	a5,-20(s0)
    80006fa2:	0001f797          	auipc	a5,0x1f
    80006fa6:	58e78793          	addi	a5,a5,1422 # 80026530 <log>
    80006faa:	57d8                	lw	a4,44(a5)
    80006fac:	fec42783          	lw	a5,-20(s0)
    80006fb0:	2781                	sext.w	a5,a5
    80006fb2:	f2e7cce3          	blt	a5,a4,80006eea <write_log+0xe>
    80006fb6:	0001                	nop
    80006fb8:	0001                	nop
    80006fba:	70a2                	ld	ra,40(sp)
    80006fbc:	7402                	ld	s0,32(sp)
    80006fbe:	6145                	addi	sp,sp,48
    80006fc0:	8082                	ret

0000000080006fc2 <commit>:
    80006fc2:	1141                	addi	sp,sp,-16
    80006fc4:	e406                	sd	ra,8(sp)
    80006fc6:	e022                	sd	s0,0(sp)
    80006fc8:	0800                	addi	s0,sp,16
    80006fca:	0001f797          	auipc	a5,0x1f
    80006fce:	56678793          	addi	a5,a5,1382 # 80026530 <log>
    80006fd2:	57dc                	lw	a5,44(a5)
    80006fd4:	02f05963          	blez	a5,80007006 <commit+0x44>
    80006fd8:	00000097          	auipc	ra,0x0
    80006fdc:	f04080e7          	jalr	-252(ra) # 80006edc <write_log>
    80006fe0:	00000097          	auipc	ra,0x0
    80006fe4:	c64080e7          	jalr	-924(ra) # 80006c44 <write_head>
    80006fe8:	4501                	li	a0,0
    80006fea:	00000097          	auipc	ra,0x0
    80006fee:	ab0080e7          	jalr	-1360(ra) # 80006a9a <install_trans>
    80006ff2:	0001f797          	auipc	a5,0x1f
    80006ff6:	53e78793          	addi	a5,a5,1342 # 80026530 <log>
    80006ffa:	0207a623          	sw	zero,44(a5)
    80006ffe:	00000097          	auipc	ra,0x0
    80007002:	c46080e7          	jalr	-954(ra) # 80006c44 <write_head>
    80007006:	0001                	nop
    80007008:	60a2                	ld	ra,8(sp)
    8000700a:	6402                	ld	s0,0(sp)
    8000700c:	0141                	addi	sp,sp,16
    8000700e:	8082                	ret

0000000080007010 <log_write>:
    80007010:	7179                	addi	sp,sp,-48
    80007012:	f406                	sd	ra,40(sp)
    80007014:	f022                	sd	s0,32(sp)
    80007016:	1800                	addi	s0,sp,48
    80007018:	fca43c23          	sd	a0,-40(s0)
    8000701c:	0001f517          	auipc	a0,0x1f
    80007020:	51450513          	addi	a0,a0,1300 # 80026530 <log>
    80007024:	ffffa097          	auipc	ra,0xffffa
    80007028:	254080e7          	jalr	596(ra) # 80001278 <acquire>
    8000702c:	0001f797          	auipc	a5,0x1f
    80007030:	50478793          	addi	a5,a5,1284 # 80026530 <log>
    80007034:	57dc                	lw	a5,44(a5)
    80007036:	873e                	mv	a4,a5
    80007038:	47f5                	li	a5,29
    8000703a:	02e7c063          	blt	a5,a4,8000705a <log_write+0x4a>
    8000703e:	0001f797          	auipc	a5,0x1f
    80007042:	4f278793          	addi	a5,a5,1266 # 80026530 <log>
    80007046:	57d8                	lw	a4,44(a5)
    80007048:	0001f797          	auipc	a5,0x1f
    8000704c:	4e878793          	addi	a5,a5,1256 # 80026530 <log>
    80007050:	4fdc                	lw	a5,28(a5)
    80007052:	37fd                	addiw	a5,a5,-1
    80007054:	2781                	sext.w	a5,a5
    80007056:	00f74a63          	blt	a4,a5,8000706a <log_write+0x5a>
    8000705a:	00005517          	auipc	a0,0x5
    8000705e:	6e650513          	addi	a0,a0,1766 # 8000c740 <etext+0x740>
    80007062:	ffffa097          	auipc	ra,0xffffa
    80007066:	c28080e7          	jalr	-984(ra) # 80000c8a <panic>
    8000706a:	0001f797          	auipc	a5,0x1f
    8000706e:	4c678793          	addi	a5,a5,1222 # 80026530 <log>
    80007072:	539c                	lw	a5,32(a5)
    80007074:	00f04a63          	bgtz	a5,80007088 <log_write+0x78>
    80007078:	00005517          	auipc	a0,0x5
    8000707c:	6e050513          	addi	a0,a0,1760 # 8000c758 <etext+0x758>
    80007080:	ffffa097          	auipc	ra,0xffffa
    80007084:	c0a080e7          	jalr	-1014(ra) # 80000c8a <panic>
    80007088:	fe042623          	sw	zero,-20(s0)
    8000708c:	a03d                	j	800070ba <log_write+0xaa>
    8000708e:	0001f717          	auipc	a4,0x1f
    80007092:	4a270713          	addi	a4,a4,1186 # 80026530 <log>
    80007096:	fec42783          	lw	a5,-20(s0)
    8000709a:	07a1                	addi	a5,a5,8
    8000709c:	078a                	slli	a5,a5,0x2
    8000709e:	97ba                	add	a5,a5,a4
    800070a0:	4b9c                	lw	a5,16(a5)
    800070a2:	0007871b          	sext.w	a4,a5
    800070a6:	fd843783          	ld	a5,-40(s0)
    800070aa:	47dc                	lw	a5,12(a5)
    800070ac:	02f70263          	beq	a4,a5,800070d0 <log_write+0xc0>
    800070b0:	fec42783          	lw	a5,-20(s0)
    800070b4:	2785                	addiw	a5,a5,1
    800070b6:	fef42623          	sw	a5,-20(s0)
    800070ba:	0001f797          	auipc	a5,0x1f
    800070be:	47678793          	addi	a5,a5,1142 # 80026530 <log>
    800070c2:	57d8                	lw	a4,44(a5)
    800070c4:	fec42783          	lw	a5,-20(s0)
    800070c8:	2781                	sext.w	a5,a5
    800070ca:	fce7c2e3          	blt	a5,a4,8000708e <log_write+0x7e>
    800070ce:	a011                	j	800070d2 <log_write+0xc2>
    800070d0:	0001                	nop
    800070d2:	fd843783          	ld	a5,-40(s0)
    800070d6:	47dc                	lw	a5,12(a5)
    800070d8:	0007871b          	sext.w	a4,a5
    800070dc:	0001f697          	auipc	a3,0x1f
    800070e0:	45468693          	addi	a3,a3,1108 # 80026530 <log>
    800070e4:	fec42783          	lw	a5,-20(s0)
    800070e8:	07a1                	addi	a5,a5,8
    800070ea:	078a                	slli	a5,a5,0x2
    800070ec:	97b6                	add	a5,a5,a3
    800070ee:	cb98                	sw	a4,16(a5)
    800070f0:	0001f797          	auipc	a5,0x1f
    800070f4:	44078793          	addi	a5,a5,1088 # 80026530 <log>
    800070f8:	57d8                	lw	a4,44(a5)
    800070fa:	fec42783          	lw	a5,-20(s0)
    800070fe:	2781                	sext.w	a5,a5
    80007100:	02e79563          	bne	a5,a4,8000712a <log_write+0x11a>
    80007104:	fd843503          	ld	a0,-40(s0)
    80007108:	ffffe097          	auipc	ra,0xffffe
    8000710c:	352080e7          	jalr	850(ra) # 8000545a <bpin>
    80007110:	0001f797          	auipc	a5,0x1f
    80007114:	42078793          	addi	a5,a5,1056 # 80026530 <log>
    80007118:	57dc                	lw	a5,44(a5)
    8000711a:	2785                	addiw	a5,a5,1
    8000711c:	0007871b          	sext.w	a4,a5
    80007120:	0001f797          	auipc	a5,0x1f
    80007124:	41078793          	addi	a5,a5,1040 # 80026530 <log>
    80007128:	d7d8                	sw	a4,44(a5)
    8000712a:	0001f517          	auipc	a0,0x1f
    8000712e:	40650513          	addi	a0,a0,1030 # 80026530 <log>
    80007132:	ffffa097          	auipc	ra,0xffffa
    80007136:	1aa080e7          	jalr	426(ra) # 800012dc <release>
    8000713a:	0001                	nop
    8000713c:	70a2                	ld	ra,40(sp)
    8000713e:	7402                	ld	s0,32(sp)
    80007140:	6145                	addi	sp,sp,48
    80007142:	8082                	ret

0000000080007144 <initsleeplock>:
    80007144:	1101                	addi	sp,sp,-32
    80007146:	ec06                	sd	ra,24(sp)
    80007148:	e822                	sd	s0,16(sp)
    8000714a:	1000                	addi	s0,sp,32
    8000714c:	fea43423          	sd	a0,-24(s0)
    80007150:	feb43023          	sd	a1,-32(s0)
    80007154:	fe843783          	ld	a5,-24(s0)
    80007158:	07a1                	addi	a5,a5,8
    8000715a:	00005597          	auipc	a1,0x5
    8000715e:	61e58593          	addi	a1,a1,1566 # 8000c778 <etext+0x778>
    80007162:	853e                	mv	a0,a5
    80007164:	ffffa097          	auipc	ra,0xffffa
    80007168:	0e4080e7          	jalr	228(ra) # 80001248 <initlock>
    8000716c:	fe843783          	ld	a5,-24(s0)
    80007170:	fe043703          	ld	a4,-32(s0)
    80007174:	f398                	sd	a4,32(a5)
    80007176:	fe843783          	ld	a5,-24(s0)
    8000717a:	0007a023          	sw	zero,0(a5)
    8000717e:	fe843783          	ld	a5,-24(s0)
    80007182:	0207a423          	sw	zero,40(a5)
    80007186:	0001                	nop
    80007188:	60e2                	ld	ra,24(sp)
    8000718a:	6442                	ld	s0,16(sp)
    8000718c:	6105                	addi	sp,sp,32
    8000718e:	8082                	ret

0000000080007190 <acquiresleep>:
    80007190:	1101                	addi	sp,sp,-32
    80007192:	ec06                	sd	ra,24(sp)
    80007194:	e822                	sd	s0,16(sp)
    80007196:	1000                	addi	s0,sp,32
    80007198:	fea43423          	sd	a0,-24(s0)
    8000719c:	fe843783          	ld	a5,-24(s0)
    800071a0:	07a1                	addi	a5,a5,8
    800071a2:	853e                	mv	a0,a5
    800071a4:	ffffa097          	auipc	ra,0xffffa
    800071a8:	0d4080e7          	jalr	212(ra) # 80001278 <acquire>
    800071ac:	a819                	j	800071c2 <acquiresleep+0x32>
    800071ae:	fe843783          	ld	a5,-24(s0)
    800071b2:	07a1                	addi	a5,a5,8
    800071b4:	85be                	mv	a1,a5
    800071b6:	fe843503          	ld	a0,-24(s0)
    800071ba:	ffffd097          	auipc	ra,0xffffd
    800071be:	91a080e7          	jalr	-1766(ra) # 80003ad4 <sleep>
    800071c2:	fe843783          	ld	a5,-24(s0)
    800071c6:	439c                	lw	a5,0(a5)
    800071c8:	f3fd                	bnez	a5,800071ae <acquiresleep+0x1e>
    800071ca:	fe843783          	ld	a5,-24(s0)
    800071ce:	4705                	li	a4,1
    800071d0:	c398                	sw	a4,0(a5)
    800071d2:	ffffb097          	auipc	ra,0xffffb
    800071d6:	708080e7          	jalr	1800(ra) # 800028da <myproc>
    800071da:	87aa                	mv	a5,a0
    800071dc:	5b98                	lw	a4,48(a5)
    800071de:	fe843783          	ld	a5,-24(s0)
    800071e2:	d798                	sw	a4,40(a5)
    800071e4:	fe843783          	ld	a5,-24(s0)
    800071e8:	07a1                	addi	a5,a5,8
    800071ea:	853e                	mv	a0,a5
    800071ec:	ffffa097          	auipc	ra,0xffffa
    800071f0:	0f0080e7          	jalr	240(ra) # 800012dc <release>
    800071f4:	0001                	nop
    800071f6:	60e2                	ld	ra,24(sp)
    800071f8:	6442                	ld	s0,16(sp)
    800071fa:	6105                	addi	sp,sp,32
    800071fc:	8082                	ret

00000000800071fe <releasesleep>:
    800071fe:	1101                	addi	sp,sp,-32
    80007200:	ec06                	sd	ra,24(sp)
    80007202:	e822                	sd	s0,16(sp)
    80007204:	1000                	addi	s0,sp,32
    80007206:	fea43423          	sd	a0,-24(s0)
    8000720a:	fe843783          	ld	a5,-24(s0)
    8000720e:	07a1                	addi	a5,a5,8
    80007210:	853e                	mv	a0,a5
    80007212:	ffffa097          	auipc	ra,0xffffa
    80007216:	066080e7          	jalr	102(ra) # 80001278 <acquire>
    8000721a:	fe843783          	ld	a5,-24(s0)
    8000721e:	0007a023          	sw	zero,0(a5)
    80007222:	fe843783          	ld	a5,-24(s0)
    80007226:	0207a423          	sw	zero,40(a5)
    8000722a:	fe843503          	ld	a0,-24(s0)
    8000722e:	ffffd097          	auipc	ra,0xffffd
    80007232:	922080e7          	jalr	-1758(ra) # 80003b50 <wakeup>
    80007236:	fe843783          	ld	a5,-24(s0)
    8000723a:	07a1                	addi	a5,a5,8
    8000723c:	853e                	mv	a0,a5
    8000723e:	ffffa097          	auipc	ra,0xffffa
    80007242:	09e080e7          	jalr	158(ra) # 800012dc <release>
    80007246:	0001                	nop
    80007248:	60e2                	ld	ra,24(sp)
    8000724a:	6442                	ld	s0,16(sp)
    8000724c:	6105                	addi	sp,sp,32
    8000724e:	8082                	ret

0000000080007250 <holdingsleep>:
    80007250:	7139                	addi	sp,sp,-64
    80007252:	fc06                	sd	ra,56(sp)
    80007254:	f822                	sd	s0,48(sp)
    80007256:	f426                	sd	s1,40(sp)
    80007258:	0080                	addi	s0,sp,64
    8000725a:	fca43423          	sd	a0,-56(s0)
    8000725e:	fc843783          	ld	a5,-56(s0)
    80007262:	07a1                	addi	a5,a5,8
    80007264:	853e                	mv	a0,a5
    80007266:	ffffa097          	auipc	ra,0xffffa
    8000726a:	012080e7          	jalr	18(ra) # 80001278 <acquire>
    8000726e:	fc843783          	ld	a5,-56(s0)
    80007272:	439c                	lw	a5,0(a5)
    80007274:	cf99                	beqz	a5,80007292 <holdingsleep+0x42>
    80007276:	fc843783          	ld	a5,-56(s0)
    8000727a:	5784                	lw	s1,40(a5)
    8000727c:	ffffb097          	auipc	ra,0xffffb
    80007280:	65e080e7          	jalr	1630(ra) # 800028da <myproc>
    80007284:	87aa                	mv	a5,a0
    80007286:	5b9c                	lw	a5,48(a5)
    80007288:	8726                	mv	a4,s1
    8000728a:	00f71463          	bne	a4,a5,80007292 <holdingsleep+0x42>
    8000728e:	4785                	li	a5,1
    80007290:	a011                	j	80007294 <holdingsleep+0x44>
    80007292:	4781                	li	a5,0
    80007294:	fcf42e23          	sw	a5,-36(s0)
    80007298:	fc843783          	ld	a5,-56(s0)
    8000729c:	07a1                	addi	a5,a5,8
    8000729e:	853e                	mv	a0,a5
    800072a0:	ffffa097          	auipc	ra,0xffffa
    800072a4:	03c080e7          	jalr	60(ra) # 800012dc <release>
    800072a8:	fdc42783          	lw	a5,-36(s0)
    800072ac:	853e                	mv	a0,a5
    800072ae:	70e2                	ld	ra,56(sp)
    800072b0:	7442                	ld	s0,48(sp)
    800072b2:	74a2                	ld	s1,40(sp)
    800072b4:	6121                	addi	sp,sp,64
    800072b6:	8082                	ret

00000000800072b8 <fileinit>:
    800072b8:	1141                	addi	sp,sp,-16
    800072ba:	e406                	sd	ra,8(sp)
    800072bc:	e022                	sd	s0,0(sp)
    800072be:	0800                	addi	s0,sp,16
    800072c0:	00005597          	auipc	a1,0x5
    800072c4:	4c858593          	addi	a1,a1,1224 # 8000c788 <etext+0x788>
    800072c8:	0001f517          	auipc	a0,0x1f
    800072cc:	3b050513          	addi	a0,a0,944 # 80026678 <ftable>
    800072d0:	ffffa097          	auipc	ra,0xffffa
    800072d4:	f78080e7          	jalr	-136(ra) # 80001248 <initlock>
    800072d8:	0001                	nop
    800072da:	60a2                	ld	ra,8(sp)
    800072dc:	6402                	ld	s0,0(sp)
    800072de:	0141                	addi	sp,sp,16
    800072e0:	8082                	ret

00000000800072e2 <filealloc>:
    800072e2:	1101                	addi	sp,sp,-32
    800072e4:	ec06                	sd	ra,24(sp)
    800072e6:	e822                	sd	s0,16(sp)
    800072e8:	1000                	addi	s0,sp,32
    800072ea:	0001f517          	auipc	a0,0x1f
    800072ee:	38e50513          	addi	a0,a0,910 # 80026678 <ftable>
    800072f2:	ffffa097          	auipc	ra,0xffffa
    800072f6:	f86080e7          	jalr	-122(ra) # 80001278 <acquire>
    800072fa:	0001f797          	auipc	a5,0x1f
    800072fe:	39678793          	addi	a5,a5,918 # 80026690 <ftable+0x18>
    80007302:	fef43423          	sd	a5,-24(s0)
    80007306:	a815                	j	8000733a <filealloc+0x58>
    80007308:	fe843783          	ld	a5,-24(s0)
    8000730c:	43dc                	lw	a5,4(a5)
    8000730e:	e385                	bnez	a5,8000732e <filealloc+0x4c>
    80007310:	fe843783          	ld	a5,-24(s0)
    80007314:	4705                	li	a4,1
    80007316:	c3d8                	sw	a4,4(a5)
    80007318:	0001f517          	auipc	a0,0x1f
    8000731c:	36050513          	addi	a0,a0,864 # 80026678 <ftable>
    80007320:	ffffa097          	auipc	ra,0xffffa
    80007324:	fbc080e7          	jalr	-68(ra) # 800012dc <release>
    80007328:	fe843783          	ld	a5,-24(s0)
    8000732c:	a805                	j	8000735c <filealloc+0x7a>
    8000732e:	fe843783          	ld	a5,-24(s0)
    80007332:	02878793          	addi	a5,a5,40
    80007336:	fef43423          	sd	a5,-24(s0)
    8000733a:	00020797          	auipc	a5,0x20
    8000733e:	2f678793          	addi	a5,a5,758 # 80027630 <disk>
    80007342:	fe843703          	ld	a4,-24(s0)
    80007346:	fcf761e3          	bltu	a4,a5,80007308 <filealloc+0x26>
    8000734a:	0001f517          	auipc	a0,0x1f
    8000734e:	32e50513          	addi	a0,a0,814 # 80026678 <ftable>
    80007352:	ffffa097          	auipc	ra,0xffffa
    80007356:	f8a080e7          	jalr	-118(ra) # 800012dc <release>
    8000735a:	4781                	li	a5,0
    8000735c:	853e                	mv	a0,a5
    8000735e:	60e2                	ld	ra,24(sp)
    80007360:	6442                	ld	s0,16(sp)
    80007362:	6105                	addi	sp,sp,32
    80007364:	8082                	ret

0000000080007366 <filedup>:
    80007366:	1101                	addi	sp,sp,-32
    80007368:	ec06                	sd	ra,24(sp)
    8000736a:	e822                	sd	s0,16(sp)
    8000736c:	1000                	addi	s0,sp,32
    8000736e:	fea43423          	sd	a0,-24(s0)
    80007372:	0001f517          	auipc	a0,0x1f
    80007376:	30650513          	addi	a0,a0,774 # 80026678 <ftable>
    8000737a:	ffffa097          	auipc	ra,0xffffa
    8000737e:	efe080e7          	jalr	-258(ra) # 80001278 <acquire>
    80007382:	fe843783          	ld	a5,-24(s0)
    80007386:	43dc                	lw	a5,4(a5)
    80007388:	00f04a63          	bgtz	a5,8000739c <filedup+0x36>
    8000738c:	00005517          	auipc	a0,0x5
    80007390:	40450513          	addi	a0,a0,1028 # 8000c790 <etext+0x790>
    80007394:	ffffa097          	auipc	ra,0xffffa
    80007398:	8f6080e7          	jalr	-1802(ra) # 80000c8a <panic>
    8000739c:	fe843783          	ld	a5,-24(s0)
    800073a0:	43dc                	lw	a5,4(a5)
    800073a2:	2785                	addiw	a5,a5,1
    800073a4:	0007871b          	sext.w	a4,a5
    800073a8:	fe843783          	ld	a5,-24(s0)
    800073ac:	c3d8                	sw	a4,4(a5)
    800073ae:	0001f517          	auipc	a0,0x1f
    800073b2:	2ca50513          	addi	a0,a0,714 # 80026678 <ftable>
    800073b6:	ffffa097          	auipc	ra,0xffffa
    800073ba:	f26080e7          	jalr	-218(ra) # 800012dc <release>
    800073be:	fe843783          	ld	a5,-24(s0)
    800073c2:	853e                	mv	a0,a5
    800073c4:	60e2                	ld	ra,24(sp)
    800073c6:	6442                	ld	s0,16(sp)
    800073c8:	6105                	addi	sp,sp,32
    800073ca:	8082                	ret

00000000800073cc <fileclose>:
    800073cc:	715d                	addi	sp,sp,-80
    800073ce:	e486                	sd	ra,72(sp)
    800073d0:	e0a2                	sd	s0,64(sp)
    800073d2:	0880                	addi	s0,sp,80
    800073d4:	faa43c23          	sd	a0,-72(s0)
    800073d8:	0001f517          	auipc	a0,0x1f
    800073dc:	2a050513          	addi	a0,a0,672 # 80026678 <ftable>
    800073e0:	ffffa097          	auipc	ra,0xffffa
    800073e4:	e98080e7          	jalr	-360(ra) # 80001278 <acquire>
    800073e8:	fb843783          	ld	a5,-72(s0)
    800073ec:	43dc                	lw	a5,4(a5)
    800073ee:	00f04a63          	bgtz	a5,80007402 <fileclose+0x36>
    800073f2:	00005517          	auipc	a0,0x5
    800073f6:	3a650513          	addi	a0,a0,934 # 8000c798 <etext+0x798>
    800073fa:	ffffa097          	auipc	ra,0xffffa
    800073fe:	890080e7          	jalr	-1904(ra) # 80000c8a <panic>
    80007402:	fb843783          	ld	a5,-72(s0)
    80007406:	43dc                	lw	a5,4(a5)
    80007408:	37fd                	addiw	a5,a5,-1
    8000740a:	0007871b          	sext.w	a4,a5
    8000740e:	fb843783          	ld	a5,-72(s0)
    80007412:	c3d8                	sw	a4,4(a5)
    80007414:	fb843783          	ld	a5,-72(s0)
    80007418:	43dc                	lw	a5,4(a5)
    8000741a:	00f05b63          	blez	a5,80007430 <fileclose+0x64>
    8000741e:	0001f517          	auipc	a0,0x1f
    80007422:	25a50513          	addi	a0,a0,602 # 80026678 <ftable>
    80007426:	ffffa097          	auipc	ra,0xffffa
    8000742a:	eb6080e7          	jalr	-330(ra) # 800012dc <release>
    8000742e:	a879                	j	800074cc <fileclose+0x100>
    80007430:	fb843783          	ld	a5,-72(s0)
    80007434:	638c                	ld	a1,0(a5)
    80007436:	6790                	ld	a2,8(a5)
    80007438:	6b94                	ld	a3,16(a5)
    8000743a:	6f98                	ld	a4,24(a5)
    8000743c:	739c                	ld	a5,32(a5)
    8000743e:	fcb43423          	sd	a1,-56(s0)
    80007442:	fcc43823          	sd	a2,-48(s0)
    80007446:	fcd43c23          	sd	a3,-40(s0)
    8000744a:	fee43023          	sd	a4,-32(s0)
    8000744e:	fef43423          	sd	a5,-24(s0)
    80007452:	fb843783          	ld	a5,-72(s0)
    80007456:	0007a223          	sw	zero,4(a5)
    8000745a:	fb843783          	ld	a5,-72(s0)
    8000745e:	0007a023          	sw	zero,0(a5)
    80007462:	0001f517          	auipc	a0,0x1f
    80007466:	21650513          	addi	a0,a0,534 # 80026678 <ftable>
    8000746a:	ffffa097          	auipc	ra,0xffffa
    8000746e:	e72080e7          	jalr	-398(ra) # 800012dc <release>
    80007472:	fc842783          	lw	a5,-56(s0)
    80007476:	873e                	mv	a4,a5
    80007478:	4785                	li	a5,1
    8000747a:	00f71e63          	bne	a4,a5,80007496 <fileclose+0xca>
    8000747e:	fd843783          	ld	a5,-40(s0)
    80007482:	fd144703          	lbu	a4,-47(s0)
    80007486:	2701                	sext.w	a4,a4
    80007488:	85ba                	mv	a1,a4
    8000748a:	853e                	mv	a0,a5
    8000748c:	00000097          	auipc	ra,0x0
    80007490:	5a6080e7          	jalr	1446(ra) # 80007a32 <pipeclose>
    80007494:	a825                	j	800074cc <fileclose+0x100>
    80007496:	fc842783          	lw	a5,-56(s0)
    8000749a:	873e                	mv	a4,a5
    8000749c:	4789                	li	a5,2
    8000749e:	00f70863          	beq	a4,a5,800074ae <fileclose+0xe2>
    800074a2:	fc842783          	lw	a5,-56(s0)
    800074a6:	873e                	mv	a4,a5
    800074a8:	478d                	li	a5,3
    800074aa:	02f71163          	bne	a4,a5,800074cc <fileclose+0x100>
    800074ae:	00000097          	auipc	ra,0x0
    800074b2:	884080e7          	jalr	-1916(ra) # 80006d32 <begin_op>
    800074b6:	fe043783          	ld	a5,-32(s0)
    800074ba:	853e                	mv	a0,a5
    800074bc:	fffff097          	auipc	ra,0xfffff
    800074c0:	970080e7          	jalr	-1680(ra) # 80005e2c <iput>
    800074c4:	00000097          	auipc	ra,0x0
    800074c8:	930080e7          	jalr	-1744(ra) # 80006df4 <end_op>
    800074cc:	60a6                	ld	ra,72(sp)
    800074ce:	6406                	ld	s0,64(sp)
    800074d0:	6161                	addi	sp,sp,80
    800074d2:	8082                	ret

00000000800074d4 <filestat>:
    800074d4:	7139                	addi	sp,sp,-64
    800074d6:	fc06                	sd	ra,56(sp)
    800074d8:	f822                	sd	s0,48(sp)
    800074da:	0080                	addi	s0,sp,64
    800074dc:	fca43423          	sd	a0,-56(s0)
    800074e0:	fcb43023          	sd	a1,-64(s0)
    800074e4:	ffffb097          	auipc	ra,0xffffb
    800074e8:	3f6080e7          	jalr	1014(ra) # 800028da <myproc>
    800074ec:	fea43423          	sd	a0,-24(s0)
    800074f0:	fc843783          	ld	a5,-56(s0)
    800074f4:	439c                	lw	a5,0(a5)
    800074f6:	873e                	mv	a4,a5
    800074f8:	4789                	li	a5,2
    800074fa:	00f70963          	beq	a4,a5,8000750c <filestat+0x38>
    800074fe:	fc843783          	ld	a5,-56(s0)
    80007502:	439c                	lw	a5,0(a5)
    80007504:	873e                	mv	a4,a5
    80007506:	478d                	li	a5,3
    80007508:	06f71263          	bne	a4,a5,8000756c <filestat+0x98>
    8000750c:	fc843783          	ld	a5,-56(s0)
    80007510:	6f9c                	ld	a5,24(a5)
    80007512:	853e                	mv	a0,a5
    80007514:	ffffe097          	auipc	ra,0xffffe
    80007518:	78a080e7          	jalr	1930(ra) # 80005c9e <ilock>
    8000751c:	fc843783          	ld	a5,-56(s0)
    80007520:	6f9c                	ld	a5,24(a5)
    80007522:	fd040713          	addi	a4,s0,-48
    80007526:	85ba                	mv	a1,a4
    80007528:	853e                	mv	a0,a5
    8000752a:	fffff097          	auipc	ra,0xfffff
    8000752e:	cc6080e7          	jalr	-826(ra) # 800061f0 <stati>
    80007532:	fc843783          	ld	a5,-56(s0)
    80007536:	6f9c                	ld	a5,24(a5)
    80007538:	853e                	mv	a0,a5
    8000753a:	fffff097          	auipc	ra,0xfffff
    8000753e:	898080e7          	jalr	-1896(ra) # 80005dd2 <iunlock>
    80007542:	fe843783          	ld	a5,-24(s0)
    80007546:	73dc                	ld	a5,160(a5)
    80007548:	fd040713          	addi	a4,s0,-48
    8000754c:	46e1                	li	a3,24
    8000754e:	863a                	mv	a2,a4
    80007550:	fc043583          	ld	a1,-64(s0)
    80007554:	853e                	mv	a0,a5
    80007556:	ffffb097          	auipc	ra,0xffffb
    8000755a:	db4080e7          	jalr	-588(ra) # 8000230a <copyout>
    8000755e:	87aa                	mv	a5,a0
    80007560:	0007d463          	bgez	a5,80007568 <filestat+0x94>
    80007564:	57fd                	li	a5,-1
    80007566:	a021                	j	8000756e <filestat+0x9a>
    80007568:	4781                	li	a5,0
    8000756a:	a011                	j	8000756e <filestat+0x9a>
    8000756c:	57fd                	li	a5,-1
    8000756e:	853e                	mv	a0,a5
    80007570:	70e2                	ld	ra,56(sp)
    80007572:	7442                	ld	s0,48(sp)
    80007574:	6121                	addi	sp,sp,64
    80007576:	8082                	ret

0000000080007578 <fileread>:
    80007578:	7139                	addi	sp,sp,-64
    8000757a:	fc06                	sd	ra,56(sp)
    8000757c:	f822                	sd	s0,48(sp)
    8000757e:	0080                	addi	s0,sp,64
    80007580:	fca43c23          	sd	a0,-40(s0)
    80007584:	fcb43823          	sd	a1,-48(s0)
    80007588:	87b2                	mv	a5,a2
    8000758a:	fcf42623          	sw	a5,-52(s0)
    8000758e:	fe042623          	sw	zero,-20(s0)
    80007592:	fd843783          	ld	a5,-40(s0)
    80007596:	0087c783          	lbu	a5,8(a5)
    8000759a:	e399                	bnez	a5,800075a0 <fileread+0x28>
    8000759c:	57fd                	li	a5,-1
    8000759e:	a23d                	j	800076cc <fileread+0x154>
    800075a0:	fd843783          	ld	a5,-40(s0)
    800075a4:	439c                	lw	a5,0(a5)
    800075a6:	873e                	mv	a4,a5
    800075a8:	4785                	li	a5,1
    800075aa:	02f71363          	bne	a4,a5,800075d0 <fileread+0x58>
    800075ae:	fd843783          	ld	a5,-40(s0)
    800075b2:	6b9c                	ld	a5,16(a5)
    800075b4:	fcc42703          	lw	a4,-52(s0)
    800075b8:	863a                	mv	a2,a4
    800075ba:	fd043583          	ld	a1,-48(s0)
    800075be:	853e                	mv	a0,a5
    800075c0:	00000097          	auipc	ra,0x0
    800075c4:	66e080e7          	jalr	1646(ra) # 80007c2e <piperead>
    800075c8:	87aa                	mv	a5,a0
    800075ca:	fef42623          	sw	a5,-20(s0)
    800075ce:	a8ed                	j	800076c8 <fileread+0x150>
    800075d0:	fd843783          	ld	a5,-40(s0)
    800075d4:	439c                	lw	a5,0(a5)
    800075d6:	873e                	mv	a4,a5
    800075d8:	478d                	li	a5,3
    800075da:	06f71463          	bne	a4,a5,80007642 <fileread+0xca>
    800075de:	fd843783          	ld	a5,-40(s0)
    800075e2:	02479783          	lh	a5,36(a5)
    800075e6:	0207c663          	bltz	a5,80007612 <fileread+0x9a>
    800075ea:	fd843783          	ld	a5,-40(s0)
    800075ee:	02479783          	lh	a5,36(a5)
    800075f2:	873e                	mv	a4,a5
    800075f4:	47a5                	li	a5,9
    800075f6:	00e7ce63          	blt	a5,a4,80007612 <fileread+0x9a>
    800075fa:	fd843783          	ld	a5,-40(s0)
    800075fe:	02479783          	lh	a5,36(a5)
    80007602:	0001f717          	auipc	a4,0x1f
    80007606:	fd670713          	addi	a4,a4,-42 # 800265d8 <devsw>
    8000760a:	0792                	slli	a5,a5,0x4
    8000760c:	97ba                	add	a5,a5,a4
    8000760e:	639c                	ld	a5,0(a5)
    80007610:	e399                	bnez	a5,80007616 <fileread+0x9e>
    80007612:	57fd                	li	a5,-1
    80007614:	a865                	j	800076cc <fileread+0x154>
    80007616:	fd843783          	ld	a5,-40(s0)
    8000761a:	02479783          	lh	a5,36(a5)
    8000761e:	0001f717          	auipc	a4,0x1f
    80007622:	fba70713          	addi	a4,a4,-70 # 800265d8 <devsw>
    80007626:	0792                	slli	a5,a5,0x4
    80007628:	97ba                	add	a5,a5,a4
    8000762a:	639c                	ld	a5,0(a5)
    8000762c:	fcc42703          	lw	a4,-52(s0)
    80007630:	863a                	mv	a2,a4
    80007632:	fd043583          	ld	a1,-48(s0)
    80007636:	4505                	li	a0,1
    80007638:	9782                	jalr	a5
    8000763a:	87aa                	mv	a5,a0
    8000763c:	fef42623          	sw	a5,-20(s0)
    80007640:	a061                	j	800076c8 <fileread+0x150>
    80007642:	fd843783          	ld	a5,-40(s0)
    80007646:	439c                	lw	a5,0(a5)
    80007648:	873e                	mv	a4,a5
    8000764a:	4789                	li	a5,2
    8000764c:	06f71663          	bne	a4,a5,800076b8 <fileread+0x140>
    80007650:	fd843783          	ld	a5,-40(s0)
    80007654:	6f9c                	ld	a5,24(a5)
    80007656:	853e                	mv	a0,a5
    80007658:	ffffe097          	auipc	ra,0xffffe
    8000765c:	646080e7          	jalr	1606(ra) # 80005c9e <ilock>
    80007660:	fd843783          	ld	a5,-40(s0)
    80007664:	6f88                	ld	a0,24(a5)
    80007666:	fd843783          	ld	a5,-40(s0)
    8000766a:	539c                	lw	a5,32(a5)
    8000766c:	fcc42703          	lw	a4,-52(s0)
    80007670:	86be                	mv	a3,a5
    80007672:	fd043603          	ld	a2,-48(s0)
    80007676:	4585                	li	a1,1
    80007678:	fffff097          	auipc	ra,0xfffff
    8000767c:	bdc080e7          	jalr	-1060(ra) # 80006254 <readi>
    80007680:	87aa                	mv	a5,a0
    80007682:	fef42623          	sw	a5,-20(s0)
    80007686:	fec42783          	lw	a5,-20(s0)
    8000768a:	2781                	sext.w	a5,a5
    8000768c:	00f05d63          	blez	a5,800076a6 <fileread+0x12e>
    80007690:	fd843783          	ld	a5,-40(s0)
    80007694:	5398                	lw	a4,32(a5)
    80007696:	fec42783          	lw	a5,-20(s0)
    8000769a:	9fb9                	addw	a5,a5,a4
    8000769c:	0007871b          	sext.w	a4,a5
    800076a0:	fd843783          	ld	a5,-40(s0)
    800076a4:	d398                	sw	a4,32(a5)
    800076a6:	fd843783          	ld	a5,-40(s0)
    800076aa:	6f9c                	ld	a5,24(a5)
    800076ac:	853e                	mv	a0,a5
    800076ae:	ffffe097          	auipc	ra,0xffffe
    800076b2:	724080e7          	jalr	1828(ra) # 80005dd2 <iunlock>
    800076b6:	a809                	j	800076c8 <fileread+0x150>
    800076b8:	00005517          	auipc	a0,0x5
    800076bc:	0f050513          	addi	a0,a0,240 # 8000c7a8 <etext+0x7a8>
    800076c0:	ffff9097          	auipc	ra,0xffff9
    800076c4:	5ca080e7          	jalr	1482(ra) # 80000c8a <panic>
    800076c8:	fec42783          	lw	a5,-20(s0)
    800076cc:	853e                	mv	a0,a5
    800076ce:	70e2                	ld	ra,56(sp)
    800076d0:	7442                	ld	s0,48(sp)
    800076d2:	6121                	addi	sp,sp,64
    800076d4:	8082                	ret

00000000800076d6 <filewrite>:
    800076d6:	715d                	addi	sp,sp,-80
    800076d8:	e486                	sd	ra,72(sp)
    800076da:	e0a2                	sd	s0,64(sp)
    800076dc:	0880                	addi	s0,sp,80
    800076de:	fca43423          	sd	a0,-56(s0)
    800076e2:	fcb43023          	sd	a1,-64(s0)
    800076e6:	87b2                	mv	a5,a2
    800076e8:	faf42e23          	sw	a5,-68(s0)
    800076ec:	fe042623          	sw	zero,-20(s0)
    800076f0:	fc843783          	ld	a5,-56(s0)
    800076f4:	0097c783          	lbu	a5,9(a5)
    800076f8:	e399                	bnez	a5,800076fe <filewrite+0x28>
    800076fa:	57fd                	li	a5,-1
    800076fc:	aae1                	j	800078d4 <filewrite+0x1fe>
    800076fe:	fc843783          	ld	a5,-56(s0)
    80007702:	439c                	lw	a5,0(a5)
    80007704:	873e                	mv	a4,a5
    80007706:	4785                	li	a5,1
    80007708:	02f71363          	bne	a4,a5,8000772e <filewrite+0x58>
    8000770c:	fc843783          	ld	a5,-56(s0)
    80007710:	6b9c                	ld	a5,16(a5)
    80007712:	fbc42703          	lw	a4,-68(s0)
    80007716:	863a                	mv	a2,a4
    80007718:	fc043583          	ld	a1,-64(s0)
    8000771c:	853e                	mv	a0,a5
    8000771e:	00000097          	auipc	ra,0x0
    80007722:	3bc080e7          	jalr	956(ra) # 80007ada <pipewrite>
    80007726:	87aa                	mv	a5,a0
    80007728:	fef42623          	sw	a5,-20(s0)
    8000772c:	a255                	j	800078d0 <filewrite+0x1fa>
    8000772e:	fc843783          	ld	a5,-56(s0)
    80007732:	439c                	lw	a5,0(a5)
    80007734:	873e                	mv	a4,a5
    80007736:	478d                	li	a5,3
    80007738:	06f71463          	bne	a4,a5,800077a0 <filewrite+0xca>
    8000773c:	fc843783          	ld	a5,-56(s0)
    80007740:	02479783          	lh	a5,36(a5)
    80007744:	0207c663          	bltz	a5,80007770 <filewrite+0x9a>
    80007748:	fc843783          	ld	a5,-56(s0)
    8000774c:	02479783          	lh	a5,36(a5)
    80007750:	873e                	mv	a4,a5
    80007752:	47a5                	li	a5,9
    80007754:	00e7ce63          	blt	a5,a4,80007770 <filewrite+0x9a>
    80007758:	fc843783          	ld	a5,-56(s0)
    8000775c:	02479783          	lh	a5,36(a5)
    80007760:	0001f717          	auipc	a4,0x1f
    80007764:	e7870713          	addi	a4,a4,-392 # 800265d8 <devsw>
    80007768:	0792                	slli	a5,a5,0x4
    8000776a:	97ba                	add	a5,a5,a4
    8000776c:	679c                	ld	a5,8(a5)
    8000776e:	e399                	bnez	a5,80007774 <filewrite+0x9e>
    80007770:	57fd                	li	a5,-1
    80007772:	a28d                	j	800078d4 <filewrite+0x1fe>
    80007774:	fc843783          	ld	a5,-56(s0)
    80007778:	02479783          	lh	a5,36(a5)
    8000777c:	0001f717          	auipc	a4,0x1f
    80007780:	e5c70713          	addi	a4,a4,-420 # 800265d8 <devsw>
    80007784:	0792                	slli	a5,a5,0x4
    80007786:	97ba                	add	a5,a5,a4
    80007788:	679c                	ld	a5,8(a5)
    8000778a:	fbc42703          	lw	a4,-68(s0)
    8000778e:	863a                	mv	a2,a4
    80007790:	fc043583          	ld	a1,-64(s0)
    80007794:	4505                	li	a0,1
    80007796:	9782                	jalr	a5
    80007798:	87aa                	mv	a5,a0
    8000779a:	fef42623          	sw	a5,-20(s0)
    8000779e:	aa0d                	j	800078d0 <filewrite+0x1fa>
    800077a0:	fc843783          	ld	a5,-56(s0)
    800077a4:	439c                	lw	a5,0(a5)
    800077a6:	873e                	mv	a4,a5
    800077a8:	4789                	li	a5,2
    800077aa:	10f71b63          	bne	a4,a5,800078c0 <filewrite+0x1ea>
    800077ae:	6785                	lui	a5,0x1
    800077b0:	c0078793          	addi	a5,a5,-1024 # c00 <_entry-0x7ffff400>
    800077b4:	fef42023          	sw	a5,-32(s0)
    800077b8:	fe042423          	sw	zero,-24(s0)
    800077bc:	a0f9                	j	8000788a <filewrite+0x1b4>
    800077be:	fbc42783          	lw	a5,-68(s0)
    800077c2:	873e                	mv	a4,a5
    800077c4:	fe842783          	lw	a5,-24(s0)
    800077c8:	40f707bb          	subw	a5,a4,a5
    800077cc:	fef42223          	sw	a5,-28(s0)
    800077d0:	fe442783          	lw	a5,-28(s0)
    800077d4:	873e                	mv	a4,a5
    800077d6:	fe042783          	lw	a5,-32(s0)
    800077da:	2701                	sext.w	a4,a4
    800077dc:	2781                	sext.w	a5,a5
    800077de:	00e7d663          	bge	a5,a4,800077ea <filewrite+0x114>
    800077e2:	fe042783          	lw	a5,-32(s0)
    800077e6:	fef42223          	sw	a5,-28(s0)
    800077ea:	fffff097          	auipc	ra,0xfffff
    800077ee:	548080e7          	jalr	1352(ra) # 80006d32 <begin_op>
    800077f2:	fc843783          	ld	a5,-56(s0)
    800077f6:	6f9c                	ld	a5,24(a5)
    800077f8:	853e                	mv	a0,a5
    800077fa:	ffffe097          	auipc	ra,0xffffe
    800077fe:	4a4080e7          	jalr	1188(ra) # 80005c9e <ilock>
    80007802:	fc843783          	ld	a5,-56(s0)
    80007806:	6f88                	ld	a0,24(a5)
    80007808:	fe842703          	lw	a4,-24(s0)
    8000780c:	fc043783          	ld	a5,-64(s0)
    80007810:	00f70633          	add	a2,a4,a5
    80007814:	fc843783          	ld	a5,-56(s0)
    80007818:	539c                	lw	a5,32(a5)
    8000781a:	fe442703          	lw	a4,-28(s0)
    8000781e:	86be                	mv	a3,a5
    80007820:	4585                	li	a1,1
    80007822:	fffff097          	auipc	ra,0xfffff
    80007826:	bd0080e7          	jalr	-1072(ra) # 800063f2 <writei>
    8000782a:	87aa                	mv	a5,a0
    8000782c:	fcf42e23          	sw	a5,-36(s0)
    80007830:	fdc42783          	lw	a5,-36(s0)
    80007834:	2781                	sext.w	a5,a5
    80007836:	00f05d63          	blez	a5,80007850 <filewrite+0x17a>
    8000783a:	fc843783          	ld	a5,-56(s0)
    8000783e:	5398                	lw	a4,32(a5)
    80007840:	fdc42783          	lw	a5,-36(s0)
    80007844:	9fb9                	addw	a5,a5,a4
    80007846:	0007871b          	sext.w	a4,a5
    8000784a:	fc843783          	ld	a5,-56(s0)
    8000784e:	d398                	sw	a4,32(a5)
    80007850:	fc843783          	ld	a5,-56(s0)
    80007854:	6f9c                	ld	a5,24(a5)
    80007856:	853e                	mv	a0,a5
    80007858:	ffffe097          	auipc	ra,0xffffe
    8000785c:	57a080e7          	jalr	1402(ra) # 80005dd2 <iunlock>
    80007860:	fffff097          	auipc	ra,0xfffff
    80007864:	594080e7          	jalr	1428(ra) # 80006df4 <end_op>
    80007868:	fdc42783          	lw	a5,-36(s0)
    8000786c:	873e                	mv	a4,a5
    8000786e:	fe442783          	lw	a5,-28(s0)
    80007872:	2701                	sext.w	a4,a4
    80007874:	2781                	sext.w	a5,a5
    80007876:	02f71463          	bne	a4,a5,8000789e <filewrite+0x1c8>
    8000787a:	fe842783          	lw	a5,-24(s0)
    8000787e:	873e                	mv	a4,a5
    80007880:	fdc42783          	lw	a5,-36(s0)
    80007884:	9fb9                	addw	a5,a5,a4
    80007886:	fef42423          	sw	a5,-24(s0)
    8000788a:	fe842783          	lw	a5,-24(s0)
    8000788e:	873e                	mv	a4,a5
    80007890:	fbc42783          	lw	a5,-68(s0)
    80007894:	2701                	sext.w	a4,a4
    80007896:	2781                	sext.w	a5,a5
    80007898:	f2f743e3          	blt	a4,a5,800077be <filewrite+0xe8>
    8000789c:	a011                	j	800078a0 <filewrite+0x1ca>
    8000789e:	0001                	nop
    800078a0:	fe842783          	lw	a5,-24(s0)
    800078a4:	873e                	mv	a4,a5
    800078a6:	fbc42783          	lw	a5,-68(s0)
    800078aa:	2701                	sext.w	a4,a4
    800078ac:	2781                	sext.w	a5,a5
    800078ae:	00f71563          	bne	a4,a5,800078b8 <filewrite+0x1e2>
    800078b2:	fbc42783          	lw	a5,-68(s0)
    800078b6:	a011                	j	800078ba <filewrite+0x1e4>
    800078b8:	57fd                	li	a5,-1
    800078ba:	fef42623          	sw	a5,-20(s0)
    800078be:	a809                	j	800078d0 <filewrite+0x1fa>
    800078c0:	00005517          	auipc	a0,0x5
    800078c4:	ef850513          	addi	a0,a0,-264 # 8000c7b8 <etext+0x7b8>
    800078c8:	ffff9097          	auipc	ra,0xffff9
    800078cc:	3c2080e7          	jalr	962(ra) # 80000c8a <panic>
    800078d0:	fec42783          	lw	a5,-20(s0)
    800078d4:	853e                	mv	a0,a5
    800078d6:	60a6                	ld	ra,72(sp)
    800078d8:	6406                	ld	s0,64(sp)
    800078da:	6161                	addi	sp,sp,80
    800078dc:	8082                	ret

00000000800078de <pipealloc>:
    800078de:	7179                	addi	sp,sp,-48
    800078e0:	f406                	sd	ra,40(sp)
    800078e2:	f022                	sd	s0,32(sp)
    800078e4:	1800                	addi	s0,sp,48
    800078e6:	fca43c23          	sd	a0,-40(s0)
    800078ea:	fcb43823          	sd	a1,-48(s0)
    800078ee:	fe043423          	sd	zero,-24(s0)
    800078f2:	fd043783          	ld	a5,-48(s0)
    800078f6:	0007b023          	sd	zero,0(a5)
    800078fa:	fd043783          	ld	a5,-48(s0)
    800078fe:	6398                	ld	a4,0(a5)
    80007900:	fd843783          	ld	a5,-40(s0)
    80007904:	e398                	sd	a4,0(a5)
    80007906:	00000097          	auipc	ra,0x0
    8000790a:	9dc080e7          	jalr	-1572(ra) # 800072e2 <filealloc>
    8000790e:	872a                	mv	a4,a0
    80007910:	fd843783          	ld	a5,-40(s0)
    80007914:	e398                	sd	a4,0(a5)
    80007916:	fd843783          	ld	a5,-40(s0)
    8000791a:	639c                	ld	a5,0(a5)
    8000791c:	c3e9                	beqz	a5,800079de <pipealloc+0x100>
    8000791e:	00000097          	auipc	ra,0x0
    80007922:	9c4080e7          	jalr	-1596(ra) # 800072e2 <filealloc>
    80007926:	872a                	mv	a4,a0
    80007928:	fd043783          	ld	a5,-48(s0)
    8000792c:	e398                	sd	a4,0(a5)
    8000792e:	fd043783          	ld	a5,-48(s0)
    80007932:	639c                	ld	a5,0(a5)
    80007934:	c7cd                	beqz	a5,800079de <pipealloc+0x100>
    80007936:	ffff9097          	auipc	ra,0xffff9
    8000793a:	7ee080e7          	jalr	2030(ra) # 80001124 <kalloc>
    8000793e:	fea43423          	sd	a0,-24(s0)
    80007942:	fe843783          	ld	a5,-24(s0)
    80007946:	cfd1                	beqz	a5,800079e2 <pipealloc+0x104>
    80007948:	fe843783          	ld	a5,-24(s0)
    8000794c:	4705                	li	a4,1
    8000794e:	22e7a023          	sw	a4,544(a5)
    80007952:	fe843783          	ld	a5,-24(s0)
    80007956:	4705                	li	a4,1
    80007958:	22e7a223          	sw	a4,548(a5)
    8000795c:	fe843783          	ld	a5,-24(s0)
    80007960:	2007ae23          	sw	zero,540(a5)
    80007964:	fe843783          	ld	a5,-24(s0)
    80007968:	2007ac23          	sw	zero,536(a5)
    8000796c:	fe843783          	ld	a5,-24(s0)
    80007970:	00005597          	auipc	a1,0x5
    80007974:	e5858593          	addi	a1,a1,-424 # 8000c7c8 <etext+0x7c8>
    80007978:	853e                	mv	a0,a5
    8000797a:	ffffa097          	auipc	ra,0xffffa
    8000797e:	8ce080e7          	jalr	-1842(ra) # 80001248 <initlock>
    80007982:	fd843783          	ld	a5,-40(s0)
    80007986:	639c                	ld	a5,0(a5)
    80007988:	4705                	li	a4,1
    8000798a:	c398                	sw	a4,0(a5)
    8000798c:	fd843783          	ld	a5,-40(s0)
    80007990:	639c                	ld	a5,0(a5)
    80007992:	4705                	li	a4,1
    80007994:	00e78423          	sb	a4,8(a5)
    80007998:	fd843783          	ld	a5,-40(s0)
    8000799c:	639c                	ld	a5,0(a5)
    8000799e:	000784a3          	sb	zero,9(a5)
    800079a2:	fd843783          	ld	a5,-40(s0)
    800079a6:	639c                	ld	a5,0(a5)
    800079a8:	fe843703          	ld	a4,-24(s0)
    800079ac:	eb98                	sd	a4,16(a5)
    800079ae:	fd043783          	ld	a5,-48(s0)
    800079b2:	639c                	ld	a5,0(a5)
    800079b4:	4705                	li	a4,1
    800079b6:	c398                	sw	a4,0(a5)
    800079b8:	fd043783          	ld	a5,-48(s0)
    800079bc:	639c                	ld	a5,0(a5)
    800079be:	00078423          	sb	zero,8(a5)
    800079c2:	fd043783          	ld	a5,-48(s0)
    800079c6:	639c                	ld	a5,0(a5)
    800079c8:	4705                	li	a4,1
    800079ca:	00e784a3          	sb	a4,9(a5)
    800079ce:	fd043783          	ld	a5,-48(s0)
    800079d2:	639c                	ld	a5,0(a5)
    800079d4:	fe843703          	ld	a4,-24(s0)
    800079d8:	eb98                	sd	a4,16(a5)
    800079da:	4781                	li	a5,0
    800079dc:	a0b1                	j	80007a28 <pipealloc+0x14a>
    800079de:	0001                	nop
    800079e0:	a011                	j	800079e4 <pipealloc+0x106>
    800079e2:	0001                	nop
    800079e4:	fe843783          	ld	a5,-24(s0)
    800079e8:	c799                	beqz	a5,800079f6 <pipealloc+0x118>
    800079ea:	fe843503          	ld	a0,-24(s0)
    800079ee:	ffff9097          	auipc	ra,0xffff9
    800079f2:	692080e7          	jalr	1682(ra) # 80001080 <kfree>
    800079f6:	fd843783          	ld	a5,-40(s0)
    800079fa:	639c                	ld	a5,0(a5)
    800079fc:	cb89                	beqz	a5,80007a0e <pipealloc+0x130>
    800079fe:	fd843783          	ld	a5,-40(s0)
    80007a02:	639c                	ld	a5,0(a5)
    80007a04:	853e                	mv	a0,a5
    80007a06:	00000097          	auipc	ra,0x0
    80007a0a:	9c6080e7          	jalr	-1594(ra) # 800073cc <fileclose>
    80007a0e:	fd043783          	ld	a5,-48(s0)
    80007a12:	639c                	ld	a5,0(a5)
    80007a14:	cb89                	beqz	a5,80007a26 <pipealloc+0x148>
    80007a16:	fd043783          	ld	a5,-48(s0)
    80007a1a:	639c                	ld	a5,0(a5)
    80007a1c:	853e                	mv	a0,a5
    80007a1e:	00000097          	auipc	ra,0x0
    80007a22:	9ae080e7          	jalr	-1618(ra) # 800073cc <fileclose>
    80007a26:	57fd                	li	a5,-1
    80007a28:	853e                	mv	a0,a5
    80007a2a:	70a2                	ld	ra,40(sp)
    80007a2c:	7402                	ld	s0,32(sp)
    80007a2e:	6145                	addi	sp,sp,48
    80007a30:	8082                	ret

0000000080007a32 <pipeclose>:
    80007a32:	1101                	addi	sp,sp,-32
    80007a34:	ec06                	sd	ra,24(sp)
    80007a36:	e822                	sd	s0,16(sp)
    80007a38:	1000                	addi	s0,sp,32
    80007a3a:	fea43423          	sd	a0,-24(s0)
    80007a3e:	87ae                	mv	a5,a1
    80007a40:	fef42223          	sw	a5,-28(s0)
    80007a44:	fe843783          	ld	a5,-24(s0)
    80007a48:	853e                	mv	a0,a5
    80007a4a:	ffffa097          	auipc	ra,0xffffa
    80007a4e:	82e080e7          	jalr	-2002(ra) # 80001278 <acquire>
    80007a52:	fe442783          	lw	a5,-28(s0)
    80007a56:	2781                	sext.w	a5,a5
    80007a58:	cf99                	beqz	a5,80007a76 <pipeclose+0x44>
    80007a5a:	fe843783          	ld	a5,-24(s0)
    80007a5e:	2207a223          	sw	zero,548(a5)
    80007a62:	fe843783          	ld	a5,-24(s0)
    80007a66:	21878793          	addi	a5,a5,536
    80007a6a:	853e                	mv	a0,a5
    80007a6c:	ffffc097          	auipc	ra,0xffffc
    80007a70:	0e4080e7          	jalr	228(ra) # 80003b50 <wakeup>
    80007a74:	a831                	j	80007a90 <pipeclose+0x5e>
    80007a76:	fe843783          	ld	a5,-24(s0)
    80007a7a:	2207a023          	sw	zero,544(a5)
    80007a7e:	fe843783          	ld	a5,-24(s0)
    80007a82:	21c78793          	addi	a5,a5,540
    80007a86:	853e                	mv	a0,a5
    80007a88:	ffffc097          	auipc	ra,0xffffc
    80007a8c:	0c8080e7          	jalr	200(ra) # 80003b50 <wakeup>
    80007a90:	fe843783          	ld	a5,-24(s0)
    80007a94:	2207a783          	lw	a5,544(a5)
    80007a98:	e785                	bnez	a5,80007ac0 <pipeclose+0x8e>
    80007a9a:	fe843783          	ld	a5,-24(s0)
    80007a9e:	2247a783          	lw	a5,548(a5)
    80007aa2:	ef99                	bnez	a5,80007ac0 <pipeclose+0x8e>
    80007aa4:	fe843783          	ld	a5,-24(s0)
    80007aa8:	853e                	mv	a0,a5
    80007aaa:	ffffa097          	auipc	ra,0xffffa
    80007aae:	832080e7          	jalr	-1998(ra) # 800012dc <release>
    80007ab2:	fe843503          	ld	a0,-24(s0)
    80007ab6:	ffff9097          	auipc	ra,0xffff9
    80007aba:	5ca080e7          	jalr	1482(ra) # 80001080 <kfree>
    80007abe:	a809                	j	80007ad0 <pipeclose+0x9e>
    80007ac0:	fe843783          	ld	a5,-24(s0)
    80007ac4:	853e                	mv	a0,a5
    80007ac6:	ffffa097          	auipc	ra,0xffffa
    80007aca:	816080e7          	jalr	-2026(ra) # 800012dc <release>
    80007ace:	0001                	nop
    80007ad0:	0001                	nop
    80007ad2:	60e2                	ld	ra,24(sp)
    80007ad4:	6442                	ld	s0,16(sp)
    80007ad6:	6105                	addi	sp,sp,32
    80007ad8:	8082                	ret

0000000080007ada <pipewrite>:
    80007ada:	715d                	addi	sp,sp,-80
    80007adc:	e486                	sd	ra,72(sp)
    80007ade:	e0a2                	sd	s0,64(sp)
    80007ae0:	0880                	addi	s0,sp,80
    80007ae2:	fca43423          	sd	a0,-56(s0)
    80007ae6:	fcb43023          	sd	a1,-64(s0)
    80007aea:	87b2                	mv	a5,a2
    80007aec:	faf42e23          	sw	a5,-68(s0)
    80007af0:	fe042623          	sw	zero,-20(s0)
    80007af4:	ffffb097          	auipc	ra,0xffffb
    80007af8:	de6080e7          	jalr	-538(ra) # 800028da <myproc>
    80007afc:	fea43023          	sd	a0,-32(s0)
    80007b00:	fc843783          	ld	a5,-56(s0)
    80007b04:	853e                	mv	a0,a5
    80007b06:	ffff9097          	auipc	ra,0xffff9
    80007b0a:	772080e7          	jalr	1906(ra) # 80001278 <acquire>
    80007b0e:	a8f1                	j	80007bea <pipewrite+0x110>
    80007b10:	fc843783          	ld	a5,-56(s0)
    80007b14:	2207a783          	lw	a5,544(a5)
    80007b18:	cb89                	beqz	a5,80007b2a <pipewrite+0x50>
    80007b1a:	fe043503          	ld	a0,-32(s0)
    80007b1e:	ffffc097          	auipc	ra,0xffffc
    80007b22:	1a0080e7          	jalr	416(ra) # 80003cbe <killed>
    80007b26:	87aa                	mv	a5,a0
    80007b28:	cb91                	beqz	a5,80007b3c <pipewrite+0x62>
    80007b2a:	fc843783          	ld	a5,-56(s0)
    80007b2e:	853e                	mv	a0,a5
    80007b30:	ffff9097          	auipc	ra,0xffff9
    80007b34:	7ac080e7          	jalr	1964(ra) # 800012dc <release>
    80007b38:	57fd                	li	a5,-1
    80007b3a:	a0ed                	j	80007c24 <pipewrite+0x14a>
    80007b3c:	fc843783          	ld	a5,-56(s0)
    80007b40:	21c7a703          	lw	a4,540(a5)
    80007b44:	fc843783          	ld	a5,-56(s0)
    80007b48:	2187a783          	lw	a5,536(a5)
    80007b4c:	2007879b          	addiw	a5,a5,512
    80007b50:	2781                	sext.w	a5,a5
    80007b52:	02f71863          	bne	a4,a5,80007b82 <pipewrite+0xa8>
    80007b56:	fc843783          	ld	a5,-56(s0)
    80007b5a:	21878793          	addi	a5,a5,536
    80007b5e:	853e                	mv	a0,a5
    80007b60:	ffffc097          	auipc	ra,0xffffc
    80007b64:	ff0080e7          	jalr	-16(ra) # 80003b50 <wakeup>
    80007b68:	fc843783          	ld	a5,-56(s0)
    80007b6c:	21c78793          	addi	a5,a5,540
    80007b70:	fc843703          	ld	a4,-56(s0)
    80007b74:	85ba                	mv	a1,a4
    80007b76:	853e                	mv	a0,a5
    80007b78:	ffffc097          	auipc	ra,0xffffc
    80007b7c:	f5c080e7          	jalr	-164(ra) # 80003ad4 <sleep>
    80007b80:	a0ad                	j	80007bea <pipewrite+0x110>
    80007b82:	fe043783          	ld	a5,-32(s0)
    80007b86:	73c8                	ld	a0,160(a5)
    80007b88:	fec42703          	lw	a4,-20(s0)
    80007b8c:	fc043783          	ld	a5,-64(s0)
    80007b90:	973e                	add	a4,a4,a5
    80007b92:	fdf40793          	addi	a5,s0,-33
    80007b96:	4685                	li	a3,1
    80007b98:	863a                	mv	a2,a4
    80007b9a:	85be                	mv	a1,a5
    80007b9c:	ffffb097          	auipc	ra,0xffffb
    80007ba0:	83c080e7          	jalr	-1988(ra) # 800023d8 <copyin>
    80007ba4:	87aa                	mv	a5,a0
    80007ba6:	873e                	mv	a4,a5
    80007ba8:	57fd                	li	a5,-1
    80007baa:	04f70a63          	beq	a4,a5,80007bfe <pipewrite+0x124>
    80007bae:	fc843783          	ld	a5,-56(s0)
    80007bb2:	21c7a783          	lw	a5,540(a5)
    80007bb6:	2781                	sext.w	a5,a5
    80007bb8:	0017871b          	addiw	a4,a5,1
    80007bbc:	0007069b          	sext.w	a3,a4
    80007bc0:	fc843703          	ld	a4,-56(s0)
    80007bc4:	20d72e23          	sw	a3,540(a4)
    80007bc8:	1ff7f793          	andi	a5,a5,511
    80007bcc:	2781                	sext.w	a5,a5
    80007bce:	fdf44703          	lbu	a4,-33(s0)
    80007bd2:	fc843683          	ld	a3,-56(s0)
    80007bd6:	1782                	slli	a5,a5,0x20
    80007bd8:	9381                	srli	a5,a5,0x20
    80007bda:	97b6                	add	a5,a5,a3
    80007bdc:	00e78c23          	sb	a4,24(a5)
    80007be0:	fec42783          	lw	a5,-20(s0)
    80007be4:	2785                	addiw	a5,a5,1
    80007be6:	fef42623          	sw	a5,-20(s0)
    80007bea:	fec42783          	lw	a5,-20(s0)
    80007bee:	873e                	mv	a4,a5
    80007bf0:	fbc42783          	lw	a5,-68(s0)
    80007bf4:	2701                	sext.w	a4,a4
    80007bf6:	2781                	sext.w	a5,a5
    80007bf8:	f0f74ce3          	blt	a4,a5,80007b10 <pipewrite+0x36>
    80007bfc:	a011                	j	80007c00 <pipewrite+0x126>
    80007bfe:	0001                	nop
    80007c00:	fc843783          	ld	a5,-56(s0)
    80007c04:	21878793          	addi	a5,a5,536
    80007c08:	853e                	mv	a0,a5
    80007c0a:	ffffc097          	auipc	ra,0xffffc
    80007c0e:	f46080e7          	jalr	-186(ra) # 80003b50 <wakeup>
    80007c12:	fc843783          	ld	a5,-56(s0)
    80007c16:	853e                	mv	a0,a5
    80007c18:	ffff9097          	auipc	ra,0xffff9
    80007c1c:	6c4080e7          	jalr	1732(ra) # 800012dc <release>
    80007c20:	fec42783          	lw	a5,-20(s0)
    80007c24:	853e                	mv	a0,a5
    80007c26:	60a6                	ld	ra,72(sp)
    80007c28:	6406                	ld	s0,64(sp)
    80007c2a:	6161                	addi	sp,sp,80
    80007c2c:	8082                	ret

0000000080007c2e <piperead>:
    80007c2e:	715d                	addi	sp,sp,-80
    80007c30:	e486                	sd	ra,72(sp)
    80007c32:	e0a2                	sd	s0,64(sp)
    80007c34:	0880                	addi	s0,sp,80
    80007c36:	fca43423          	sd	a0,-56(s0)
    80007c3a:	fcb43023          	sd	a1,-64(s0)
    80007c3e:	87b2                	mv	a5,a2
    80007c40:	faf42e23          	sw	a5,-68(s0)
    80007c44:	ffffb097          	auipc	ra,0xffffb
    80007c48:	c96080e7          	jalr	-874(ra) # 800028da <myproc>
    80007c4c:	fea43023          	sd	a0,-32(s0)
    80007c50:	fc843783          	ld	a5,-56(s0)
    80007c54:	853e                	mv	a0,a5
    80007c56:	ffff9097          	auipc	ra,0xffff9
    80007c5a:	622080e7          	jalr	1570(ra) # 80001278 <acquire>
    80007c5e:	a835                	j	80007c9a <piperead+0x6c>
    80007c60:	fe043503          	ld	a0,-32(s0)
    80007c64:	ffffc097          	auipc	ra,0xffffc
    80007c68:	05a080e7          	jalr	90(ra) # 80003cbe <killed>
    80007c6c:	87aa                	mv	a5,a0
    80007c6e:	cb91                	beqz	a5,80007c82 <piperead+0x54>
    80007c70:	fc843783          	ld	a5,-56(s0)
    80007c74:	853e                	mv	a0,a5
    80007c76:	ffff9097          	auipc	ra,0xffff9
    80007c7a:	666080e7          	jalr	1638(ra) # 800012dc <release>
    80007c7e:	57fd                	li	a5,-1
    80007c80:	a8e5                	j	80007d78 <piperead+0x14a>
    80007c82:	fc843783          	ld	a5,-56(s0)
    80007c86:	21878793          	addi	a5,a5,536
    80007c8a:	fc843703          	ld	a4,-56(s0)
    80007c8e:	85ba                	mv	a1,a4
    80007c90:	853e                	mv	a0,a5
    80007c92:	ffffc097          	auipc	ra,0xffffc
    80007c96:	e42080e7          	jalr	-446(ra) # 80003ad4 <sleep>
    80007c9a:	fc843783          	ld	a5,-56(s0)
    80007c9e:	2187a703          	lw	a4,536(a5)
    80007ca2:	fc843783          	ld	a5,-56(s0)
    80007ca6:	21c7a783          	lw	a5,540(a5)
    80007caa:	00f71763          	bne	a4,a5,80007cb8 <piperead+0x8a>
    80007cae:	fc843783          	ld	a5,-56(s0)
    80007cb2:	2247a783          	lw	a5,548(a5)
    80007cb6:	f7cd                	bnez	a5,80007c60 <piperead+0x32>
    80007cb8:	fe042623          	sw	zero,-20(s0)
    80007cbc:	a8bd                	j	80007d3a <piperead+0x10c>
    80007cbe:	fc843783          	ld	a5,-56(s0)
    80007cc2:	2187a703          	lw	a4,536(a5)
    80007cc6:	fc843783          	ld	a5,-56(s0)
    80007cca:	21c7a783          	lw	a5,540(a5)
    80007cce:	08f70063          	beq	a4,a5,80007d4e <piperead+0x120>
    80007cd2:	fc843783          	ld	a5,-56(s0)
    80007cd6:	2187a783          	lw	a5,536(a5)
    80007cda:	2781                	sext.w	a5,a5
    80007cdc:	0017871b          	addiw	a4,a5,1
    80007ce0:	0007069b          	sext.w	a3,a4
    80007ce4:	fc843703          	ld	a4,-56(s0)
    80007ce8:	20d72c23          	sw	a3,536(a4)
    80007cec:	1ff7f793          	andi	a5,a5,511
    80007cf0:	2781                	sext.w	a5,a5
    80007cf2:	fc843703          	ld	a4,-56(s0)
    80007cf6:	1782                	slli	a5,a5,0x20
    80007cf8:	9381                	srli	a5,a5,0x20
    80007cfa:	97ba                	add	a5,a5,a4
    80007cfc:	0187c783          	lbu	a5,24(a5)
    80007d00:	fcf40fa3          	sb	a5,-33(s0)
    80007d04:	fe043783          	ld	a5,-32(s0)
    80007d08:	73c8                	ld	a0,160(a5)
    80007d0a:	fec42703          	lw	a4,-20(s0)
    80007d0e:	fc043783          	ld	a5,-64(s0)
    80007d12:	97ba                	add	a5,a5,a4
    80007d14:	fdf40713          	addi	a4,s0,-33
    80007d18:	4685                	li	a3,1
    80007d1a:	863a                	mv	a2,a4
    80007d1c:	85be                	mv	a1,a5
    80007d1e:	ffffa097          	auipc	ra,0xffffa
    80007d22:	5ec080e7          	jalr	1516(ra) # 8000230a <copyout>
    80007d26:	87aa                	mv	a5,a0
    80007d28:	873e                	mv	a4,a5
    80007d2a:	57fd                	li	a5,-1
    80007d2c:	02f70363          	beq	a4,a5,80007d52 <piperead+0x124>
    80007d30:	fec42783          	lw	a5,-20(s0)
    80007d34:	2785                	addiw	a5,a5,1
    80007d36:	fef42623          	sw	a5,-20(s0)
    80007d3a:	fec42783          	lw	a5,-20(s0)
    80007d3e:	873e                	mv	a4,a5
    80007d40:	fbc42783          	lw	a5,-68(s0)
    80007d44:	2701                	sext.w	a4,a4
    80007d46:	2781                	sext.w	a5,a5
    80007d48:	f6f74be3          	blt	a4,a5,80007cbe <piperead+0x90>
    80007d4c:	a021                	j	80007d54 <piperead+0x126>
    80007d4e:	0001                	nop
    80007d50:	a011                	j	80007d54 <piperead+0x126>
    80007d52:	0001                	nop
    80007d54:	fc843783          	ld	a5,-56(s0)
    80007d58:	21c78793          	addi	a5,a5,540
    80007d5c:	853e                	mv	a0,a5
    80007d5e:	ffffc097          	auipc	ra,0xffffc
    80007d62:	df2080e7          	jalr	-526(ra) # 80003b50 <wakeup>
    80007d66:	fc843783          	ld	a5,-56(s0)
    80007d6a:	853e                	mv	a0,a5
    80007d6c:	ffff9097          	auipc	ra,0xffff9
    80007d70:	570080e7          	jalr	1392(ra) # 800012dc <release>
    80007d74:	fec42783          	lw	a5,-20(s0)
    80007d78:	853e                	mv	a0,a5
    80007d7a:	60a6                	ld	ra,72(sp)
    80007d7c:	6406                	ld	s0,64(sp)
    80007d7e:	6161                	addi	sp,sp,80
    80007d80:	8082                	ret

0000000080007d82 <flags2perm>:
    80007d82:	7179                	addi	sp,sp,-48
    80007d84:	f422                	sd	s0,40(sp)
    80007d86:	1800                	addi	s0,sp,48
    80007d88:	87aa                	mv	a5,a0
    80007d8a:	fcf42e23          	sw	a5,-36(s0)
    80007d8e:	fe042623          	sw	zero,-20(s0)
    80007d92:	fdc42783          	lw	a5,-36(s0)
    80007d96:	8b85                	andi	a5,a5,1
    80007d98:	2781                	sext.w	a5,a5
    80007d9a:	c781                	beqz	a5,80007da2 <flags2perm+0x20>
    80007d9c:	47a1                	li	a5,8
    80007d9e:	fef42623          	sw	a5,-20(s0)
    80007da2:	fdc42783          	lw	a5,-36(s0)
    80007da6:	8b89                	andi	a5,a5,2
    80007da8:	2781                	sext.w	a5,a5
    80007daa:	c799                	beqz	a5,80007db8 <flags2perm+0x36>
    80007dac:	fec42783          	lw	a5,-20(s0)
    80007db0:	0047e793          	ori	a5,a5,4
    80007db4:	fef42623          	sw	a5,-20(s0)
    80007db8:	fec42783          	lw	a5,-20(s0)
    80007dbc:	853e                	mv	a0,a5
    80007dbe:	7422                	ld	s0,40(sp)
    80007dc0:	6145                	addi	sp,sp,48
    80007dc2:	8082                	ret

0000000080007dc4 <exec>:
    80007dc4:	de010113          	addi	sp,sp,-544
    80007dc8:	20113c23          	sd	ra,536(sp)
    80007dcc:	20813823          	sd	s0,528(sp)
    80007dd0:	20913423          	sd	s1,520(sp)
    80007dd4:	1400                	addi	s0,sp,544
    80007dd6:	dea43423          	sd	a0,-536(s0)
    80007dda:	deb43023          	sd	a1,-544(s0)
    80007dde:	fa043c23          	sd	zero,-72(s0)
    80007de2:	fa043023          	sd	zero,-96(s0)
    80007de6:	ffffb097          	auipc	ra,0xffffb
    80007dea:	af4080e7          	jalr	-1292(ra) # 800028da <myproc>
    80007dee:	f8a43c23          	sd	a0,-104(s0)
    80007df2:	fffff097          	auipc	ra,0xfffff
    80007df6:	f40080e7          	jalr	-192(ra) # 80006d32 <begin_op>
    80007dfa:	de843503          	ld	a0,-536(s0)
    80007dfe:	fffff097          	auipc	ra,0xfffff
    80007e02:	bd0080e7          	jalr	-1072(ra) # 800069ce <namei>
    80007e06:	faa43423          	sd	a0,-88(s0)
    80007e0a:	fa843783          	ld	a5,-88(s0)
    80007e0e:	e799                	bnez	a5,80007e1c <exec+0x58>
    80007e10:	fffff097          	auipc	ra,0xfffff
    80007e14:	fe4080e7          	jalr	-28(ra) # 80006df4 <end_op>
    80007e18:	57fd                	li	a5,-1
    80007e1a:	a199                	j	80008260 <exec+0x49c>
    80007e1c:	fa843503          	ld	a0,-88(s0)
    80007e20:	ffffe097          	auipc	ra,0xffffe
    80007e24:	e7e080e7          	jalr	-386(ra) # 80005c9e <ilock>
    80007e28:	e3040793          	addi	a5,s0,-464
    80007e2c:	04000713          	li	a4,64
    80007e30:	4681                	li	a3,0
    80007e32:	863e                	mv	a2,a5
    80007e34:	4581                	li	a1,0
    80007e36:	fa843503          	ld	a0,-88(s0)
    80007e3a:	ffffe097          	auipc	ra,0xffffe
    80007e3e:	41a080e7          	jalr	1050(ra) # 80006254 <readi>
    80007e42:	87aa                	mv	a5,a0
    80007e44:	873e                	mv	a4,a5
    80007e46:	04000793          	li	a5,64
    80007e4a:	3af71563          	bne	a4,a5,800081f4 <exec+0x430>
    80007e4e:	e3042783          	lw	a5,-464(s0)
    80007e52:	873e                	mv	a4,a5
    80007e54:	464c47b7          	lui	a5,0x464c4
    80007e58:	57f78793          	addi	a5,a5,1407 # 464c457f <_entry-0x39b3ba81>
    80007e5c:	38f71e63          	bne	a4,a5,800081f8 <exec+0x434>
    80007e60:	f9843503          	ld	a0,-104(s0)
    80007e64:	ffffb097          	auipc	ra,0xffffb
    80007e68:	d90080e7          	jalr	-624(ra) # 80002bf4 <proc_pagetable>
    80007e6c:	faa43023          	sd	a0,-96(s0)
    80007e70:	fa043783          	ld	a5,-96(s0)
    80007e74:	38078463          	beqz	a5,800081fc <exec+0x438>
    80007e78:	fc042623          	sw	zero,-52(s0)
    80007e7c:	e5043783          	ld	a5,-432(s0)
    80007e80:	fcf42423          	sw	a5,-56(s0)
    80007e84:	a0fd                	j	80007f72 <exec+0x1ae>
    80007e86:	df840793          	addi	a5,s0,-520
    80007e8a:	fc842683          	lw	a3,-56(s0)
    80007e8e:	03800713          	li	a4,56
    80007e92:	863e                	mv	a2,a5
    80007e94:	4581                	li	a1,0
    80007e96:	fa843503          	ld	a0,-88(s0)
    80007e9a:	ffffe097          	auipc	ra,0xffffe
    80007e9e:	3ba080e7          	jalr	954(ra) # 80006254 <readi>
    80007ea2:	87aa                	mv	a5,a0
    80007ea4:	873e                	mv	a4,a5
    80007ea6:	03800793          	li	a5,56
    80007eaa:	34f71b63          	bne	a4,a5,80008200 <exec+0x43c>
    80007eae:	df842783          	lw	a5,-520(s0)
    80007eb2:	873e                	mv	a4,a5
    80007eb4:	4785                	li	a5,1
    80007eb6:	0af71163          	bne	a4,a5,80007f58 <exec+0x194>
    80007eba:	e2043703          	ld	a4,-480(s0)
    80007ebe:	e1843783          	ld	a5,-488(s0)
    80007ec2:	34f76163          	bltu	a4,a5,80008204 <exec+0x440>
    80007ec6:	e0843703          	ld	a4,-504(s0)
    80007eca:	e2043783          	ld	a5,-480(s0)
    80007ece:	973e                	add	a4,a4,a5
    80007ed0:	e0843783          	ld	a5,-504(s0)
    80007ed4:	32f76a63          	bltu	a4,a5,80008208 <exec+0x444>
    80007ed8:	e0843703          	ld	a4,-504(s0)
    80007edc:	6785                	lui	a5,0x1
    80007ede:	17fd                	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80007ee0:	8ff9                	and	a5,a5,a4
    80007ee2:	32079563          	bnez	a5,8000820c <exec+0x448>
    80007ee6:	e0843703          	ld	a4,-504(s0)
    80007eea:	e2043783          	ld	a5,-480(s0)
    80007eee:	00f704b3          	add	s1,a4,a5
    80007ef2:	dfc42783          	lw	a5,-516(s0)
    80007ef6:	2781                	sext.w	a5,a5
    80007ef8:	853e                	mv	a0,a5
    80007efa:	00000097          	auipc	ra,0x0
    80007efe:	e88080e7          	jalr	-376(ra) # 80007d82 <flags2perm>
    80007f02:	87aa                	mv	a5,a0
    80007f04:	86be                	mv	a3,a5
    80007f06:	8626                	mv	a2,s1
    80007f08:	fb843583          	ld	a1,-72(s0)
    80007f0c:	fa043503          	ld	a0,-96(s0)
    80007f10:	ffffa097          	auipc	ra,0xffffa
    80007f14:	00e080e7          	jalr	14(ra) # 80001f1e <uvmalloc>
    80007f18:	f6a43823          	sd	a0,-144(s0)
    80007f1c:	f7043783          	ld	a5,-144(s0)
    80007f20:	2e078863          	beqz	a5,80008210 <exec+0x44c>
    80007f24:	f7043783          	ld	a5,-144(s0)
    80007f28:	faf43c23          	sd	a5,-72(s0)
    80007f2c:	e0843783          	ld	a5,-504(s0)
    80007f30:	e0043703          	ld	a4,-512(s0)
    80007f34:	0007069b          	sext.w	a3,a4
    80007f38:	e1843703          	ld	a4,-488(s0)
    80007f3c:	2701                	sext.w	a4,a4
    80007f3e:	fa843603          	ld	a2,-88(s0)
    80007f42:	85be                	mv	a1,a5
    80007f44:	fa043503          	ld	a0,-96(s0)
    80007f48:	00000097          	auipc	ra,0x0
    80007f4c:	32c080e7          	jalr	812(ra) # 80008274 <loadseg>
    80007f50:	87aa                	mv	a5,a0
    80007f52:	2c07c163          	bltz	a5,80008214 <exec+0x450>
    80007f56:	a011                	j	80007f5a <exec+0x196>
    80007f58:	0001                	nop
    80007f5a:	fcc42783          	lw	a5,-52(s0)
    80007f5e:	2785                	addiw	a5,a5,1
    80007f60:	fcf42623          	sw	a5,-52(s0)
    80007f64:	fc842783          	lw	a5,-56(s0)
    80007f68:	0387879b          	addiw	a5,a5,56
    80007f6c:	2781                	sext.w	a5,a5
    80007f6e:	fcf42423          	sw	a5,-56(s0)
    80007f72:	e6845783          	lhu	a5,-408(s0)
    80007f76:	0007871b          	sext.w	a4,a5
    80007f7a:	fcc42783          	lw	a5,-52(s0)
    80007f7e:	2781                	sext.w	a5,a5
    80007f80:	f0e7c3e3          	blt	a5,a4,80007e86 <exec+0xc2>
    80007f84:	fa843503          	ld	a0,-88(s0)
    80007f88:	ffffe097          	auipc	ra,0xffffe
    80007f8c:	f74080e7          	jalr	-140(ra) # 80005efc <iunlockput>
    80007f90:	fffff097          	auipc	ra,0xfffff
    80007f94:	e64080e7          	jalr	-412(ra) # 80006df4 <end_op>
    80007f98:	fa043423          	sd	zero,-88(s0)
    80007f9c:	ffffb097          	auipc	ra,0xffffb
    80007fa0:	93e080e7          	jalr	-1730(ra) # 800028da <myproc>
    80007fa4:	f8a43c23          	sd	a0,-104(s0)
    80007fa8:	f9843783          	ld	a5,-104(s0)
    80007fac:	6fdc                	ld	a5,152(a5)
    80007fae:	f8f43823          	sd	a5,-112(s0)
    80007fb2:	fb843703          	ld	a4,-72(s0)
    80007fb6:	6785                	lui	a5,0x1
    80007fb8:	17fd                	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80007fba:	973e                	add	a4,a4,a5
    80007fbc:	77fd                	lui	a5,0xfffff
    80007fbe:	8ff9                	and	a5,a5,a4
    80007fc0:	faf43c23          	sd	a5,-72(s0)
    80007fc4:	fb843703          	ld	a4,-72(s0)
    80007fc8:	6789                	lui	a5,0x2
    80007fca:	97ba                	add	a5,a5,a4
    80007fcc:	4691                	li	a3,4
    80007fce:	863e                	mv	a2,a5
    80007fd0:	fb843583          	ld	a1,-72(s0)
    80007fd4:	fa043503          	ld	a0,-96(s0)
    80007fd8:	ffffa097          	auipc	ra,0xffffa
    80007fdc:	f46080e7          	jalr	-186(ra) # 80001f1e <uvmalloc>
    80007fe0:	f8a43423          	sd	a0,-120(s0)
    80007fe4:	f8843783          	ld	a5,-120(s0)
    80007fe8:	22078863          	beqz	a5,80008218 <exec+0x454>
    80007fec:	f8843783          	ld	a5,-120(s0)
    80007ff0:	faf43c23          	sd	a5,-72(s0)
    80007ff4:	fb843703          	ld	a4,-72(s0)
    80007ff8:	77f9                	lui	a5,0xffffe
    80007ffa:	97ba                	add	a5,a5,a4
    80007ffc:	85be                	mv	a1,a5
    80007ffe:	fa043503          	ld	a0,-96(s0)
    80008002:	ffffa097          	auipc	ra,0xffffa
    80008006:	2b2080e7          	jalr	690(ra) # 800022b4 <uvmclear>
    8000800a:	fb843783          	ld	a5,-72(s0)
    8000800e:	faf43823          	sd	a5,-80(s0)
    80008012:	fb043703          	ld	a4,-80(s0)
    80008016:	77fd                	lui	a5,0xfffff
    80008018:	97ba                	add	a5,a5,a4
    8000801a:	f8f43023          	sd	a5,-128(s0)
    8000801e:	fc043023          	sd	zero,-64(s0)
    80008022:	a07d                	j	800080d0 <exec+0x30c>
    80008024:	fc043703          	ld	a4,-64(s0)
    80008028:	47fd                	li	a5,31
    8000802a:	1ee7e963          	bltu	a5,a4,8000821c <exec+0x458>
    8000802e:	fc043783          	ld	a5,-64(s0)
    80008032:	078e                	slli	a5,a5,0x3
    80008034:	de043703          	ld	a4,-544(s0)
    80008038:	97ba                	add	a5,a5,a4
    8000803a:	639c                	ld	a5,0(a5)
    8000803c:	853e                	mv	a0,a5
    8000803e:	ffff9097          	auipc	ra,0xffff9
    80008042:	78e080e7          	jalr	1934(ra) # 800017cc <strlen>
    80008046:	87aa                	mv	a5,a0
    80008048:	2785                	addiw	a5,a5,1 # fffffffffffff001 <end+0xffffffff7ffd7891>
    8000804a:	2781                	sext.w	a5,a5
    8000804c:	873e                	mv	a4,a5
    8000804e:	fb043783          	ld	a5,-80(s0)
    80008052:	8f99                	sub	a5,a5,a4
    80008054:	faf43823          	sd	a5,-80(s0)
    80008058:	fb043783          	ld	a5,-80(s0)
    8000805c:	9bc1                	andi	a5,a5,-16
    8000805e:	faf43823          	sd	a5,-80(s0)
    80008062:	fb043703          	ld	a4,-80(s0)
    80008066:	f8043783          	ld	a5,-128(s0)
    8000806a:	1af76b63          	bltu	a4,a5,80008220 <exec+0x45c>
    8000806e:	fc043783          	ld	a5,-64(s0)
    80008072:	078e                	slli	a5,a5,0x3
    80008074:	de043703          	ld	a4,-544(s0)
    80008078:	97ba                	add	a5,a5,a4
    8000807a:	6384                	ld	s1,0(a5)
    8000807c:	fc043783          	ld	a5,-64(s0)
    80008080:	078e                	slli	a5,a5,0x3
    80008082:	de043703          	ld	a4,-544(s0)
    80008086:	97ba                	add	a5,a5,a4
    80008088:	639c                	ld	a5,0(a5)
    8000808a:	853e                	mv	a0,a5
    8000808c:	ffff9097          	auipc	ra,0xffff9
    80008090:	740080e7          	jalr	1856(ra) # 800017cc <strlen>
    80008094:	87aa                	mv	a5,a0
    80008096:	2785                	addiw	a5,a5,1
    80008098:	2781                	sext.w	a5,a5
    8000809a:	86be                	mv	a3,a5
    8000809c:	8626                	mv	a2,s1
    8000809e:	fb043583          	ld	a1,-80(s0)
    800080a2:	fa043503          	ld	a0,-96(s0)
    800080a6:	ffffa097          	auipc	ra,0xffffa
    800080aa:	264080e7          	jalr	612(ra) # 8000230a <copyout>
    800080ae:	87aa                	mv	a5,a0
    800080b0:	1607ca63          	bltz	a5,80008224 <exec+0x460>
    800080b4:	fc043783          	ld	a5,-64(s0)
    800080b8:	078e                	slli	a5,a5,0x3
    800080ba:	1781                	addi	a5,a5,-32
    800080bc:	97a2                	add	a5,a5,s0
    800080be:	fb043703          	ld	a4,-80(s0)
    800080c2:	e8e7b823          	sd	a4,-368(a5)
    800080c6:	fc043783          	ld	a5,-64(s0)
    800080ca:	0785                	addi	a5,a5,1
    800080cc:	fcf43023          	sd	a5,-64(s0)
    800080d0:	fc043783          	ld	a5,-64(s0)
    800080d4:	078e                	slli	a5,a5,0x3
    800080d6:	de043703          	ld	a4,-544(s0)
    800080da:	97ba                	add	a5,a5,a4
    800080dc:	639c                	ld	a5,0(a5)
    800080de:	f3b9                	bnez	a5,80008024 <exec+0x260>
    800080e0:	fc043783          	ld	a5,-64(s0)
    800080e4:	078e                	slli	a5,a5,0x3
    800080e6:	1781                	addi	a5,a5,-32
    800080e8:	97a2                	add	a5,a5,s0
    800080ea:	e807b823          	sd	zero,-368(a5)
    800080ee:	fc043783          	ld	a5,-64(s0)
    800080f2:	0785                	addi	a5,a5,1
    800080f4:	078e                	slli	a5,a5,0x3
    800080f6:	fb043703          	ld	a4,-80(s0)
    800080fa:	40f707b3          	sub	a5,a4,a5
    800080fe:	faf43823          	sd	a5,-80(s0)
    80008102:	fb043783          	ld	a5,-80(s0)
    80008106:	9bc1                	andi	a5,a5,-16
    80008108:	faf43823          	sd	a5,-80(s0)
    8000810c:	fb043703          	ld	a4,-80(s0)
    80008110:	f8043783          	ld	a5,-128(s0)
    80008114:	10f76a63          	bltu	a4,a5,80008228 <exec+0x464>
    80008118:	fc043783          	ld	a5,-64(s0)
    8000811c:	0785                	addi	a5,a5,1
    8000811e:	00379713          	slli	a4,a5,0x3
    80008122:	e7040793          	addi	a5,s0,-400
    80008126:	86ba                	mv	a3,a4
    80008128:	863e                	mv	a2,a5
    8000812a:	fb043583          	ld	a1,-80(s0)
    8000812e:	fa043503          	ld	a0,-96(s0)
    80008132:	ffffa097          	auipc	ra,0xffffa
    80008136:	1d8080e7          	jalr	472(ra) # 8000230a <copyout>
    8000813a:	87aa                	mv	a5,a0
    8000813c:	0e07c863          	bltz	a5,8000822c <exec+0x468>
    80008140:	f9843783          	ld	a5,-104(s0)
    80008144:	77dc                	ld	a5,168(a5)
    80008146:	fb043703          	ld	a4,-80(s0)
    8000814a:	ffb8                	sd	a4,120(a5)
    8000814c:	de843783          	ld	a5,-536(s0)
    80008150:	fcf43c23          	sd	a5,-40(s0)
    80008154:	fd843783          	ld	a5,-40(s0)
    80008158:	fcf43823          	sd	a5,-48(s0)
    8000815c:	a025                	j	80008184 <exec+0x3c0>
    8000815e:	fd843783          	ld	a5,-40(s0)
    80008162:	0007c783          	lbu	a5,0(a5)
    80008166:	873e                	mv	a4,a5
    80008168:	02f00793          	li	a5,47
    8000816c:	00f71763          	bne	a4,a5,8000817a <exec+0x3b6>
    80008170:	fd843783          	ld	a5,-40(s0)
    80008174:	0785                	addi	a5,a5,1
    80008176:	fcf43823          	sd	a5,-48(s0)
    8000817a:	fd843783          	ld	a5,-40(s0)
    8000817e:	0785                	addi	a5,a5,1
    80008180:	fcf43c23          	sd	a5,-40(s0)
    80008184:	fd843783          	ld	a5,-40(s0)
    80008188:	0007c783          	lbu	a5,0(a5)
    8000818c:	fbe9                	bnez	a5,8000815e <exec+0x39a>
    8000818e:	f9843783          	ld	a5,-104(s0)
    80008192:	1a878793          	addi	a5,a5,424
    80008196:	4641                	li	a2,16
    80008198:	fd043583          	ld	a1,-48(s0)
    8000819c:	853e                	mv	a0,a5
    8000819e:	ffff9097          	auipc	ra,0xffff9
    800081a2:	5b2080e7          	jalr	1458(ra) # 80001750 <safestrcpy>
    800081a6:	f9843783          	ld	a5,-104(s0)
    800081aa:	73dc                	ld	a5,160(a5)
    800081ac:	f6f43c23          	sd	a5,-136(s0)
    800081b0:	f9843783          	ld	a5,-104(s0)
    800081b4:	fa043703          	ld	a4,-96(s0)
    800081b8:	f3d8                	sd	a4,160(a5)
    800081ba:	f9843783          	ld	a5,-104(s0)
    800081be:	fb843703          	ld	a4,-72(s0)
    800081c2:	efd8                	sd	a4,152(a5)
    800081c4:	f9843783          	ld	a5,-104(s0)
    800081c8:	77dc                	ld	a5,168(a5)
    800081ca:	e4843703          	ld	a4,-440(s0)
    800081ce:	ef98                	sd	a4,24(a5)
    800081d0:	f9843783          	ld	a5,-104(s0)
    800081d4:	77dc                	ld	a5,168(a5)
    800081d6:	fb043703          	ld	a4,-80(s0)
    800081da:	fb98                	sd	a4,48(a5)
    800081dc:	f9043583          	ld	a1,-112(s0)
    800081e0:	f7843503          	ld	a0,-136(s0)
    800081e4:	ffffb097          	auipc	ra,0xffffb
    800081e8:	ad0080e7          	jalr	-1328(ra) # 80002cb4 <proc_freepagetable>
    800081ec:	fc043783          	ld	a5,-64(s0)
    800081f0:	2781                	sext.w	a5,a5
    800081f2:	a0bd                	j	80008260 <exec+0x49c>
    800081f4:	0001                	nop
    800081f6:	a825                	j	8000822e <exec+0x46a>
    800081f8:	0001                	nop
    800081fa:	a815                	j	8000822e <exec+0x46a>
    800081fc:	0001                	nop
    800081fe:	a805                	j	8000822e <exec+0x46a>
    80008200:	0001                	nop
    80008202:	a035                	j	8000822e <exec+0x46a>
    80008204:	0001                	nop
    80008206:	a025                	j	8000822e <exec+0x46a>
    80008208:	0001                	nop
    8000820a:	a015                	j	8000822e <exec+0x46a>
    8000820c:	0001                	nop
    8000820e:	a005                	j	8000822e <exec+0x46a>
    80008210:	0001                	nop
    80008212:	a831                	j	8000822e <exec+0x46a>
    80008214:	0001                	nop
    80008216:	a821                	j	8000822e <exec+0x46a>
    80008218:	0001                	nop
    8000821a:	a811                	j	8000822e <exec+0x46a>
    8000821c:	0001                	nop
    8000821e:	a801                	j	8000822e <exec+0x46a>
    80008220:	0001                	nop
    80008222:	a031                	j	8000822e <exec+0x46a>
    80008224:	0001                	nop
    80008226:	a021                	j	8000822e <exec+0x46a>
    80008228:	0001                	nop
    8000822a:	a011                	j	8000822e <exec+0x46a>
    8000822c:	0001                	nop
    8000822e:	fa043783          	ld	a5,-96(s0)
    80008232:	cb89                	beqz	a5,80008244 <exec+0x480>
    80008234:	fb843583          	ld	a1,-72(s0)
    80008238:	fa043503          	ld	a0,-96(s0)
    8000823c:	ffffb097          	auipc	ra,0xffffb
    80008240:	a78080e7          	jalr	-1416(ra) # 80002cb4 <proc_freepagetable>
    80008244:	fa843783          	ld	a5,-88(s0)
    80008248:	cb99                	beqz	a5,8000825e <exec+0x49a>
    8000824a:	fa843503          	ld	a0,-88(s0)
    8000824e:	ffffe097          	auipc	ra,0xffffe
    80008252:	cae080e7          	jalr	-850(ra) # 80005efc <iunlockput>
    80008256:	fffff097          	auipc	ra,0xfffff
    8000825a:	b9e080e7          	jalr	-1122(ra) # 80006df4 <end_op>
    8000825e:	57fd                	li	a5,-1
    80008260:	853e                	mv	a0,a5
    80008262:	21813083          	ld	ra,536(sp)
    80008266:	21013403          	ld	s0,528(sp)
    8000826a:	20813483          	ld	s1,520(sp)
    8000826e:	22010113          	addi	sp,sp,544
    80008272:	8082                	ret

0000000080008274 <loadseg>:
    80008274:	7139                	addi	sp,sp,-64
    80008276:	fc06                	sd	ra,56(sp)
    80008278:	f822                	sd	s0,48(sp)
    8000827a:	0080                	addi	s0,sp,64
    8000827c:	fca43c23          	sd	a0,-40(s0)
    80008280:	fcb43823          	sd	a1,-48(s0)
    80008284:	fcc43423          	sd	a2,-56(s0)
    80008288:	87b6                	mv	a5,a3
    8000828a:	fcf42223          	sw	a5,-60(s0)
    8000828e:	87ba                	mv	a5,a4
    80008290:	fcf42023          	sw	a5,-64(s0)
    80008294:	fe042623          	sw	zero,-20(s0)
    80008298:	a07d                	j	80008346 <loadseg+0xd2>
    8000829a:	fec46703          	lwu	a4,-20(s0)
    8000829e:	fd043783          	ld	a5,-48(s0)
    800082a2:	97ba                	add	a5,a5,a4
    800082a4:	85be                	mv	a1,a5
    800082a6:	fd843503          	ld	a0,-40(s0)
    800082aa:	ffffa097          	auipc	ra,0xffffa
    800082ae:	900080e7          	jalr	-1792(ra) # 80001baa <walkaddr>
    800082b2:	fea43023          	sd	a0,-32(s0)
    800082b6:	fe043783          	ld	a5,-32(s0)
    800082ba:	eb89                	bnez	a5,800082cc <loadseg+0x58>
    800082bc:	00004517          	auipc	a0,0x4
    800082c0:	51450513          	addi	a0,a0,1300 # 8000c7d0 <etext+0x7d0>
    800082c4:	ffff9097          	auipc	ra,0xffff9
    800082c8:	9c6080e7          	jalr	-1594(ra) # 80000c8a <panic>
    800082cc:	fc042783          	lw	a5,-64(s0)
    800082d0:	873e                	mv	a4,a5
    800082d2:	fec42783          	lw	a5,-20(s0)
    800082d6:	40f707bb          	subw	a5,a4,a5
    800082da:	2781                	sext.w	a5,a5
    800082dc:	873e                	mv	a4,a5
    800082de:	6785                	lui	a5,0x1
    800082e0:	00f77c63          	bgeu	a4,a5,800082f8 <loadseg+0x84>
    800082e4:	fc042783          	lw	a5,-64(s0)
    800082e8:	873e                	mv	a4,a5
    800082ea:	fec42783          	lw	a5,-20(s0)
    800082ee:	40f707bb          	subw	a5,a4,a5
    800082f2:	fef42423          	sw	a5,-24(s0)
    800082f6:	a021                	j	800082fe <loadseg+0x8a>
    800082f8:	6785                	lui	a5,0x1
    800082fa:	fef42423          	sw	a5,-24(s0)
    800082fe:	fc442783          	lw	a5,-60(s0)
    80008302:	873e                	mv	a4,a5
    80008304:	fec42783          	lw	a5,-20(s0)
    80008308:	9fb9                	addw	a5,a5,a4
    8000830a:	2781                	sext.w	a5,a5
    8000830c:	fe842703          	lw	a4,-24(s0)
    80008310:	86be                	mv	a3,a5
    80008312:	fe043603          	ld	a2,-32(s0)
    80008316:	4581                	li	a1,0
    80008318:	fc843503          	ld	a0,-56(s0)
    8000831c:	ffffe097          	auipc	ra,0xffffe
    80008320:	f38080e7          	jalr	-200(ra) # 80006254 <readi>
    80008324:	87aa                	mv	a5,a0
    80008326:	0007871b          	sext.w	a4,a5
    8000832a:	fe842783          	lw	a5,-24(s0)
    8000832e:	2781                	sext.w	a5,a5
    80008330:	00e78463          	beq	a5,a4,80008338 <loadseg+0xc4>
    80008334:	57fd                	li	a5,-1
    80008336:	a015                	j	8000835a <loadseg+0xe6>
    80008338:	fec42783          	lw	a5,-20(s0)
    8000833c:	873e                	mv	a4,a5
    8000833e:	6785                	lui	a5,0x1
    80008340:	9fb9                	addw	a5,a5,a4
    80008342:	fef42623          	sw	a5,-20(s0)
    80008346:	fec42783          	lw	a5,-20(s0)
    8000834a:	873e                	mv	a4,a5
    8000834c:	fc042783          	lw	a5,-64(s0)
    80008350:	2701                	sext.w	a4,a4
    80008352:	2781                	sext.w	a5,a5
    80008354:	f4f763e3          	bltu	a4,a5,8000829a <loadseg+0x26>
    80008358:	4781                	li	a5,0
    8000835a:	853e                	mv	a0,a5
    8000835c:	70e2                	ld	ra,56(sp)
    8000835e:	7442                	ld	s0,48(sp)
    80008360:	6121                	addi	sp,sp,64
    80008362:	8082                	ret

0000000080008364 <argfd>:
    80008364:	7139                	addi	sp,sp,-64
    80008366:	fc06                	sd	ra,56(sp)
    80008368:	f822                	sd	s0,48(sp)
    8000836a:	0080                	addi	s0,sp,64
    8000836c:	87aa                	mv	a5,a0
    8000836e:	fcb43823          	sd	a1,-48(s0)
    80008372:	fcc43423          	sd	a2,-56(s0)
    80008376:	fcf42e23          	sw	a5,-36(s0)
    8000837a:	fe440713          	addi	a4,s0,-28
    8000837e:	fdc42783          	lw	a5,-36(s0)
    80008382:	85ba                	mv	a1,a4
    80008384:	853e                	mv	a0,a5
    80008386:	ffffc097          	auipc	ra,0xffffc
    8000838a:	70c080e7          	jalr	1804(ra) # 80004a92 <argint>
    8000838e:	fe442783          	lw	a5,-28(s0)
    80008392:	0207c963          	bltz	a5,800083c4 <argfd+0x60>
    80008396:	fe442783          	lw	a5,-28(s0)
    8000839a:	873e                	mv	a4,a5
    8000839c:	47bd                	li	a5,15
    8000839e:	02e7c363          	blt	a5,a4,800083c4 <argfd+0x60>
    800083a2:	ffffa097          	auipc	ra,0xffffa
    800083a6:	538080e7          	jalr	1336(ra) # 800028da <myproc>
    800083aa:	872a                	mv	a4,a0
    800083ac:	fe442783          	lw	a5,-28(s0)
    800083b0:	02478793          	addi	a5,a5,36 # 1024 <_entry-0x7fffefdc>
    800083b4:	078e                	slli	a5,a5,0x3
    800083b6:	97ba                	add	a5,a5,a4
    800083b8:	639c                	ld	a5,0(a5)
    800083ba:	fef43423          	sd	a5,-24(s0)
    800083be:	fe843783          	ld	a5,-24(s0)
    800083c2:	e399                	bnez	a5,800083c8 <argfd+0x64>
    800083c4:	57fd                	li	a5,-1
    800083c6:	a015                	j	800083ea <argfd+0x86>
    800083c8:	fd043783          	ld	a5,-48(s0)
    800083cc:	c791                	beqz	a5,800083d8 <argfd+0x74>
    800083ce:	fe442703          	lw	a4,-28(s0)
    800083d2:	fd043783          	ld	a5,-48(s0)
    800083d6:	c398                	sw	a4,0(a5)
    800083d8:	fc843783          	ld	a5,-56(s0)
    800083dc:	c791                	beqz	a5,800083e8 <argfd+0x84>
    800083de:	fc843783          	ld	a5,-56(s0)
    800083e2:	fe843703          	ld	a4,-24(s0)
    800083e6:	e398                	sd	a4,0(a5)
    800083e8:	4781                	li	a5,0
    800083ea:	853e                	mv	a0,a5
    800083ec:	70e2                	ld	ra,56(sp)
    800083ee:	7442                	ld	s0,48(sp)
    800083f0:	6121                	addi	sp,sp,64
    800083f2:	8082                	ret

00000000800083f4 <fdalloc>:
    800083f4:	7179                	addi	sp,sp,-48
    800083f6:	f406                	sd	ra,40(sp)
    800083f8:	f022                	sd	s0,32(sp)
    800083fa:	1800                	addi	s0,sp,48
    800083fc:	fca43c23          	sd	a0,-40(s0)
    80008400:	ffffa097          	auipc	ra,0xffffa
    80008404:	4da080e7          	jalr	1242(ra) # 800028da <myproc>
    80008408:	fea43023          	sd	a0,-32(s0)
    8000840c:	fe042623          	sw	zero,-20(s0)
    80008410:	a835                	j	8000844c <fdalloc+0x58>
    80008412:	fe043703          	ld	a4,-32(s0)
    80008416:	fec42783          	lw	a5,-20(s0)
    8000841a:	02478793          	addi	a5,a5,36
    8000841e:	078e                	slli	a5,a5,0x3
    80008420:	97ba                	add	a5,a5,a4
    80008422:	639c                	ld	a5,0(a5)
    80008424:	ef99                	bnez	a5,80008442 <fdalloc+0x4e>
    80008426:	fe043703          	ld	a4,-32(s0)
    8000842a:	fec42783          	lw	a5,-20(s0)
    8000842e:	02478793          	addi	a5,a5,36
    80008432:	078e                	slli	a5,a5,0x3
    80008434:	97ba                	add	a5,a5,a4
    80008436:	fd843703          	ld	a4,-40(s0)
    8000843a:	e398                	sd	a4,0(a5)
    8000843c:	fec42783          	lw	a5,-20(s0)
    80008440:	a831                	j	8000845c <fdalloc+0x68>
    80008442:	fec42783          	lw	a5,-20(s0)
    80008446:	2785                	addiw	a5,a5,1
    80008448:	fef42623          	sw	a5,-20(s0)
    8000844c:	fec42783          	lw	a5,-20(s0)
    80008450:	0007871b          	sext.w	a4,a5
    80008454:	47bd                	li	a5,15
    80008456:	fae7dee3          	bge	a5,a4,80008412 <fdalloc+0x1e>
    8000845a:	57fd                	li	a5,-1
    8000845c:	853e                	mv	a0,a5
    8000845e:	70a2                	ld	ra,40(sp)
    80008460:	7402                	ld	s0,32(sp)
    80008462:	6145                	addi	sp,sp,48
    80008464:	8082                	ret

0000000080008466 <sys_dup>:
    80008466:	1101                	addi	sp,sp,-32
    80008468:	ec06                	sd	ra,24(sp)
    8000846a:	e822                	sd	s0,16(sp)
    8000846c:	1000                	addi	s0,sp,32
    8000846e:	fe040793          	addi	a5,s0,-32
    80008472:	863e                	mv	a2,a5
    80008474:	4581                	li	a1,0
    80008476:	4501                	li	a0,0
    80008478:	00000097          	auipc	ra,0x0
    8000847c:	eec080e7          	jalr	-276(ra) # 80008364 <argfd>
    80008480:	87aa                	mv	a5,a0
    80008482:	0007d463          	bgez	a5,8000848a <sys_dup+0x24>
    80008486:	57fd                	li	a5,-1
    80008488:	a81d                	j	800084be <sys_dup+0x58>
    8000848a:	fe043783          	ld	a5,-32(s0)
    8000848e:	853e                	mv	a0,a5
    80008490:	00000097          	auipc	ra,0x0
    80008494:	f64080e7          	jalr	-156(ra) # 800083f4 <fdalloc>
    80008498:	87aa                	mv	a5,a0
    8000849a:	fef42623          	sw	a5,-20(s0)
    8000849e:	fec42783          	lw	a5,-20(s0)
    800084a2:	2781                	sext.w	a5,a5
    800084a4:	0007d463          	bgez	a5,800084ac <sys_dup+0x46>
    800084a8:	57fd                	li	a5,-1
    800084aa:	a811                	j	800084be <sys_dup+0x58>
    800084ac:	fe043783          	ld	a5,-32(s0)
    800084b0:	853e                	mv	a0,a5
    800084b2:	fffff097          	auipc	ra,0xfffff
    800084b6:	eb4080e7          	jalr	-332(ra) # 80007366 <filedup>
    800084ba:	fec42783          	lw	a5,-20(s0)
    800084be:	853e                	mv	a0,a5
    800084c0:	60e2                	ld	ra,24(sp)
    800084c2:	6442                	ld	s0,16(sp)
    800084c4:	6105                	addi	sp,sp,32
    800084c6:	8082                	ret

00000000800084c8 <sys_read>:
    800084c8:	7179                	addi	sp,sp,-48
    800084ca:	f406                	sd	ra,40(sp)
    800084cc:	f022                	sd	s0,32(sp)
    800084ce:	1800                	addi	s0,sp,48
    800084d0:	fd840793          	addi	a5,s0,-40
    800084d4:	85be                	mv	a1,a5
    800084d6:	4505                	li	a0,1
    800084d8:	ffffc097          	auipc	ra,0xffffc
    800084dc:	5f0080e7          	jalr	1520(ra) # 80004ac8 <argaddr>
    800084e0:	fe440793          	addi	a5,s0,-28
    800084e4:	85be                	mv	a1,a5
    800084e6:	4509                	li	a0,2
    800084e8:	ffffc097          	auipc	ra,0xffffc
    800084ec:	5aa080e7          	jalr	1450(ra) # 80004a92 <argint>
    800084f0:	fe840793          	addi	a5,s0,-24
    800084f4:	863e                	mv	a2,a5
    800084f6:	4581                	li	a1,0
    800084f8:	4501                	li	a0,0
    800084fa:	00000097          	auipc	ra,0x0
    800084fe:	e6a080e7          	jalr	-406(ra) # 80008364 <argfd>
    80008502:	87aa                	mv	a5,a0
    80008504:	0007d463          	bgez	a5,8000850c <sys_read+0x44>
    80008508:	57fd                	li	a5,-1
    8000850a:	a839                	j	80008528 <sys_read+0x60>
    8000850c:	fe843783          	ld	a5,-24(s0)
    80008510:	fd843703          	ld	a4,-40(s0)
    80008514:	fe442683          	lw	a3,-28(s0)
    80008518:	8636                	mv	a2,a3
    8000851a:	85ba                	mv	a1,a4
    8000851c:	853e                	mv	a0,a5
    8000851e:	fffff097          	auipc	ra,0xfffff
    80008522:	05a080e7          	jalr	90(ra) # 80007578 <fileread>
    80008526:	87aa                	mv	a5,a0
    80008528:	853e                	mv	a0,a5
    8000852a:	70a2                	ld	ra,40(sp)
    8000852c:	7402                	ld	s0,32(sp)
    8000852e:	6145                	addi	sp,sp,48
    80008530:	8082                	ret

0000000080008532 <sys_write>:
    80008532:	7179                	addi	sp,sp,-48
    80008534:	f406                	sd	ra,40(sp)
    80008536:	f022                	sd	s0,32(sp)
    80008538:	1800                	addi	s0,sp,48
    8000853a:	fd840793          	addi	a5,s0,-40
    8000853e:	85be                	mv	a1,a5
    80008540:	4505                	li	a0,1
    80008542:	ffffc097          	auipc	ra,0xffffc
    80008546:	586080e7          	jalr	1414(ra) # 80004ac8 <argaddr>
    8000854a:	fe440793          	addi	a5,s0,-28
    8000854e:	85be                	mv	a1,a5
    80008550:	4509                	li	a0,2
    80008552:	ffffc097          	auipc	ra,0xffffc
    80008556:	540080e7          	jalr	1344(ra) # 80004a92 <argint>
    8000855a:	fe840793          	addi	a5,s0,-24
    8000855e:	863e                	mv	a2,a5
    80008560:	4581                	li	a1,0
    80008562:	4501                	li	a0,0
    80008564:	00000097          	auipc	ra,0x0
    80008568:	e00080e7          	jalr	-512(ra) # 80008364 <argfd>
    8000856c:	87aa                	mv	a5,a0
    8000856e:	0007d463          	bgez	a5,80008576 <sys_write+0x44>
    80008572:	57fd                	li	a5,-1
    80008574:	a839                	j	80008592 <sys_write+0x60>
    80008576:	fe843783          	ld	a5,-24(s0)
    8000857a:	fd843703          	ld	a4,-40(s0)
    8000857e:	fe442683          	lw	a3,-28(s0)
    80008582:	8636                	mv	a2,a3
    80008584:	85ba                	mv	a1,a4
    80008586:	853e                	mv	a0,a5
    80008588:	fffff097          	auipc	ra,0xfffff
    8000858c:	14e080e7          	jalr	334(ra) # 800076d6 <filewrite>
    80008590:	87aa                	mv	a5,a0
    80008592:	853e                	mv	a0,a5
    80008594:	70a2                	ld	ra,40(sp)
    80008596:	7402                	ld	s0,32(sp)
    80008598:	6145                	addi	sp,sp,48
    8000859a:	8082                	ret

000000008000859c <sys_close>:
    8000859c:	1101                	addi	sp,sp,-32
    8000859e:	ec06                	sd	ra,24(sp)
    800085a0:	e822                	sd	s0,16(sp)
    800085a2:	1000                	addi	s0,sp,32
    800085a4:	fe040713          	addi	a4,s0,-32
    800085a8:	fec40793          	addi	a5,s0,-20
    800085ac:	863a                	mv	a2,a4
    800085ae:	85be                	mv	a1,a5
    800085b0:	4501                	li	a0,0
    800085b2:	00000097          	auipc	ra,0x0
    800085b6:	db2080e7          	jalr	-590(ra) # 80008364 <argfd>
    800085ba:	87aa                	mv	a5,a0
    800085bc:	0007d463          	bgez	a5,800085c4 <sys_close+0x28>
    800085c0:	57fd                	li	a5,-1
    800085c2:	a035                	j	800085ee <sys_close+0x52>
    800085c4:	ffffa097          	auipc	ra,0xffffa
    800085c8:	316080e7          	jalr	790(ra) # 800028da <myproc>
    800085cc:	872a                	mv	a4,a0
    800085ce:	fec42783          	lw	a5,-20(s0)
    800085d2:	02478793          	addi	a5,a5,36
    800085d6:	078e                	slli	a5,a5,0x3
    800085d8:	97ba                	add	a5,a5,a4
    800085da:	0007b023          	sd	zero,0(a5)
    800085de:	fe043783          	ld	a5,-32(s0)
    800085e2:	853e                	mv	a0,a5
    800085e4:	fffff097          	auipc	ra,0xfffff
    800085e8:	de8080e7          	jalr	-536(ra) # 800073cc <fileclose>
    800085ec:	4781                	li	a5,0
    800085ee:	853e                	mv	a0,a5
    800085f0:	60e2                	ld	ra,24(sp)
    800085f2:	6442                	ld	s0,16(sp)
    800085f4:	6105                	addi	sp,sp,32
    800085f6:	8082                	ret

00000000800085f8 <sys_fstat>:
    800085f8:	1101                	addi	sp,sp,-32
    800085fa:	ec06                	sd	ra,24(sp)
    800085fc:	e822                	sd	s0,16(sp)
    800085fe:	1000                	addi	s0,sp,32
    80008600:	fe040793          	addi	a5,s0,-32
    80008604:	85be                	mv	a1,a5
    80008606:	4505                	li	a0,1
    80008608:	ffffc097          	auipc	ra,0xffffc
    8000860c:	4c0080e7          	jalr	1216(ra) # 80004ac8 <argaddr>
    80008610:	fe840793          	addi	a5,s0,-24
    80008614:	863e                	mv	a2,a5
    80008616:	4581                	li	a1,0
    80008618:	4501                	li	a0,0
    8000861a:	00000097          	auipc	ra,0x0
    8000861e:	d4a080e7          	jalr	-694(ra) # 80008364 <argfd>
    80008622:	87aa                	mv	a5,a0
    80008624:	0007d463          	bgez	a5,8000862c <sys_fstat+0x34>
    80008628:	57fd                	li	a5,-1
    8000862a:	a821                	j	80008642 <sys_fstat+0x4a>
    8000862c:	fe843783          	ld	a5,-24(s0)
    80008630:	fe043703          	ld	a4,-32(s0)
    80008634:	85ba                	mv	a1,a4
    80008636:	853e                	mv	a0,a5
    80008638:	fffff097          	auipc	ra,0xfffff
    8000863c:	e9c080e7          	jalr	-356(ra) # 800074d4 <filestat>
    80008640:	87aa                	mv	a5,a0
    80008642:	853e                	mv	a0,a5
    80008644:	60e2                	ld	ra,24(sp)
    80008646:	6442                	ld	s0,16(sp)
    80008648:	6105                	addi	sp,sp,32
    8000864a:	8082                	ret

000000008000864c <sys_link>:
    8000864c:	7169                	addi	sp,sp,-304
    8000864e:	f606                	sd	ra,296(sp)
    80008650:	f222                	sd	s0,288(sp)
    80008652:	1a00                	addi	s0,sp,304
    80008654:	ed040793          	addi	a5,s0,-304
    80008658:	08000613          	li	a2,128
    8000865c:	85be                	mv	a1,a5
    8000865e:	4501                	li	a0,0
    80008660:	ffffc097          	auipc	ra,0xffffc
    80008664:	49a080e7          	jalr	1178(ra) # 80004afa <argstr>
    80008668:	87aa                	mv	a5,a0
    8000866a:	0007cf63          	bltz	a5,80008688 <sys_link+0x3c>
    8000866e:	f5040793          	addi	a5,s0,-176
    80008672:	08000613          	li	a2,128
    80008676:	85be                	mv	a1,a5
    80008678:	4505                	li	a0,1
    8000867a:	ffffc097          	auipc	ra,0xffffc
    8000867e:	480080e7          	jalr	1152(ra) # 80004afa <argstr>
    80008682:	87aa                	mv	a5,a0
    80008684:	0007d463          	bgez	a5,8000868c <sys_link+0x40>
    80008688:	57fd                	li	a5,-1
    8000868a:	aaad                	j	80008804 <sys_link+0x1b8>
    8000868c:	ffffe097          	auipc	ra,0xffffe
    80008690:	6a6080e7          	jalr	1702(ra) # 80006d32 <begin_op>
    80008694:	ed040793          	addi	a5,s0,-304
    80008698:	853e                	mv	a0,a5
    8000869a:	ffffe097          	auipc	ra,0xffffe
    8000869e:	334080e7          	jalr	820(ra) # 800069ce <namei>
    800086a2:	fea43423          	sd	a0,-24(s0)
    800086a6:	fe843783          	ld	a5,-24(s0)
    800086aa:	e799                	bnez	a5,800086b8 <sys_link+0x6c>
    800086ac:	ffffe097          	auipc	ra,0xffffe
    800086b0:	748080e7          	jalr	1864(ra) # 80006df4 <end_op>
    800086b4:	57fd                	li	a5,-1
    800086b6:	a2b9                	j	80008804 <sys_link+0x1b8>
    800086b8:	fe843503          	ld	a0,-24(s0)
    800086bc:	ffffd097          	auipc	ra,0xffffd
    800086c0:	5e2080e7          	jalr	1506(ra) # 80005c9e <ilock>
    800086c4:	fe843783          	ld	a5,-24(s0)
    800086c8:	04479783          	lh	a5,68(a5)
    800086cc:	873e                	mv	a4,a5
    800086ce:	4785                	li	a5,1
    800086d0:	00f71e63          	bne	a4,a5,800086ec <sys_link+0xa0>
    800086d4:	fe843503          	ld	a0,-24(s0)
    800086d8:	ffffe097          	auipc	ra,0xffffe
    800086dc:	824080e7          	jalr	-2012(ra) # 80005efc <iunlockput>
    800086e0:	ffffe097          	auipc	ra,0xffffe
    800086e4:	714080e7          	jalr	1812(ra) # 80006df4 <end_op>
    800086e8:	57fd                	li	a5,-1
    800086ea:	aa29                	j	80008804 <sys_link+0x1b8>
    800086ec:	fe843783          	ld	a5,-24(s0)
    800086f0:	04a79783          	lh	a5,74(a5)
    800086f4:	17c2                	slli	a5,a5,0x30
    800086f6:	93c1                	srli	a5,a5,0x30
    800086f8:	2785                	addiw	a5,a5,1
    800086fa:	17c2                	slli	a5,a5,0x30
    800086fc:	93c1                	srli	a5,a5,0x30
    800086fe:	0107971b          	slliw	a4,a5,0x10
    80008702:	4107571b          	sraiw	a4,a4,0x10
    80008706:	fe843783          	ld	a5,-24(s0)
    8000870a:	04e79523          	sh	a4,74(a5)
    8000870e:	fe843503          	ld	a0,-24(s0)
    80008712:	ffffd097          	auipc	ra,0xffffd
    80008716:	33c080e7          	jalr	828(ra) # 80005a4e <iupdate>
    8000871a:	fe843503          	ld	a0,-24(s0)
    8000871e:	ffffd097          	auipc	ra,0xffffd
    80008722:	6b4080e7          	jalr	1716(ra) # 80005dd2 <iunlock>
    80008726:	fd040713          	addi	a4,s0,-48
    8000872a:	f5040793          	addi	a5,s0,-176
    8000872e:	85ba                	mv	a1,a4
    80008730:	853e                	mv	a0,a5
    80008732:	ffffe097          	auipc	ra,0xffffe
    80008736:	2c8080e7          	jalr	712(ra) # 800069fa <nameiparent>
    8000873a:	fea43023          	sd	a0,-32(s0)
    8000873e:	fe043783          	ld	a5,-32(s0)
    80008742:	cba5                	beqz	a5,800087b2 <sys_link+0x166>
    80008744:	fe043503          	ld	a0,-32(s0)
    80008748:	ffffd097          	auipc	ra,0xffffd
    8000874c:	556080e7          	jalr	1366(ra) # 80005c9e <ilock>
    80008750:	fe043783          	ld	a5,-32(s0)
    80008754:	4398                	lw	a4,0(a5)
    80008756:	fe843783          	ld	a5,-24(s0)
    8000875a:	439c                	lw	a5,0(a5)
    8000875c:	02f71263          	bne	a4,a5,80008780 <sys_link+0x134>
    80008760:	fe843783          	ld	a5,-24(s0)
    80008764:	43d8                	lw	a4,4(a5)
    80008766:	fd040793          	addi	a5,s0,-48
    8000876a:	863a                	mv	a2,a4
    8000876c:	85be                	mv	a1,a5
    8000876e:	fe043503          	ld	a0,-32(s0)
    80008772:	ffffe097          	auipc	ra,0xffffe
    80008776:	f50080e7          	jalr	-176(ra) # 800066c2 <dirlink>
    8000877a:	87aa                	mv	a5,a0
    8000877c:	0007d963          	bgez	a5,8000878e <sys_link+0x142>
    80008780:	fe043503          	ld	a0,-32(s0)
    80008784:	ffffd097          	auipc	ra,0xffffd
    80008788:	778080e7          	jalr	1912(ra) # 80005efc <iunlockput>
    8000878c:	a025                	j	800087b4 <sys_link+0x168>
    8000878e:	fe043503          	ld	a0,-32(s0)
    80008792:	ffffd097          	auipc	ra,0xffffd
    80008796:	76a080e7          	jalr	1898(ra) # 80005efc <iunlockput>
    8000879a:	fe843503          	ld	a0,-24(s0)
    8000879e:	ffffd097          	auipc	ra,0xffffd
    800087a2:	68e080e7          	jalr	1678(ra) # 80005e2c <iput>
    800087a6:	ffffe097          	auipc	ra,0xffffe
    800087aa:	64e080e7          	jalr	1614(ra) # 80006df4 <end_op>
    800087ae:	4781                	li	a5,0
    800087b0:	a891                	j	80008804 <sys_link+0x1b8>
    800087b2:	0001                	nop
    800087b4:	fe843503          	ld	a0,-24(s0)
    800087b8:	ffffd097          	auipc	ra,0xffffd
    800087bc:	4e6080e7          	jalr	1254(ra) # 80005c9e <ilock>
    800087c0:	fe843783          	ld	a5,-24(s0)
    800087c4:	04a79783          	lh	a5,74(a5)
    800087c8:	17c2                	slli	a5,a5,0x30
    800087ca:	93c1                	srli	a5,a5,0x30
    800087cc:	37fd                	addiw	a5,a5,-1
    800087ce:	17c2                	slli	a5,a5,0x30
    800087d0:	93c1                	srli	a5,a5,0x30
    800087d2:	0107971b          	slliw	a4,a5,0x10
    800087d6:	4107571b          	sraiw	a4,a4,0x10
    800087da:	fe843783          	ld	a5,-24(s0)
    800087de:	04e79523          	sh	a4,74(a5)
    800087e2:	fe843503          	ld	a0,-24(s0)
    800087e6:	ffffd097          	auipc	ra,0xffffd
    800087ea:	268080e7          	jalr	616(ra) # 80005a4e <iupdate>
    800087ee:	fe843503          	ld	a0,-24(s0)
    800087f2:	ffffd097          	auipc	ra,0xffffd
    800087f6:	70a080e7          	jalr	1802(ra) # 80005efc <iunlockput>
    800087fa:	ffffe097          	auipc	ra,0xffffe
    800087fe:	5fa080e7          	jalr	1530(ra) # 80006df4 <end_op>
    80008802:	57fd                	li	a5,-1
    80008804:	853e                	mv	a0,a5
    80008806:	70b2                	ld	ra,296(sp)
    80008808:	7412                	ld	s0,288(sp)
    8000880a:	6155                	addi	sp,sp,304
    8000880c:	8082                	ret

000000008000880e <isdirempty>:
    8000880e:	7139                	addi	sp,sp,-64
    80008810:	fc06                	sd	ra,56(sp)
    80008812:	f822                	sd	s0,48(sp)
    80008814:	0080                	addi	s0,sp,64
    80008816:	fca43423          	sd	a0,-56(s0)
    8000881a:	02000793          	li	a5,32
    8000881e:	fef42623          	sw	a5,-20(s0)
    80008822:	a0b1                	j	8000886e <isdirempty+0x60>
    80008824:	fd840793          	addi	a5,s0,-40
    80008828:	fec42683          	lw	a3,-20(s0)
    8000882c:	4741                	li	a4,16
    8000882e:	863e                	mv	a2,a5
    80008830:	4581                	li	a1,0
    80008832:	fc843503          	ld	a0,-56(s0)
    80008836:	ffffe097          	auipc	ra,0xffffe
    8000883a:	a1e080e7          	jalr	-1506(ra) # 80006254 <readi>
    8000883e:	87aa                	mv	a5,a0
    80008840:	873e                	mv	a4,a5
    80008842:	47c1                	li	a5,16
    80008844:	00f70a63          	beq	a4,a5,80008858 <isdirempty+0x4a>
    80008848:	00004517          	auipc	a0,0x4
    8000884c:	fa850513          	addi	a0,a0,-88 # 8000c7f0 <etext+0x7f0>
    80008850:	ffff8097          	auipc	ra,0xffff8
    80008854:	43a080e7          	jalr	1082(ra) # 80000c8a <panic>
    80008858:	fd845783          	lhu	a5,-40(s0)
    8000885c:	c399                	beqz	a5,80008862 <isdirempty+0x54>
    8000885e:	4781                	li	a5,0
    80008860:	a839                	j	8000887e <isdirempty+0x70>
    80008862:	fec42783          	lw	a5,-20(s0)
    80008866:	27c1                	addiw	a5,a5,16
    80008868:	2781                	sext.w	a5,a5
    8000886a:	fef42623          	sw	a5,-20(s0)
    8000886e:	fc843783          	ld	a5,-56(s0)
    80008872:	47f8                	lw	a4,76(a5)
    80008874:	fec42783          	lw	a5,-20(s0)
    80008878:	fae7e6e3          	bltu	a5,a4,80008824 <isdirempty+0x16>
    8000887c:	4785                	li	a5,1
    8000887e:	853e                	mv	a0,a5
    80008880:	70e2                	ld	ra,56(sp)
    80008882:	7442                	ld	s0,48(sp)
    80008884:	6121                	addi	sp,sp,64
    80008886:	8082                	ret

0000000080008888 <sys_unlink>:
    80008888:	7155                	addi	sp,sp,-208
    8000888a:	e586                	sd	ra,200(sp)
    8000888c:	e1a2                	sd	s0,192(sp)
    8000888e:	0980                	addi	s0,sp,208
    80008890:	f4040793          	addi	a5,s0,-192
    80008894:	08000613          	li	a2,128
    80008898:	85be                	mv	a1,a5
    8000889a:	4501                	li	a0,0
    8000889c:	ffffc097          	auipc	ra,0xffffc
    800088a0:	25e080e7          	jalr	606(ra) # 80004afa <argstr>
    800088a4:	87aa                	mv	a5,a0
    800088a6:	0007d463          	bgez	a5,800088ae <sys_unlink+0x26>
    800088aa:	57fd                	li	a5,-1
    800088ac:	a2d5                	j	80008a90 <sys_unlink+0x208>
    800088ae:	ffffe097          	auipc	ra,0xffffe
    800088b2:	484080e7          	jalr	1156(ra) # 80006d32 <begin_op>
    800088b6:	fc040713          	addi	a4,s0,-64
    800088ba:	f4040793          	addi	a5,s0,-192
    800088be:	85ba                	mv	a1,a4
    800088c0:	853e                	mv	a0,a5
    800088c2:	ffffe097          	auipc	ra,0xffffe
    800088c6:	138080e7          	jalr	312(ra) # 800069fa <nameiparent>
    800088ca:	fea43423          	sd	a0,-24(s0)
    800088ce:	fe843783          	ld	a5,-24(s0)
    800088d2:	e799                	bnez	a5,800088e0 <sys_unlink+0x58>
    800088d4:	ffffe097          	auipc	ra,0xffffe
    800088d8:	520080e7          	jalr	1312(ra) # 80006df4 <end_op>
    800088dc:	57fd                	li	a5,-1
    800088de:	aa4d                	j	80008a90 <sys_unlink+0x208>
    800088e0:	fe843503          	ld	a0,-24(s0)
    800088e4:	ffffd097          	auipc	ra,0xffffd
    800088e8:	3ba080e7          	jalr	954(ra) # 80005c9e <ilock>
    800088ec:	fc040793          	addi	a5,s0,-64
    800088f0:	00004597          	auipc	a1,0x4
    800088f4:	f1858593          	addi	a1,a1,-232 # 8000c808 <etext+0x808>
    800088f8:	853e                	mv	a0,a5
    800088fa:	ffffe097          	auipc	ra,0xffffe
    800088fe:	cb4080e7          	jalr	-844(ra) # 800065ae <namecmp>
    80008902:	87aa                	mv	a5,a0
    80008904:	16078863          	beqz	a5,80008a74 <sys_unlink+0x1ec>
    80008908:	fc040793          	addi	a5,s0,-64
    8000890c:	00004597          	auipc	a1,0x4
    80008910:	f0458593          	addi	a1,a1,-252 # 8000c810 <etext+0x810>
    80008914:	853e                	mv	a0,a5
    80008916:	ffffe097          	auipc	ra,0xffffe
    8000891a:	c98080e7          	jalr	-872(ra) # 800065ae <namecmp>
    8000891e:	87aa                	mv	a5,a0
    80008920:	14078a63          	beqz	a5,80008a74 <sys_unlink+0x1ec>
    80008924:	f3c40713          	addi	a4,s0,-196
    80008928:	fc040793          	addi	a5,s0,-64
    8000892c:	863a                	mv	a2,a4
    8000892e:	85be                	mv	a1,a5
    80008930:	fe843503          	ld	a0,-24(s0)
    80008934:	ffffe097          	auipc	ra,0xffffe
    80008938:	ca8080e7          	jalr	-856(ra) # 800065dc <dirlookup>
    8000893c:	fea43023          	sd	a0,-32(s0)
    80008940:	fe043783          	ld	a5,-32(s0)
    80008944:	12078a63          	beqz	a5,80008a78 <sys_unlink+0x1f0>
    80008948:	fe043503          	ld	a0,-32(s0)
    8000894c:	ffffd097          	auipc	ra,0xffffd
    80008950:	352080e7          	jalr	850(ra) # 80005c9e <ilock>
    80008954:	fe043783          	ld	a5,-32(s0)
    80008958:	04a79783          	lh	a5,74(a5)
    8000895c:	00f04a63          	bgtz	a5,80008970 <sys_unlink+0xe8>
    80008960:	00004517          	auipc	a0,0x4
    80008964:	eb850513          	addi	a0,a0,-328 # 8000c818 <etext+0x818>
    80008968:	ffff8097          	auipc	ra,0xffff8
    8000896c:	322080e7          	jalr	802(ra) # 80000c8a <panic>
    80008970:	fe043783          	ld	a5,-32(s0)
    80008974:	04479783          	lh	a5,68(a5)
    80008978:	873e                	mv	a4,a5
    8000897a:	4785                	li	a5,1
    8000897c:	02f71163          	bne	a4,a5,8000899e <sys_unlink+0x116>
    80008980:	fe043503          	ld	a0,-32(s0)
    80008984:	00000097          	auipc	ra,0x0
    80008988:	e8a080e7          	jalr	-374(ra) # 8000880e <isdirempty>
    8000898c:	87aa                	mv	a5,a0
    8000898e:	eb81                	bnez	a5,8000899e <sys_unlink+0x116>
    80008990:	fe043503          	ld	a0,-32(s0)
    80008994:	ffffd097          	auipc	ra,0xffffd
    80008998:	568080e7          	jalr	1384(ra) # 80005efc <iunlockput>
    8000899c:	a8f9                	j	80008a7a <sys_unlink+0x1f2>
    8000899e:	fd040793          	addi	a5,s0,-48
    800089a2:	4641                	li	a2,16
    800089a4:	4581                	li	a1,0
    800089a6:	853e                	mv	a0,a5
    800089a8:	ffff9097          	auipc	ra,0xffff9
    800089ac:	aa4080e7          	jalr	-1372(ra) # 8000144c <memset>
    800089b0:	fd040793          	addi	a5,s0,-48
    800089b4:	f3c42683          	lw	a3,-196(s0)
    800089b8:	4741                	li	a4,16
    800089ba:	863e                	mv	a2,a5
    800089bc:	4581                	li	a1,0
    800089be:	fe843503          	ld	a0,-24(s0)
    800089c2:	ffffe097          	auipc	ra,0xffffe
    800089c6:	a30080e7          	jalr	-1488(ra) # 800063f2 <writei>
    800089ca:	87aa                	mv	a5,a0
    800089cc:	873e                	mv	a4,a5
    800089ce:	47c1                	li	a5,16
    800089d0:	00f70a63          	beq	a4,a5,800089e4 <sys_unlink+0x15c>
    800089d4:	00004517          	auipc	a0,0x4
    800089d8:	e5c50513          	addi	a0,a0,-420 # 8000c830 <etext+0x830>
    800089dc:	ffff8097          	auipc	ra,0xffff8
    800089e0:	2ae080e7          	jalr	686(ra) # 80000c8a <panic>
    800089e4:	fe043783          	ld	a5,-32(s0)
    800089e8:	04479783          	lh	a5,68(a5)
    800089ec:	873e                	mv	a4,a5
    800089ee:	4785                	li	a5,1
    800089f0:	02f71963          	bne	a4,a5,80008a22 <sys_unlink+0x19a>
    800089f4:	fe843783          	ld	a5,-24(s0)
    800089f8:	04a79783          	lh	a5,74(a5)
    800089fc:	17c2                	slli	a5,a5,0x30
    800089fe:	93c1                	srli	a5,a5,0x30
    80008a00:	37fd                	addiw	a5,a5,-1
    80008a02:	17c2                	slli	a5,a5,0x30
    80008a04:	93c1                	srli	a5,a5,0x30
    80008a06:	0107971b          	slliw	a4,a5,0x10
    80008a0a:	4107571b          	sraiw	a4,a4,0x10
    80008a0e:	fe843783          	ld	a5,-24(s0)
    80008a12:	04e79523          	sh	a4,74(a5)
    80008a16:	fe843503          	ld	a0,-24(s0)
    80008a1a:	ffffd097          	auipc	ra,0xffffd
    80008a1e:	034080e7          	jalr	52(ra) # 80005a4e <iupdate>
    80008a22:	fe843503          	ld	a0,-24(s0)
    80008a26:	ffffd097          	auipc	ra,0xffffd
    80008a2a:	4d6080e7          	jalr	1238(ra) # 80005efc <iunlockput>
    80008a2e:	fe043783          	ld	a5,-32(s0)
    80008a32:	04a79783          	lh	a5,74(a5)
    80008a36:	17c2                	slli	a5,a5,0x30
    80008a38:	93c1                	srli	a5,a5,0x30
    80008a3a:	37fd                	addiw	a5,a5,-1
    80008a3c:	17c2                	slli	a5,a5,0x30
    80008a3e:	93c1                	srli	a5,a5,0x30
    80008a40:	0107971b          	slliw	a4,a5,0x10
    80008a44:	4107571b          	sraiw	a4,a4,0x10
    80008a48:	fe043783          	ld	a5,-32(s0)
    80008a4c:	04e79523          	sh	a4,74(a5)
    80008a50:	fe043503          	ld	a0,-32(s0)
    80008a54:	ffffd097          	auipc	ra,0xffffd
    80008a58:	ffa080e7          	jalr	-6(ra) # 80005a4e <iupdate>
    80008a5c:	fe043503          	ld	a0,-32(s0)
    80008a60:	ffffd097          	auipc	ra,0xffffd
    80008a64:	49c080e7          	jalr	1180(ra) # 80005efc <iunlockput>
    80008a68:	ffffe097          	auipc	ra,0xffffe
    80008a6c:	38c080e7          	jalr	908(ra) # 80006df4 <end_op>
    80008a70:	4781                	li	a5,0
    80008a72:	a839                	j	80008a90 <sys_unlink+0x208>
    80008a74:	0001                	nop
    80008a76:	a011                	j	80008a7a <sys_unlink+0x1f2>
    80008a78:	0001                	nop
    80008a7a:	fe843503          	ld	a0,-24(s0)
    80008a7e:	ffffd097          	auipc	ra,0xffffd
    80008a82:	47e080e7          	jalr	1150(ra) # 80005efc <iunlockput>
    80008a86:	ffffe097          	auipc	ra,0xffffe
    80008a8a:	36e080e7          	jalr	878(ra) # 80006df4 <end_op>
    80008a8e:	57fd                	li	a5,-1
    80008a90:	853e                	mv	a0,a5
    80008a92:	60ae                	ld	ra,200(sp)
    80008a94:	640e                	ld	s0,192(sp)
    80008a96:	6169                	addi	sp,sp,208
    80008a98:	8082                	ret

0000000080008a9a <create>:
    80008a9a:	7139                	addi	sp,sp,-64
    80008a9c:	fc06                	sd	ra,56(sp)
    80008a9e:	f822                	sd	s0,48(sp)
    80008aa0:	0080                	addi	s0,sp,64
    80008aa2:	fca43423          	sd	a0,-56(s0)
    80008aa6:	87ae                	mv	a5,a1
    80008aa8:	8736                	mv	a4,a3
    80008aaa:	fcf41323          	sh	a5,-58(s0)
    80008aae:	87b2                	mv	a5,a2
    80008ab0:	fcf41223          	sh	a5,-60(s0)
    80008ab4:	87ba                	mv	a5,a4
    80008ab6:	fcf41123          	sh	a5,-62(s0)
    80008aba:	fd040793          	addi	a5,s0,-48
    80008abe:	85be                	mv	a1,a5
    80008ac0:	fc843503          	ld	a0,-56(s0)
    80008ac4:	ffffe097          	auipc	ra,0xffffe
    80008ac8:	f36080e7          	jalr	-202(ra) # 800069fa <nameiparent>
    80008acc:	fea43423          	sd	a0,-24(s0)
    80008ad0:	fe843783          	ld	a5,-24(s0)
    80008ad4:	e399                	bnez	a5,80008ada <create+0x40>
    80008ad6:	4781                	li	a5,0
    80008ad8:	a2dd                	j	80008cbe <create+0x224>
    80008ada:	fe843503          	ld	a0,-24(s0)
    80008ade:	ffffd097          	auipc	ra,0xffffd
    80008ae2:	1c0080e7          	jalr	448(ra) # 80005c9e <ilock>
    80008ae6:	fd040793          	addi	a5,s0,-48
    80008aea:	4601                	li	a2,0
    80008aec:	85be                	mv	a1,a5
    80008aee:	fe843503          	ld	a0,-24(s0)
    80008af2:	ffffe097          	auipc	ra,0xffffe
    80008af6:	aea080e7          	jalr	-1302(ra) # 800065dc <dirlookup>
    80008afa:	fea43023          	sd	a0,-32(s0)
    80008afe:	fe043783          	ld	a5,-32(s0)
    80008b02:	cfb9                	beqz	a5,80008b60 <create+0xc6>
    80008b04:	fe843503          	ld	a0,-24(s0)
    80008b08:	ffffd097          	auipc	ra,0xffffd
    80008b0c:	3f4080e7          	jalr	1012(ra) # 80005efc <iunlockput>
    80008b10:	fe043503          	ld	a0,-32(s0)
    80008b14:	ffffd097          	auipc	ra,0xffffd
    80008b18:	18a080e7          	jalr	394(ra) # 80005c9e <ilock>
    80008b1c:	fc641783          	lh	a5,-58(s0)
    80008b20:	0007871b          	sext.w	a4,a5
    80008b24:	4789                	li	a5,2
    80008b26:	02f71563          	bne	a4,a5,80008b50 <create+0xb6>
    80008b2a:	fe043783          	ld	a5,-32(s0)
    80008b2e:	04479783          	lh	a5,68(a5)
    80008b32:	873e                	mv	a4,a5
    80008b34:	4789                	li	a5,2
    80008b36:	00f70a63          	beq	a4,a5,80008b4a <create+0xb0>
    80008b3a:	fe043783          	ld	a5,-32(s0)
    80008b3e:	04479783          	lh	a5,68(a5)
    80008b42:	873e                	mv	a4,a5
    80008b44:	478d                	li	a5,3
    80008b46:	00f71563          	bne	a4,a5,80008b50 <create+0xb6>
    80008b4a:	fe043783          	ld	a5,-32(s0)
    80008b4e:	aa85                	j	80008cbe <create+0x224>
    80008b50:	fe043503          	ld	a0,-32(s0)
    80008b54:	ffffd097          	auipc	ra,0xffffd
    80008b58:	3a8080e7          	jalr	936(ra) # 80005efc <iunlockput>
    80008b5c:	4781                	li	a5,0
    80008b5e:	a285                	j	80008cbe <create+0x224>
    80008b60:	fe843783          	ld	a5,-24(s0)
    80008b64:	439c                	lw	a5,0(a5)
    80008b66:	fc641703          	lh	a4,-58(s0)
    80008b6a:	85ba                	mv	a1,a4
    80008b6c:	853e                	mv	a0,a5
    80008b6e:	ffffd097          	auipc	ra,0xffffd
    80008b72:	de2080e7          	jalr	-542(ra) # 80005950 <ialloc>
    80008b76:	fea43023          	sd	a0,-32(s0)
    80008b7a:	fe043783          	ld	a5,-32(s0)
    80008b7e:	eb89                	bnez	a5,80008b90 <create+0xf6>
    80008b80:	fe843503          	ld	a0,-24(s0)
    80008b84:	ffffd097          	auipc	ra,0xffffd
    80008b88:	378080e7          	jalr	888(ra) # 80005efc <iunlockput>
    80008b8c:	4781                	li	a5,0
    80008b8e:	aa05                	j	80008cbe <create+0x224>
    80008b90:	fe043503          	ld	a0,-32(s0)
    80008b94:	ffffd097          	auipc	ra,0xffffd
    80008b98:	10a080e7          	jalr	266(ra) # 80005c9e <ilock>
    80008b9c:	fe043783          	ld	a5,-32(s0)
    80008ba0:	fc445703          	lhu	a4,-60(s0)
    80008ba4:	04e79323          	sh	a4,70(a5)
    80008ba8:	fe043783          	ld	a5,-32(s0)
    80008bac:	fc245703          	lhu	a4,-62(s0)
    80008bb0:	04e79423          	sh	a4,72(a5)
    80008bb4:	fe043783          	ld	a5,-32(s0)
    80008bb8:	4705                	li	a4,1
    80008bba:	04e79523          	sh	a4,74(a5)
    80008bbe:	fe043503          	ld	a0,-32(s0)
    80008bc2:	ffffd097          	auipc	ra,0xffffd
    80008bc6:	e8c080e7          	jalr	-372(ra) # 80005a4e <iupdate>
    80008bca:	fc641783          	lh	a5,-58(s0)
    80008bce:	0007871b          	sext.w	a4,a5
    80008bd2:	4785                	li	a5,1
    80008bd4:	04f71463          	bne	a4,a5,80008c1c <create+0x182>
    80008bd8:	fe043783          	ld	a5,-32(s0)
    80008bdc:	43dc                	lw	a5,4(a5)
    80008bde:	863e                	mv	a2,a5
    80008be0:	00004597          	auipc	a1,0x4
    80008be4:	c2858593          	addi	a1,a1,-984 # 8000c808 <etext+0x808>
    80008be8:	fe043503          	ld	a0,-32(s0)
    80008bec:	ffffe097          	auipc	ra,0xffffe
    80008bf0:	ad6080e7          	jalr	-1322(ra) # 800066c2 <dirlink>
    80008bf4:	87aa                	mv	a5,a0
    80008bf6:	0807ca63          	bltz	a5,80008c8a <create+0x1f0>
    80008bfa:	fe843783          	ld	a5,-24(s0)
    80008bfe:	43dc                	lw	a5,4(a5)
    80008c00:	863e                	mv	a2,a5
    80008c02:	00004597          	auipc	a1,0x4
    80008c06:	c0e58593          	addi	a1,a1,-1010 # 8000c810 <etext+0x810>
    80008c0a:	fe043503          	ld	a0,-32(s0)
    80008c0e:	ffffe097          	auipc	ra,0xffffe
    80008c12:	ab4080e7          	jalr	-1356(ra) # 800066c2 <dirlink>
    80008c16:	87aa                	mv	a5,a0
    80008c18:	0607c963          	bltz	a5,80008c8a <create+0x1f0>
    80008c1c:	fe043783          	ld	a5,-32(s0)
    80008c20:	43d8                	lw	a4,4(a5)
    80008c22:	fd040793          	addi	a5,s0,-48
    80008c26:	863a                	mv	a2,a4
    80008c28:	85be                	mv	a1,a5
    80008c2a:	fe843503          	ld	a0,-24(s0)
    80008c2e:	ffffe097          	auipc	ra,0xffffe
    80008c32:	a94080e7          	jalr	-1388(ra) # 800066c2 <dirlink>
    80008c36:	87aa                	mv	a5,a0
    80008c38:	0407cb63          	bltz	a5,80008c8e <create+0x1f4>
    80008c3c:	fc641783          	lh	a5,-58(s0)
    80008c40:	0007871b          	sext.w	a4,a5
    80008c44:	4785                	li	a5,1
    80008c46:	02f71963          	bne	a4,a5,80008c78 <create+0x1de>
    80008c4a:	fe843783          	ld	a5,-24(s0)
    80008c4e:	04a79783          	lh	a5,74(a5)
    80008c52:	17c2                	slli	a5,a5,0x30
    80008c54:	93c1                	srli	a5,a5,0x30
    80008c56:	2785                	addiw	a5,a5,1
    80008c58:	17c2                	slli	a5,a5,0x30
    80008c5a:	93c1                	srli	a5,a5,0x30
    80008c5c:	0107971b          	slliw	a4,a5,0x10
    80008c60:	4107571b          	sraiw	a4,a4,0x10
    80008c64:	fe843783          	ld	a5,-24(s0)
    80008c68:	04e79523          	sh	a4,74(a5)
    80008c6c:	fe843503          	ld	a0,-24(s0)
    80008c70:	ffffd097          	auipc	ra,0xffffd
    80008c74:	dde080e7          	jalr	-546(ra) # 80005a4e <iupdate>
    80008c78:	fe843503          	ld	a0,-24(s0)
    80008c7c:	ffffd097          	auipc	ra,0xffffd
    80008c80:	280080e7          	jalr	640(ra) # 80005efc <iunlockput>
    80008c84:	fe043783          	ld	a5,-32(s0)
    80008c88:	a81d                	j	80008cbe <create+0x224>
    80008c8a:	0001                	nop
    80008c8c:	a011                	j	80008c90 <create+0x1f6>
    80008c8e:	0001                	nop
    80008c90:	fe043783          	ld	a5,-32(s0)
    80008c94:	04079523          	sh	zero,74(a5)
    80008c98:	fe043503          	ld	a0,-32(s0)
    80008c9c:	ffffd097          	auipc	ra,0xffffd
    80008ca0:	db2080e7          	jalr	-590(ra) # 80005a4e <iupdate>
    80008ca4:	fe043503          	ld	a0,-32(s0)
    80008ca8:	ffffd097          	auipc	ra,0xffffd
    80008cac:	254080e7          	jalr	596(ra) # 80005efc <iunlockput>
    80008cb0:	fe843503          	ld	a0,-24(s0)
    80008cb4:	ffffd097          	auipc	ra,0xffffd
    80008cb8:	248080e7          	jalr	584(ra) # 80005efc <iunlockput>
    80008cbc:	4781                	li	a5,0
    80008cbe:	853e                	mv	a0,a5
    80008cc0:	70e2                	ld	ra,56(sp)
    80008cc2:	7442                	ld	s0,48(sp)
    80008cc4:	6121                	addi	sp,sp,64
    80008cc6:	8082                	ret

0000000080008cc8 <sys_open>:
    80008cc8:	7131                	addi	sp,sp,-192
    80008cca:	fd06                	sd	ra,184(sp)
    80008ccc:	f922                	sd	s0,176(sp)
    80008cce:	0180                	addi	s0,sp,192
    80008cd0:	f4c40793          	addi	a5,s0,-180
    80008cd4:	85be                	mv	a1,a5
    80008cd6:	4505                	li	a0,1
    80008cd8:	ffffc097          	auipc	ra,0xffffc
    80008cdc:	dba080e7          	jalr	-582(ra) # 80004a92 <argint>
    80008ce0:	f5040793          	addi	a5,s0,-176
    80008ce4:	08000613          	li	a2,128
    80008ce8:	85be                	mv	a1,a5
    80008cea:	4501                	li	a0,0
    80008cec:	ffffc097          	auipc	ra,0xffffc
    80008cf0:	e0e080e7          	jalr	-498(ra) # 80004afa <argstr>
    80008cf4:	87aa                	mv	a5,a0
    80008cf6:	fef42223          	sw	a5,-28(s0)
    80008cfa:	fe442783          	lw	a5,-28(s0)
    80008cfe:	2781                	sext.w	a5,a5
    80008d00:	0007d463          	bgez	a5,80008d08 <sys_open+0x40>
    80008d04:	57fd                	li	a5,-1
    80008d06:	aafd                	j	80008f04 <sys_open+0x23c>
    80008d08:	ffffe097          	auipc	ra,0xffffe
    80008d0c:	02a080e7          	jalr	42(ra) # 80006d32 <begin_op>
    80008d10:	f4c42783          	lw	a5,-180(s0)
    80008d14:	2007f793          	andi	a5,a5,512
    80008d18:	2781                	sext.w	a5,a5
    80008d1a:	c795                	beqz	a5,80008d46 <sys_open+0x7e>
    80008d1c:	f5040793          	addi	a5,s0,-176
    80008d20:	4681                	li	a3,0
    80008d22:	4601                	li	a2,0
    80008d24:	4589                	li	a1,2
    80008d26:	853e                	mv	a0,a5
    80008d28:	00000097          	auipc	ra,0x0
    80008d2c:	d72080e7          	jalr	-654(ra) # 80008a9a <create>
    80008d30:	fea43423          	sd	a0,-24(s0)
    80008d34:	fe843783          	ld	a5,-24(s0)
    80008d38:	e7b5                	bnez	a5,80008da4 <sys_open+0xdc>
    80008d3a:	ffffe097          	auipc	ra,0xffffe
    80008d3e:	0ba080e7          	jalr	186(ra) # 80006df4 <end_op>
    80008d42:	57fd                	li	a5,-1
    80008d44:	a2c1                	j	80008f04 <sys_open+0x23c>
    80008d46:	f5040793          	addi	a5,s0,-176
    80008d4a:	853e                	mv	a0,a5
    80008d4c:	ffffe097          	auipc	ra,0xffffe
    80008d50:	c82080e7          	jalr	-894(ra) # 800069ce <namei>
    80008d54:	fea43423          	sd	a0,-24(s0)
    80008d58:	fe843783          	ld	a5,-24(s0)
    80008d5c:	e799                	bnez	a5,80008d6a <sys_open+0xa2>
    80008d5e:	ffffe097          	auipc	ra,0xffffe
    80008d62:	096080e7          	jalr	150(ra) # 80006df4 <end_op>
    80008d66:	57fd                	li	a5,-1
    80008d68:	aa71                	j	80008f04 <sys_open+0x23c>
    80008d6a:	fe843503          	ld	a0,-24(s0)
    80008d6e:	ffffd097          	auipc	ra,0xffffd
    80008d72:	f30080e7          	jalr	-208(ra) # 80005c9e <ilock>
    80008d76:	fe843783          	ld	a5,-24(s0)
    80008d7a:	04479783          	lh	a5,68(a5)
    80008d7e:	873e                	mv	a4,a5
    80008d80:	4785                	li	a5,1
    80008d82:	02f71163          	bne	a4,a5,80008da4 <sys_open+0xdc>
    80008d86:	f4c42783          	lw	a5,-180(s0)
    80008d8a:	cf89                	beqz	a5,80008da4 <sys_open+0xdc>
    80008d8c:	fe843503          	ld	a0,-24(s0)
    80008d90:	ffffd097          	auipc	ra,0xffffd
    80008d94:	16c080e7          	jalr	364(ra) # 80005efc <iunlockput>
    80008d98:	ffffe097          	auipc	ra,0xffffe
    80008d9c:	05c080e7          	jalr	92(ra) # 80006df4 <end_op>
    80008da0:	57fd                	li	a5,-1
    80008da2:	a28d                	j	80008f04 <sys_open+0x23c>
    80008da4:	fe843783          	ld	a5,-24(s0)
    80008da8:	04479783          	lh	a5,68(a5)
    80008dac:	873e                	mv	a4,a5
    80008dae:	478d                	li	a5,3
    80008db0:	02f71c63          	bne	a4,a5,80008de8 <sys_open+0x120>
    80008db4:	fe843783          	ld	a5,-24(s0)
    80008db8:	04679783          	lh	a5,70(a5)
    80008dbc:	0007ca63          	bltz	a5,80008dd0 <sys_open+0x108>
    80008dc0:	fe843783          	ld	a5,-24(s0)
    80008dc4:	04679783          	lh	a5,70(a5)
    80008dc8:	873e                	mv	a4,a5
    80008dca:	47a5                	li	a5,9
    80008dcc:	00e7de63          	bge	a5,a4,80008de8 <sys_open+0x120>
    80008dd0:	fe843503          	ld	a0,-24(s0)
    80008dd4:	ffffd097          	auipc	ra,0xffffd
    80008dd8:	128080e7          	jalr	296(ra) # 80005efc <iunlockput>
    80008ddc:	ffffe097          	auipc	ra,0xffffe
    80008de0:	018080e7          	jalr	24(ra) # 80006df4 <end_op>
    80008de4:	57fd                	li	a5,-1
    80008de6:	aa39                	j	80008f04 <sys_open+0x23c>
    80008de8:	ffffe097          	auipc	ra,0xffffe
    80008dec:	4fa080e7          	jalr	1274(ra) # 800072e2 <filealloc>
    80008df0:	fca43c23          	sd	a0,-40(s0)
    80008df4:	fd843783          	ld	a5,-40(s0)
    80008df8:	cf99                	beqz	a5,80008e16 <sys_open+0x14e>
    80008dfa:	fd843503          	ld	a0,-40(s0)
    80008dfe:	fffff097          	auipc	ra,0xfffff
    80008e02:	5f6080e7          	jalr	1526(ra) # 800083f4 <fdalloc>
    80008e06:	87aa                	mv	a5,a0
    80008e08:	fcf42a23          	sw	a5,-44(s0)
    80008e0c:	fd442783          	lw	a5,-44(s0)
    80008e10:	2781                	sext.w	a5,a5
    80008e12:	0207d763          	bgez	a5,80008e40 <sys_open+0x178>
    80008e16:	fd843783          	ld	a5,-40(s0)
    80008e1a:	c799                	beqz	a5,80008e28 <sys_open+0x160>
    80008e1c:	fd843503          	ld	a0,-40(s0)
    80008e20:	ffffe097          	auipc	ra,0xffffe
    80008e24:	5ac080e7          	jalr	1452(ra) # 800073cc <fileclose>
    80008e28:	fe843503          	ld	a0,-24(s0)
    80008e2c:	ffffd097          	auipc	ra,0xffffd
    80008e30:	0d0080e7          	jalr	208(ra) # 80005efc <iunlockput>
    80008e34:	ffffe097          	auipc	ra,0xffffe
    80008e38:	fc0080e7          	jalr	-64(ra) # 80006df4 <end_op>
    80008e3c:	57fd                	li	a5,-1
    80008e3e:	a0d9                	j	80008f04 <sys_open+0x23c>
    80008e40:	fe843783          	ld	a5,-24(s0)
    80008e44:	04479783          	lh	a5,68(a5)
    80008e48:	873e                	mv	a4,a5
    80008e4a:	478d                	li	a5,3
    80008e4c:	00f71f63          	bne	a4,a5,80008e6a <sys_open+0x1a2>
    80008e50:	fd843783          	ld	a5,-40(s0)
    80008e54:	470d                	li	a4,3
    80008e56:	c398                	sw	a4,0(a5)
    80008e58:	fe843783          	ld	a5,-24(s0)
    80008e5c:	04679703          	lh	a4,70(a5)
    80008e60:	fd843783          	ld	a5,-40(s0)
    80008e64:	02e79223          	sh	a4,36(a5)
    80008e68:	a809                	j	80008e7a <sys_open+0x1b2>
    80008e6a:	fd843783          	ld	a5,-40(s0)
    80008e6e:	4709                	li	a4,2
    80008e70:	c398                	sw	a4,0(a5)
    80008e72:	fd843783          	ld	a5,-40(s0)
    80008e76:	0207a023          	sw	zero,32(a5)
    80008e7a:	fd843783          	ld	a5,-40(s0)
    80008e7e:	fe843703          	ld	a4,-24(s0)
    80008e82:	ef98                	sd	a4,24(a5)
    80008e84:	f4c42783          	lw	a5,-180(s0)
    80008e88:	8b85                	andi	a5,a5,1
    80008e8a:	2781                	sext.w	a5,a5
    80008e8c:	0017b793          	seqz	a5,a5
    80008e90:	0ff7f793          	zext.b	a5,a5
    80008e94:	873e                	mv	a4,a5
    80008e96:	fd843783          	ld	a5,-40(s0)
    80008e9a:	00e78423          	sb	a4,8(a5)
    80008e9e:	f4c42783          	lw	a5,-180(s0)
    80008ea2:	8b85                	andi	a5,a5,1
    80008ea4:	2781                	sext.w	a5,a5
    80008ea6:	e791                	bnez	a5,80008eb2 <sys_open+0x1ea>
    80008ea8:	f4c42783          	lw	a5,-180(s0)
    80008eac:	8b89                	andi	a5,a5,2
    80008eae:	2781                	sext.w	a5,a5
    80008eb0:	c399                	beqz	a5,80008eb6 <sys_open+0x1ee>
    80008eb2:	4785                	li	a5,1
    80008eb4:	a011                	j	80008eb8 <sys_open+0x1f0>
    80008eb6:	4781                	li	a5,0
    80008eb8:	0ff7f713          	zext.b	a4,a5
    80008ebc:	fd843783          	ld	a5,-40(s0)
    80008ec0:	00e784a3          	sb	a4,9(a5)
    80008ec4:	f4c42783          	lw	a5,-180(s0)
    80008ec8:	4007f793          	andi	a5,a5,1024
    80008ecc:	2781                	sext.w	a5,a5
    80008ece:	cf99                	beqz	a5,80008eec <sys_open+0x224>
    80008ed0:	fe843783          	ld	a5,-24(s0)
    80008ed4:	04479783          	lh	a5,68(a5)
    80008ed8:	873e                	mv	a4,a5
    80008eda:	4789                	li	a5,2
    80008edc:	00f71863          	bne	a4,a5,80008eec <sys_open+0x224>
    80008ee0:	fe843503          	ld	a0,-24(s0)
    80008ee4:	ffffd097          	auipc	ra,0xffffd
    80008ee8:	1c2080e7          	jalr	450(ra) # 800060a6 <itrunc>
    80008eec:	fe843503          	ld	a0,-24(s0)
    80008ef0:	ffffd097          	auipc	ra,0xffffd
    80008ef4:	ee2080e7          	jalr	-286(ra) # 80005dd2 <iunlock>
    80008ef8:	ffffe097          	auipc	ra,0xffffe
    80008efc:	efc080e7          	jalr	-260(ra) # 80006df4 <end_op>
    80008f00:	fd442783          	lw	a5,-44(s0)
    80008f04:	853e                	mv	a0,a5
    80008f06:	70ea                	ld	ra,184(sp)
    80008f08:	744a                	ld	s0,176(sp)
    80008f0a:	6129                	addi	sp,sp,192
    80008f0c:	8082                	ret

0000000080008f0e <sys_mkdir>:
    80008f0e:	7135                	addi	sp,sp,-160
    80008f10:	ed06                	sd	ra,152(sp)
    80008f12:	e922                	sd	s0,144(sp)
    80008f14:	1100                	addi	s0,sp,160
    80008f16:	ffffe097          	auipc	ra,0xffffe
    80008f1a:	e1c080e7          	jalr	-484(ra) # 80006d32 <begin_op>
    80008f1e:	f6840793          	addi	a5,s0,-152
    80008f22:	08000613          	li	a2,128
    80008f26:	85be                	mv	a1,a5
    80008f28:	4501                	li	a0,0
    80008f2a:	ffffc097          	auipc	ra,0xffffc
    80008f2e:	bd0080e7          	jalr	-1072(ra) # 80004afa <argstr>
    80008f32:	87aa                	mv	a5,a0
    80008f34:	0207c163          	bltz	a5,80008f56 <sys_mkdir+0x48>
    80008f38:	f6840793          	addi	a5,s0,-152
    80008f3c:	4681                	li	a3,0
    80008f3e:	4601                	li	a2,0
    80008f40:	4585                	li	a1,1
    80008f42:	853e                	mv	a0,a5
    80008f44:	00000097          	auipc	ra,0x0
    80008f48:	b56080e7          	jalr	-1194(ra) # 80008a9a <create>
    80008f4c:	fea43423          	sd	a0,-24(s0)
    80008f50:	fe843783          	ld	a5,-24(s0)
    80008f54:	e799                	bnez	a5,80008f62 <sys_mkdir+0x54>
    80008f56:	ffffe097          	auipc	ra,0xffffe
    80008f5a:	e9e080e7          	jalr	-354(ra) # 80006df4 <end_op>
    80008f5e:	57fd                	li	a5,-1
    80008f60:	a821                	j	80008f78 <sys_mkdir+0x6a>
    80008f62:	fe843503          	ld	a0,-24(s0)
    80008f66:	ffffd097          	auipc	ra,0xffffd
    80008f6a:	f96080e7          	jalr	-106(ra) # 80005efc <iunlockput>
    80008f6e:	ffffe097          	auipc	ra,0xffffe
    80008f72:	e86080e7          	jalr	-378(ra) # 80006df4 <end_op>
    80008f76:	4781                	li	a5,0
    80008f78:	853e                	mv	a0,a5
    80008f7a:	60ea                	ld	ra,152(sp)
    80008f7c:	644a                	ld	s0,144(sp)
    80008f7e:	610d                	addi	sp,sp,160
    80008f80:	8082                	ret

0000000080008f82 <sys_mknod>:
    80008f82:	7135                	addi	sp,sp,-160
    80008f84:	ed06                	sd	ra,152(sp)
    80008f86:	e922                	sd	s0,144(sp)
    80008f88:	1100                	addi	s0,sp,160
    80008f8a:	ffffe097          	auipc	ra,0xffffe
    80008f8e:	da8080e7          	jalr	-600(ra) # 80006d32 <begin_op>
    80008f92:	f6440793          	addi	a5,s0,-156
    80008f96:	85be                	mv	a1,a5
    80008f98:	4505                	li	a0,1
    80008f9a:	ffffc097          	auipc	ra,0xffffc
    80008f9e:	af8080e7          	jalr	-1288(ra) # 80004a92 <argint>
    80008fa2:	f6040793          	addi	a5,s0,-160
    80008fa6:	85be                	mv	a1,a5
    80008fa8:	4509                	li	a0,2
    80008faa:	ffffc097          	auipc	ra,0xffffc
    80008fae:	ae8080e7          	jalr	-1304(ra) # 80004a92 <argint>
    80008fb2:	f6840793          	addi	a5,s0,-152
    80008fb6:	08000613          	li	a2,128
    80008fba:	85be                	mv	a1,a5
    80008fbc:	4501                	li	a0,0
    80008fbe:	ffffc097          	auipc	ra,0xffffc
    80008fc2:	b3c080e7          	jalr	-1220(ra) # 80004afa <argstr>
    80008fc6:	87aa                	mv	a5,a0
    80008fc8:	0207cc63          	bltz	a5,80009000 <sys_mknod+0x7e>
    80008fcc:	f6442783          	lw	a5,-156(s0)
    80008fd0:	0107971b          	slliw	a4,a5,0x10
    80008fd4:	4107571b          	sraiw	a4,a4,0x10
    80008fd8:	f6042783          	lw	a5,-160(s0)
    80008fdc:	0107969b          	slliw	a3,a5,0x10
    80008fe0:	4106d69b          	sraiw	a3,a3,0x10
    80008fe4:	f6840793          	addi	a5,s0,-152
    80008fe8:	863a                	mv	a2,a4
    80008fea:	458d                	li	a1,3
    80008fec:	853e                	mv	a0,a5
    80008fee:	00000097          	auipc	ra,0x0
    80008ff2:	aac080e7          	jalr	-1364(ra) # 80008a9a <create>
    80008ff6:	fea43423          	sd	a0,-24(s0)
    80008ffa:	fe843783          	ld	a5,-24(s0)
    80008ffe:	e799                	bnez	a5,8000900c <sys_mknod+0x8a>
    80009000:	ffffe097          	auipc	ra,0xffffe
    80009004:	df4080e7          	jalr	-524(ra) # 80006df4 <end_op>
    80009008:	57fd                	li	a5,-1
    8000900a:	a821                	j	80009022 <sys_mknod+0xa0>
    8000900c:	fe843503          	ld	a0,-24(s0)
    80009010:	ffffd097          	auipc	ra,0xffffd
    80009014:	eec080e7          	jalr	-276(ra) # 80005efc <iunlockput>
    80009018:	ffffe097          	auipc	ra,0xffffe
    8000901c:	ddc080e7          	jalr	-548(ra) # 80006df4 <end_op>
    80009020:	4781                	li	a5,0
    80009022:	853e                	mv	a0,a5
    80009024:	60ea                	ld	ra,152(sp)
    80009026:	644a                	ld	s0,144(sp)
    80009028:	610d                	addi	sp,sp,160
    8000902a:	8082                	ret

000000008000902c <sys_chdir>:
    8000902c:	7135                	addi	sp,sp,-160
    8000902e:	ed06                	sd	ra,152(sp)
    80009030:	e922                	sd	s0,144(sp)
    80009032:	1100                	addi	s0,sp,160
    80009034:	ffffa097          	auipc	ra,0xffffa
    80009038:	8a6080e7          	jalr	-1882(ra) # 800028da <myproc>
    8000903c:	fea43423          	sd	a0,-24(s0)
    80009040:	ffffe097          	auipc	ra,0xffffe
    80009044:	cf2080e7          	jalr	-782(ra) # 80006d32 <begin_op>
    80009048:	f6040793          	addi	a5,s0,-160
    8000904c:	08000613          	li	a2,128
    80009050:	85be                	mv	a1,a5
    80009052:	4501                	li	a0,0
    80009054:	ffffc097          	auipc	ra,0xffffc
    80009058:	aa6080e7          	jalr	-1370(ra) # 80004afa <argstr>
    8000905c:	87aa                	mv	a5,a0
    8000905e:	0007ce63          	bltz	a5,8000907a <sys_chdir+0x4e>
    80009062:	f6040793          	addi	a5,s0,-160
    80009066:	853e                	mv	a0,a5
    80009068:	ffffe097          	auipc	ra,0xffffe
    8000906c:	966080e7          	jalr	-1690(ra) # 800069ce <namei>
    80009070:	fea43023          	sd	a0,-32(s0)
    80009074:	fe043783          	ld	a5,-32(s0)
    80009078:	e799                	bnez	a5,80009086 <sys_chdir+0x5a>
    8000907a:	ffffe097          	auipc	ra,0xffffe
    8000907e:	d7a080e7          	jalr	-646(ra) # 80006df4 <end_op>
    80009082:	57fd                	li	a5,-1
    80009084:	a0ad                	j	800090ee <sys_chdir+0xc2>
    80009086:	fe043503          	ld	a0,-32(s0)
    8000908a:	ffffd097          	auipc	ra,0xffffd
    8000908e:	c14080e7          	jalr	-1004(ra) # 80005c9e <ilock>
    80009092:	fe043783          	ld	a5,-32(s0)
    80009096:	04479783          	lh	a5,68(a5)
    8000909a:	873e                	mv	a4,a5
    8000909c:	4785                	li	a5,1
    8000909e:	00f70e63          	beq	a4,a5,800090ba <sys_chdir+0x8e>
    800090a2:	fe043503          	ld	a0,-32(s0)
    800090a6:	ffffd097          	auipc	ra,0xffffd
    800090aa:	e56080e7          	jalr	-426(ra) # 80005efc <iunlockput>
    800090ae:	ffffe097          	auipc	ra,0xffffe
    800090b2:	d46080e7          	jalr	-698(ra) # 80006df4 <end_op>
    800090b6:	57fd                	li	a5,-1
    800090b8:	a81d                	j	800090ee <sys_chdir+0xc2>
    800090ba:	fe043503          	ld	a0,-32(s0)
    800090be:	ffffd097          	auipc	ra,0xffffd
    800090c2:	d14080e7          	jalr	-748(ra) # 80005dd2 <iunlock>
    800090c6:	fe843783          	ld	a5,-24(s0)
    800090ca:	1a07b783          	ld	a5,416(a5)
    800090ce:	853e                	mv	a0,a5
    800090d0:	ffffd097          	auipc	ra,0xffffd
    800090d4:	d5c080e7          	jalr	-676(ra) # 80005e2c <iput>
    800090d8:	ffffe097          	auipc	ra,0xffffe
    800090dc:	d1c080e7          	jalr	-740(ra) # 80006df4 <end_op>
    800090e0:	fe843783          	ld	a5,-24(s0)
    800090e4:	fe043703          	ld	a4,-32(s0)
    800090e8:	1ae7b023          	sd	a4,416(a5)
    800090ec:	4781                	li	a5,0
    800090ee:	853e                	mv	a0,a5
    800090f0:	60ea                	ld	ra,152(sp)
    800090f2:	644a                	ld	s0,144(sp)
    800090f4:	610d                	addi	sp,sp,160
    800090f6:	8082                	ret

00000000800090f8 <sys_exec>:
    800090f8:	7161                	addi	sp,sp,-432
    800090fa:	f706                	sd	ra,424(sp)
    800090fc:	f322                	sd	s0,416(sp)
    800090fe:	1b00                	addi	s0,sp,432
    80009100:	e6040793          	addi	a5,s0,-416
    80009104:	85be                	mv	a1,a5
    80009106:	4505                	li	a0,1
    80009108:	ffffc097          	auipc	ra,0xffffc
    8000910c:	9c0080e7          	jalr	-1600(ra) # 80004ac8 <argaddr>
    80009110:	f6840793          	addi	a5,s0,-152
    80009114:	08000613          	li	a2,128
    80009118:	85be                	mv	a1,a5
    8000911a:	4501                	li	a0,0
    8000911c:	ffffc097          	auipc	ra,0xffffc
    80009120:	9de080e7          	jalr	-1570(ra) # 80004afa <argstr>
    80009124:	87aa                	mv	a5,a0
    80009126:	0007d463          	bgez	a5,8000912e <sys_exec+0x36>
    8000912a:	57fd                	li	a5,-1
    8000912c:	aa8d                	j	8000929e <sys_exec+0x1a6>
    8000912e:	e6840793          	addi	a5,s0,-408
    80009132:	10000613          	li	a2,256
    80009136:	4581                	li	a1,0
    80009138:	853e                	mv	a0,a5
    8000913a:	ffff8097          	auipc	ra,0xffff8
    8000913e:	312080e7          	jalr	786(ra) # 8000144c <memset>
    80009142:	fe042623          	sw	zero,-20(s0)
    80009146:	fec42783          	lw	a5,-20(s0)
    8000914a:	873e                	mv	a4,a5
    8000914c:	47fd                	li	a5,31
    8000914e:	0ee7ee63          	bltu	a5,a4,8000924a <sys_exec+0x152>
    80009152:	fec42783          	lw	a5,-20(s0)
    80009156:	00379713          	slli	a4,a5,0x3
    8000915a:	e6043783          	ld	a5,-416(s0)
    8000915e:	97ba                	add	a5,a5,a4
    80009160:	e5840713          	addi	a4,s0,-424
    80009164:	85ba                	mv	a1,a4
    80009166:	853e                	mv	a0,a5
    80009168:	ffffb097          	auipc	ra,0xffffb
    8000916c:	7b8080e7          	jalr	1976(ra) # 80004920 <fetchaddr>
    80009170:	87aa                	mv	a5,a0
    80009172:	0c07ce63          	bltz	a5,8000924e <sys_exec+0x156>
    80009176:	e5843783          	ld	a5,-424(s0)
    8000917a:	eb8d                	bnez	a5,800091ac <sys_exec+0xb4>
    8000917c:	fec42783          	lw	a5,-20(s0)
    80009180:	078e                	slli	a5,a5,0x3
    80009182:	17c1                	addi	a5,a5,-16
    80009184:	97a2                	add	a5,a5,s0
    80009186:	e607bc23          	sd	zero,-392(a5)
    8000918a:	0001                	nop
    8000918c:	e6840713          	addi	a4,s0,-408
    80009190:	f6840793          	addi	a5,s0,-152
    80009194:	85ba                	mv	a1,a4
    80009196:	853e                	mv	a0,a5
    80009198:	fffff097          	auipc	ra,0xfffff
    8000919c:	c2c080e7          	jalr	-980(ra) # 80007dc4 <exec>
    800091a0:	87aa                	mv	a5,a0
    800091a2:	fef42423          	sw	a5,-24(s0)
    800091a6:	fe042623          	sw	zero,-20(s0)
    800091aa:	a8bd                	j	80009228 <sys_exec+0x130>
    800091ac:	ffff8097          	auipc	ra,0xffff8
    800091b0:	f78080e7          	jalr	-136(ra) # 80001124 <kalloc>
    800091b4:	872a                	mv	a4,a0
    800091b6:	fec42783          	lw	a5,-20(s0)
    800091ba:	078e                	slli	a5,a5,0x3
    800091bc:	17c1                	addi	a5,a5,-16
    800091be:	97a2                	add	a5,a5,s0
    800091c0:	e6e7bc23          	sd	a4,-392(a5)
    800091c4:	fec42783          	lw	a5,-20(s0)
    800091c8:	078e                	slli	a5,a5,0x3
    800091ca:	17c1                	addi	a5,a5,-16
    800091cc:	97a2                	add	a5,a5,s0
    800091ce:	e787b783          	ld	a5,-392(a5)
    800091d2:	c3c1                	beqz	a5,80009252 <sys_exec+0x15a>
    800091d4:	e5843703          	ld	a4,-424(s0)
    800091d8:	fec42783          	lw	a5,-20(s0)
    800091dc:	078e                	slli	a5,a5,0x3
    800091de:	17c1                	addi	a5,a5,-16
    800091e0:	97a2                	add	a5,a5,s0
    800091e2:	e787b783          	ld	a5,-392(a5)
    800091e6:	6605                	lui	a2,0x1
    800091e8:	85be                	mv	a1,a5
    800091ea:	853a                	mv	a0,a4
    800091ec:	ffffb097          	auipc	ra,0xffffb
    800091f0:	7a2080e7          	jalr	1954(ra) # 8000498e <fetchstr>
    800091f4:	87aa                	mv	a5,a0
    800091f6:	0607c063          	bltz	a5,80009256 <sys_exec+0x15e>
    800091fa:	fec42783          	lw	a5,-20(s0)
    800091fe:	2785                	addiw	a5,a5,1
    80009200:	fef42623          	sw	a5,-20(s0)
    80009204:	b789                	j	80009146 <sys_exec+0x4e>
    80009206:	fec42783          	lw	a5,-20(s0)
    8000920a:	078e                	slli	a5,a5,0x3
    8000920c:	17c1                	addi	a5,a5,-16
    8000920e:	97a2                	add	a5,a5,s0
    80009210:	e787b783          	ld	a5,-392(a5)
    80009214:	853e                	mv	a0,a5
    80009216:	ffff8097          	auipc	ra,0xffff8
    8000921a:	e6a080e7          	jalr	-406(ra) # 80001080 <kfree>
    8000921e:	fec42783          	lw	a5,-20(s0)
    80009222:	2785                	addiw	a5,a5,1
    80009224:	fef42623          	sw	a5,-20(s0)
    80009228:	fec42783          	lw	a5,-20(s0)
    8000922c:	873e                	mv	a4,a5
    8000922e:	47fd                	li	a5,31
    80009230:	00e7ea63          	bltu	a5,a4,80009244 <sys_exec+0x14c>
    80009234:	fec42783          	lw	a5,-20(s0)
    80009238:	078e                	slli	a5,a5,0x3
    8000923a:	17c1                	addi	a5,a5,-16
    8000923c:	97a2                	add	a5,a5,s0
    8000923e:	e787b783          	ld	a5,-392(a5)
    80009242:	f3f1                	bnez	a5,80009206 <sys_exec+0x10e>
    80009244:	fe842783          	lw	a5,-24(s0)
    80009248:	a899                	j	8000929e <sys_exec+0x1a6>
    8000924a:	0001                	nop
    8000924c:	a031                	j	80009258 <sys_exec+0x160>
    8000924e:	0001                	nop
    80009250:	a021                	j	80009258 <sys_exec+0x160>
    80009252:	0001                	nop
    80009254:	a011                	j	80009258 <sys_exec+0x160>
    80009256:	0001                	nop
    80009258:	fe042623          	sw	zero,-20(s0)
    8000925c:	a015                	j	80009280 <sys_exec+0x188>
    8000925e:	fec42783          	lw	a5,-20(s0)
    80009262:	078e                	slli	a5,a5,0x3
    80009264:	17c1                	addi	a5,a5,-16
    80009266:	97a2                	add	a5,a5,s0
    80009268:	e787b783          	ld	a5,-392(a5)
    8000926c:	853e                	mv	a0,a5
    8000926e:	ffff8097          	auipc	ra,0xffff8
    80009272:	e12080e7          	jalr	-494(ra) # 80001080 <kfree>
    80009276:	fec42783          	lw	a5,-20(s0)
    8000927a:	2785                	addiw	a5,a5,1
    8000927c:	fef42623          	sw	a5,-20(s0)
    80009280:	fec42783          	lw	a5,-20(s0)
    80009284:	873e                	mv	a4,a5
    80009286:	47fd                	li	a5,31
    80009288:	00e7ea63          	bltu	a5,a4,8000929c <sys_exec+0x1a4>
    8000928c:	fec42783          	lw	a5,-20(s0)
    80009290:	078e                	slli	a5,a5,0x3
    80009292:	17c1                	addi	a5,a5,-16
    80009294:	97a2                	add	a5,a5,s0
    80009296:	e787b783          	ld	a5,-392(a5)
    8000929a:	f3f1                	bnez	a5,8000925e <sys_exec+0x166>
    8000929c:	57fd                	li	a5,-1
    8000929e:	853e                	mv	a0,a5
    800092a0:	70ba                	ld	ra,424(sp)
    800092a2:	741a                	ld	s0,416(sp)
    800092a4:	615d                	addi	sp,sp,432
    800092a6:	8082                	ret

00000000800092a8 <sys_pipe>:
    800092a8:	7139                	addi	sp,sp,-64
    800092aa:	fc06                	sd	ra,56(sp)
    800092ac:	f822                	sd	s0,48(sp)
    800092ae:	0080                	addi	s0,sp,64
    800092b0:	ffff9097          	auipc	ra,0xffff9
    800092b4:	62a080e7          	jalr	1578(ra) # 800028da <myproc>
    800092b8:	fea43423          	sd	a0,-24(s0)
    800092bc:	fe040793          	addi	a5,s0,-32
    800092c0:	85be                	mv	a1,a5
    800092c2:	4501                	li	a0,0
    800092c4:	ffffc097          	auipc	ra,0xffffc
    800092c8:	804080e7          	jalr	-2044(ra) # 80004ac8 <argaddr>
    800092cc:	fd040713          	addi	a4,s0,-48
    800092d0:	fd840793          	addi	a5,s0,-40
    800092d4:	85ba                	mv	a1,a4
    800092d6:	853e                	mv	a0,a5
    800092d8:	ffffe097          	auipc	ra,0xffffe
    800092dc:	606080e7          	jalr	1542(ra) # 800078de <pipealloc>
    800092e0:	87aa                	mv	a5,a0
    800092e2:	0007d463          	bgez	a5,800092ea <sys_pipe+0x42>
    800092e6:	57fd                	li	a5,-1
    800092e8:	a231                	j	800093f4 <sys_pipe+0x14c>
    800092ea:	57fd                	li	a5,-1
    800092ec:	fcf42623          	sw	a5,-52(s0)
    800092f0:	fd843783          	ld	a5,-40(s0)
    800092f4:	853e                	mv	a0,a5
    800092f6:	fffff097          	auipc	ra,0xfffff
    800092fa:	0fe080e7          	jalr	254(ra) # 800083f4 <fdalloc>
    800092fe:	87aa                	mv	a5,a0
    80009300:	fcf42623          	sw	a5,-52(s0)
    80009304:	fcc42783          	lw	a5,-52(s0)
    80009308:	0207c063          	bltz	a5,80009328 <sys_pipe+0x80>
    8000930c:	fd043783          	ld	a5,-48(s0)
    80009310:	853e                	mv	a0,a5
    80009312:	fffff097          	auipc	ra,0xfffff
    80009316:	0e2080e7          	jalr	226(ra) # 800083f4 <fdalloc>
    8000931a:	87aa                	mv	a5,a0
    8000931c:	fcf42423          	sw	a5,-56(s0)
    80009320:	fc842783          	lw	a5,-56(s0)
    80009324:	0407d063          	bgez	a5,80009364 <sys_pipe+0xbc>
    80009328:	fcc42783          	lw	a5,-52(s0)
    8000932c:	0007cc63          	bltz	a5,80009344 <sys_pipe+0x9c>
    80009330:	fcc42783          	lw	a5,-52(s0)
    80009334:	fe843703          	ld	a4,-24(s0)
    80009338:	02478793          	addi	a5,a5,36
    8000933c:	078e                	slli	a5,a5,0x3
    8000933e:	97ba                	add	a5,a5,a4
    80009340:	0007b023          	sd	zero,0(a5)
    80009344:	fd843783          	ld	a5,-40(s0)
    80009348:	853e                	mv	a0,a5
    8000934a:	ffffe097          	auipc	ra,0xffffe
    8000934e:	082080e7          	jalr	130(ra) # 800073cc <fileclose>
    80009352:	fd043783          	ld	a5,-48(s0)
    80009356:	853e                	mv	a0,a5
    80009358:	ffffe097          	auipc	ra,0xffffe
    8000935c:	074080e7          	jalr	116(ra) # 800073cc <fileclose>
    80009360:	57fd                	li	a5,-1
    80009362:	a849                	j	800093f4 <sys_pipe+0x14c>
    80009364:	fe843783          	ld	a5,-24(s0)
    80009368:	73dc                	ld	a5,160(a5)
    8000936a:	fe043703          	ld	a4,-32(s0)
    8000936e:	fcc40613          	addi	a2,s0,-52
    80009372:	4691                	li	a3,4
    80009374:	85ba                	mv	a1,a4
    80009376:	853e                	mv	a0,a5
    80009378:	ffff9097          	auipc	ra,0xffff9
    8000937c:	f92080e7          	jalr	-110(ra) # 8000230a <copyout>
    80009380:	87aa                	mv	a5,a0
    80009382:	0207c463          	bltz	a5,800093aa <sys_pipe+0x102>
    80009386:	fe843783          	ld	a5,-24(s0)
    8000938a:	73d8                	ld	a4,160(a5)
    8000938c:	fe043783          	ld	a5,-32(s0)
    80009390:	0791                	addi	a5,a5,4
    80009392:	fc840613          	addi	a2,s0,-56
    80009396:	4691                	li	a3,4
    80009398:	85be                	mv	a1,a5
    8000939a:	853a                	mv	a0,a4
    8000939c:	ffff9097          	auipc	ra,0xffff9
    800093a0:	f6e080e7          	jalr	-146(ra) # 8000230a <copyout>
    800093a4:	87aa                	mv	a5,a0
    800093a6:	0407d663          	bgez	a5,800093f2 <sys_pipe+0x14a>
    800093aa:	fcc42783          	lw	a5,-52(s0)
    800093ae:	fe843703          	ld	a4,-24(s0)
    800093b2:	02478793          	addi	a5,a5,36
    800093b6:	078e                	slli	a5,a5,0x3
    800093b8:	97ba                	add	a5,a5,a4
    800093ba:	0007b023          	sd	zero,0(a5)
    800093be:	fc842783          	lw	a5,-56(s0)
    800093c2:	fe843703          	ld	a4,-24(s0)
    800093c6:	02478793          	addi	a5,a5,36
    800093ca:	078e                	slli	a5,a5,0x3
    800093cc:	97ba                	add	a5,a5,a4
    800093ce:	0007b023          	sd	zero,0(a5)
    800093d2:	fd843783          	ld	a5,-40(s0)
    800093d6:	853e                	mv	a0,a5
    800093d8:	ffffe097          	auipc	ra,0xffffe
    800093dc:	ff4080e7          	jalr	-12(ra) # 800073cc <fileclose>
    800093e0:	fd043783          	ld	a5,-48(s0)
    800093e4:	853e                	mv	a0,a5
    800093e6:	ffffe097          	auipc	ra,0xffffe
    800093ea:	fe6080e7          	jalr	-26(ra) # 800073cc <fileclose>
    800093ee:	57fd                	li	a5,-1
    800093f0:	a011                	j	800093f4 <sys_pipe+0x14c>
    800093f2:	4781                	li	a5,0
    800093f4:	853e                	mv	a0,a5
    800093f6:	70e2                	ld	ra,56(sp)
    800093f8:	7442                	ld	s0,48(sp)
    800093fa:	6121                	addi	sp,sp,64
    800093fc:	8082                	ret
	...

0000000080009400 <kernelvec>:
    80009400:	7111                	addi	sp,sp,-256
    80009402:	e006                	sd	ra,0(sp)
    80009404:	e40a                	sd	sp,8(sp)
    80009406:	e80e                	sd	gp,16(sp)
    80009408:	ec12                	sd	tp,24(sp)
    8000940a:	f016                	sd	t0,32(sp)
    8000940c:	f41a                	sd	t1,40(sp)
    8000940e:	f81e                	sd	t2,48(sp)
    80009410:	fc22                	sd	s0,56(sp)
    80009412:	e0a6                	sd	s1,64(sp)
    80009414:	e4aa                	sd	a0,72(sp)
    80009416:	e8ae                	sd	a1,80(sp)
    80009418:	ecb2                	sd	a2,88(sp)
    8000941a:	f0b6                	sd	a3,96(sp)
    8000941c:	f4ba                	sd	a4,104(sp)
    8000941e:	f8be                	sd	a5,112(sp)
    80009420:	fcc2                	sd	a6,120(sp)
    80009422:	e146                	sd	a7,128(sp)
    80009424:	e54a                	sd	s2,136(sp)
    80009426:	e94e                	sd	s3,144(sp)
    80009428:	ed52                	sd	s4,152(sp)
    8000942a:	f156                	sd	s5,160(sp)
    8000942c:	f55a                	sd	s6,168(sp)
    8000942e:	f95e                	sd	s7,176(sp)
    80009430:	fd62                	sd	s8,184(sp)
    80009432:	e1e6                	sd	s9,192(sp)
    80009434:	e5ea                	sd	s10,200(sp)
    80009436:	e9ee                	sd	s11,208(sp)
    80009438:	edf2                	sd	t3,216(sp)
    8000943a:	f1f6                	sd	t4,224(sp)
    8000943c:	f5fa                	sd	t5,232(sp)
    8000943e:	f9fe                	sd	t6,240(sp)
    80009440:	a5efb0ef          	jal	8000469e <kerneltrap>
    80009444:	6082                	ld	ra,0(sp)
    80009446:	6122                	ld	sp,8(sp)
    80009448:	61c2                	ld	gp,16(sp)
    8000944a:	7282                	ld	t0,32(sp)
    8000944c:	7322                	ld	t1,40(sp)
    8000944e:	73c2                	ld	t2,48(sp)
    80009450:	7462                	ld	s0,56(sp)
    80009452:	6486                	ld	s1,64(sp)
    80009454:	6526                	ld	a0,72(sp)
    80009456:	65c6                	ld	a1,80(sp)
    80009458:	6666                	ld	a2,88(sp)
    8000945a:	7686                	ld	a3,96(sp)
    8000945c:	7726                	ld	a4,104(sp)
    8000945e:	77c6                	ld	a5,112(sp)
    80009460:	7866                	ld	a6,120(sp)
    80009462:	688a                	ld	a7,128(sp)
    80009464:	692a                	ld	s2,136(sp)
    80009466:	69ca                	ld	s3,144(sp)
    80009468:	6a6a                	ld	s4,152(sp)
    8000946a:	7a8a                	ld	s5,160(sp)
    8000946c:	7b2a                	ld	s6,168(sp)
    8000946e:	7bca                	ld	s7,176(sp)
    80009470:	7c6a                	ld	s8,184(sp)
    80009472:	6c8e                	ld	s9,192(sp)
    80009474:	6d2e                	ld	s10,200(sp)
    80009476:	6dce                	ld	s11,208(sp)
    80009478:	6e6e                	ld	t3,216(sp)
    8000947a:	7e8e                	ld	t4,224(sp)
    8000947c:	7f2e                	ld	t5,232(sp)
    8000947e:	7fce                	ld	t6,240(sp)
    80009480:	6111                	addi	sp,sp,256
    80009482:	10200073          	sret
    80009486:	00000013          	nop
    8000948a:	00000013          	nop
    8000948e:	0001                	nop

0000000080009490 <timervec>:
    80009490:	34051573          	csrrw	a0,mscratch,a0
    80009494:	e10c                	sd	a1,0(a0)
    80009496:	e510                	sd	a2,8(a0)
    80009498:	e914                	sd	a3,16(a0)
    8000949a:	6d0c                	ld	a1,24(a0)
    8000949c:	7110                	ld	a2,32(a0)
    8000949e:	6194                	ld	a3,0(a1)
    800094a0:	96b2                	add	a3,a3,a2
    800094a2:	e194                	sd	a3,0(a1)
    800094a4:	4589                	li	a1,2
    800094a6:	14459073          	csrw	sip,a1
    800094aa:	6914                	ld	a3,16(a0)
    800094ac:	6510                	ld	a2,8(a0)
    800094ae:	610c                	ld	a1,0(a0)
    800094b0:	34051573          	csrrw	a0,mscratch,a0
    800094b4:	30200073          	mret
	...

00000000800094ba <plicinit>:
    800094ba:	1141                	addi	sp,sp,-16
    800094bc:	e422                	sd	s0,8(sp)
    800094be:	0800                	addi	s0,sp,16
    800094c0:	0c0007b7          	lui	a5,0xc000
    800094c4:	02878793          	addi	a5,a5,40 # c000028 <_entry-0x73ffffd8>
    800094c8:	4705                	li	a4,1
    800094ca:	c398                	sw	a4,0(a5)
    800094cc:	0c0007b7          	lui	a5,0xc000
    800094d0:	0791                	addi	a5,a5,4 # c000004 <_entry-0x73fffffc>
    800094d2:	4705                	li	a4,1
    800094d4:	c398                	sw	a4,0(a5)
    800094d6:	0001                	nop
    800094d8:	6422                	ld	s0,8(sp)
    800094da:	0141                	addi	sp,sp,16
    800094dc:	8082                	ret

00000000800094de <plicinithart>:
    800094de:	1101                	addi	sp,sp,-32
    800094e0:	ec06                	sd	ra,24(sp)
    800094e2:	e822                	sd	s0,16(sp)
    800094e4:	1000                	addi	s0,sp,32
    800094e6:	ffff9097          	auipc	ra,0xffff9
    800094ea:	396080e7          	jalr	918(ra) # 8000287c <cpuid>
    800094ee:	87aa                	mv	a5,a0
    800094f0:	fef42623          	sw	a5,-20(s0)
    800094f4:	fec42783          	lw	a5,-20(s0)
    800094f8:	0087979b          	slliw	a5,a5,0x8
    800094fc:	2781                	sext.w	a5,a5
    800094fe:	873e                	mv	a4,a5
    80009500:	0c0027b7          	lui	a5,0xc002
    80009504:	08078793          	addi	a5,a5,128 # c002080 <_entry-0x73ffdf80>
    80009508:	97ba                	add	a5,a5,a4
    8000950a:	873e                	mv	a4,a5
    8000950c:	40200793          	li	a5,1026
    80009510:	c31c                	sw	a5,0(a4)
    80009512:	fec42783          	lw	a5,-20(s0)
    80009516:	00d7979b          	slliw	a5,a5,0xd
    8000951a:	2781                	sext.w	a5,a5
    8000951c:	873e                	mv	a4,a5
    8000951e:	0c2017b7          	lui	a5,0xc201
    80009522:	97ba                	add	a5,a5,a4
    80009524:	0007a023          	sw	zero,0(a5) # c201000 <_entry-0x73dff000>
    80009528:	0001                	nop
    8000952a:	60e2                	ld	ra,24(sp)
    8000952c:	6442                	ld	s0,16(sp)
    8000952e:	6105                	addi	sp,sp,32
    80009530:	8082                	ret

0000000080009532 <plic_claim>:
    80009532:	1101                	addi	sp,sp,-32
    80009534:	ec06                	sd	ra,24(sp)
    80009536:	e822                	sd	s0,16(sp)
    80009538:	1000                	addi	s0,sp,32
    8000953a:	ffff9097          	auipc	ra,0xffff9
    8000953e:	342080e7          	jalr	834(ra) # 8000287c <cpuid>
    80009542:	87aa                	mv	a5,a0
    80009544:	fef42623          	sw	a5,-20(s0)
    80009548:	fec42783          	lw	a5,-20(s0)
    8000954c:	00d7979b          	slliw	a5,a5,0xd
    80009550:	2781                	sext.w	a5,a5
    80009552:	873e                	mv	a4,a5
    80009554:	0c2017b7          	lui	a5,0xc201
    80009558:	0791                	addi	a5,a5,4 # c201004 <_entry-0x73dfeffc>
    8000955a:	97ba                	add	a5,a5,a4
    8000955c:	439c                	lw	a5,0(a5)
    8000955e:	fef42423          	sw	a5,-24(s0)
    80009562:	fe842783          	lw	a5,-24(s0)
    80009566:	853e                	mv	a0,a5
    80009568:	60e2                	ld	ra,24(sp)
    8000956a:	6442                	ld	s0,16(sp)
    8000956c:	6105                	addi	sp,sp,32
    8000956e:	8082                	ret

0000000080009570 <plic_complete>:
    80009570:	7179                	addi	sp,sp,-48
    80009572:	f406                	sd	ra,40(sp)
    80009574:	f022                	sd	s0,32(sp)
    80009576:	1800                	addi	s0,sp,48
    80009578:	87aa                	mv	a5,a0
    8000957a:	fcf42e23          	sw	a5,-36(s0)
    8000957e:	ffff9097          	auipc	ra,0xffff9
    80009582:	2fe080e7          	jalr	766(ra) # 8000287c <cpuid>
    80009586:	87aa                	mv	a5,a0
    80009588:	fef42623          	sw	a5,-20(s0)
    8000958c:	fec42783          	lw	a5,-20(s0)
    80009590:	00d7979b          	slliw	a5,a5,0xd
    80009594:	2781                	sext.w	a5,a5
    80009596:	873e                	mv	a4,a5
    80009598:	0c2017b7          	lui	a5,0xc201
    8000959c:	0791                	addi	a5,a5,4 # c201004 <_entry-0x73dfeffc>
    8000959e:	97ba                	add	a5,a5,a4
    800095a0:	873e                	mv	a4,a5
    800095a2:	fdc42783          	lw	a5,-36(s0)
    800095a6:	c31c                	sw	a5,0(a4)
    800095a8:	0001                	nop
    800095aa:	70a2                	ld	ra,40(sp)
    800095ac:	7402                	ld	s0,32(sp)
    800095ae:	6145                	addi	sp,sp,48
    800095b0:	8082                	ret

00000000800095b2 <virtio_disk_init>:
    800095b2:	7179                	addi	sp,sp,-48
    800095b4:	f406                	sd	ra,40(sp)
    800095b6:	f022                	sd	s0,32(sp)
    800095b8:	1800                	addi	s0,sp,48
    800095ba:	fe042423          	sw	zero,-24(s0)
    800095be:	00003597          	auipc	a1,0x3
    800095c2:	28258593          	addi	a1,a1,642 # 8000c840 <etext+0x840>
    800095c6:	0001e517          	auipc	a0,0x1e
    800095ca:	19250513          	addi	a0,a0,402 # 80027758 <disk+0x128>
    800095ce:	ffff8097          	auipc	ra,0xffff8
    800095d2:	c7a080e7          	jalr	-902(ra) # 80001248 <initlock>
    800095d6:	100017b7          	lui	a5,0x10001
    800095da:	439c                	lw	a5,0(a5)
    800095dc:	2781                	sext.w	a5,a5
    800095de:	873e                	mv	a4,a5
    800095e0:	747277b7          	lui	a5,0x74727
    800095e4:	97678793          	addi	a5,a5,-1674 # 74726976 <_entry-0xb8d968a>
    800095e8:	04f71063          	bne	a4,a5,80009628 <virtio_disk_init+0x76>
    800095ec:	100017b7          	lui	a5,0x10001
    800095f0:	0791                	addi	a5,a5,4 # 10001004 <_entry-0x6fffeffc>
    800095f2:	439c                	lw	a5,0(a5)
    800095f4:	2781                	sext.w	a5,a5
    800095f6:	873e                	mv	a4,a5
    800095f8:	4789                	li	a5,2
    800095fa:	02f71763          	bne	a4,a5,80009628 <virtio_disk_init+0x76>
    800095fe:	100017b7          	lui	a5,0x10001
    80009602:	07a1                	addi	a5,a5,8 # 10001008 <_entry-0x6fffeff8>
    80009604:	439c                	lw	a5,0(a5)
    80009606:	2781                	sext.w	a5,a5
    80009608:	873e                	mv	a4,a5
    8000960a:	4789                	li	a5,2
    8000960c:	00f71e63          	bne	a4,a5,80009628 <virtio_disk_init+0x76>
    80009610:	100017b7          	lui	a5,0x10001
    80009614:	07b1                	addi	a5,a5,12 # 1000100c <_entry-0x6fffeff4>
    80009616:	439c                	lw	a5,0(a5)
    80009618:	2781                	sext.w	a5,a5
    8000961a:	873e                	mv	a4,a5
    8000961c:	554d47b7          	lui	a5,0x554d4
    80009620:	55178793          	addi	a5,a5,1361 # 554d4551 <_entry-0x2ab2baaf>
    80009624:	00f70a63          	beq	a4,a5,80009638 <virtio_disk_init+0x86>
    80009628:	00003517          	auipc	a0,0x3
    8000962c:	22850513          	addi	a0,a0,552 # 8000c850 <etext+0x850>
    80009630:	ffff7097          	auipc	ra,0xffff7
    80009634:	65a080e7          	jalr	1626(ra) # 80000c8a <panic>
    80009638:	100017b7          	lui	a5,0x10001
    8000963c:	07078793          	addi	a5,a5,112 # 10001070 <_entry-0x6fffef90>
    80009640:	fe842703          	lw	a4,-24(s0)
    80009644:	c398                	sw	a4,0(a5)
    80009646:	fe842783          	lw	a5,-24(s0)
    8000964a:	0017e793          	ori	a5,a5,1
    8000964e:	fef42423          	sw	a5,-24(s0)
    80009652:	100017b7          	lui	a5,0x10001
    80009656:	07078793          	addi	a5,a5,112 # 10001070 <_entry-0x6fffef90>
    8000965a:	fe842703          	lw	a4,-24(s0)
    8000965e:	c398                	sw	a4,0(a5)
    80009660:	fe842783          	lw	a5,-24(s0)
    80009664:	0027e793          	ori	a5,a5,2
    80009668:	fef42423          	sw	a5,-24(s0)
    8000966c:	100017b7          	lui	a5,0x10001
    80009670:	07078793          	addi	a5,a5,112 # 10001070 <_entry-0x6fffef90>
    80009674:	fe842703          	lw	a4,-24(s0)
    80009678:	c398                	sw	a4,0(a5)
    8000967a:	100017b7          	lui	a5,0x10001
    8000967e:	07c1                	addi	a5,a5,16 # 10001010 <_entry-0x6fffeff0>
    80009680:	439c                	lw	a5,0(a5)
    80009682:	2781                	sext.w	a5,a5
    80009684:	1782                	slli	a5,a5,0x20
    80009686:	9381                	srli	a5,a5,0x20
    80009688:	fef43023          	sd	a5,-32(s0)
    8000968c:	fe043783          	ld	a5,-32(s0)
    80009690:	fdf7f793          	andi	a5,a5,-33
    80009694:	fef43023          	sd	a5,-32(s0)
    80009698:	fe043783          	ld	a5,-32(s0)
    8000969c:	f7f7f793          	andi	a5,a5,-129
    800096a0:	fef43023          	sd	a5,-32(s0)
    800096a4:	fe043703          	ld	a4,-32(s0)
    800096a8:	77fd                	lui	a5,0xfffff
    800096aa:	7ff78793          	addi	a5,a5,2047 # fffffffffffff7ff <end+0xffffffff7ffd808f>
    800096ae:	8ff9                	and	a5,a5,a4
    800096b0:	fef43023          	sd	a5,-32(s0)
    800096b4:	fe043703          	ld	a4,-32(s0)
    800096b8:	77fd                	lui	a5,0xfffff
    800096ba:	17fd                	addi	a5,a5,-1 # ffffffffffffefff <end+0xffffffff7ffd788f>
    800096bc:	8ff9                	and	a5,a5,a4
    800096be:	fef43023          	sd	a5,-32(s0)
    800096c2:	fe043703          	ld	a4,-32(s0)
    800096c6:	f80007b7          	lui	a5,0xf8000
    800096ca:	17fd                	addi	a5,a5,-1 # fffffffff7ffffff <end+0xffffffff77fd888f>
    800096cc:	8ff9                	and	a5,a5,a4
    800096ce:	fef43023          	sd	a5,-32(s0)
    800096d2:	fe043703          	ld	a4,-32(s0)
    800096d6:	e00007b7          	lui	a5,0xe0000
    800096da:	17fd                	addi	a5,a5,-1 # ffffffffdfffffff <end+0xffffffff5ffd888f>
    800096dc:	8ff9                	and	a5,a5,a4
    800096de:	fef43023          	sd	a5,-32(s0)
    800096e2:	fe043703          	ld	a4,-32(s0)
    800096e6:	f00007b7          	lui	a5,0xf0000
    800096ea:	17fd                	addi	a5,a5,-1 # ffffffffefffffff <end+0xffffffff6ffd888f>
    800096ec:	8ff9                	and	a5,a5,a4
    800096ee:	fef43023          	sd	a5,-32(s0)
    800096f2:	100017b7          	lui	a5,0x10001
    800096f6:	02078793          	addi	a5,a5,32 # 10001020 <_entry-0x6fffefe0>
    800096fa:	fe043703          	ld	a4,-32(s0)
    800096fe:	2701                	sext.w	a4,a4
    80009700:	c398                	sw	a4,0(a5)
    80009702:	fe842783          	lw	a5,-24(s0)
    80009706:	0087e793          	ori	a5,a5,8
    8000970a:	fef42423          	sw	a5,-24(s0)
    8000970e:	100017b7          	lui	a5,0x10001
    80009712:	07078793          	addi	a5,a5,112 # 10001070 <_entry-0x6fffef90>
    80009716:	fe842703          	lw	a4,-24(s0)
    8000971a:	c398                	sw	a4,0(a5)
    8000971c:	100017b7          	lui	a5,0x10001
    80009720:	07078793          	addi	a5,a5,112 # 10001070 <_entry-0x6fffef90>
    80009724:	439c                	lw	a5,0(a5)
    80009726:	fef42423          	sw	a5,-24(s0)
    8000972a:	fe842783          	lw	a5,-24(s0)
    8000972e:	8ba1                	andi	a5,a5,8
    80009730:	2781                	sext.w	a5,a5
    80009732:	eb89                	bnez	a5,80009744 <virtio_disk_init+0x192>
    80009734:	00003517          	auipc	a0,0x3
    80009738:	13c50513          	addi	a0,a0,316 # 8000c870 <etext+0x870>
    8000973c:	ffff7097          	auipc	ra,0xffff7
    80009740:	54e080e7          	jalr	1358(ra) # 80000c8a <panic>
    80009744:	100017b7          	lui	a5,0x10001
    80009748:	03078793          	addi	a5,a5,48 # 10001030 <_entry-0x6fffefd0>
    8000974c:	0007a023          	sw	zero,0(a5)
    80009750:	100017b7          	lui	a5,0x10001
    80009754:	04478793          	addi	a5,a5,68 # 10001044 <_entry-0x6fffefbc>
    80009758:	439c                	lw	a5,0(a5)
    8000975a:	2781                	sext.w	a5,a5
    8000975c:	cb89                	beqz	a5,8000976e <virtio_disk_init+0x1bc>
    8000975e:	00003517          	auipc	a0,0x3
    80009762:	13250513          	addi	a0,a0,306 # 8000c890 <etext+0x890>
    80009766:	ffff7097          	auipc	ra,0xffff7
    8000976a:	524080e7          	jalr	1316(ra) # 80000c8a <panic>
    8000976e:	100017b7          	lui	a5,0x10001
    80009772:	03478793          	addi	a5,a5,52 # 10001034 <_entry-0x6fffefcc>
    80009776:	439c                	lw	a5,0(a5)
    80009778:	fcf42e23          	sw	a5,-36(s0)
    8000977c:	fdc42783          	lw	a5,-36(s0)
    80009780:	2781                	sext.w	a5,a5
    80009782:	eb89                	bnez	a5,80009794 <virtio_disk_init+0x1e2>
    80009784:	00003517          	auipc	a0,0x3
    80009788:	12c50513          	addi	a0,a0,300 # 8000c8b0 <etext+0x8b0>
    8000978c:	ffff7097          	auipc	ra,0xffff7
    80009790:	4fe080e7          	jalr	1278(ra) # 80000c8a <panic>
    80009794:	fdc42783          	lw	a5,-36(s0)
    80009798:	0007871b          	sext.w	a4,a5
    8000979c:	479d                	li	a5,7
    8000979e:	00e7ea63          	bltu	a5,a4,800097b2 <virtio_disk_init+0x200>
    800097a2:	00003517          	auipc	a0,0x3
    800097a6:	12e50513          	addi	a0,a0,302 # 8000c8d0 <etext+0x8d0>
    800097aa:	ffff7097          	auipc	ra,0xffff7
    800097ae:	4e0080e7          	jalr	1248(ra) # 80000c8a <panic>
    800097b2:	ffff8097          	auipc	ra,0xffff8
    800097b6:	972080e7          	jalr	-1678(ra) # 80001124 <kalloc>
    800097ba:	872a                	mv	a4,a0
    800097bc:	0001e797          	auipc	a5,0x1e
    800097c0:	e7478793          	addi	a5,a5,-396 # 80027630 <disk>
    800097c4:	e398                	sd	a4,0(a5)
    800097c6:	ffff8097          	auipc	ra,0xffff8
    800097ca:	95e080e7          	jalr	-1698(ra) # 80001124 <kalloc>
    800097ce:	872a                	mv	a4,a0
    800097d0:	0001e797          	auipc	a5,0x1e
    800097d4:	e6078793          	addi	a5,a5,-416 # 80027630 <disk>
    800097d8:	e798                	sd	a4,8(a5)
    800097da:	ffff8097          	auipc	ra,0xffff8
    800097de:	94a080e7          	jalr	-1718(ra) # 80001124 <kalloc>
    800097e2:	872a                	mv	a4,a0
    800097e4:	0001e797          	auipc	a5,0x1e
    800097e8:	e4c78793          	addi	a5,a5,-436 # 80027630 <disk>
    800097ec:	eb98                	sd	a4,16(a5)
    800097ee:	0001e797          	auipc	a5,0x1e
    800097f2:	e4278793          	addi	a5,a5,-446 # 80027630 <disk>
    800097f6:	639c                	ld	a5,0(a5)
    800097f8:	cf89                	beqz	a5,80009812 <virtio_disk_init+0x260>
    800097fa:	0001e797          	auipc	a5,0x1e
    800097fe:	e3678793          	addi	a5,a5,-458 # 80027630 <disk>
    80009802:	679c                	ld	a5,8(a5)
    80009804:	c799                	beqz	a5,80009812 <virtio_disk_init+0x260>
    80009806:	0001e797          	auipc	a5,0x1e
    8000980a:	e2a78793          	addi	a5,a5,-470 # 80027630 <disk>
    8000980e:	6b9c                	ld	a5,16(a5)
    80009810:	eb89                	bnez	a5,80009822 <virtio_disk_init+0x270>
    80009812:	00003517          	auipc	a0,0x3
    80009816:	0de50513          	addi	a0,a0,222 # 8000c8f0 <etext+0x8f0>
    8000981a:	ffff7097          	auipc	ra,0xffff7
    8000981e:	470080e7          	jalr	1136(ra) # 80000c8a <panic>
    80009822:	0001e797          	auipc	a5,0x1e
    80009826:	e0e78793          	addi	a5,a5,-498 # 80027630 <disk>
    8000982a:	639c                	ld	a5,0(a5)
    8000982c:	6605                	lui	a2,0x1
    8000982e:	4581                	li	a1,0
    80009830:	853e                	mv	a0,a5
    80009832:	ffff8097          	auipc	ra,0xffff8
    80009836:	c1a080e7          	jalr	-998(ra) # 8000144c <memset>
    8000983a:	0001e797          	auipc	a5,0x1e
    8000983e:	df678793          	addi	a5,a5,-522 # 80027630 <disk>
    80009842:	679c                	ld	a5,8(a5)
    80009844:	6605                	lui	a2,0x1
    80009846:	4581                	li	a1,0
    80009848:	853e                	mv	a0,a5
    8000984a:	ffff8097          	auipc	ra,0xffff8
    8000984e:	c02080e7          	jalr	-1022(ra) # 8000144c <memset>
    80009852:	0001e797          	auipc	a5,0x1e
    80009856:	dde78793          	addi	a5,a5,-546 # 80027630 <disk>
    8000985a:	6b9c                	ld	a5,16(a5)
    8000985c:	6605                	lui	a2,0x1
    8000985e:	4581                	li	a1,0
    80009860:	853e                	mv	a0,a5
    80009862:	ffff8097          	auipc	ra,0xffff8
    80009866:	bea080e7          	jalr	-1046(ra) # 8000144c <memset>
    8000986a:	100017b7          	lui	a5,0x10001
    8000986e:	03878793          	addi	a5,a5,56 # 10001038 <_entry-0x6fffefc8>
    80009872:	4721                	li	a4,8
    80009874:	c398                	sw	a4,0(a5)
    80009876:	0001e797          	auipc	a5,0x1e
    8000987a:	dba78793          	addi	a5,a5,-582 # 80027630 <disk>
    8000987e:	639c                	ld	a5,0(a5)
    80009880:	873e                	mv	a4,a5
    80009882:	100017b7          	lui	a5,0x10001
    80009886:	08078793          	addi	a5,a5,128 # 10001080 <_entry-0x6fffef80>
    8000988a:	2701                	sext.w	a4,a4
    8000988c:	c398                	sw	a4,0(a5)
    8000988e:	0001e797          	auipc	a5,0x1e
    80009892:	da278793          	addi	a5,a5,-606 # 80027630 <disk>
    80009896:	639c                	ld	a5,0(a5)
    80009898:	0207d713          	srli	a4,a5,0x20
    8000989c:	100017b7          	lui	a5,0x10001
    800098a0:	08478793          	addi	a5,a5,132 # 10001084 <_entry-0x6fffef7c>
    800098a4:	2701                	sext.w	a4,a4
    800098a6:	c398                	sw	a4,0(a5)
    800098a8:	0001e797          	auipc	a5,0x1e
    800098ac:	d8878793          	addi	a5,a5,-632 # 80027630 <disk>
    800098b0:	679c                	ld	a5,8(a5)
    800098b2:	873e                	mv	a4,a5
    800098b4:	100017b7          	lui	a5,0x10001
    800098b8:	09078793          	addi	a5,a5,144 # 10001090 <_entry-0x6fffef70>
    800098bc:	2701                	sext.w	a4,a4
    800098be:	c398                	sw	a4,0(a5)
    800098c0:	0001e797          	auipc	a5,0x1e
    800098c4:	d7078793          	addi	a5,a5,-656 # 80027630 <disk>
    800098c8:	679c                	ld	a5,8(a5)
    800098ca:	0207d713          	srli	a4,a5,0x20
    800098ce:	100017b7          	lui	a5,0x10001
    800098d2:	09478793          	addi	a5,a5,148 # 10001094 <_entry-0x6fffef6c>
    800098d6:	2701                	sext.w	a4,a4
    800098d8:	c398                	sw	a4,0(a5)
    800098da:	0001e797          	auipc	a5,0x1e
    800098de:	d5678793          	addi	a5,a5,-682 # 80027630 <disk>
    800098e2:	6b9c                	ld	a5,16(a5)
    800098e4:	873e                	mv	a4,a5
    800098e6:	100017b7          	lui	a5,0x10001
    800098ea:	0a078793          	addi	a5,a5,160 # 100010a0 <_entry-0x6fffef60>
    800098ee:	2701                	sext.w	a4,a4
    800098f0:	c398                	sw	a4,0(a5)
    800098f2:	0001e797          	auipc	a5,0x1e
    800098f6:	d3e78793          	addi	a5,a5,-706 # 80027630 <disk>
    800098fa:	6b9c                	ld	a5,16(a5)
    800098fc:	0207d713          	srli	a4,a5,0x20
    80009900:	100017b7          	lui	a5,0x10001
    80009904:	0a478793          	addi	a5,a5,164 # 100010a4 <_entry-0x6fffef5c>
    80009908:	2701                	sext.w	a4,a4
    8000990a:	c398                	sw	a4,0(a5)
    8000990c:	100017b7          	lui	a5,0x10001
    80009910:	04478793          	addi	a5,a5,68 # 10001044 <_entry-0x6fffefbc>
    80009914:	4705                	li	a4,1
    80009916:	c398                	sw	a4,0(a5)
    80009918:	fe042623          	sw	zero,-20(s0)
    8000991c:	a005                	j	8000993c <virtio_disk_init+0x38a>
    8000991e:	0001e717          	auipc	a4,0x1e
    80009922:	d1270713          	addi	a4,a4,-750 # 80027630 <disk>
    80009926:	fec42783          	lw	a5,-20(s0)
    8000992a:	97ba                	add	a5,a5,a4
    8000992c:	4705                	li	a4,1
    8000992e:	00e78c23          	sb	a4,24(a5)
    80009932:	fec42783          	lw	a5,-20(s0)
    80009936:	2785                	addiw	a5,a5,1
    80009938:	fef42623          	sw	a5,-20(s0)
    8000993c:	fec42783          	lw	a5,-20(s0)
    80009940:	0007871b          	sext.w	a4,a5
    80009944:	479d                	li	a5,7
    80009946:	fce7dce3          	bge	a5,a4,8000991e <virtio_disk_init+0x36c>
    8000994a:	fe842783          	lw	a5,-24(s0)
    8000994e:	0047e793          	ori	a5,a5,4
    80009952:	fef42423          	sw	a5,-24(s0)
    80009956:	100017b7          	lui	a5,0x10001
    8000995a:	07078793          	addi	a5,a5,112 # 10001070 <_entry-0x6fffef90>
    8000995e:	fe842703          	lw	a4,-24(s0)
    80009962:	c398                	sw	a4,0(a5)
    80009964:	0001                	nop
    80009966:	70a2                	ld	ra,40(sp)
    80009968:	7402                	ld	s0,32(sp)
    8000996a:	6145                	addi	sp,sp,48
    8000996c:	8082                	ret

000000008000996e <alloc_desc>:
    8000996e:	1101                	addi	sp,sp,-32
    80009970:	ec22                	sd	s0,24(sp)
    80009972:	1000                	addi	s0,sp,32
    80009974:	fe042623          	sw	zero,-20(s0)
    80009978:	a825                	j	800099b0 <alloc_desc+0x42>
    8000997a:	0001e717          	auipc	a4,0x1e
    8000997e:	cb670713          	addi	a4,a4,-842 # 80027630 <disk>
    80009982:	fec42783          	lw	a5,-20(s0)
    80009986:	97ba                	add	a5,a5,a4
    80009988:	0187c783          	lbu	a5,24(a5)
    8000998c:	cf89                	beqz	a5,800099a6 <alloc_desc+0x38>
    8000998e:	0001e717          	auipc	a4,0x1e
    80009992:	ca270713          	addi	a4,a4,-862 # 80027630 <disk>
    80009996:	fec42783          	lw	a5,-20(s0)
    8000999a:	97ba                	add	a5,a5,a4
    8000999c:	00078c23          	sb	zero,24(a5)
    800099a0:	fec42783          	lw	a5,-20(s0)
    800099a4:	a831                	j	800099c0 <alloc_desc+0x52>
    800099a6:	fec42783          	lw	a5,-20(s0)
    800099aa:	2785                	addiw	a5,a5,1
    800099ac:	fef42623          	sw	a5,-20(s0)
    800099b0:	fec42783          	lw	a5,-20(s0)
    800099b4:	0007871b          	sext.w	a4,a5
    800099b8:	479d                	li	a5,7
    800099ba:	fce7d0e3          	bge	a5,a4,8000997a <alloc_desc+0xc>
    800099be:	57fd                	li	a5,-1
    800099c0:	853e                	mv	a0,a5
    800099c2:	6462                	ld	s0,24(sp)
    800099c4:	6105                	addi	sp,sp,32
    800099c6:	8082                	ret

00000000800099c8 <free_desc>:
    800099c8:	1101                	addi	sp,sp,-32
    800099ca:	ec06                	sd	ra,24(sp)
    800099cc:	e822                	sd	s0,16(sp)
    800099ce:	1000                	addi	s0,sp,32
    800099d0:	87aa                	mv	a5,a0
    800099d2:	fef42623          	sw	a5,-20(s0)
    800099d6:	fec42783          	lw	a5,-20(s0)
    800099da:	0007871b          	sext.w	a4,a5
    800099de:	479d                	li	a5,7
    800099e0:	00e7da63          	bge	a5,a4,800099f4 <free_desc+0x2c>
    800099e4:	00003517          	auipc	a0,0x3
    800099e8:	f2450513          	addi	a0,a0,-220 # 8000c908 <etext+0x908>
    800099ec:	ffff7097          	auipc	ra,0xffff7
    800099f0:	29e080e7          	jalr	670(ra) # 80000c8a <panic>
    800099f4:	0001e717          	auipc	a4,0x1e
    800099f8:	c3c70713          	addi	a4,a4,-964 # 80027630 <disk>
    800099fc:	fec42783          	lw	a5,-20(s0)
    80009a00:	97ba                	add	a5,a5,a4
    80009a02:	0187c783          	lbu	a5,24(a5)
    80009a06:	cb89                	beqz	a5,80009a18 <free_desc+0x50>
    80009a08:	00003517          	auipc	a0,0x3
    80009a0c:	f1050513          	addi	a0,a0,-240 # 8000c918 <etext+0x918>
    80009a10:	ffff7097          	auipc	ra,0xffff7
    80009a14:	27a080e7          	jalr	634(ra) # 80000c8a <panic>
    80009a18:	0001e797          	auipc	a5,0x1e
    80009a1c:	c1878793          	addi	a5,a5,-1000 # 80027630 <disk>
    80009a20:	6398                	ld	a4,0(a5)
    80009a22:	fec42783          	lw	a5,-20(s0)
    80009a26:	0792                	slli	a5,a5,0x4
    80009a28:	97ba                	add	a5,a5,a4
    80009a2a:	0007b023          	sd	zero,0(a5)
    80009a2e:	0001e797          	auipc	a5,0x1e
    80009a32:	c0278793          	addi	a5,a5,-1022 # 80027630 <disk>
    80009a36:	6398                	ld	a4,0(a5)
    80009a38:	fec42783          	lw	a5,-20(s0)
    80009a3c:	0792                	slli	a5,a5,0x4
    80009a3e:	97ba                	add	a5,a5,a4
    80009a40:	0007a423          	sw	zero,8(a5)
    80009a44:	0001e797          	auipc	a5,0x1e
    80009a48:	bec78793          	addi	a5,a5,-1044 # 80027630 <disk>
    80009a4c:	6398                	ld	a4,0(a5)
    80009a4e:	fec42783          	lw	a5,-20(s0)
    80009a52:	0792                	slli	a5,a5,0x4
    80009a54:	97ba                	add	a5,a5,a4
    80009a56:	00079623          	sh	zero,12(a5)
    80009a5a:	0001e797          	auipc	a5,0x1e
    80009a5e:	bd678793          	addi	a5,a5,-1066 # 80027630 <disk>
    80009a62:	6398                	ld	a4,0(a5)
    80009a64:	fec42783          	lw	a5,-20(s0)
    80009a68:	0792                	slli	a5,a5,0x4
    80009a6a:	97ba                	add	a5,a5,a4
    80009a6c:	00079723          	sh	zero,14(a5)
    80009a70:	0001e717          	auipc	a4,0x1e
    80009a74:	bc070713          	addi	a4,a4,-1088 # 80027630 <disk>
    80009a78:	fec42783          	lw	a5,-20(s0)
    80009a7c:	97ba                	add	a5,a5,a4
    80009a7e:	4705                	li	a4,1
    80009a80:	00e78c23          	sb	a4,24(a5)
    80009a84:	0001e517          	auipc	a0,0x1e
    80009a88:	bc450513          	addi	a0,a0,-1084 # 80027648 <disk+0x18>
    80009a8c:	ffffa097          	auipc	ra,0xffffa
    80009a90:	0c4080e7          	jalr	196(ra) # 80003b50 <wakeup>
    80009a94:	0001                	nop
    80009a96:	60e2                	ld	ra,24(sp)
    80009a98:	6442                	ld	s0,16(sp)
    80009a9a:	6105                	addi	sp,sp,32
    80009a9c:	8082                	ret

0000000080009a9e <free_chain>:
    80009a9e:	7179                	addi	sp,sp,-48
    80009aa0:	f406                	sd	ra,40(sp)
    80009aa2:	f022                	sd	s0,32(sp)
    80009aa4:	1800                	addi	s0,sp,48
    80009aa6:	87aa                	mv	a5,a0
    80009aa8:	fcf42e23          	sw	a5,-36(s0)
    80009aac:	0001e797          	auipc	a5,0x1e
    80009ab0:	b8478793          	addi	a5,a5,-1148 # 80027630 <disk>
    80009ab4:	6398                	ld	a4,0(a5)
    80009ab6:	fdc42783          	lw	a5,-36(s0)
    80009aba:	0792                	slli	a5,a5,0x4
    80009abc:	97ba                	add	a5,a5,a4
    80009abe:	00c7d783          	lhu	a5,12(a5)
    80009ac2:	fef42623          	sw	a5,-20(s0)
    80009ac6:	0001e797          	auipc	a5,0x1e
    80009aca:	b6a78793          	addi	a5,a5,-1174 # 80027630 <disk>
    80009ace:	6398                	ld	a4,0(a5)
    80009ad0:	fdc42783          	lw	a5,-36(s0)
    80009ad4:	0792                	slli	a5,a5,0x4
    80009ad6:	97ba                	add	a5,a5,a4
    80009ad8:	00e7d783          	lhu	a5,14(a5)
    80009adc:	fef42423          	sw	a5,-24(s0)
    80009ae0:	fdc42783          	lw	a5,-36(s0)
    80009ae4:	853e                	mv	a0,a5
    80009ae6:	00000097          	auipc	ra,0x0
    80009aea:	ee2080e7          	jalr	-286(ra) # 800099c8 <free_desc>
    80009aee:	fec42783          	lw	a5,-20(s0)
    80009af2:	8b85                	andi	a5,a5,1
    80009af4:	2781                	sext.w	a5,a5
    80009af6:	c791                	beqz	a5,80009b02 <free_chain+0x64>
    80009af8:	fe842783          	lw	a5,-24(s0)
    80009afc:	fcf42e23          	sw	a5,-36(s0)
    80009b00:	b775                	j	80009aac <free_chain+0xe>
    80009b02:	0001                	nop
    80009b04:	0001                	nop
    80009b06:	70a2                	ld	ra,40(sp)
    80009b08:	7402                	ld	s0,32(sp)
    80009b0a:	6145                	addi	sp,sp,48
    80009b0c:	8082                	ret

0000000080009b0e <alloc3_desc>:
    80009b0e:	7139                	addi	sp,sp,-64
    80009b10:	fc06                	sd	ra,56(sp)
    80009b12:	f822                	sd	s0,48(sp)
    80009b14:	f426                	sd	s1,40(sp)
    80009b16:	0080                	addi	s0,sp,64
    80009b18:	fca43423          	sd	a0,-56(s0)
    80009b1c:	fc042e23          	sw	zero,-36(s0)
    80009b20:	a89d                	j	80009b96 <alloc3_desc+0x88>
    80009b22:	fdc42783          	lw	a5,-36(s0)
    80009b26:	078a                	slli	a5,a5,0x2
    80009b28:	fc843703          	ld	a4,-56(s0)
    80009b2c:	00f704b3          	add	s1,a4,a5
    80009b30:	00000097          	auipc	ra,0x0
    80009b34:	e3e080e7          	jalr	-450(ra) # 8000996e <alloc_desc>
    80009b38:	87aa                	mv	a5,a0
    80009b3a:	c09c                	sw	a5,0(s1)
    80009b3c:	fdc42783          	lw	a5,-36(s0)
    80009b40:	078a                	slli	a5,a5,0x2
    80009b42:	fc843703          	ld	a4,-56(s0)
    80009b46:	97ba                	add	a5,a5,a4
    80009b48:	439c                	lw	a5,0(a5)
    80009b4a:	0407d163          	bgez	a5,80009b8c <alloc3_desc+0x7e>
    80009b4e:	fc042c23          	sw	zero,-40(s0)
    80009b52:	a015                	j	80009b76 <alloc3_desc+0x68>
    80009b54:	fd842783          	lw	a5,-40(s0)
    80009b58:	078a                	slli	a5,a5,0x2
    80009b5a:	fc843703          	ld	a4,-56(s0)
    80009b5e:	97ba                	add	a5,a5,a4
    80009b60:	439c                	lw	a5,0(a5)
    80009b62:	853e                	mv	a0,a5
    80009b64:	00000097          	auipc	ra,0x0
    80009b68:	e64080e7          	jalr	-412(ra) # 800099c8 <free_desc>
    80009b6c:	fd842783          	lw	a5,-40(s0)
    80009b70:	2785                	addiw	a5,a5,1
    80009b72:	fcf42c23          	sw	a5,-40(s0)
    80009b76:	fd842783          	lw	a5,-40(s0)
    80009b7a:	873e                	mv	a4,a5
    80009b7c:	fdc42783          	lw	a5,-36(s0)
    80009b80:	2701                	sext.w	a4,a4
    80009b82:	2781                	sext.w	a5,a5
    80009b84:	fcf748e3          	blt	a4,a5,80009b54 <alloc3_desc+0x46>
    80009b88:	57fd                	li	a5,-1
    80009b8a:	a831                	j	80009ba6 <alloc3_desc+0x98>
    80009b8c:	fdc42783          	lw	a5,-36(s0)
    80009b90:	2785                	addiw	a5,a5,1
    80009b92:	fcf42e23          	sw	a5,-36(s0)
    80009b96:	fdc42783          	lw	a5,-36(s0)
    80009b9a:	0007871b          	sext.w	a4,a5
    80009b9e:	4789                	li	a5,2
    80009ba0:	f8e7d1e3          	bge	a5,a4,80009b22 <alloc3_desc+0x14>
    80009ba4:	4781                	li	a5,0
    80009ba6:	853e                	mv	a0,a5
    80009ba8:	70e2                	ld	ra,56(sp)
    80009baa:	7442                	ld	s0,48(sp)
    80009bac:	74a2                	ld	s1,40(sp)
    80009bae:	6121                	addi	sp,sp,64
    80009bb0:	8082                	ret

0000000080009bb2 <virtio_disk_rw>:
    80009bb2:	7139                	addi	sp,sp,-64
    80009bb4:	fc06                	sd	ra,56(sp)
    80009bb6:	f822                	sd	s0,48(sp)
    80009bb8:	0080                	addi	s0,sp,64
    80009bba:	fca43423          	sd	a0,-56(s0)
    80009bbe:	87ae                	mv	a5,a1
    80009bc0:	fcf42223          	sw	a5,-60(s0)
    80009bc4:	fc843783          	ld	a5,-56(s0)
    80009bc8:	47dc                	lw	a5,12(a5)
    80009bca:	0017979b          	slliw	a5,a5,0x1
    80009bce:	2781                	sext.w	a5,a5
    80009bd0:	1782                	slli	a5,a5,0x20
    80009bd2:	9381                	srli	a5,a5,0x20
    80009bd4:	fef43423          	sd	a5,-24(s0)
    80009bd8:	0001e517          	auipc	a0,0x1e
    80009bdc:	b8050513          	addi	a0,a0,-1152 # 80027758 <disk+0x128>
    80009be0:	ffff7097          	auipc	ra,0xffff7
    80009be4:	698080e7          	jalr	1688(ra) # 80001278 <acquire>
    80009be8:	fd040793          	addi	a5,s0,-48
    80009bec:	853e                	mv	a0,a5
    80009bee:	00000097          	auipc	ra,0x0
    80009bf2:	f20080e7          	jalr	-224(ra) # 80009b0e <alloc3_desc>
    80009bf6:	87aa                	mv	a5,a0
    80009bf8:	cf91                	beqz	a5,80009c14 <virtio_disk_rw+0x62>
    80009bfa:	0001e597          	auipc	a1,0x1e
    80009bfe:	b5e58593          	addi	a1,a1,-1186 # 80027758 <disk+0x128>
    80009c02:	0001e517          	auipc	a0,0x1e
    80009c06:	a4650513          	addi	a0,a0,-1466 # 80027648 <disk+0x18>
    80009c0a:	ffffa097          	auipc	ra,0xffffa
    80009c0e:	eca080e7          	jalr	-310(ra) # 80003ad4 <sleep>
    80009c12:	bfd9                	j	80009be8 <virtio_disk_rw+0x36>
    80009c14:	0001                	nop
    80009c16:	fd042783          	lw	a5,-48(s0)
    80009c1a:	07a9                	addi	a5,a5,10
    80009c1c:	00479713          	slli	a4,a5,0x4
    80009c20:	0001e797          	auipc	a5,0x1e
    80009c24:	a1078793          	addi	a5,a5,-1520 # 80027630 <disk>
    80009c28:	97ba                	add	a5,a5,a4
    80009c2a:	07a1                	addi	a5,a5,8
    80009c2c:	fef43023          	sd	a5,-32(s0)
    80009c30:	fc442783          	lw	a5,-60(s0)
    80009c34:	2781                	sext.w	a5,a5
    80009c36:	c791                	beqz	a5,80009c42 <virtio_disk_rw+0x90>
    80009c38:	fe043783          	ld	a5,-32(s0)
    80009c3c:	4705                	li	a4,1
    80009c3e:	c398                	sw	a4,0(a5)
    80009c40:	a029                	j	80009c4a <virtio_disk_rw+0x98>
    80009c42:	fe043783          	ld	a5,-32(s0)
    80009c46:	0007a023          	sw	zero,0(a5)
    80009c4a:	fe043783          	ld	a5,-32(s0)
    80009c4e:	0007a223          	sw	zero,4(a5)
    80009c52:	fe043783          	ld	a5,-32(s0)
    80009c56:	fe843703          	ld	a4,-24(s0)
    80009c5a:	e798                	sd	a4,8(a5)
    80009c5c:	0001e797          	auipc	a5,0x1e
    80009c60:	9d478793          	addi	a5,a5,-1580 # 80027630 <disk>
    80009c64:	6398                	ld	a4,0(a5)
    80009c66:	fd042783          	lw	a5,-48(s0)
    80009c6a:	0792                	slli	a5,a5,0x4
    80009c6c:	97ba                	add	a5,a5,a4
    80009c6e:	fe043703          	ld	a4,-32(s0)
    80009c72:	e398                	sd	a4,0(a5)
    80009c74:	0001e797          	auipc	a5,0x1e
    80009c78:	9bc78793          	addi	a5,a5,-1604 # 80027630 <disk>
    80009c7c:	6398                	ld	a4,0(a5)
    80009c7e:	fd042783          	lw	a5,-48(s0)
    80009c82:	0792                	slli	a5,a5,0x4
    80009c84:	97ba                	add	a5,a5,a4
    80009c86:	4741                	li	a4,16
    80009c88:	c798                	sw	a4,8(a5)
    80009c8a:	0001e797          	auipc	a5,0x1e
    80009c8e:	9a678793          	addi	a5,a5,-1626 # 80027630 <disk>
    80009c92:	6398                	ld	a4,0(a5)
    80009c94:	fd042783          	lw	a5,-48(s0)
    80009c98:	0792                	slli	a5,a5,0x4
    80009c9a:	97ba                	add	a5,a5,a4
    80009c9c:	4705                	li	a4,1
    80009c9e:	00e79623          	sh	a4,12(a5)
    80009ca2:	fd442683          	lw	a3,-44(s0)
    80009ca6:	0001e797          	auipc	a5,0x1e
    80009caa:	98a78793          	addi	a5,a5,-1654 # 80027630 <disk>
    80009cae:	6398                	ld	a4,0(a5)
    80009cb0:	fd042783          	lw	a5,-48(s0)
    80009cb4:	0792                	slli	a5,a5,0x4
    80009cb6:	97ba                	add	a5,a5,a4
    80009cb8:	03069713          	slli	a4,a3,0x30
    80009cbc:	9341                	srli	a4,a4,0x30
    80009cbe:	00e79723          	sh	a4,14(a5)
    80009cc2:	fc843783          	ld	a5,-56(s0)
    80009cc6:	05878693          	addi	a3,a5,88
    80009cca:	0001e797          	auipc	a5,0x1e
    80009cce:	96678793          	addi	a5,a5,-1690 # 80027630 <disk>
    80009cd2:	6398                	ld	a4,0(a5)
    80009cd4:	fd442783          	lw	a5,-44(s0)
    80009cd8:	0792                	slli	a5,a5,0x4
    80009cda:	97ba                	add	a5,a5,a4
    80009cdc:	8736                	mv	a4,a3
    80009cde:	e398                	sd	a4,0(a5)
    80009ce0:	0001e797          	auipc	a5,0x1e
    80009ce4:	95078793          	addi	a5,a5,-1712 # 80027630 <disk>
    80009ce8:	6398                	ld	a4,0(a5)
    80009cea:	fd442783          	lw	a5,-44(s0)
    80009cee:	0792                	slli	a5,a5,0x4
    80009cf0:	97ba                	add	a5,a5,a4
    80009cf2:	40000713          	li	a4,1024
    80009cf6:	c798                	sw	a4,8(a5)
    80009cf8:	fc442783          	lw	a5,-60(s0)
    80009cfc:	2781                	sext.w	a5,a5
    80009cfe:	cf89                	beqz	a5,80009d18 <virtio_disk_rw+0x166>
    80009d00:	0001e797          	auipc	a5,0x1e
    80009d04:	93078793          	addi	a5,a5,-1744 # 80027630 <disk>
    80009d08:	6398                	ld	a4,0(a5)
    80009d0a:	fd442783          	lw	a5,-44(s0)
    80009d0e:	0792                	slli	a5,a5,0x4
    80009d10:	97ba                	add	a5,a5,a4
    80009d12:	00079623          	sh	zero,12(a5)
    80009d16:	a829                	j	80009d30 <virtio_disk_rw+0x17e>
    80009d18:	0001e797          	auipc	a5,0x1e
    80009d1c:	91878793          	addi	a5,a5,-1768 # 80027630 <disk>
    80009d20:	6398                	ld	a4,0(a5)
    80009d22:	fd442783          	lw	a5,-44(s0)
    80009d26:	0792                	slli	a5,a5,0x4
    80009d28:	97ba                	add	a5,a5,a4
    80009d2a:	4709                	li	a4,2
    80009d2c:	00e79623          	sh	a4,12(a5)
    80009d30:	0001e797          	auipc	a5,0x1e
    80009d34:	90078793          	addi	a5,a5,-1792 # 80027630 <disk>
    80009d38:	6398                	ld	a4,0(a5)
    80009d3a:	fd442783          	lw	a5,-44(s0)
    80009d3e:	0792                	slli	a5,a5,0x4
    80009d40:	97ba                	add	a5,a5,a4
    80009d42:	00c7d703          	lhu	a4,12(a5)
    80009d46:	0001e797          	auipc	a5,0x1e
    80009d4a:	8ea78793          	addi	a5,a5,-1814 # 80027630 <disk>
    80009d4e:	6394                	ld	a3,0(a5)
    80009d50:	fd442783          	lw	a5,-44(s0)
    80009d54:	0792                	slli	a5,a5,0x4
    80009d56:	97b6                	add	a5,a5,a3
    80009d58:	00176713          	ori	a4,a4,1
    80009d5c:	1742                	slli	a4,a4,0x30
    80009d5e:	9341                	srli	a4,a4,0x30
    80009d60:	00e79623          	sh	a4,12(a5)
    80009d64:	fd842683          	lw	a3,-40(s0)
    80009d68:	0001e797          	auipc	a5,0x1e
    80009d6c:	8c878793          	addi	a5,a5,-1848 # 80027630 <disk>
    80009d70:	6398                	ld	a4,0(a5)
    80009d72:	fd442783          	lw	a5,-44(s0)
    80009d76:	0792                	slli	a5,a5,0x4
    80009d78:	97ba                	add	a5,a5,a4
    80009d7a:	03069713          	slli	a4,a3,0x30
    80009d7e:	9341                	srli	a4,a4,0x30
    80009d80:	00e79723          	sh	a4,14(a5)
    80009d84:	fd042783          	lw	a5,-48(s0)
    80009d88:	0001e717          	auipc	a4,0x1e
    80009d8c:	8a870713          	addi	a4,a4,-1880 # 80027630 <disk>
    80009d90:	0789                	addi	a5,a5,2
    80009d92:	0792                	slli	a5,a5,0x4
    80009d94:	97ba                	add	a5,a5,a4
    80009d96:	577d                	li	a4,-1
    80009d98:	00e78823          	sb	a4,16(a5)
    80009d9c:	fd042783          	lw	a5,-48(s0)
    80009da0:	0789                	addi	a5,a5,2
    80009da2:	00479713          	slli	a4,a5,0x4
    80009da6:	0001e797          	auipc	a5,0x1e
    80009daa:	88a78793          	addi	a5,a5,-1910 # 80027630 <disk>
    80009dae:	97ba                	add	a5,a5,a4
    80009db0:	01078693          	addi	a3,a5,16
    80009db4:	0001e797          	auipc	a5,0x1e
    80009db8:	87c78793          	addi	a5,a5,-1924 # 80027630 <disk>
    80009dbc:	6398                	ld	a4,0(a5)
    80009dbe:	fd842783          	lw	a5,-40(s0)
    80009dc2:	0792                	slli	a5,a5,0x4
    80009dc4:	97ba                	add	a5,a5,a4
    80009dc6:	8736                	mv	a4,a3
    80009dc8:	e398                	sd	a4,0(a5)
    80009dca:	0001e797          	auipc	a5,0x1e
    80009dce:	86678793          	addi	a5,a5,-1946 # 80027630 <disk>
    80009dd2:	6398                	ld	a4,0(a5)
    80009dd4:	fd842783          	lw	a5,-40(s0)
    80009dd8:	0792                	slli	a5,a5,0x4
    80009dda:	97ba                	add	a5,a5,a4
    80009ddc:	4705                	li	a4,1
    80009dde:	c798                	sw	a4,8(a5)
    80009de0:	0001e797          	auipc	a5,0x1e
    80009de4:	85078793          	addi	a5,a5,-1968 # 80027630 <disk>
    80009de8:	6398                	ld	a4,0(a5)
    80009dea:	fd842783          	lw	a5,-40(s0)
    80009dee:	0792                	slli	a5,a5,0x4
    80009df0:	97ba                	add	a5,a5,a4
    80009df2:	4709                	li	a4,2
    80009df4:	00e79623          	sh	a4,12(a5)
    80009df8:	0001e797          	auipc	a5,0x1e
    80009dfc:	83878793          	addi	a5,a5,-1992 # 80027630 <disk>
    80009e00:	6398                	ld	a4,0(a5)
    80009e02:	fd842783          	lw	a5,-40(s0)
    80009e06:	0792                	slli	a5,a5,0x4
    80009e08:	97ba                	add	a5,a5,a4
    80009e0a:	00079723          	sh	zero,14(a5)
    80009e0e:	fc843783          	ld	a5,-56(s0)
    80009e12:	4705                	li	a4,1
    80009e14:	c3d8                	sw	a4,4(a5)
    80009e16:	fd042783          	lw	a5,-48(s0)
    80009e1a:	0001e717          	auipc	a4,0x1e
    80009e1e:	81670713          	addi	a4,a4,-2026 # 80027630 <disk>
    80009e22:	0789                	addi	a5,a5,2
    80009e24:	0792                	slli	a5,a5,0x4
    80009e26:	97ba                	add	a5,a5,a4
    80009e28:	fc843703          	ld	a4,-56(s0)
    80009e2c:	e798                	sd	a4,8(a5)
    80009e2e:	fd042703          	lw	a4,-48(s0)
    80009e32:	0001d797          	auipc	a5,0x1d
    80009e36:	7fe78793          	addi	a5,a5,2046 # 80027630 <disk>
    80009e3a:	6794                	ld	a3,8(a5)
    80009e3c:	0001d797          	auipc	a5,0x1d
    80009e40:	7f478793          	addi	a5,a5,2036 # 80027630 <disk>
    80009e44:	679c                	ld	a5,8(a5)
    80009e46:	0027d783          	lhu	a5,2(a5)
    80009e4a:	2781                	sext.w	a5,a5
    80009e4c:	8b9d                	andi	a5,a5,7
    80009e4e:	2781                	sext.w	a5,a5
    80009e50:	1742                	slli	a4,a4,0x30
    80009e52:	9341                	srli	a4,a4,0x30
    80009e54:	0786                	slli	a5,a5,0x1
    80009e56:	97b6                	add	a5,a5,a3
    80009e58:	00e79223          	sh	a4,4(a5)
    80009e5c:	0ff0000f          	fence
    80009e60:	0001d797          	auipc	a5,0x1d
    80009e64:	7d078793          	addi	a5,a5,2000 # 80027630 <disk>
    80009e68:	679c                	ld	a5,8(a5)
    80009e6a:	0027d703          	lhu	a4,2(a5)
    80009e6e:	0001d797          	auipc	a5,0x1d
    80009e72:	7c278793          	addi	a5,a5,1986 # 80027630 <disk>
    80009e76:	679c                	ld	a5,8(a5)
    80009e78:	2705                	addiw	a4,a4,1
    80009e7a:	1742                	slli	a4,a4,0x30
    80009e7c:	9341                	srli	a4,a4,0x30
    80009e7e:	00e79123          	sh	a4,2(a5)
    80009e82:	0ff0000f          	fence
    80009e86:	100017b7          	lui	a5,0x10001
    80009e8a:	05078793          	addi	a5,a5,80 # 10001050 <_entry-0x6fffefb0>
    80009e8e:	0007a023          	sw	zero,0(a5)
    80009e92:	a819                	j	80009ea8 <virtio_disk_rw+0x2f6>
    80009e94:	0001e597          	auipc	a1,0x1e
    80009e98:	8c458593          	addi	a1,a1,-1852 # 80027758 <disk+0x128>
    80009e9c:	fc843503          	ld	a0,-56(s0)
    80009ea0:	ffffa097          	auipc	ra,0xffffa
    80009ea4:	c34080e7          	jalr	-972(ra) # 80003ad4 <sleep>
    80009ea8:	fc843783          	ld	a5,-56(s0)
    80009eac:	43dc                	lw	a5,4(a5)
    80009eae:	873e                	mv	a4,a5
    80009eb0:	4785                	li	a5,1
    80009eb2:	fef701e3          	beq	a4,a5,80009e94 <virtio_disk_rw+0x2e2>
    80009eb6:	fd042783          	lw	a5,-48(s0)
    80009eba:	0001d717          	auipc	a4,0x1d
    80009ebe:	77670713          	addi	a4,a4,1910 # 80027630 <disk>
    80009ec2:	0789                	addi	a5,a5,2
    80009ec4:	0792                	slli	a5,a5,0x4
    80009ec6:	97ba                	add	a5,a5,a4
    80009ec8:	0007b423          	sd	zero,8(a5)
    80009ecc:	fd042783          	lw	a5,-48(s0)
    80009ed0:	853e                	mv	a0,a5
    80009ed2:	00000097          	auipc	ra,0x0
    80009ed6:	bcc080e7          	jalr	-1076(ra) # 80009a9e <free_chain>
    80009eda:	0001e517          	auipc	a0,0x1e
    80009ede:	87e50513          	addi	a0,a0,-1922 # 80027758 <disk+0x128>
    80009ee2:	ffff7097          	auipc	ra,0xffff7
    80009ee6:	3fa080e7          	jalr	1018(ra) # 800012dc <release>
    80009eea:	0001                	nop
    80009eec:	70e2                	ld	ra,56(sp)
    80009eee:	7442                	ld	s0,48(sp)
    80009ef0:	6121                	addi	sp,sp,64
    80009ef2:	8082                	ret

0000000080009ef4 <virtio_disk_intr>:
    80009ef4:	1101                	addi	sp,sp,-32
    80009ef6:	ec06                	sd	ra,24(sp)
    80009ef8:	e822                	sd	s0,16(sp)
    80009efa:	1000                	addi	s0,sp,32
    80009efc:	0001e517          	auipc	a0,0x1e
    80009f00:	85c50513          	addi	a0,a0,-1956 # 80027758 <disk+0x128>
    80009f04:	ffff7097          	auipc	ra,0xffff7
    80009f08:	374080e7          	jalr	884(ra) # 80001278 <acquire>
    80009f0c:	100017b7          	lui	a5,0x10001
    80009f10:	06078793          	addi	a5,a5,96 # 10001060 <_entry-0x6fffefa0>
    80009f14:	439c                	lw	a5,0(a5)
    80009f16:	0007871b          	sext.w	a4,a5
    80009f1a:	100017b7          	lui	a5,0x10001
    80009f1e:	06478793          	addi	a5,a5,100 # 10001064 <_entry-0x6fffef9c>
    80009f22:	8b0d                	andi	a4,a4,3
    80009f24:	2701                	sext.w	a4,a4
    80009f26:	c398                	sw	a4,0(a5)
    80009f28:	0ff0000f          	fence
    80009f2c:	a045                	j	80009fcc <virtio_disk_intr+0xd8>
    80009f2e:	0ff0000f          	fence
    80009f32:	0001d797          	auipc	a5,0x1d
    80009f36:	6fe78793          	addi	a5,a5,1790 # 80027630 <disk>
    80009f3a:	6b98                	ld	a4,16(a5)
    80009f3c:	0001d797          	auipc	a5,0x1d
    80009f40:	6f478793          	addi	a5,a5,1780 # 80027630 <disk>
    80009f44:	0207d783          	lhu	a5,32(a5)
    80009f48:	2781                	sext.w	a5,a5
    80009f4a:	8b9d                	andi	a5,a5,7
    80009f4c:	2781                	sext.w	a5,a5
    80009f4e:	078e                	slli	a5,a5,0x3
    80009f50:	97ba                	add	a5,a5,a4
    80009f52:	43dc                	lw	a5,4(a5)
    80009f54:	fef42623          	sw	a5,-20(s0)
    80009f58:	0001d717          	auipc	a4,0x1d
    80009f5c:	6d870713          	addi	a4,a4,1752 # 80027630 <disk>
    80009f60:	fec42783          	lw	a5,-20(s0)
    80009f64:	0789                	addi	a5,a5,2
    80009f66:	0792                	slli	a5,a5,0x4
    80009f68:	97ba                	add	a5,a5,a4
    80009f6a:	0107c783          	lbu	a5,16(a5)
    80009f6e:	cb89                	beqz	a5,80009f80 <virtio_disk_intr+0x8c>
    80009f70:	00003517          	auipc	a0,0x3
    80009f74:	9b850513          	addi	a0,a0,-1608 # 8000c928 <etext+0x928>
    80009f78:	ffff7097          	auipc	ra,0xffff7
    80009f7c:	d12080e7          	jalr	-750(ra) # 80000c8a <panic>
    80009f80:	0001d717          	auipc	a4,0x1d
    80009f84:	6b070713          	addi	a4,a4,1712 # 80027630 <disk>
    80009f88:	fec42783          	lw	a5,-20(s0)
    80009f8c:	0789                	addi	a5,a5,2
    80009f8e:	0792                	slli	a5,a5,0x4
    80009f90:	97ba                	add	a5,a5,a4
    80009f92:	679c                	ld	a5,8(a5)
    80009f94:	fef43023          	sd	a5,-32(s0)
    80009f98:	fe043783          	ld	a5,-32(s0)
    80009f9c:	0007a223          	sw	zero,4(a5)
    80009fa0:	fe043503          	ld	a0,-32(s0)
    80009fa4:	ffffa097          	auipc	ra,0xffffa
    80009fa8:	bac080e7          	jalr	-1108(ra) # 80003b50 <wakeup>
    80009fac:	0001d797          	auipc	a5,0x1d
    80009fb0:	68478793          	addi	a5,a5,1668 # 80027630 <disk>
    80009fb4:	0207d783          	lhu	a5,32(a5)
    80009fb8:	2785                	addiw	a5,a5,1
    80009fba:	03079713          	slli	a4,a5,0x30
    80009fbe:	9341                	srli	a4,a4,0x30
    80009fc0:	0001d797          	auipc	a5,0x1d
    80009fc4:	67078793          	addi	a5,a5,1648 # 80027630 <disk>
    80009fc8:	02e79023          	sh	a4,32(a5)
    80009fcc:	0001d797          	auipc	a5,0x1d
    80009fd0:	66478793          	addi	a5,a5,1636 # 80027630 <disk>
    80009fd4:	0207d703          	lhu	a4,32(a5)
    80009fd8:	0001d797          	auipc	a5,0x1d
    80009fdc:	65878793          	addi	a5,a5,1624 # 80027630 <disk>
    80009fe0:	6b9c                	ld	a5,16(a5)
    80009fe2:	0027d783          	lhu	a5,2(a5)
    80009fe6:	2701                	sext.w	a4,a4
    80009fe8:	2781                	sext.w	a5,a5
    80009fea:	f4f712e3          	bne	a4,a5,80009f2e <virtio_disk_intr+0x3a>
    80009fee:	0001d517          	auipc	a0,0x1d
    80009ff2:	76a50513          	addi	a0,a0,1898 # 80027758 <disk+0x128>
    80009ff6:	ffff7097          	auipc	ra,0xffff7
    80009ffa:	2e6080e7          	jalr	742(ra) # 800012dc <release>
    80009ffe:	0001                	nop
    8000a000:	60e2                	ld	ra,24(sp)
    8000a002:	6442                	ld	s0,16(sp)
    8000a004:	6105                	addi	sp,sp,32
    8000a006:	8082                	ret
	...

000000008000b000 <_trampoline>:
    8000b000:	14051073          	csrw	sscratch,a0
    8000b004:	02000537          	lui	a0,0x2000
    8000b008:	357d                	addiw	a0,a0,-1 # 1ffffff <_entry-0x7e000001>
    8000b00a:	0536                	slli	a0,a0,0xd
    8000b00c:	02153423          	sd	ra,40(a0)
    8000b010:	02253823          	sd	sp,48(a0)
    8000b014:	02353c23          	sd	gp,56(a0)
    8000b018:	04453023          	sd	tp,64(a0)
    8000b01c:	04553423          	sd	t0,72(a0)
    8000b020:	04653823          	sd	t1,80(a0)
    8000b024:	04753c23          	sd	t2,88(a0)
    8000b028:	f120                	sd	s0,96(a0)
    8000b02a:	f524                	sd	s1,104(a0)
    8000b02c:	fd2c                	sd	a1,120(a0)
    8000b02e:	e150                	sd	a2,128(a0)
    8000b030:	e554                	sd	a3,136(a0)
    8000b032:	e958                	sd	a4,144(a0)
    8000b034:	ed5c                	sd	a5,152(a0)
    8000b036:	0b053023          	sd	a6,160(a0)
    8000b03a:	0b153423          	sd	a7,168(a0)
    8000b03e:	0b253823          	sd	s2,176(a0)
    8000b042:	0b353c23          	sd	s3,184(a0)
    8000b046:	0d453023          	sd	s4,192(a0)
    8000b04a:	0d553423          	sd	s5,200(a0)
    8000b04e:	0d653823          	sd	s6,208(a0)
    8000b052:	0d753c23          	sd	s7,216(a0)
    8000b056:	0f853023          	sd	s8,224(a0)
    8000b05a:	0f953423          	sd	s9,232(a0)
    8000b05e:	0fa53823          	sd	s10,240(a0)
    8000b062:	0fb53c23          	sd	s11,248(a0)
    8000b066:	11c53023          	sd	t3,256(a0)
    8000b06a:	11d53423          	sd	t4,264(a0)
    8000b06e:	11e53823          	sd	t5,272(a0)
    8000b072:	11f53c23          	sd	t6,280(a0)
    8000b076:	140022f3          	csrr	t0,sscratch
    8000b07a:	06553823          	sd	t0,112(a0)
    8000b07e:	00853103          	ld	sp,8(a0)
    8000b082:	02053203          	ld	tp,32(a0)
    8000b086:	01053283          	ld	t0,16(a0)
    8000b08a:	00053303          	ld	t1,0(a0)
    8000b08e:	12000073          	sfence.vma
    8000b092:	18031073          	csrw	satp,t1
    8000b096:	12000073          	sfence.vma
    8000b09a:	8282                	jr	t0

000000008000b09c <userret>:
    8000b09c:	12000073          	sfence.vma
    8000b0a0:	18051073          	csrw	satp,a0
    8000b0a4:	12000073          	sfence.vma
    8000b0a8:	02000537          	lui	a0,0x2000
    8000b0ac:	357d                	addiw	a0,a0,-1 # 1ffffff <_entry-0x7e000001>
    8000b0ae:	0536                	slli	a0,a0,0xd
    8000b0b0:	02853083          	ld	ra,40(a0)
    8000b0b4:	03053103          	ld	sp,48(a0)
    8000b0b8:	03853183          	ld	gp,56(a0)
    8000b0bc:	04053203          	ld	tp,64(a0)
    8000b0c0:	04853283          	ld	t0,72(a0)
    8000b0c4:	05053303          	ld	t1,80(a0)
    8000b0c8:	05853383          	ld	t2,88(a0)
    8000b0cc:	7120                	ld	s0,96(a0)
    8000b0ce:	7524                	ld	s1,104(a0)
    8000b0d0:	7d2c                	ld	a1,120(a0)
    8000b0d2:	6150                	ld	a2,128(a0)
    8000b0d4:	6554                	ld	a3,136(a0)
    8000b0d6:	6958                	ld	a4,144(a0)
    8000b0d8:	6d5c                	ld	a5,152(a0)
    8000b0da:	0a053803          	ld	a6,160(a0)
    8000b0de:	0a853883          	ld	a7,168(a0)
    8000b0e2:	0b053903          	ld	s2,176(a0)
    8000b0e6:	0b853983          	ld	s3,184(a0)
    8000b0ea:	0c053a03          	ld	s4,192(a0)
    8000b0ee:	0c853a83          	ld	s5,200(a0)
    8000b0f2:	0d053b03          	ld	s6,208(a0)
    8000b0f6:	0d853b83          	ld	s7,216(a0)
    8000b0fa:	0e053c03          	ld	s8,224(a0)
    8000b0fe:	0e853c83          	ld	s9,232(a0)
    8000b102:	0f053d03          	ld	s10,240(a0)
    8000b106:	0f853d83          	ld	s11,248(a0)
    8000b10a:	10053e03          	ld	t3,256(a0)
    8000b10e:	10853e83          	ld	t4,264(a0)
    8000b112:	11053f03          	ld	t5,272(a0)
    8000b116:	11853f83          	ld	t6,280(a0)
    8000b11a:	7928                	ld	a0,112(a0)
    8000b11c:	10200073          	sret
	...
