
user/_schedulertest:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	7179                	addi	sp,sp,-48
   2:	f406                	sd	ra,40(sp)
   4:	f022                	sd	s0,32(sp)
   6:	1800                	addi	s0,sp,48
   8:	fe042423          	sw	zero,-24(s0)
   c:	fe042223          	sw	zero,-28(s0)
  10:	fe042623          	sw	zero,-20(s0)
  14:	a8ad                	j	8e <main+0x8e>
  16:	00000097          	auipc	ra,0x0
  1a:	5b8080e7          	jalr	1464(ra) # 5ce <fork>
  1e:	87aa                	mv	a5,a0
  20:	fef42023          	sw	a5,-32(s0)
  24:	fe042783          	lw	a5,-32(s0)
  28:	2781                	sext.w	a5,a5
  2a:	0607ca63          	bltz	a5,9e <main+0x9e>
  2e:	fe042783          	lw	a5,-32(s0)
  32:	2781                	sext.w	a5,a5
  34:	eba1                	bnez	a5,84 <main+0x84>
  36:	fec42783          	lw	a5,-20(s0)
  3a:	0007871b          	sext.w	a4,a5
  3e:	4791                	li	a5,4
  40:	00e7c963          	blt	a5,a4,52 <main+0x52>
  44:	0c800513          	li	a0,200
  48:	00000097          	auipc	ra,0x0
  4c:	61e080e7          	jalr	1566(ra) # 666 <sleep>
  50:	a02d                	j	7a <main+0x7a>
  52:	fc042a23          	sw	zero,-44(s0)
  56:	a801                	j	66 <main+0x66>
  58:	fd442783          	lw	a5,-44(s0)
  5c:	2781                	sext.w	a5,a5
  5e:	2785                	addiw	a5,a5,1
  60:	2781                	sext.w	a5,a5
  62:	fcf42a23          	sw	a5,-44(s0)
  66:	fd442783          	lw	a5,-44(s0)
  6a:	2781                	sext.w	a5,a5
  6c:	873e                	mv	a4,a5
  6e:	3b9ad7b7          	lui	a5,0x3b9ad
  72:	9ff78793          	addi	a5,a5,-1537 # 3b9ac9ff <freep+0x3b9ab9cf>
  76:	fee7d1e3          	bge	a5,a4,58 <main+0x58>
  7a:	4501                	li	a0,0
  7c:	00000097          	auipc	ra,0x0
  80:	55a080e7          	jalr	1370(ra) # 5d6 <exit>
  84:	fec42783          	lw	a5,-20(s0)
  88:	2785                	addiw	a5,a5,1
  8a:	fef42623          	sw	a5,-20(s0)
  8e:	fec42783          	lw	a5,-20(s0)
  92:	0007871b          	sext.w	a4,a5
  96:	47a5                	li	a5,9
  98:	f6e7dfe3          	bge	a5,a4,16 <main+0x16>
  9c:	a0a1                	j	e4 <main+0xe4>
  9e:	0001                	nop
  a0:	a091                	j	e4 <main+0xe4>
  a2:	fd840713          	addi	a4,s0,-40
  a6:	fdc40793          	addi	a5,s0,-36
  aa:	863a                	mv	a2,a4
  ac:	85be                	mv	a1,a5
  ae:	4501                	li	a0,0
  b0:	00000097          	auipc	ra,0x0
  b4:	5c6080e7          	jalr	1478(ra) # 676 <waitx>
  b8:	87aa                	mv	a5,a0
  ba:	0207c063          	bltz	a5,da <main+0xda>
  be:	fd842783          	lw	a5,-40(s0)
  c2:	fe442703          	lw	a4,-28(s0)
  c6:	9fb9                	addw	a5,a5,a4
  c8:	fef42223          	sw	a5,-28(s0)
  cc:	fdc42783          	lw	a5,-36(s0)
  d0:	fe842703          	lw	a4,-24(s0)
  d4:	9fb9                	addw	a5,a5,a4
  d6:	fef42423          	sw	a5,-24(s0)
  da:	fec42783          	lw	a5,-20(s0)
  de:	37fd                	addiw	a5,a5,-1
  e0:	fef42623          	sw	a5,-20(s0)
  e4:	fec42783          	lw	a5,-20(s0)
  e8:	2781                	sext.w	a5,a5
  ea:	faf04ce3          	bgtz	a5,a2 <main+0xa2>
  ee:	fe442783          	lw	a5,-28(s0)
  f2:	873e                	mv	a4,a5
  f4:	47a9                	li	a5,10
  f6:	02f747bb          	divw	a5,a4,a5
  fa:	0007871b          	sext.w	a4,a5
  fe:	fe842783          	lw	a5,-24(s0)
 102:	86be                	mv	a3,a5
 104:	47a9                	li	a5,10
 106:	02f6c7bb          	divw	a5,a3,a5
 10a:	2781                	sext.w	a5,a5
 10c:	863e                	mv	a2,a5
 10e:	85ba                	mv	a1,a4
 110:	00001517          	auipc	a0,0x1
 114:	d5050513          	addi	a0,a0,-688 # e60 <malloc+0x148>
 118:	00001097          	auipc	ra,0x1
 11c:	a0e080e7          	jalr	-1522(ra) # b26 <printf>
 120:	4501                	li	a0,0
 122:	00000097          	auipc	ra,0x0
 126:	4b4080e7          	jalr	1204(ra) # 5d6 <exit>

000000000000012a <_main>:
 12a:	1141                	addi	sp,sp,-16
 12c:	e406                	sd	ra,8(sp)
 12e:	e022                	sd	s0,0(sp)
 130:	0800                	addi	s0,sp,16
 132:	00000097          	auipc	ra,0x0
 136:	ece080e7          	jalr	-306(ra) # 0 <main>
 13a:	4501                	li	a0,0
 13c:	00000097          	auipc	ra,0x0
 140:	49a080e7          	jalr	1178(ra) # 5d6 <exit>

0000000000000144 <strcpy>:
 144:	7179                	addi	sp,sp,-48
 146:	f422                	sd	s0,40(sp)
 148:	1800                	addi	s0,sp,48
 14a:	fca43c23          	sd	a0,-40(s0)
 14e:	fcb43823          	sd	a1,-48(s0)
 152:	fd843783          	ld	a5,-40(s0)
 156:	fef43423          	sd	a5,-24(s0)
 15a:	0001                	nop
 15c:	fd043703          	ld	a4,-48(s0)
 160:	00170793          	addi	a5,a4,1
 164:	fcf43823          	sd	a5,-48(s0)
 168:	fd843783          	ld	a5,-40(s0)
 16c:	00178693          	addi	a3,a5,1
 170:	fcd43c23          	sd	a3,-40(s0)
 174:	00074703          	lbu	a4,0(a4)
 178:	00e78023          	sb	a4,0(a5)
 17c:	0007c783          	lbu	a5,0(a5)
 180:	fff1                	bnez	a5,15c <strcpy+0x18>
 182:	fe843783          	ld	a5,-24(s0)
 186:	853e                	mv	a0,a5
 188:	7422                	ld	s0,40(sp)
 18a:	6145                	addi	sp,sp,48
 18c:	8082                	ret

000000000000018e <strcmp>:
 18e:	1101                	addi	sp,sp,-32
 190:	ec22                	sd	s0,24(sp)
 192:	1000                	addi	s0,sp,32
 194:	fea43423          	sd	a0,-24(s0)
 198:	feb43023          	sd	a1,-32(s0)
 19c:	a819                	j	1b2 <strcmp+0x24>
 19e:	fe843783          	ld	a5,-24(s0)
 1a2:	0785                	addi	a5,a5,1
 1a4:	fef43423          	sd	a5,-24(s0)
 1a8:	fe043783          	ld	a5,-32(s0)
 1ac:	0785                	addi	a5,a5,1
 1ae:	fef43023          	sd	a5,-32(s0)
 1b2:	fe843783          	ld	a5,-24(s0)
 1b6:	0007c783          	lbu	a5,0(a5)
 1ba:	cb99                	beqz	a5,1d0 <strcmp+0x42>
 1bc:	fe843783          	ld	a5,-24(s0)
 1c0:	0007c703          	lbu	a4,0(a5)
 1c4:	fe043783          	ld	a5,-32(s0)
 1c8:	0007c783          	lbu	a5,0(a5)
 1cc:	fcf709e3          	beq	a4,a5,19e <strcmp+0x10>
 1d0:	fe843783          	ld	a5,-24(s0)
 1d4:	0007c783          	lbu	a5,0(a5)
 1d8:	0007871b          	sext.w	a4,a5
 1dc:	fe043783          	ld	a5,-32(s0)
 1e0:	0007c783          	lbu	a5,0(a5)
 1e4:	2781                	sext.w	a5,a5
 1e6:	40f707bb          	subw	a5,a4,a5
 1ea:	2781                	sext.w	a5,a5
 1ec:	853e                	mv	a0,a5
 1ee:	6462                	ld	s0,24(sp)
 1f0:	6105                	addi	sp,sp,32
 1f2:	8082                	ret

00000000000001f4 <strlen>:
 1f4:	7179                	addi	sp,sp,-48
 1f6:	f422                	sd	s0,40(sp)
 1f8:	1800                	addi	s0,sp,48
 1fa:	fca43c23          	sd	a0,-40(s0)
 1fe:	fe042623          	sw	zero,-20(s0)
 202:	a031                	j	20e <strlen+0x1a>
 204:	fec42783          	lw	a5,-20(s0)
 208:	2785                	addiw	a5,a5,1
 20a:	fef42623          	sw	a5,-20(s0)
 20e:	fec42783          	lw	a5,-20(s0)
 212:	fd843703          	ld	a4,-40(s0)
 216:	97ba                	add	a5,a5,a4
 218:	0007c783          	lbu	a5,0(a5)
 21c:	f7e5                	bnez	a5,204 <strlen+0x10>
 21e:	fec42783          	lw	a5,-20(s0)
 222:	853e                	mv	a0,a5
 224:	7422                	ld	s0,40(sp)
 226:	6145                	addi	sp,sp,48
 228:	8082                	ret

000000000000022a <memset>:
 22a:	7179                	addi	sp,sp,-48
 22c:	f422                	sd	s0,40(sp)
 22e:	1800                	addi	s0,sp,48
 230:	fca43c23          	sd	a0,-40(s0)
 234:	87ae                	mv	a5,a1
 236:	8732                	mv	a4,a2
 238:	fcf42a23          	sw	a5,-44(s0)
 23c:	87ba                	mv	a5,a4
 23e:	fcf42823          	sw	a5,-48(s0)
 242:	fd843783          	ld	a5,-40(s0)
 246:	fef43023          	sd	a5,-32(s0)
 24a:	fe042623          	sw	zero,-20(s0)
 24e:	a00d                	j	270 <memset+0x46>
 250:	fec42783          	lw	a5,-20(s0)
 254:	fe043703          	ld	a4,-32(s0)
 258:	97ba                	add	a5,a5,a4
 25a:	fd442703          	lw	a4,-44(s0)
 25e:	0ff77713          	zext.b	a4,a4
 262:	00e78023          	sb	a4,0(a5)
 266:	fec42783          	lw	a5,-20(s0)
 26a:	2785                	addiw	a5,a5,1
 26c:	fef42623          	sw	a5,-20(s0)
 270:	fec42703          	lw	a4,-20(s0)
 274:	fd042783          	lw	a5,-48(s0)
 278:	2781                	sext.w	a5,a5
 27a:	fcf76be3          	bltu	a4,a5,250 <memset+0x26>
 27e:	fd843783          	ld	a5,-40(s0)
 282:	853e                	mv	a0,a5
 284:	7422                	ld	s0,40(sp)
 286:	6145                	addi	sp,sp,48
 288:	8082                	ret

000000000000028a <strchr>:
 28a:	1101                	addi	sp,sp,-32
 28c:	ec22                	sd	s0,24(sp)
 28e:	1000                	addi	s0,sp,32
 290:	fea43423          	sd	a0,-24(s0)
 294:	87ae                	mv	a5,a1
 296:	fef403a3          	sb	a5,-25(s0)
 29a:	a01d                	j	2c0 <strchr+0x36>
 29c:	fe843783          	ld	a5,-24(s0)
 2a0:	0007c703          	lbu	a4,0(a5)
 2a4:	fe744783          	lbu	a5,-25(s0)
 2a8:	0ff7f793          	zext.b	a5,a5
 2ac:	00e79563          	bne	a5,a4,2b6 <strchr+0x2c>
 2b0:	fe843783          	ld	a5,-24(s0)
 2b4:	a821                	j	2cc <strchr+0x42>
 2b6:	fe843783          	ld	a5,-24(s0)
 2ba:	0785                	addi	a5,a5,1
 2bc:	fef43423          	sd	a5,-24(s0)
 2c0:	fe843783          	ld	a5,-24(s0)
 2c4:	0007c783          	lbu	a5,0(a5)
 2c8:	fbf1                	bnez	a5,29c <strchr+0x12>
 2ca:	4781                	li	a5,0
 2cc:	853e                	mv	a0,a5
 2ce:	6462                	ld	s0,24(sp)
 2d0:	6105                	addi	sp,sp,32
 2d2:	8082                	ret

00000000000002d4 <gets>:
 2d4:	7179                	addi	sp,sp,-48
 2d6:	f406                	sd	ra,40(sp)
 2d8:	f022                	sd	s0,32(sp)
 2da:	1800                	addi	s0,sp,48
 2dc:	fca43c23          	sd	a0,-40(s0)
 2e0:	87ae                	mv	a5,a1
 2e2:	fcf42a23          	sw	a5,-44(s0)
 2e6:	fe042623          	sw	zero,-20(s0)
 2ea:	a8a1                	j	342 <gets+0x6e>
 2ec:	fe740793          	addi	a5,s0,-25
 2f0:	4605                	li	a2,1
 2f2:	85be                	mv	a1,a5
 2f4:	4501                	li	a0,0
 2f6:	00000097          	auipc	ra,0x0
 2fa:	2f8080e7          	jalr	760(ra) # 5ee <read>
 2fe:	87aa                	mv	a5,a0
 300:	fef42423          	sw	a5,-24(s0)
 304:	fe842783          	lw	a5,-24(s0)
 308:	2781                	sext.w	a5,a5
 30a:	04f05763          	blez	a5,358 <gets+0x84>
 30e:	fec42783          	lw	a5,-20(s0)
 312:	0017871b          	addiw	a4,a5,1
 316:	fee42623          	sw	a4,-20(s0)
 31a:	873e                	mv	a4,a5
 31c:	fd843783          	ld	a5,-40(s0)
 320:	97ba                	add	a5,a5,a4
 322:	fe744703          	lbu	a4,-25(s0)
 326:	00e78023          	sb	a4,0(a5)
 32a:	fe744783          	lbu	a5,-25(s0)
 32e:	873e                	mv	a4,a5
 330:	47a9                	li	a5,10
 332:	02f70463          	beq	a4,a5,35a <gets+0x86>
 336:	fe744783          	lbu	a5,-25(s0)
 33a:	873e                	mv	a4,a5
 33c:	47b5                	li	a5,13
 33e:	00f70e63          	beq	a4,a5,35a <gets+0x86>
 342:	fec42783          	lw	a5,-20(s0)
 346:	2785                	addiw	a5,a5,1
 348:	0007871b          	sext.w	a4,a5
 34c:	fd442783          	lw	a5,-44(s0)
 350:	2781                	sext.w	a5,a5
 352:	f8f74de3          	blt	a4,a5,2ec <gets+0x18>
 356:	a011                	j	35a <gets+0x86>
 358:	0001                	nop
 35a:	fec42783          	lw	a5,-20(s0)
 35e:	fd843703          	ld	a4,-40(s0)
 362:	97ba                	add	a5,a5,a4
 364:	00078023          	sb	zero,0(a5)
 368:	fd843783          	ld	a5,-40(s0)
 36c:	853e                	mv	a0,a5
 36e:	70a2                	ld	ra,40(sp)
 370:	7402                	ld	s0,32(sp)
 372:	6145                	addi	sp,sp,48
 374:	8082                	ret

0000000000000376 <stat>:
 376:	7179                	addi	sp,sp,-48
 378:	f406                	sd	ra,40(sp)
 37a:	f022                	sd	s0,32(sp)
 37c:	1800                	addi	s0,sp,48
 37e:	fca43c23          	sd	a0,-40(s0)
 382:	fcb43823          	sd	a1,-48(s0)
 386:	4581                	li	a1,0
 388:	fd843503          	ld	a0,-40(s0)
 38c:	00000097          	auipc	ra,0x0
 390:	28a080e7          	jalr	650(ra) # 616 <open>
 394:	87aa                	mv	a5,a0
 396:	fef42623          	sw	a5,-20(s0)
 39a:	fec42783          	lw	a5,-20(s0)
 39e:	2781                	sext.w	a5,a5
 3a0:	0007d463          	bgez	a5,3a8 <stat+0x32>
 3a4:	57fd                	li	a5,-1
 3a6:	a035                	j	3d2 <stat+0x5c>
 3a8:	fec42783          	lw	a5,-20(s0)
 3ac:	fd043583          	ld	a1,-48(s0)
 3b0:	853e                	mv	a0,a5
 3b2:	00000097          	auipc	ra,0x0
 3b6:	27c080e7          	jalr	636(ra) # 62e <fstat>
 3ba:	87aa                	mv	a5,a0
 3bc:	fef42423          	sw	a5,-24(s0)
 3c0:	fec42783          	lw	a5,-20(s0)
 3c4:	853e                	mv	a0,a5
 3c6:	00000097          	auipc	ra,0x0
 3ca:	238080e7          	jalr	568(ra) # 5fe <close>
 3ce:	fe842783          	lw	a5,-24(s0)
 3d2:	853e                	mv	a0,a5
 3d4:	70a2                	ld	ra,40(sp)
 3d6:	7402                	ld	s0,32(sp)
 3d8:	6145                	addi	sp,sp,48
 3da:	8082                	ret

00000000000003dc <atoi>:
 3dc:	7179                	addi	sp,sp,-48
 3de:	f422                	sd	s0,40(sp)
 3e0:	1800                	addi	s0,sp,48
 3e2:	fca43c23          	sd	a0,-40(s0)
 3e6:	fe042623          	sw	zero,-20(s0)
 3ea:	a81d                	j	420 <atoi+0x44>
 3ec:	fec42783          	lw	a5,-20(s0)
 3f0:	873e                	mv	a4,a5
 3f2:	87ba                	mv	a5,a4
 3f4:	0027979b          	slliw	a5,a5,0x2
 3f8:	9fb9                	addw	a5,a5,a4
 3fa:	0017979b          	slliw	a5,a5,0x1
 3fe:	0007871b          	sext.w	a4,a5
 402:	fd843783          	ld	a5,-40(s0)
 406:	00178693          	addi	a3,a5,1
 40a:	fcd43c23          	sd	a3,-40(s0)
 40e:	0007c783          	lbu	a5,0(a5)
 412:	2781                	sext.w	a5,a5
 414:	9fb9                	addw	a5,a5,a4
 416:	2781                	sext.w	a5,a5
 418:	fd07879b          	addiw	a5,a5,-48
 41c:	fef42623          	sw	a5,-20(s0)
 420:	fd843783          	ld	a5,-40(s0)
 424:	0007c783          	lbu	a5,0(a5)
 428:	873e                	mv	a4,a5
 42a:	02f00793          	li	a5,47
 42e:	00e7fb63          	bgeu	a5,a4,444 <atoi+0x68>
 432:	fd843783          	ld	a5,-40(s0)
 436:	0007c783          	lbu	a5,0(a5)
 43a:	873e                	mv	a4,a5
 43c:	03900793          	li	a5,57
 440:	fae7f6e3          	bgeu	a5,a4,3ec <atoi+0x10>
 444:	fec42783          	lw	a5,-20(s0)
 448:	853e                	mv	a0,a5
 44a:	7422                	ld	s0,40(sp)
 44c:	6145                	addi	sp,sp,48
 44e:	8082                	ret

0000000000000450 <memmove>:
 450:	7139                	addi	sp,sp,-64
 452:	fc22                	sd	s0,56(sp)
 454:	0080                	addi	s0,sp,64
 456:	fca43c23          	sd	a0,-40(s0)
 45a:	fcb43823          	sd	a1,-48(s0)
 45e:	87b2                	mv	a5,a2
 460:	fcf42623          	sw	a5,-52(s0)
 464:	fd843783          	ld	a5,-40(s0)
 468:	fef43423          	sd	a5,-24(s0)
 46c:	fd043783          	ld	a5,-48(s0)
 470:	fef43023          	sd	a5,-32(s0)
 474:	fe043703          	ld	a4,-32(s0)
 478:	fe843783          	ld	a5,-24(s0)
 47c:	02e7fc63          	bgeu	a5,a4,4b4 <memmove+0x64>
 480:	a00d                	j	4a2 <memmove+0x52>
 482:	fe043703          	ld	a4,-32(s0)
 486:	00170793          	addi	a5,a4,1
 48a:	fef43023          	sd	a5,-32(s0)
 48e:	fe843783          	ld	a5,-24(s0)
 492:	00178693          	addi	a3,a5,1
 496:	fed43423          	sd	a3,-24(s0)
 49a:	00074703          	lbu	a4,0(a4)
 49e:	00e78023          	sb	a4,0(a5)
 4a2:	fcc42783          	lw	a5,-52(s0)
 4a6:	fff7871b          	addiw	a4,a5,-1
 4aa:	fce42623          	sw	a4,-52(s0)
 4ae:	fcf04ae3          	bgtz	a5,482 <memmove+0x32>
 4b2:	a891                	j	506 <memmove+0xb6>
 4b4:	fcc42783          	lw	a5,-52(s0)
 4b8:	fe843703          	ld	a4,-24(s0)
 4bc:	97ba                	add	a5,a5,a4
 4be:	fef43423          	sd	a5,-24(s0)
 4c2:	fcc42783          	lw	a5,-52(s0)
 4c6:	fe043703          	ld	a4,-32(s0)
 4ca:	97ba                	add	a5,a5,a4
 4cc:	fef43023          	sd	a5,-32(s0)
 4d0:	a01d                	j	4f6 <memmove+0xa6>
 4d2:	fe043783          	ld	a5,-32(s0)
 4d6:	17fd                	addi	a5,a5,-1
 4d8:	fef43023          	sd	a5,-32(s0)
 4dc:	fe843783          	ld	a5,-24(s0)
 4e0:	17fd                	addi	a5,a5,-1
 4e2:	fef43423          	sd	a5,-24(s0)
 4e6:	fe043783          	ld	a5,-32(s0)
 4ea:	0007c703          	lbu	a4,0(a5)
 4ee:	fe843783          	ld	a5,-24(s0)
 4f2:	00e78023          	sb	a4,0(a5)
 4f6:	fcc42783          	lw	a5,-52(s0)
 4fa:	fff7871b          	addiw	a4,a5,-1
 4fe:	fce42623          	sw	a4,-52(s0)
 502:	fcf048e3          	bgtz	a5,4d2 <memmove+0x82>
 506:	fd843783          	ld	a5,-40(s0)
 50a:	853e                	mv	a0,a5
 50c:	7462                	ld	s0,56(sp)
 50e:	6121                	addi	sp,sp,64
 510:	8082                	ret

0000000000000512 <memcmp>:
 512:	7139                	addi	sp,sp,-64
 514:	fc22                	sd	s0,56(sp)
 516:	0080                	addi	s0,sp,64
 518:	fca43c23          	sd	a0,-40(s0)
 51c:	fcb43823          	sd	a1,-48(s0)
 520:	87b2                	mv	a5,a2
 522:	fcf42623          	sw	a5,-52(s0)
 526:	fd843783          	ld	a5,-40(s0)
 52a:	fef43423          	sd	a5,-24(s0)
 52e:	fd043783          	ld	a5,-48(s0)
 532:	fef43023          	sd	a5,-32(s0)
 536:	a0a1                	j	57e <memcmp+0x6c>
 538:	fe843783          	ld	a5,-24(s0)
 53c:	0007c703          	lbu	a4,0(a5)
 540:	fe043783          	ld	a5,-32(s0)
 544:	0007c783          	lbu	a5,0(a5)
 548:	02f70163          	beq	a4,a5,56a <memcmp+0x58>
 54c:	fe843783          	ld	a5,-24(s0)
 550:	0007c783          	lbu	a5,0(a5)
 554:	0007871b          	sext.w	a4,a5
 558:	fe043783          	ld	a5,-32(s0)
 55c:	0007c783          	lbu	a5,0(a5)
 560:	2781                	sext.w	a5,a5
 562:	40f707bb          	subw	a5,a4,a5
 566:	2781                	sext.w	a5,a5
 568:	a01d                	j	58e <memcmp+0x7c>
 56a:	fe843783          	ld	a5,-24(s0)
 56e:	0785                	addi	a5,a5,1
 570:	fef43423          	sd	a5,-24(s0)
 574:	fe043783          	ld	a5,-32(s0)
 578:	0785                	addi	a5,a5,1
 57a:	fef43023          	sd	a5,-32(s0)
 57e:	fcc42783          	lw	a5,-52(s0)
 582:	fff7871b          	addiw	a4,a5,-1
 586:	fce42623          	sw	a4,-52(s0)
 58a:	f7dd                	bnez	a5,538 <memcmp+0x26>
 58c:	4781                	li	a5,0
 58e:	853e                	mv	a0,a5
 590:	7462                	ld	s0,56(sp)
 592:	6121                	addi	sp,sp,64
 594:	8082                	ret

0000000000000596 <memcpy>:
 596:	7179                	addi	sp,sp,-48
 598:	f406                	sd	ra,40(sp)
 59a:	f022                	sd	s0,32(sp)
 59c:	1800                	addi	s0,sp,48
 59e:	fea43423          	sd	a0,-24(s0)
 5a2:	feb43023          	sd	a1,-32(s0)
 5a6:	87b2                	mv	a5,a2
 5a8:	fcf42e23          	sw	a5,-36(s0)
 5ac:	fdc42783          	lw	a5,-36(s0)
 5b0:	863e                	mv	a2,a5
 5b2:	fe043583          	ld	a1,-32(s0)
 5b6:	fe843503          	ld	a0,-24(s0)
 5ba:	00000097          	auipc	ra,0x0
 5be:	e96080e7          	jalr	-362(ra) # 450 <memmove>
 5c2:	87aa                	mv	a5,a0
 5c4:	853e                	mv	a0,a5
 5c6:	70a2                	ld	ra,40(sp)
 5c8:	7402                	ld	s0,32(sp)
 5ca:	6145                	addi	sp,sp,48
 5cc:	8082                	ret

00000000000005ce <fork>:
 5ce:	4885                	li	a7,1
 5d0:	00000073          	ecall
 5d4:	8082                	ret

00000000000005d6 <exit>:
 5d6:	4889                	li	a7,2
 5d8:	00000073          	ecall
 5dc:	8082                	ret

00000000000005de <wait>:
 5de:	488d                	li	a7,3
 5e0:	00000073          	ecall
 5e4:	8082                	ret

00000000000005e6 <pipe>:
 5e6:	4891                	li	a7,4
 5e8:	00000073          	ecall
 5ec:	8082                	ret

00000000000005ee <read>:
 5ee:	4895                	li	a7,5
 5f0:	00000073          	ecall
 5f4:	8082                	ret

00000000000005f6 <write>:
 5f6:	48c1                	li	a7,16
 5f8:	00000073          	ecall
 5fc:	8082                	ret

00000000000005fe <close>:
 5fe:	48d5                	li	a7,21
 600:	00000073          	ecall
 604:	8082                	ret

0000000000000606 <kill>:
 606:	4899                	li	a7,6
 608:	00000073          	ecall
 60c:	8082                	ret

000000000000060e <exec>:
 60e:	489d                	li	a7,7
 610:	00000073          	ecall
 614:	8082                	ret

0000000000000616 <open>:
 616:	48bd                	li	a7,15
 618:	00000073          	ecall
 61c:	8082                	ret

000000000000061e <mknod>:
 61e:	48c5                	li	a7,17
 620:	00000073          	ecall
 624:	8082                	ret

0000000000000626 <unlink>:
 626:	48c9                	li	a7,18
 628:	00000073          	ecall
 62c:	8082                	ret

000000000000062e <fstat>:
 62e:	48a1                	li	a7,8
 630:	00000073          	ecall
 634:	8082                	ret

0000000000000636 <link>:
 636:	48cd                	li	a7,19
 638:	00000073          	ecall
 63c:	8082                	ret

000000000000063e <mkdir>:
 63e:	48d1                	li	a7,20
 640:	00000073          	ecall
 644:	8082                	ret

0000000000000646 <chdir>:
 646:	48a5                	li	a7,9
 648:	00000073          	ecall
 64c:	8082                	ret

000000000000064e <dup>:
 64e:	48a9                	li	a7,10
 650:	00000073          	ecall
 654:	8082                	ret

0000000000000656 <getpid>:
 656:	48ad                	li	a7,11
 658:	00000073          	ecall
 65c:	8082                	ret

000000000000065e <sbrk>:
 65e:	48b1                	li	a7,12
 660:	00000073          	ecall
 664:	8082                	ret

0000000000000666 <sleep>:
 666:	48b5                	li	a7,13
 668:	00000073          	ecall
 66c:	8082                	ret

000000000000066e <uptime>:
 66e:	48b9                	li	a7,14
 670:	00000073          	ecall
 674:	8082                	ret

0000000000000676 <waitx>:
 676:	48d9                	li	a7,22
 678:	00000073          	ecall
 67c:	8082                	ret

000000000000067e <getsyscount>:
 67e:	48dd                	li	a7,23
 680:	00000073          	ecall
 684:	8082                	ret

0000000000000686 <sigalarm>:
 686:	48e1                	li	a7,24
 688:	00000073          	ecall
 68c:	8082                	ret

000000000000068e <sigreturn>:
 68e:	48e5                	li	a7,25
 690:	00000073          	ecall
 694:	8082                	ret

0000000000000696 <settickets>:
 696:	48e9                	li	a7,26
 698:	00000073          	ecall
 69c:	8082                	ret

000000000000069e <putc>:
 69e:	1101                	addi	sp,sp,-32
 6a0:	ec06                	sd	ra,24(sp)
 6a2:	e822                	sd	s0,16(sp)
 6a4:	1000                	addi	s0,sp,32
 6a6:	87aa                	mv	a5,a0
 6a8:	872e                	mv	a4,a1
 6aa:	fef42623          	sw	a5,-20(s0)
 6ae:	87ba                	mv	a5,a4
 6b0:	fef405a3          	sb	a5,-21(s0)
 6b4:	feb40713          	addi	a4,s0,-21
 6b8:	fec42783          	lw	a5,-20(s0)
 6bc:	4605                	li	a2,1
 6be:	85ba                	mv	a1,a4
 6c0:	853e                	mv	a0,a5
 6c2:	00000097          	auipc	ra,0x0
 6c6:	f34080e7          	jalr	-204(ra) # 5f6 <write>
 6ca:	0001                	nop
 6cc:	60e2                	ld	ra,24(sp)
 6ce:	6442                	ld	s0,16(sp)
 6d0:	6105                	addi	sp,sp,32
 6d2:	8082                	ret

00000000000006d4 <printint>:
 6d4:	7139                	addi	sp,sp,-64
 6d6:	fc06                	sd	ra,56(sp)
 6d8:	f822                	sd	s0,48(sp)
 6da:	0080                	addi	s0,sp,64
 6dc:	87aa                	mv	a5,a0
 6de:	8736                	mv	a4,a3
 6e0:	fcf42623          	sw	a5,-52(s0)
 6e4:	87ae                	mv	a5,a1
 6e6:	fcf42423          	sw	a5,-56(s0)
 6ea:	87b2                	mv	a5,a2
 6ec:	fcf42223          	sw	a5,-60(s0)
 6f0:	87ba                	mv	a5,a4
 6f2:	fcf42023          	sw	a5,-64(s0)
 6f6:	fe042423          	sw	zero,-24(s0)
 6fa:	fc042783          	lw	a5,-64(s0)
 6fe:	2781                	sext.w	a5,a5
 700:	c38d                	beqz	a5,722 <printint+0x4e>
 702:	fc842783          	lw	a5,-56(s0)
 706:	2781                	sext.w	a5,a5
 708:	0007dd63          	bgez	a5,722 <printint+0x4e>
 70c:	4785                	li	a5,1
 70e:	fef42423          	sw	a5,-24(s0)
 712:	fc842783          	lw	a5,-56(s0)
 716:	40f007bb          	negw	a5,a5
 71a:	2781                	sext.w	a5,a5
 71c:	fef42223          	sw	a5,-28(s0)
 720:	a029                	j	72a <printint+0x56>
 722:	fc842783          	lw	a5,-56(s0)
 726:	fef42223          	sw	a5,-28(s0)
 72a:	fe042623          	sw	zero,-20(s0)
 72e:	fc442783          	lw	a5,-60(s0)
 732:	fe442703          	lw	a4,-28(s0)
 736:	02f777bb          	remuw	a5,a4,a5
 73a:	0007861b          	sext.w	a2,a5
 73e:	fec42783          	lw	a5,-20(s0)
 742:	0017871b          	addiw	a4,a5,1
 746:	fee42623          	sw	a4,-20(s0)
 74a:	00001697          	auipc	a3,0x1
 74e:	8b668693          	addi	a3,a3,-1866 # 1000 <digits>
 752:	02061713          	slli	a4,a2,0x20
 756:	9301                	srli	a4,a4,0x20
 758:	9736                	add	a4,a4,a3
 75a:	00074703          	lbu	a4,0(a4)
 75e:	17c1                	addi	a5,a5,-16
 760:	97a2                	add	a5,a5,s0
 762:	fee78023          	sb	a4,-32(a5)
 766:	fc442783          	lw	a5,-60(s0)
 76a:	fe442703          	lw	a4,-28(s0)
 76e:	02f757bb          	divuw	a5,a4,a5
 772:	fef42223          	sw	a5,-28(s0)
 776:	fe442783          	lw	a5,-28(s0)
 77a:	2781                	sext.w	a5,a5
 77c:	fbcd                	bnez	a5,72e <printint+0x5a>
 77e:	fe842783          	lw	a5,-24(s0)
 782:	2781                	sext.w	a5,a5
 784:	cf85                	beqz	a5,7bc <printint+0xe8>
 786:	fec42783          	lw	a5,-20(s0)
 78a:	0017871b          	addiw	a4,a5,1
 78e:	fee42623          	sw	a4,-20(s0)
 792:	17c1                	addi	a5,a5,-16
 794:	97a2                	add	a5,a5,s0
 796:	02d00713          	li	a4,45
 79a:	fee78023          	sb	a4,-32(a5)
 79e:	a839                	j	7bc <printint+0xe8>
 7a0:	fec42783          	lw	a5,-20(s0)
 7a4:	17c1                	addi	a5,a5,-16
 7a6:	97a2                	add	a5,a5,s0
 7a8:	fe07c703          	lbu	a4,-32(a5)
 7ac:	fcc42783          	lw	a5,-52(s0)
 7b0:	85ba                	mv	a1,a4
 7b2:	853e                	mv	a0,a5
 7b4:	00000097          	auipc	ra,0x0
 7b8:	eea080e7          	jalr	-278(ra) # 69e <putc>
 7bc:	fec42783          	lw	a5,-20(s0)
 7c0:	37fd                	addiw	a5,a5,-1
 7c2:	fef42623          	sw	a5,-20(s0)
 7c6:	fec42783          	lw	a5,-20(s0)
 7ca:	2781                	sext.w	a5,a5
 7cc:	fc07dae3          	bgez	a5,7a0 <printint+0xcc>
 7d0:	0001                	nop
 7d2:	0001                	nop
 7d4:	70e2                	ld	ra,56(sp)
 7d6:	7442                	ld	s0,48(sp)
 7d8:	6121                	addi	sp,sp,64
 7da:	8082                	ret

00000000000007dc <printptr>:
 7dc:	7179                	addi	sp,sp,-48
 7de:	f406                	sd	ra,40(sp)
 7e0:	f022                	sd	s0,32(sp)
 7e2:	1800                	addi	s0,sp,48
 7e4:	87aa                	mv	a5,a0
 7e6:	fcb43823          	sd	a1,-48(s0)
 7ea:	fcf42e23          	sw	a5,-36(s0)
 7ee:	fdc42783          	lw	a5,-36(s0)
 7f2:	03000593          	li	a1,48
 7f6:	853e                	mv	a0,a5
 7f8:	00000097          	auipc	ra,0x0
 7fc:	ea6080e7          	jalr	-346(ra) # 69e <putc>
 800:	fdc42783          	lw	a5,-36(s0)
 804:	07800593          	li	a1,120
 808:	853e                	mv	a0,a5
 80a:	00000097          	auipc	ra,0x0
 80e:	e94080e7          	jalr	-364(ra) # 69e <putc>
 812:	fe042623          	sw	zero,-20(s0)
 816:	a82d                	j	850 <printptr+0x74>
 818:	fd043783          	ld	a5,-48(s0)
 81c:	93f1                	srli	a5,a5,0x3c
 81e:	00000717          	auipc	a4,0x0
 822:	7e270713          	addi	a4,a4,2018 # 1000 <digits>
 826:	97ba                	add	a5,a5,a4
 828:	0007c703          	lbu	a4,0(a5)
 82c:	fdc42783          	lw	a5,-36(s0)
 830:	85ba                	mv	a1,a4
 832:	853e                	mv	a0,a5
 834:	00000097          	auipc	ra,0x0
 838:	e6a080e7          	jalr	-406(ra) # 69e <putc>
 83c:	fec42783          	lw	a5,-20(s0)
 840:	2785                	addiw	a5,a5,1
 842:	fef42623          	sw	a5,-20(s0)
 846:	fd043783          	ld	a5,-48(s0)
 84a:	0792                	slli	a5,a5,0x4
 84c:	fcf43823          	sd	a5,-48(s0)
 850:	fec42783          	lw	a5,-20(s0)
 854:	873e                	mv	a4,a5
 856:	47bd                	li	a5,15
 858:	fce7f0e3          	bgeu	a5,a4,818 <printptr+0x3c>
 85c:	0001                	nop
 85e:	0001                	nop
 860:	70a2                	ld	ra,40(sp)
 862:	7402                	ld	s0,32(sp)
 864:	6145                	addi	sp,sp,48
 866:	8082                	ret

0000000000000868 <vprintf>:
 868:	715d                	addi	sp,sp,-80
 86a:	e486                	sd	ra,72(sp)
 86c:	e0a2                	sd	s0,64(sp)
 86e:	0880                	addi	s0,sp,80
 870:	87aa                	mv	a5,a0
 872:	fcb43023          	sd	a1,-64(s0)
 876:	fac43c23          	sd	a2,-72(s0)
 87a:	fcf42623          	sw	a5,-52(s0)
 87e:	fe042023          	sw	zero,-32(s0)
 882:	fe042223          	sw	zero,-28(s0)
 886:	a42d                	j	ab0 <vprintf+0x248>
 888:	fe442783          	lw	a5,-28(s0)
 88c:	fc043703          	ld	a4,-64(s0)
 890:	97ba                	add	a5,a5,a4
 892:	0007c783          	lbu	a5,0(a5)
 896:	fcf42e23          	sw	a5,-36(s0)
 89a:	fe042783          	lw	a5,-32(s0)
 89e:	2781                	sext.w	a5,a5
 8a0:	eb9d                	bnez	a5,8d6 <vprintf+0x6e>
 8a2:	fdc42783          	lw	a5,-36(s0)
 8a6:	0007871b          	sext.w	a4,a5
 8aa:	02500793          	li	a5,37
 8ae:	00f71763          	bne	a4,a5,8bc <vprintf+0x54>
 8b2:	02500793          	li	a5,37
 8b6:	fef42023          	sw	a5,-32(s0)
 8ba:	a2f5                	j	aa6 <vprintf+0x23e>
 8bc:	fdc42783          	lw	a5,-36(s0)
 8c0:	0ff7f713          	zext.b	a4,a5
 8c4:	fcc42783          	lw	a5,-52(s0)
 8c8:	85ba                	mv	a1,a4
 8ca:	853e                	mv	a0,a5
 8cc:	00000097          	auipc	ra,0x0
 8d0:	dd2080e7          	jalr	-558(ra) # 69e <putc>
 8d4:	aac9                	j	aa6 <vprintf+0x23e>
 8d6:	fe042783          	lw	a5,-32(s0)
 8da:	0007871b          	sext.w	a4,a5
 8de:	02500793          	li	a5,37
 8e2:	1cf71263          	bne	a4,a5,aa6 <vprintf+0x23e>
 8e6:	fdc42783          	lw	a5,-36(s0)
 8ea:	0007871b          	sext.w	a4,a5
 8ee:	06400793          	li	a5,100
 8f2:	02f71463          	bne	a4,a5,91a <vprintf+0xb2>
 8f6:	fb843783          	ld	a5,-72(s0)
 8fa:	00878713          	addi	a4,a5,8
 8fe:	fae43c23          	sd	a4,-72(s0)
 902:	4398                	lw	a4,0(a5)
 904:	fcc42783          	lw	a5,-52(s0)
 908:	4685                	li	a3,1
 90a:	4629                	li	a2,10
 90c:	85ba                	mv	a1,a4
 90e:	853e                	mv	a0,a5
 910:	00000097          	auipc	ra,0x0
 914:	dc4080e7          	jalr	-572(ra) # 6d4 <printint>
 918:	a269                	j	aa2 <vprintf+0x23a>
 91a:	fdc42783          	lw	a5,-36(s0)
 91e:	0007871b          	sext.w	a4,a5
 922:	06c00793          	li	a5,108
 926:	02f71663          	bne	a4,a5,952 <vprintf+0xea>
 92a:	fb843783          	ld	a5,-72(s0)
 92e:	00878713          	addi	a4,a5,8
 932:	fae43c23          	sd	a4,-72(s0)
 936:	639c                	ld	a5,0(a5)
 938:	0007871b          	sext.w	a4,a5
 93c:	fcc42783          	lw	a5,-52(s0)
 940:	4681                	li	a3,0
 942:	4629                	li	a2,10
 944:	85ba                	mv	a1,a4
 946:	853e                	mv	a0,a5
 948:	00000097          	auipc	ra,0x0
 94c:	d8c080e7          	jalr	-628(ra) # 6d4 <printint>
 950:	aa89                	j	aa2 <vprintf+0x23a>
 952:	fdc42783          	lw	a5,-36(s0)
 956:	0007871b          	sext.w	a4,a5
 95a:	07800793          	li	a5,120
 95e:	02f71463          	bne	a4,a5,986 <vprintf+0x11e>
 962:	fb843783          	ld	a5,-72(s0)
 966:	00878713          	addi	a4,a5,8
 96a:	fae43c23          	sd	a4,-72(s0)
 96e:	4398                	lw	a4,0(a5)
 970:	fcc42783          	lw	a5,-52(s0)
 974:	4681                	li	a3,0
 976:	4641                	li	a2,16
 978:	85ba                	mv	a1,a4
 97a:	853e                	mv	a0,a5
 97c:	00000097          	auipc	ra,0x0
 980:	d58080e7          	jalr	-680(ra) # 6d4 <printint>
 984:	aa39                	j	aa2 <vprintf+0x23a>
 986:	fdc42783          	lw	a5,-36(s0)
 98a:	0007871b          	sext.w	a4,a5
 98e:	07000793          	li	a5,112
 992:	02f71263          	bne	a4,a5,9b6 <vprintf+0x14e>
 996:	fb843783          	ld	a5,-72(s0)
 99a:	00878713          	addi	a4,a5,8
 99e:	fae43c23          	sd	a4,-72(s0)
 9a2:	6398                	ld	a4,0(a5)
 9a4:	fcc42783          	lw	a5,-52(s0)
 9a8:	85ba                	mv	a1,a4
 9aa:	853e                	mv	a0,a5
 9ac:	00000097          	auipc	ra,0x0
 9b0:	e30080e7          	jalr	-464(ra) # 7dc <printptr>
 9b4:	a0fd                	j	aa2 <vprintf+0x23a>
 9b6:	fdc42783          	lw	a5,-36(s0)
 9ba:	0007871b          	sext.w	a4,a5
 9be:	07300793          	li	a5,115
 9c2:	04f71c63          	bne	a4,a5,a1a <vprintf+0x1b2>
 9c6:	fb843783          	ld	a5,-72(s0)
 9ca:	00878713          	addi	a4,a5,8
 9ce:	fae43c23          	sd	a4,-72(s0)
 9d2:	639c                	ld	a5,0(a5)
 9d4:	fef43423          	sd	a5,-24(s0)
 9d8:	fe843783          	ld	a5,-24(s0)
 9dc:	eb8d                	bnez	a5,a0e <vprintf+0x1a6>
 9de:	00000797          	auipc	a5,0x0
 9e2:	4a278793          	addi	a5,a5,1186 # e80 <malloc+0x168>
 9e6:	fef43423          	sd	a5,-24(s0)
 9ea:	a015                	j	a0e <vprintf+0x1a6>
 9ec:	fe843783          	ld	a5,-24(s0)
 9f0:	0007c703          	lbu	a4,0(a5)
 9f4:	fcc42783          	lw	a5,-52(s0)
 9f8:	85ba                	mv	a1,a4
 9fa:	853e                	mv	a0,a5
 9fc:	00000097          	auipc	ra,0x0
 a00:	ca2080e7          	jalr	-862(ra) # 69e <putc>
 a04:	fe843783          	ld	a5,-24(s0)
 a08:	0785                	addi	a5,a5,1
 a0a:	fef43423          	sd	a5,-24(s0)
 a0e:	fe843783          	ld	a5,-24(s0)
 a12:	0007c783          	lbu	a5,0(a5)
 a16:	fbf9                	bnez	a5,9ec <vprintf+0x184>
 a18:	a069                	j	aa2 <vprintf+0x23a>
 a1a:	fdc42783          	lw	a5,-36(s0)
 a1e:	0007871b          	sext.w	a4,a5
 a22:	06300793          	li	a5,99
 a26:	02f71463          	bne	a4,a5,a4e <vprintf+0x1e6>
 a2a:	fb843783          	ld	a5,-72(s0)
 a2e:	00878713          	addi	a4,a5,8
 a32:	fae43c23          	sd	a4,-72(s0)
 a36:	439c                	lw	a5,0(a5)
 a38:	0ff7f713          	zext.b	a4,a5
 a3c:	fcc42783          	lw	a5,-52(s0)
 a40:	85ba                	mv	a1,a4
 a42:	853e                	mv	a0,a5
 a44:	00000097          	auipc	ra,0x0
 a48:	c5a080e7          	jalr	-934(ra) # 69e <putc>
 a4c:	a899                	j	aa2 <vprintf+0x23a>
 a4e:	fdc42783          	lw	a5,-36(s0)
 a52:	0007871b          	sext.w	a4,a5
 a56:	02500793          	li	a5,37
 a5a:	00f71f63          	bne	a4,a5,a78 <vprintf+0x210>
 a5e:	fdc42783          	lw	a5,-36(s0)
 a62:	0ff7f713          	zext.b	a4,a5
 a66:	fcc42783          	lw	a5,-52(s0)
 a6a:	85ba                	mv	a1,a4
 a6c:	853e                	mv	a0,a5
 a6e:	00000097          	auipc	ra,0x0
 a72:	c30080e7          	jalr	-976(ra) # 69e <putc>
 a76:	a035                	j	aa2 <vprintf+0x23a>
 a78:	fcc42783          	lw	a5,-52(s0)
 a7c:	02500593          	li	a1,37
 a80:	853e                	mv	a0,a5
 a82:	00000097          	auipc	ra,0x0
 a86:	c1c080e7          	jalr	-996(ra) # 69e <putc>
 a8a:	fdc42783          	lw	a5,-36(s0)
 a8e:	0ff7f713          	zext.b	a4,a5
 a92:	fcc42783          	lw	a5,-52(s0)
 a96:	85ba                	mv	a1,a4
 a98:	853e                	mv	a0,a5
 a9a:	00000097          	auipc	ra,0x0
 a9e:	c04080e7          	jalr	-1020(ra) # 69e <putc>
 aa2:	fe042023          	sw	zero,-32(s0)
 aa6:	fe442783          	lw	a5,-28(s0)
 aaa:	2785                	addiw	a5,a5,1
 aac:	fef42223          	sw	a5,-28(s0)
 ab0:	fe442783          	lw	a5,-28(s0)
 ab4:	fc043703          	ld	a4,-64(s0)
 ab8:	97ba                	add	a5,a5,a4
 aba:	0007c783          	lbu	a5,0(a5)
 abe:	dc0795e3          	bnez	a5,888 <vprintf+0x20>
 ac2:	0001                	nop
 ac4:	0001                	nop
 ac6:	60a6                	ld	ra,72(sp)
 ac8:	6406                	ld	s0,64(sp)
 aca:	6161                	addi	sp,sp,80
 acc:	8082                	ret

0000000000000ace <fprintf>:
 ace:	7159                	addi	sp,sp,-112
 ad0:	fc06                	sd	ra,56(sp)
 ad2:	f822                	sd	s0,48(sp)
 ad4:	0080                	addi	s0,sp,64
 ad6:	fcb43823          	sd	a1,-48(s0)
 ada:	e010                	sd	a2,0(s0)
 adc:	e414                	sd	a3,8(s0)
 ade:	e818                	sd	a4,16(s0)
 ae0:	ec1c                	sd	a5,24(s0)
 ae2:	03043023          	sd	a6,32(s0)
 ae6:	03143423          	sd	a7,40(s0)
 aea:	87aa                	mv	a5,a0
 aec:	fcf42e23          	sw	a5,-36(s0)
 af0:	03040793          	addi	a5,s0,48
 af4:	fcf43423          	sd	a5,-56(s0)
 af8:	fc843783          	ld	a5,-56(s0)
 afc:	fd078793          	addi	a5,a5,-48
 b00:	fef43423          	sd	a5,-24(s0)
 b04:	fe843703          	ld	a4,-24(s0)
 b08:	fdc42783          	lw	a5,-36(s0)
 b0c:	863a                	mv	a2,a4
 b0e:	fd043583          	ld	a1,-48(s0)
 b12:	853e                	mv	a0,a5
 b14:	00000097          	auipc	ra,0x0
 b18:	d54080e7          	jalr	-684(ra) # 868 <vprintf>
 b1c:	0001                	nop
 b1e:	70e2                	ld	ra,56(sp)
 b20:	7442                	ld	s0,48(sp)
 b22:	6165                	addi	sp,sp,112
 b24:	8082                	ret

0000000000000b26 <printf>:
 b26:	7159                	addi	sp,sp,-112
 b28:	f406                	sd	ra,40(sp)
 b2a:	f022                	sd	s0,32(sp)
 b2c:	1800                	addi	s0,sp,48
 b2e:	fca43c23          	sd	a0,-40(s0)
 b32:	e40c                	sd	a1,8(s0)
 b34:	e810                	sd	a2,16(s0)
 b36:	ec14                	sd	a3,24(s0)
 b38:	f018                	sd	a4,32(s0)
 b3a:	f41c                	sd	a5,40(s0)
 b3c:	03043823          	sd	a6,48(s0)
 b40:	03143c23          	sd	a7,56(s0)
 b44:	04040793          	addi	a5,s0,64
 b48:	fcf43823          	sd	a5,-48(s0)
 b4c:	fd043783          	ld	a5,-48(s0)
 b50:	fc878793          	addi	a5,a5,-56
 b54:	fef43423          	sd	a5,-24(s0)
 b58:	fe843783          	ld	a5,-24(s0)
 b5c:	863e                	mv	a2,a5
 b5e:	fd843583          	ld	a1,-40(s0)
 b62:	4505                	li	a0,1
 b64:	00000097          	auipc	ra,0x0
 b68:	d04080e7          	jalr	-764(ra) # 868 <vprintf>
 b6c:	0001                	nop
 b6e:	70a2                	ld	ra,40(sp)
 b70:	7402                	ld	s0,32(sp)
 b72:	6165                	addi	sp,sp,112
 b74:	8082                	ret

0000000000000b76 <free>:
 b76:	7179                	addi	sp,sp,-48
 b78:	f422                	sd	s0,40(sp)
 b7a:	1800                	addi	s0,sp,48
 b7c:	fca43c23          	sd	a0,-40(s0)
 b80:	fd843783          	ld	a5,-40(s0)
 b84:	17c1                	addi	a5,a5,-16
 b86:	fef43023          	sd	a5,-32(s0)
 b8a:	00000797          	auipc	a5,0x0
 b8e:	4a678793          	addi	a5,a5,1190 # 1030 <freep>
 b92:	639c                	ld	a5,0(a5)
 b94:	fef43423          	sd	a5,-24(s0)
 b98:	a815                	j	bcc <free+0x56>
 b9a:	fe843783          	ld	a5,-24(s0)
 b9e:	639c                	ld	a5,0(a5)
 ba0:	fe843703          	ld	a4,-24(s0)
 ba4:	00f76f63          	bltu	a4,a5,bc2 <free+0x4c>
 ba8:	fe043703          	ld	a4,-32(s0)
 bac:	fe843783          	ld	a5,-24(s0)
 bb0:	02e7eb63          	bltu	a5,a4,be6 <free+0x70>
 bb4:	fe843783          	ld	a5,-24(s0)
 bb8:	639c                	ld	a5,0(a5)
 bba:	fe043703          	ld	a4,-32(s0)
 bbe:	02f76463          	bltu	a4,a5,be6 <free+0x70>
 bc2:	fe843783          	ld	a5,-24(s0)
 bc6:	639c                	ld	a5,0(a5)
 bc8:	fef43423          	sd	a5,-24(s0)
 bcc:	fe043703          	ld	a4,-32(s0)
 bd0:	fe843783          	ld	a5,-24(s0)
 bd4:	fce7f3e3          	bgeu	a5,a4,b9a <free+0x24>
 bd8:	fe843783          	ld	a5,-24(s0)
 bdc:	639c                	ld	a5,0(a5)
 bde:	fe043703          	ld	a4,-32(s0)
 be2:	faf77ce3          	bgeu	a4,a5,b9a <free+0x24>
 be6:	fe043783          	ld	a5,-32(s0)
 bea:	479c                	lw	a5,8(a5)
 bec:	1782                	slli	a5,a5,0x20
 bee:	9381                	srli	a5,a5,0x20
 bf0:	0792                	slli	a5,a5,0x4
 bf2:	fe043703          	ld	a4,-32(s0)
 bf6:	973e                	add	a4,a4,a5
 bf8:	fe843783          	ld	a5,-24(s0)
 bfc:	639c                	ld	a5,0(a5)
 bfe:	02f71763          	bne	a4,a5,c2c <free+0xb6>
 c02:	fe043783          	ld	a5,-32(s0)
 c06:	4798                	lw	a4,8(a5)
 c08:	fe843783          	ld	a5,-24(s0)
 c0c:	639c                	ld	a5,0(a5)
 c0e:	479c                	lw	a5,8(a5)
 c10:	9fb9                	addw	a5,a5,a4
 c12:	0007871b          	sext.w	a4,a5
 c16:	fe043783          	ld	a5,-32(s0)
 c1a:	c798                	sw	a4,8(a5)
 c1c:	fe843783          	ld	a5,-24(s0)
 c20:	639c                	ld	a5,0(a5)
 c22:	6398                	ld	a4,0(a5)
 c24:	fe043783          	ld	a5,-32(s0)
 c28:	e398                	sd	a4,0(a5)
 c2a:	a039                	j	c38 <free+0xc2>
 c2c:	fe843783          	ld	a5,-24(s0)
 c30:	6398                	ld	a4,0(a5)
 c32:	fe043783          	ld	a5,-32(s0)
 c36:	e398                	sd	a4,0(a5)
 c38:	fe843783          	ld	a5,-24(s0)
 c3c:	479c                	lw	a5,8(a5)
 c3e:	1782                	slli	a5,a5,0x20
 c40:	9381                	srli	a5,a5,0x20
 c42:	0792                	slli	a5,a5,0x4
 c44:	fe843703          	ld	a4,-24(s0)
 c48:	97ba                	add	a5,a5,a4
 c4a:	fe043703          	ld	a4,-32(s0)
 c4e:	02f71563          	bne	a4,a5,c78 <free+0x102>
 c52:	fe843783          	ld	a5,-24(s0)
 c56:	4798                	lw	a4,8(a5)
 c58:	fe043783          	ld	a5,-32(s0)
 c5c:	479c                	lw	a5,8(a5)
 c5e:	9fb9                	addw	a5,a5,a4
 c60:	0007871b          	sext.w	a4,a5
 c64:	fe843783          	ld	a5,-24(s0)
 c68:	c798                	sw	a4,8(a5)
 c6a:	fe043783          	ld	a5,-32(s0)
 c6e:	6398                	ld	a4,0(a5)
 c70:	fe843783          	ld	a5,-24(s0)
 c74:	e398                	sd	a4,0(a5)
 c76:	a031                	j	c82 <free+0x10c>
 c78:	fe843783          	ld	a5,-24(s0)
 c7c:	fe043703          	ld	a4,-32(s0)
 c80:	e398                	sd	a4,0(a5)
 c82:	00000797          	auipc	a5,0x0
 c86:	3ae78793          	addi	a5,a5,942 # 1030 <freep>
 c8a:	fe843703          	ld	a4,-24(s0)
 c8e:	e398                	sd	a4,0(a5)
 c90:	0001                	nop
 c92:	7422                	ld	s0,40(sp)
 c94:	6145                	addi	sp,sp,48
 c96:	8082                	ret

0000000000000c98 <morecore>:
 c98:	7179                	addi	sp,sp,-48
 c9a:	f406                	sd	ra,40(sp)
 c9c:	f022                	sd	s0,32(sp)
 c9e:	1800                	addi	s0,sp,48
 ca0:	87aa                	mv	a5,a0
 ca2:	fcf42e23          	sw	a5,-36(s0)
 ca6:	fdc42783          	lw	a5,-36(s0)
 caa:	0007871b          	sext.w	a4,a5
 cae:	6785                	lui	a5,0x1
 cb0:	00f77563          	bgeu	a4,a5,cba <morecore+0x22>
 cb4:	6785                	lui	a5,0x1
 cb6:	fcf42e23          	sw	a5,-36(s0)
 cba:	fdc42783          	lw	a5,-36(s0)
 cbe:	0047979b          	slliw	a5,a5,0x4
 cc2:	2781                	sext.w	a5,a5
 cc4:	2781                	sext.w	a5,a5
 cc6:	853e                	mv	a0,a5
 cc8:	00000097          	auipc	ra,0x0
 ccc:	996080e7          	jalr	-1642(ra) # 65e <sbrk>
 cd0:	fea43423          	sd	a0,-24(s0)
 cd4:	fe843703          	ld	a4,-24(s0)
 cd8:	57fd                	li	a5,-1
 cda:	00f71463          	bne	a4,a5,ce2 <morecore+0x4a>
 cde:	4781                	li	a5,0
 ce0:	a03d                	j	d0e <morecore+0x76>
 ce2:	fe843783          	ld	a5,-24(s0)
 ce6:	fef43023          	sd	a5,-32(s0)
 cea:	fe043783          	ld	a5,-32(s0)
 cee:	fdc42703          	lw	a4,-36(s0)
 cf2:	c798                	sw	a4,8(a5)
 cf4:	fe043783          	ld	a5,-32(s0)
 cf8:	07c1                	addi	a5,a5,16 # 1010 <digits+0x10>
 cfa:	853e                	mv	a0,a5
 cfc:	00000097          	auipc	ra,0x0
 d00:	e7a080e7          	jalr	-390(ra) # b76 <free>
 d04:	00000797          	auipc	a5,0x0
 d08:	32c78793          	addi	a5,a5,812 # 1030 <freep>
 d0c:	639c                	ld	a5,0(a5)
 d0e:	853e                	mv	a0,a5
 d10:	70a2                	ld	ra,40(sp)
 d12:	7402                	ld	s0,32(sp)
 d14:	6145                	addi	sp,sp,48
 d16:	8082                	ret

0000000000000d18 <malloc>:
 d18:	7139                	addi	sp,sp,-64
 d1a:	fc06                	sd	ra,56(sp)
 d1c:	f822                	sd	s0,48(sp)
 d1e:	0080                	addi	s0,sp,64
 d20:	87aa                	mv	a5,a0
 d22:	fcf42623          	sw	a5,-52(s0)
 d26:	fcc46783          	lwu	a5,-52(s0)
 d2a:	07bd                	addi	a5,a5,15
 d2c:	8391                	srli	a5,a5,0x4
 d2e:	2781                	sext.w	a5,a5
 d30:	2785                	addiw	a5,a5,1
 d32:	fcf42e23          	sw	a5,-36(s0)
 d36:	00000797          	auipc	a5,0x0
 d3a:	2fa78793          	addi	a5,a5,762 # 1030 <freep>
 d3e:	639c                	ld	a5,0(a5)
 d40:	fef43023          	sd	a5,-32(s0)
 d44:	fe043783          	ld	a5,-32(s0)
 d48:	ef95                	bnez	a5,d84 <malloc+0x6c>
 d4a:	00000797          	auipc	a5,0x0
 d4e:	2d678793          	addi	a5,a5,726 # 1020 <base>
 d52:	fef43023          	sd	a5,-32(s0)
 d56:	00000797          	auipc	a5,0x0
 d5a:	2da78793          	addi	a5,a5,730 # 1030 <freep>
 d5e:	fe043703          	ld	a4,-32(s0)
 d62:	e398                	sd	a4,0(a5)
 d64:	00000797          	auipc	a5,0x0
 d68:	2cc78793          	addi	a5,a5,716 # 1030 <freep>
 d6c:	6398                	ld	a4,0(a5)
 d6e:	00000797          	auipc	a5,0x0
 d72:	2b278793          	addi	a5,a5,690 # 1020 <base>
 d76:	e398                	sd	a4,0(a5)
 d78:	00000797          	auipc	a5,0x0
 d7c:	2a878793          	addi	a5,a5,680 # 1020 <base>
 d80:	0007a423          	sw	zero,8(a5)
 d84:	fe043783          	ld	a5,-32(s0)
 d88:	639c                	ld	a5,0(a5)
 d8a:	fef43423          	sd	a5,-24(s0)
 d8e:	fe843783          	ld	a5,-24(s0)
 d92:	4798                	lw	a4,8(a5)
 d94:	fdc42783          	lw	a5,-36(s0)
 d98:	2781                	sext.w	a5,a5
 d9a:	06f76763          	bltu	a4,a5,e08 <malloc+0xf0>
 d9e:	fe843783          	ld	a5,-24(s0)
 da2:	4798                	lw	a4,8(a5)
 da4:	fdc42783          	lw	a5,-36(s0)
 da8:	2781                	sext.w	a5,a5
 daa:	00e79963          	bne	a5,a4,dbc <malloc+0xa4>
 dae:	fe843783          	ld	a5,-24(s0)
 db2:	6398                	ld	a4,0(a5)
 db4:	fe043783          	ld	a5,-32(s0)
 db8:	e398                	sd	a4,0(a5)
 dba:	a825                	j	df2 <malloc+0xda>
 dbc:	fe843783          	ld	a5,-24(s0)
 dc0:	479c                	lw	a5,8(a5)
 dc2:	fdc42703          	lw	a4,-36(s0)
 dc6:	9f99                	subw	a5,a5,a4
 dc8:	0007871b          	sext.w	a4,a5
 dcc:	fe843783          	ld	a5,-24(s0)
 dd0:	c798                	sw	a4,8(a5)
 dd2:	fe843783          	ld	a5,-24(s0)
 dd6:	479c                	lw	a5,8(a5)
 dd8:	1782                	slli	a5,a5,0x20
 dda:	9381                	srli	a5,a5,0x20
 ddc:	0792                	slli	a5,a5,0x4
 dde:	fe843703          	ld	a4,-24(s0)
 de2:	97ba                	add	a5,a5,a4
 de4:	fef43423          	sd	a5,-24(s0)
 de8:	fe843783          	ld	a5,-24(s0)
 dec:	fdc42703          	lw	a4,-36(s0)
 df0:	c798                	sw	a4,8(a5)
 df2:	00000797          	auipc	a5,0x0
 df6:	23e78793          	addi	a5,a5,574 # 1030 <freep>
 dfa:	fe043703          	ld	a4,-32(s0)
 dfe:	e398                	sd	a4,0(a5)
 e00:	fe843783          	ld	a5,-24(s0)
 e04:	07c1                	addi	a5,a5,16
 e06:	a091                	j	e4a <malloc+0x132>
 e08:	00000797          	auipc	a5,0x0
 e0c:	22878793          	addi	a5,a5,552 # 1030 <freep>
 e10:	639c                	ld	a5,0(a5)
 e12:	fe843703          	ld	a4,-24(s0)
 e16:	02f71063          	bne	a4,a5,e36 <malloc+0x11e>
 e1a:	fdc42783          	lw	a5,-36(s0)
 e1e:	853e                	mv	a0,a5
 e20:	00000097          	auipc	ra,0x0
 e24:	e78080e7          	jalr	-392(ra) # c98 <morecore>
 e28:	fea43423          	sd	a0,-24(s0)
 e2c:	fe843783          	ld	a5,-24(s0)
 e30:	e399                	bnez	a5,e36 <malloc+0x11e>
 e32:	4781                	li	a5,0
 e34:	a819                	j	e4a <malloc+0x132>
 e36:	fe843783          	ld	a5,-24(s0)
 e3a:	fef43023          	sd	a5,-32(s0)
 e3e:	fe843783          	ld	a5,-24(s0)
 e42:	639c                	ld	a5,0(a5)
 e44:	fef43423          	sd	a5,-24(s0)
 e48:	b799                	j	d8e <malloc+0x76>
 e4a:	853e                	mv	a0,a5
 e4c:	70e2                	ld	ra,56(sp)
 e4e:	7442                	ld	s0,48(sp)
 e50:	6121                	addi	sp,sp,64
 e52:	8082                	ret
