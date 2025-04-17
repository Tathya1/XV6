
user/_init:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	1101                	addi	sp,sp,-32
   2:	ec06                	sd	ra,24(sp)
   4:	e822                	sd	s0,16(sp)
   6:	1000                	addi	s0,sp,32
   8:	4589                	li	a1,2
   a:	00001517          	auipc	a0,0x1
   e:	e4e50513          	addi	a0,a0,-434 # e58 <malloc+0x14a>
  12:	00000097          	auipc	ra,0x0
  16:	5fa080e7          	jalr	1530(ra) # 60c <open>
  1a:	87aa                	mv	a5,a0
  1c:	0207d563          	bgez	a5,46 <main+0x46>
  20:	4601                	li	a2,0
  22:	4585                	li	a1,1
  24:	00001517          	auipc	a0,0x1
  28:	e3450513          	addi	a0,a0,-460 # e58 <malloc+0x14a>
  2c:	00000097          	auipc	ra,0x0
  30:	5e8080e7          	jalr	1512(ra) # 614 <mknod>
  34:	4589                	li	a1,2
  36:	00001517          	auipc	a0,0x1
  3a:	e2250513          	addi	a0,a0,-478 # e58 <malloc+0x14a>
  3e:	00000097          	auipc	ra,0x0
  42:	5ce080e7          	jalr	1486(ra) # 60c <open>
  46:	4501                	li	a0,0
  48:	00000097          	auipc	ra,0x0
  4c:	5fc080e7          	jalr	1532(ra) # 644 <dup>
  50:	4501                	li	a0,0
  52:	00000097          	auipc	ra,0x0
  56:	5f2080e7          	jalr	1522(ra) # 644 <dup>
  5a:	00001517          	auipc	a0,0x1
  5e:	e0650513          	addi	a0,a0,-506 # e60 <malloc+0x152>
  62:	00001097          	auipc	ra,0x1
  66:	aba080e7          	jalr	-1350(ra) # b1c <printf>
  6a:	00000097          	auipc	ra,0x0
  6e:	55a080e7          	jalr	1370(ra) # 5c4 <fork>
  72:	87aa                	mv	a5,a0
  74:	fef42623          	sw	a5,-20(s0)
  78:	fec42783          	lw	a5,-20(s0)
  7c:	2781                	sext.w	a5,a5
  7e:	0007df63          	bgez	a5,9c <main+0x9c>
  82:	00001517          	auipc	a0,0x1
  86:	df650513          	addi	a0,a0,-522 # e78 <malloc+0x16a>
  8a:	00001097          	auipc	ra,0x1
  8e:	a92080e7          	jalr	-1390(ra) # b1c <printf>
  92:	4505                	li	a0,1
  94:	00000097          	auipc	ra,0x0
  98:	538080e7          	jalr	1336(ra) # 5cc <exit>
  9c:	fec42783          	lw	a5,-20(s0)
  a0:	2781                	sext.w	a5,a5
  a2:	eb95                	bnez	a5,d6 <main+0xd6>
  a4:	00001597          	auipc	a1,0x1
  a8:	f5c58593          	addi	a1,a1,-164 # 1000 <argv>
  ac:	00001517          	auipc	a0,0x1
  b0:	da450513          	addi	a0,a0,-604 # e50 <malloc+0x142>
  b4:	00000097          	auipc	ra,0x0
  b8:	550080e7          	jalr	1360(ra) # 604 <exec>
  bc:	00001517          	auipc	a0,0x1
  c0:	dd450513          	addi	a0,a0,-556 # e90 <malloc+0x182>
  c4:	00001097          	auipc	ra,0x1
  c8:	a58080e7          	jalr	-1448(ra) # b1c <printf>
  cc:	4505                	li	a0,1
  ce:	00000097          	auipc	ra,0x0
  d2:	4fe080e7          	jalr	1278(ra) # 5cc <exit>
  d6:	4501                	li	a0,0
  d8:	00000097          	auipc	ra,0x0
  dc:	4fc080e7          	jalr	1276(ra) # 5d4 <wait>
  e0:	87aa                	mv	a5,a0
  e2:	fef42423          	sw	a5,-24(s0)
  e6:	fe842783          	lw	a5,-24(s0)
  ea:	873e                	mv	a4,a5
  ec:	fec42783          	lw	a5,-20(s0)
  f0:	2701                	sext.w	a4,a4
  f2:	2781                	sext.w	a5,a5
  f4:	02f70463          	beq	a4,a5,11c <main+0x11c>
  f8:	fe842783          	lw	a5,-24(s0)
  fc:	2781                	sext.w	a5,a5
  fe:	fc07dce3          	bgez	a5,d6 <main+0xd6>
 102:	00001517          	auipc	a0,0x1
 106:	da650513          	addi	a0,a0,-602 # ea8 <malloc+0x19a>
 10a:	00001097          	auipc	ra,0x1
 10e:	a12080e7          	jalr	-1518(ra) # b1c <printf>
 112:	4505                	li	a0,1
 114:	00000097          	auipc	ra,0x0
 118:	4b8080e7          	jalr	1208(ra) # 5cc <exit>
 11c:	0001                	nop
 11e:	bf35                	j	5a <main+0x5a>

0000000000000120 <_main>:
 120:	1141                	addi	sp,sp,-16
 122:	e406                	sd	ra,8(sp)
 124:	e022                	sd	s0,0(sp)
 126:	0800                	addi	s0,sp,16
 128:	00000097          	auipc	ra,0x0
 12c:	ed8080e7          	jalr	-296(ra) # 0 <main>
 130:	4501                	li	a0,0
 132:	00000097          	auipc	ra,0x0
 136:	49a080e7          	jalr	1178(ra) # 5cc <exit>

000000000000013a <strcpy>:
 13a:	7179                	addi	sp,sp,-48
 13c:	f422                	sd	s0,40(sp)
 13e:	1800                	addi	s0,sp,48
 140:	fca43c23          	sd	a0,-40(s0)
 144:	fcb43823          	sd	a1,-48(s0)
 148:	fd843783          	ld	a5,-40(s0)
 14c:	fef43423          	sd	a5,-24(s0)
 150:	0001                	nop
 152:	fd043703          	ld	a4,-48(s0)
 156:	00170793          	addi	a5,a4,1
 15a:	fcf43823          	sd	a5,-48(s0)
 15e:	fd843783          	ld	a5,-40(s0)
 162:	00178693          	addi	a3,a5,1
 166:	fcd43c23          	sd	a3,-40(s0)
 16a:	00074703          	lbu	a4,0(a4)
 16e:	00e78023          	sb	a4,0(a5)
 172:	0007c783          	lbu	a5,0(a5)
 176:	fff1                	bnez	a5,152 <strcpy+0x18>
 178:	fe843783          	ld	a5,-24(s0)
 17c:	853e                	mv	a0,a5
 17e:	7422                	ld	s0,40(sp)
 180:	6145                	addi	sp,sp,48
 182:	8082                	ret

0000000000000184 <strcmp>:
 184:	1101                	addi	sp,sp,-32
 186:	ec22                	sd	s0,24(sp)
 188:	1000                	addi	s0,sp,32
 18a:	fea43423          	sd	a0,-24(s0)
 18e:	feb43023          	sd	a1,-32(s0)
 192:	a819                	j	1a8 <strcmp+0x24>
 194:	fe843783          	ld	a5,-24(s0)
 198:	0785                	addi	a5,a5,1
 19a:	fef43423          	sd	a5,-24(s0)
 19e:	fe043783          	ld	a5,-32(s0)
 1a2:	0785                	addi	a5,a5,1
 1a4:	fef43023          	sd	a5,-32(s0)
 1a8:	fe843783          	ld	a5,-24(s0)
 1ac:	0007c783          	lbu	a5,0(a5)
 1b0:	cb99                	beqz	a5,1c6 <strcmp+0x42>
 1b2:	fe843783          	ld	a5,-24(s0)
 1b6:	0007c703          	lbu	a4,0(a5)
 1ba:	fe043783          	ld	a5,-32(s0)
 1be:	0007c783          	lbu	a5,0(a5)
 1c2:	fcf709e3          	beq	a4,a5,194 <strcmp+0x10>
 1c6:	fe843783          	ld	a5,-24(s0)
 1ca:	0007c783          	lbu	a5,0(a5)
 1ce:	0007871b          	sext.w	a4,a5
 1d2:	fe043783          	ld	a5,-32(s0)
 1d6:	0007c783          	lbu	a5,0(a5)
 1da:	2781                	sext.w	a5,a5
 1dc:	40f707bb          	subw	a5,a4,a5
 1e0:	2781                	sext.w	a5,a5
 1e2:	853e                	mv	a0,a5
 1e4:	6462                	ld	s0,24(sp)
 1e6:	6105                	addi	sp,sp,32
 1e8:	8082                	ret

00000000000001ea <strlen>:
 1ea:	7179                	addi	sp,sp,-48
 1ec:	f422                	sd	s0,40(sp)
 1ee:	1800                	addi	s0,sp,48
 1f0:	fca43c23          	sd	a0,-40(s0)
 1f4:	fe042623          	sw	zero,-20(s0)
 1f8:	a031                	j	204 <strlen+0x1a>
 1fa:	fec42783          	lw	a5,-20(s0)
 1fe:	2785                	addiw	a5,a5,1
 200:	fef42623          	sw	a5,-20(s0)
 204:	fec42783          	lw	a5,-20(s0)
 208:	fd843703          	ld	a4,-40(s0)
 20c:	97ba                	add	a5,a5,a4
 20e:	0007c783          	lbu	a5,0(a5)
 212:	f7e5                	bnez	a5,1fa <strlen+0x10>
 214:	fec42783          	lw	a5,-20(s0)
 218:	853e                	mv	a0,a5
 21a:	7422                	ld	s0,40(sp)
 21c:	6145                	addi	sp,sp,48
 21e:	8082                	ret

0000000000000220 <memset>:
 220:	7179                	addi	sp,sp,-48
 222:	f422                	sd	s0,40(sp)
 224:	1800                	addi	s0,sp,48
 226:	fca43c23          	sd	a0,-40(s0)
 22a:	87ae                	mv	a5,a1
 22c:	8732                	mv	a4,a2
 22e:	fcf42a23          	sw	a5,-44(s0)
 232:	87ba                	mv	a5,a4
 234:	fcf42823          	sw	a5,-48(s0)
 238:	fd843783          	ld	a5,-40(s0)
 23c:	fef43023          	sd	a5,-32(s0)
 240:	fe042623          	sw	zero,-20(s0)
 244:	a00d                	j	266 <memset+0x46>
 246:	fec42783          	lw	a5,-20(s0)
 24a:	fe043703          	ld	a4,-32(s0)
 24e:	97ba                	add	a5,a5,a4
 250:	fd442703          	lw	a4,-44(s0)
 254:	0ff77713          	zext.b	a4,a4
 258:	00e78023          	sb	a4,0(a5)
 25c:	fec42783          	lw	a5,-20(s0)
 260:	2785                	addiw	a5,a5,1
 262:	fef42623          	sw	a5,-20(s0)
 266:	fec42703          	lw	a4,-20(s0)
 26a:	fd042783          	lw	a5,-48(s0)
 26e:	2781                	sext.w	a5,a5
 270:	fcf76be3          	bltu	a4,a5,246 <memset+0x26>
 274:	fd843783          	ld	a5,-40(s0)
 278:	853e                	mv	a0,a5
 27a:	7422                	ld	s0,40(sp)
 27c:	6145                	addi	sp,sp,48
 27e:	8082                	ret

0000000000000280 <strchr>:
 280:	1101                	addi	sp,sp,-32
 282:	ec22                	sd	s0,24(sp)
 284:	1000                	addi	s0,sp,32
 286:	fea43423          	sd	a0,-24(s0)
 28a:	87ae                	mv	a5,a1
 28c:	fef403a3          	sb	a5,-25(s0)
 290:	a01d                	j	2b6 <strchr+0x36>
 292:	fe843783          	ld	a5,-24(s0)
 296:	0007c703          	lbu	a4,0(a5)
 29a:	fe744783          	lbu	a5,-25(s0)
 29e:	0ff7f793          	zext.b	a5,a5
 2a2:	00e79563          	bne	a5,a4,2ac <strchr+0x2c>
 2a6:	fe843783          	ld	a5,-24(s0)
 2aa:	a821                	j	2c2 <strchr+0x42>
 2ac:	fe843783          	ld	a5,-24(s0)
 2b0:	0785                	addi	a5,a5,1
 2b2:	fef43423          	sd	a5,-24(s0)
 2b6:	fe843783          	ld	a5,-24(s0)
 2ba:	0007c783          	lbu	a5,0(a5)
 2be:	fbf1                	bnez	a5,292 <strchr+0x12>
 2c0:	4781                	li	a5,0
 2c2:	853e                	mv	a0,a5
 2c4:	6462                	ld	s0,24(sp)
 2c6:	6105                	addi	sp,sp,32
 2c8:	8082                	ret

00000000000002ca <gets>:
 2ca:	7179                	addi	sp,sp,-48
 2cc:	f406                	sd	ra,40(sp)
 2ce:	f022                	sd	s0,32(sp)
 2d0:	1800                	addi	s0,sp,48
 2d2:	fca43c23          	sd	a0,-40(s0)
 2d6:	87ae                	mv	a5,a1
 2d8:	fcf42a23          	sw	a5,-44(s0)
 2dc:	fe042623          	sw	zero,-20(s0)
 2e0:	a8a1                	j	338 <gets+0x6e>
 2e2:	fe740793          	addi	a5,s0,-25
 2e6:	4605                	li	a2,1
 2e8:	85be                	mv	a1,a5
 2ea:	4501                	li	a0,0
 2ec:	00000097          	auipc	ra,0x0
 2f0:	2f8080e7          	jalr	760(ra) # 5e4 <read>
 2f4:	87aa                	mv	a5,a0
 2f6:	fef42423          	sw	a5,-24(s0)
 2fa:	fe842783          	lw	a5,-24(s0)
 2fe:	2781                	sext.w	a5,a5
 300:	04f05763          	blez	a5,34e <gets+0x84>
 304:	fec42783          	lw	a5,-20(s0)
 308:	0017871b          	addiw	a4,a5,1
 30c:	fee42623          	sw	a4,-20(s0)
 310:	873e                	mv	a4,a5
 312:	fd843783          	ld	a5,-40(s0)
 316:	97ba                	add	a5,a5,a4
 318:	fe744703          	lbu	a4,-25(s0)
 31c:	00e78023          	sb	a4,0(a5)
 320:	fe744783          	lbu	a5,-25(s0)
 324:	873e                	mv	a4,a5
 326:	47a9                	li	a5,10
 328:	02f70463          	beq	a4,a5,350 <gets+0x86>
 32c:	fe744783          	lbu	a5,-25(s0)
 330:	873e                	mv	a4,a5
 332:	47b5                	li	a5,13
 334:	00f70e63          	beq	a4,a5,350 <gets+0x86>
 338:	fec42783          	lw	a5,-20(s0)
 33c:	2785                	addiw	a5,a5,1
 33e:	0007871b          	sext.w	a4,a5
 342:	fd442783          	lw	a5,-44(s0)
 346:	2781                	sext.w	a5,a5
 348:	f8f74de3          	blt	a4,a5,2e2 <gets+0x18>
 34c:	a011                	j	350 <gets+0x86>
 34e:	0001                	nop
 350:	fec42783          	lw	a5,-20(s0)
 354:	fd843703          	ld	a4,-40(s0)
 358:	97ba                	add	a5,a5,a4
 35a:	00078023          	sb	zero,0(a5)
 35e:	fd843783          	ld	a5,-40(s0)
 362:	853e                	mv	a0,a5
 364:	70a2                	ld	ra,40(sp)
 366:	7402                	ld	s0,32(sp)
 368:	6145                	addi	sp,sp,48
 36a:	8082                	ret

000000000000036c <stat>:
 36c:	7179                	addi	sp,sp,-48
 36e:	f406                	sd	ra,40(sp)
 370:	f022                	sd	s0,32(sp)
 372:	1800                	addi	s0,sp,48
 374:	fca43c23          	sd	a0,-40(s0)
 378:	fcb43823          	sd	a1,-48(s0)
 37c:	4581                	li	a1,0
 37e:	fd843503          	ld	a0,-40(s0)
 382:	00000097          	auipc	ra,0x0
 386:	28a080e7          	jalr	650(ra) # 60c <open>
 38a:	87aa                	mv	a5,a0
 38c:	fef42623          	sw	a5,-20(s0)
 390:	fec42783          	lw	a5,-20(s0)
 394:	2781                	sext.w	a5,a5
 396:	0007d463          	bgez	a5,39e <stat+0x32>
 39a:	57fd                	li	a5,-1
 39c:	a035                	j	3c8 <stat+0x5c>
 39e:	fec42783          	lw	a5,-20(s0)
 3a2:	fd043583          	ld	a1,-48(s0)
 3a6:	853e                	mv	a0,a5
 3a8:	00000097          	auipc	ra,0x0
 3ac:	27c080e7          	jalr	636(ra) # 624 <fstat>
 3b0:	87aa                	mv	a5,a0
 3b2:	fef42423          	sw	a5,-24(s0)
 3b6:	fec42783          	lw	a5,-20(s0)
 3ba:	853e                	mv	a0,a5
 3bc:	00000097          	auipc	ra,0x0
 3c0:	238080e7          	jalr	568(ra) # 5f4 <close>
 3c4:	fe842783          	lw	a5,-24(s0)
 3c8:	853e                	mv	a0,a5
 3ca:	70a2                	ld	ra,40(sp)
 3cc:	7402                	ld	s0,32(sp)
 3ce:	6145                	addi	sp,sp,48
 3d0:	8082                	ret

00000000000003d2 <atoi>:
 3d2:	7179                	addi	sp,sp,-48
 3d4:	f422                	sd	s0,40(sp)
 3d6:	1800                	addi	s0,sp,48
 3d8:	fca43c23          	sd	a0,-40(s0)
 3dc:	fe042623          	sw	zero,-20(s0)
 3e0:	a81d                	j	416 <atoi+0x44>
 3e2:	fec42783          	lw	a5,-20(s0)
 3e6:	873e                	mv	a4,a5
 3e8:	87ba                	mv	a5,a4
 3ea:	0027979b          	slliw	a5,a5,0x2
 3ee:	9fb9                	addw	a5,a5,a4
 3f0:	0017979b          	slliw	a5,a5,0x1
 3f4:	0007871b          	sext.w	a4,a5
 3f8:	fd843783          	ld	a5,-40(s0)
 3fc:	00178693          	addi	a3,a5,1
 400:	fcd43c23          	sd	a3,-40(s0)
 404:	0007c783          	lbu	a5,0(a5)
 408:	2781                	sext.w	a5,a5
 40a:	9fb9                	addw	a5,a5,a4
 40c:	2781                	sext.w	a5,a5
 40e:	fd07879b          	addiw	a5,a5,-48
 412:	fef42623          	sw	a5,-20(s0)
 416:	fd843783          	ld	a5,-40(s0)
 41a:	0007c783          	lbu	a5,0(a5)
 41e:	873e                	mv	a4,a5
 420:	02f00793          	li	a5,47
 424:	00e7fb63          	bgeu	a5,a4,43a <atoi+0x68>
 428:	fd843783          	ld	a5,-40(s0)
 42c:	0007c783          	lbu	a5,0(a5)
 430:	873e                	mv	a4,a5
 432:	03900793          	li	a5,57
 436:	fae7f6e3          	bgeu	a5,a4,3e2 <atoi+0x10>
 43a:	fec42783          	lw	a5,-20(s0)
 43e:	853e                	mv	a0,a5
 440:	7422                	ld	s0,40(sp)
 442:	6145                	addi	sp,sp,48
 444:	8082                	ret

0000000000000446 <memmove>:
 446:	7139                	addi	sp,sp,-64
 448:	fc22                	sd	s0,56(sp)
 44a:	0080                	addi	s0,sp,64
 44c:	fca43c23          	sd	a0,-40(s0)
 450:	fcb43823          	sd	a1,-48(s0)
 454:	87b2                	mv	a5,a2
 456:	fcf42623          	sw	a5,-52(s0)
 45a:	fd843783          	ld	a5,-40(s0)
 45e:	fef43423          	sd	a5,-24(s0)
 462:	fd043783          	ld	a5,-48(s0)
 466:	fef43023          	sd	a5,-32(s0)
 46a:	fe043703          	ld	a4,-32(s0)
 46e:	fe843783          	ld	a5,-24(s0)
 472:	02e7fc63          	bgeu	a5,a4,4aa <memmove+0x64>
 476:	a00d                	j	498 <memmove+0x52>
 478:	fe043703          	ld	a4,-32(s0)
 47c:	00170793          	addi	a5,a4,1
 480:	fef43023          	sd	a5,-32(s0)
 484:	fe843783          	ld	a5,-24(s0)
 488:	00178693          	addi	a3,a5,1
 48c:	fed43423          	sd	a3,-24(s0)
 490:	00074703          	lbu	a4,0(a4)
 494:	00e78023          	sb	a4,0(a5)
 498:	fcc42783          	lw	a5,-52(s0)
 49c:	fff7871b          	addiw	a4,a5,-1
 4a0:	fce42623          	sw	a4,-52(s0)
 4a4:	fcf04ae3          	bgtz	a5,478 <memmove+0x32>
 4a8:	a891                	j	4fc <memmove+0xb6>
 4aa:	fcc42783          	lw	a5,-52(s0)
 4ae:	fe843703          	ld	a4,-24(s0)
 4b2:	97ba                	add	a5,a5,a4
 4b4:	fef43423          	sd	a5,-24(s0)
 4b8:	fcc42783          	lw	a5,-52(s0)
 4bc:	fe043703          	ld	a4,-32(s0)
 4c0:	97ba                	add	a5,a5,a4
 4c2:	fef43023          	sd	a5,-32(s0)
 4c6:	a01d                	j	4ec <memmove+0xa6>
 4c8:	fe043783          	ld	a5,-32(s0)
 4cc:	17fd                	addi	a5,a5,-1
 4ce:	fef43023          	sd	a5,-32(s0)
 4d2:	fe843783          	ld	a5,-24(s0)
 4d6:	17fd                	addi	a5,a5,-1
 4d8:	fef43423          	sd	a5,-24(s0)
 4dc:	fe043783          	ld	a5,-32(s0)
 4e0:	0007c703          	lbu	a4,0(a5)
 4e4:	fe843783          	ld	a5,-24(s0)
 4e8:	00e78023          	sb	a4,0(a5)
 4ec:	fcc42783          	lw	a5,-52(s0)
 4f0:	fff7871b          	addiw	a4,a5,-1
 4f4:	fce42623          	sw	a4,-52(s0)
 4f8:	fcf048e3          	bgtz	a5,4c8 <memmove+0x82>
 4fc:	fd843783          	ld	a5,-40(s0)
 500:	853e                	mv	a0,a5
 502:	7462                	ld	s0,56(sp)
 504:	6121                	addi	sp,sp,64
 506:	8082                	ret

0000000000000508 <memcmp>:
 508:	7139                	addi	sp,sp,-64
 50a:	fc22                	sd	s0,56(sp)
 50c:	0080                	addi	s0,sp,64
 50e:	fca43c23          	sd	a0,-40(s0)
 512:	fcb43823          	sd	a1,-48(s0)
 516:	87b2                	mv	a5,a2
 518:	fcf42623          	sw	a5,-52(s0)
 51c:	fd843783          	ld	a5,-40(s0)
 520:	fef43423          	sd	a5,-24(s0)
 524:	fd043783          	ld	a5,-48(s0)
 528:	fef43023          	sd	a5,-32(s0)
 52c:	a0a1                	j	574 <memcmp+0x6c>
 52e:	fe843783          	ld	a5,-24(s0)
 532:	0007c703          	lbu	a4,0(a5)
 536:	fe043783          	ld	a5,-32(s0)
 53a:	0007c783          	lbu	a5,0(a5)
 53e:	02f70163          	beq	a4,a5,560 <memcmp+0x58>
 542:	fe843783          	ld	a5,-24(s0)
 546:	0007c783          	lbu	a5,0(a5)
 54a:	0007871b          	sext.w	a4,a5
 54e:	fe043783          	ld	a5,-32(s0)
 552:	0007c783          	lbu	a5,0(a5)
 556:	2781                	sext.w	a5,a5
 558:	40f707bb          	subw	a5,a4,a5
 55c:	2781                	sext.w	a5,a5
 55e:	a01d                	j	584 <memcmp+0x7c>
 560:	fe843783          	ld	a5,-24(s0)
 564:	0785                	addi	a5,a5,1
 566:	fef43423          	sd	a5,-24(s0)
 56a:	fe043783          	ld	a5,-32(s0)
 56e:	0785                	addi	a5,a5,1
 570:	fef43023          	sd	a5,-32(s0)
 574:	fcc42783          	lw	a5,-52(s0)
 578:	fff7871b          	addiw	a4,a5,-1
 57c:	fce42623          	sw	a4,-52(s0)
 580:	f7dd                	bnez	a5,52e <memcmp+0x26>
 582:	4781                	li	a5,0
 584:	853e                	mv	a0,a5
 586:	7462                	ld	s0,56(sp)
 588:	6121                	addi	sp,sp,64
 58a:	8082                	ret

000000000000058c <memcpy>:
 58c:	7179                	addi	sp,sp,-48
 58e:	f406                	sd	ra,40(sp)
 590:	f022                	sd	s0,32(sp)
 592:	1800                	addi	s0,sp,48
 594:	fea43423          	sd	a0,-24(s0)
 598:	feb43023          	sd	a1,-32(s0)
 59c:	87b2                	mv	a5,a2
 59e:	fcf42e23          	sw	a5,-36(s0)
 5a2:	fdc42783          	lw	a5,-36(s0)
 5a6:	863e                	mv	a2,a5
 5a8:	fe043583          	ld	a1,-32(s0)
 5ac:	fe843503          	ld	a0,-24(s0)
 5b0:	00000097          	auipc	ra,0x0
 5b4:	e96080e7          	jalr	-362(ra) # 446 <memmove>
 5b8:	87aa                	mv	a5,a0
 5ba:	853e                	mv	a0,a5
 5bc:	70a2                	ld	ra,40(sp)
 5be:	7402                	ld	s0,32(sp)
 5c0:	6145                	addi	sp,sp,48
 5c2:	8082                	ret

00000000000005c4 <fork>:
 5c4:	4885                	li	a7,1
 5c6:	00000073          	ecall
 5ca:	8082                	ret

00000000000005cc <exit>:
 5cc:	4889                	li	a7,2
 5ce:	00000073          	ecall
 5d2:	8082                	ret

00000000000005d4 <wait>:
 5d4:	488d                	li	a7,3
 5d6:	00000073          	ecall
 5da:	8082                	ret

00000000000005dc <pipe>:
 5dc:	4891                	li	a7,4
 5de:	00000073          	ecall
 5e2:	8082                	ret

00000000000005e4 <read>:
 5e4:	4895                	li	a7,5
 5e6:	00000073          	ecall
 5ea:	8082                	ret

00000000000005ec <write>:
 5ec:	48c1                	li	a7,16
 5ee:	00000073          	ecall
 5f2:	8082                	ret

00000000000005f4 <close>:
 5f4:	48d5                	li	a7,21
 5f6:	00000073          	ecall
 5fa:	8082                	ret

00000000000005fc <kill>:
 5fc:	4899                	li	a7,6
 5fe:	00000073          	ecall
 602:	8082                	ret

0000000000000604 <exec>:
 604:	489d                	li	a7,7
 606:	00000073          	ecall
 60a:	8082                	ret

000000000000060c <open>:
 60c:	48bd                	li	a7,15
 60e:	00000073          	ecall
 612:	8082                	ret

0000000000000614 <mknod>:
 614:	48c5                	li	a7,17
 616:	00000073          	ecall
 61a:	8082                	ret

000000000000061c <unlink>:
 61c:	48c9                	li	a7,18
 61e:	00000073          	ecall
 622:	8082                	ret

0000000000000624 <fstat>:
 624:	48a1                	li	a7,8
 626:	00000073          	ecall
 62a:	8082                	ret

000000000000062c <link>:
 62c:	48cd                	li	a7,19
 62e:	00000073          	ecall
 632:	8082                	ret

0000000000000634 <mkdir>:
 634:	48d1                	li	a7,20
 636:	00000073          	ecall
 63a:	8082                	ret

000000000000063c <chdir>:
 63c:	48a5                	li	a7,9
 63e:	00000073          	ecall
 642:	8082                	ret

0000000000000644 <dup>:
 644:	48a9                	li	a7,10
 646:	00000073          	ecall
 64a:	8082                	ret

000000000000064c <getpid>:
 64c:	48ad                	li	a7,11
 64e:	00000073          	ecall
 652:	8082                	ret

0000000000000654 <sbrk>:
 654:	48b1                	li	a7,12
 656:	00000073          	ecall
 65a:	8082                	ret

000000000000065c <sleep>:
 65c:	48b5                	li	a7,13
 65e:	00000073          	ecall
 662:	8082                	ret

0000000000000664 <uptime>:
 664:	48b9                	li	a7,14
 666:	00000073          	ecall
 66a:	8082                	ret

000000000000066c <waitx>:
 66c:	48d9                	li	a7,22
 66e:	00000073          	ecall
 672:	8082                	ret

0000000000000674 <getsyscount>:
 674:	48dd                	li	a7,23
 676:	00000073          	ecall
 67a:	8082                	ret

000000000000067c <sigalarm>:
 67c:	48e1                	li	a7,24
 67e:	00000073          	ecall
 682:	8082                	ret

0000000000000684 <sigreturn>:
 684:	48e5                	li	a7,25
 686:	00000073          	ecall
 68a:	8082                	ret

000000000000068c <settickets>:
 68c:	48e9                	li	a7,26
 68e:	00000073          	ecall
 692:	8082                	ret

0000000000000694 <putc>:
 694:	1101                	addi	sp,sp,-32
 696:	ec06                	sd	ra,24(sp)
 698:	e822                	sd	s0,16(sp)
 69a:	1000                	addi	s0,sp,32
 69c:	87aa                	mv	a5,a0
 69e:	872e                	mv	a4,a1
 6a0:	fef42623          	sw	a5,-20(s0)
 6a4:	87ba                	mv	a5,a4
 6a6:	fef405a3          	sb	a5,-21(s0)
 6aa:	feb40713          	addi	a4,s0,-21
 6ae:	fec42783          	lw	a5,-20(s0)
 6b2:	4605                	li	a2,1
 6b4:	85ba                	mv	a1,a4
 6b6:	853e                	mv	a0,a5
 6b8:	00000097          	auipc	ra,0x0
 6bc:	f34080e7          	jalr	-204(ra) # 5ec <write>
 6c0:	0001                	nop
 6c2:	60e2                	ld	ra,24(sp)
 6c4:	6442                	ld	s0,16(sp)
 6c6:	6105                	addi	sp,sp,32
 6c8:	8082                	ret

00000000000006ca <printint>:
 6ca:	7139                	addi	sp,sp,-64
 6cc:	fc06                	sd	ra,56(sp)
 6ce:	f822                	sd	s0,48(sp)
 6d0:	0080                	addi	s0,sp,64
 6d2:	87aa                	mv	a5,a0
 6d4:	8736                	mv	a4,a3
 6d6:	fcf42623          	sw	a5,-52(s0)
 6da:	87ae                	mv	a5,a1
 6dc:	fcf42423          	sw	a5,-56(s0)
 6e0:	87b2                	mv	a5,a2
 6e2:	fcf42223          	sw	a5,-60(s0)
 6e6:	87ba                	mv	a5,a4
 6e8:	fcf42023          	sw	a5,-64(s0)
 6ec:	fe042423          	sw	zero,-24(s0)
 6f0:	fc042783          	lw	a5,-64(s0)
 6f4:	2781                	sext.w	a5,a5
 6f6:	c38d                	beqz	a5,718 <printint+0x4e>
 6f8:	fc842783          	lw	a5,-56(s0)
 6fc:	2781                	sext.w	a5,a5
 6fe:	0007dd63          	bgez	a5,718 <printint+0x4e>
 702:	4785                	li	a5,1
 704:	fef42423          	sw	a5,-24(s0)
 708:	fc842783          	lw	a5,-56(s0)
 70c:	40f007bb          	negw	a5,a5
 710:	2781                	sext.w	a5,a5
 712:	fef42223          	sw	a5,-28(s0)
 716:	a029                	j	720 <printint+0x56>
 718:	fc842783          	lw	a5,-56(s0)
 71c:	fef42223          	sw	a5,-28(s0)
 720:	fe042623          	sw	zero,-20(s0)
 724:	fc442783          	lw	a5,-60(s0)
 728:	fe442703          	lw	a4,-28(s0)
 72c:	02f777bb          	remuw	a5,a4,a5
 730:	0007861b          	sext.w	a2,a5
 734:	fec42783          	lw	a5,-20(s0)
 738:	0017871b          	addiw	a4,a5,1
 73c:	fee42623          	sw	a4,-20(s0)
 740:	00001697          	auipc	a3,0x1
 744:	8d068693          	addi	a3,a3,-1840 # 1010 <digits>
 748:	02061713          	slli	a4,a2,0x20
 74c:	9301                	srli	a4,a4,0x20
 74e:	9736                	add	a4,a4,a3
 750:	00074703          	lbu	a4,0(a4)
 754:	17c1                	addi	a5,a5,-16
 756:	97a2                	add	a5,a5,s0
 758:	fee78023          	sb	a4,-32(a5)
 75c:	fc442783          	lw	a5,-60(s0)
 760:	fe442703          	lw	a4,-28(s0)
 764:	02f757bb          	divuw	a5,a4,a5
 768:	fef42223          	sw	a5,-28(s0)
 76c:	fe442783          	lw	a5,-28(s0)
 770:	2781                	sext.w	a5,a5
 772:	fbcd                	bnez	a5,724 <printint+0x5a>
 774:	fe842783          	lw	a5,-24(s0)
 778:	2781                	sext.w	a5,a5
 77a:	cf85                	beqz	a5,7b2 <printint+0xe8>
 77c:	fec42783          	lw	a5,-20(s0)
 780:	0017871b          	addiw	a4,a5,1
 784:	fee42623          	sw	a4,-20(s0)
 788:	17c1                	addi	a5,a5,-16
 78a:	97a2                	add	a5,a5,s0
 78c:	02d00713          	li	a4,45
 790:	fee78023          	sb	a4,-32(a5)
 794:	a839                	j	7b2 <printint+0xe8>
 796:	fec42783          	lw	a5,-20(s0)
 79a:	17c1                	addi	a5,a5,-16
 79c:	97a2                	add	a5,a5,s0
 79e:	fe07c703          	lbu	a4,-32(a5)
 7a2:	fcc42783          	lw	a5,-52(s0)
 7a6:	85ba                	mv	a1,a4
 7a8:	853e                	mv	a0,a5
 7aa:	00000097          	auipc	ra,0x0
 7ae:	eea080e7          	jalr	-278(ra) # 694 <putc>
 7b2:	fec42783          	lw	a5,-20(s0)
 7b6:	37fd                	addiw	a5,a5,-1
 7b8:	fef42623          	sw	a5,-20(s0)
 7bc:	fec42783          	lw	a5,-20(s0)
 7c0:	2781                	sext.w	a5,a5
 7c2:	fc07dae3          	bgez	a5,796 <printint+0xcc>
 7c6:	0001                	nop
 7c8:	0001                	nop
 7ca:	70e2                	ld	ra,56(sp)
 7cc:	7442                	ld	s0,48(sp)
 7ce:	6121                	addi	sp,sp,64
 7d0:	8082                	ret

00000000000007d2 <printptr>:
 7d2:	7179                	addi	sp,sp,-48
 7d4:	f406                	sd	ra,40(sp)
 7d6:	f022                	sd	s0,32(sp)
 7d8:	1800                	addi	s0,sp,48
 7da:	87aa                	mv	a5,a0
 7dc:	fcb43823          	sd	a1,-48(s0)
 7e0:	fcf42e23          	sw	a5,-36(s0)
 7e4:	fdc42783          	lw	a5,-36(s0)
 7e8:	03000593          	li	a1,48
 7ec:	853e                	mv	a0,a5
 7ee:	00000097          	auipc	ra,0x0
 7f2:	ea6080e7          	jalr	-346(ra) # 694 <putc>
 7f6:	fdc42783          	lw	a5,-36(s0)
 7fa:	07800593          	li	a1,120
 7fe:	853e                	mv	a0,a5
 800:	00000097          	auipc	ra,0x0
 804:	e94080e7          	jalr	-364(ra) # 694 <putc>
 808:	fe042623          	sw	zero,-20(s0)
 80c:	a82d                	j	846 <printptr+0x74>
 80e:	fd043783          	ld	a5,-48(s0)
 812:	93f1                	srli	a5,a5,0x3c
 814:	00000717          	auipc	a4,0x0
 818:	7fc70713          	addi	a4,a4,2044 # 1010 <digits>
 81c:	97ba                	add	a5,a5,a4
 81e:	0007c703          	lbu	a4,0(a5)
 822:	fdc42783          	lw	a5,-36(s0)
 826:	85ba                	mv	a1,a4
 828:	853e                	mv	a0,a5
 82a:	00000097          	auipc	ra,0x0
 82e:	e6a080e7          	jalr	-406(ra) # 694 <putc>
 832:	fec42783          	lw	a5,-20(s0)
 836:	2785                	addiw	a5,a5,1
 838:	fef42623          	sw	a5,-20(s0)
 83c:	fd043783          	ld	a5,-48(s0)
 840:	0792                	slli	a5,a5,0x4
 842:	fcf43823          	sd	a5,-48(s0)
 846:	fec42783          	lw	a5,-20(s0)
 84a:	873e                	mv	a4,a5
 84c:	47bd                	li	a5,15
 84e:	fce7f0e3          	bgeu	a5,a4,80e <printptr+0x3c>
 852:	0001                	nop
 854:	0001                	nop
 856:	70a2                	ld	ra,40(sp)
 858:	7402                	ld	s0,32(sp)
 85a:	6145                	addi	sp,sp,48
 85c:	8082                	ret

000000000000085e <vprintf>:
 85e:	715d                	addi	sp,sp,-80
 860:	e486                	sd	ra,72(sp)
 862:	e0a2                	sd	s0,64(sp)
 864:	0880                	addi	s0,sp,80
 866:	87aa                	mv	a5,a0
 868:	fcb43023          	sd	a1,-64(s0)
 86c:	fac43c23          	sd	a2,-72(s0)
 870:	fcf42623          	sw	a5,-52(s0)
 874:	fe042023          	sw	zero,-32(s0)
 878:	fe042223          	sw	zero,-28(s0)
 87c:	a42d                	j	aa6 <vprintf+0x248>
 87e:	fe442783          	lw	a5,-28(s0)
 882:	fc043703          	ld	a4,-64(s0)
 886:	97ba                	add	a5,a5,a4
 888:	0007c783          	lbu	a5,0(a5)
 88c:	fcf42e23          	sw	a5,-36(s0)
 890:	fe042783          	lw	a5,-32(s0)
 894:	2781                	sext.w	a5,a5
 896:	eb9d                	bnez	a5,8cc <vprintf+0x6e>
 898:	fdc42783          	lw	a5,-36(s0)
 89c:	0007871b          	sext.w	a4,a5
 8a0:	02500793          	li	a5,37
 8a4:	00f71763          	bne	a4,a5,8b2 <vprintf+0x54>
 8a8:	02500793          	li	a5,37
 8ac:	fef42023          	sw	a5,-32(s0)
 8b0:	a2f5                	j	a9c <vprintf+0x23e>
 8b2:	fdc42783          	lw	a5,-36(s0)
 8b6:	0ff7f713          	zext.b	a4,a5
 8ba:	fcc42783          	lw	a5,-52(s0)
 8be:	85ba                	mv	a1,a4
 8c0:	853e                	mv	a0,a5
 8c2:	00000097          	auipc	ra,0x0
 8c6:	dd2080e7          	jalr	-558(ra) # 694 <putc>
 8ca:	aac9                	j	a9c <vprintf+0x23e>
 8cc:	fe042783          	lw	a5,-32(s0)
 8d0:	0007871b          	sext.w	a4,a5
 8d4:	02500793          	li	a5,37
 8d8:	1cf71263          	bne	a4,a5,a9c <vprintf+0x23e>
 8dc:	fdc42783          	lw	a5,-36(s0)
 8e0:	0007871b          	sext.w	a4,a5
 8e4:	06400793          	li	a5,100
 8e8:	02f71463          	bne	a4,a5,910 <vprintf+0xb2>
 8ec:	fb843783          	ld	a5,-72(s0)
 8f0:	00878713          	addi	a4,a5,8
 8f4:	fae43c23          	sd	a4,-72(s0)
 8f8:	4398                	lw	a4,0(a5)
 8fa:	fcc42783          	lw	a5,-52(s0)
 8fe:	4685                	li	a3,1
 900:	4629                	li	a2,10
 902:	85ba                	mv	a1,a4
 904:	853e                	mv	a0,a5
 906:	00000097          	auipc	ra,0x0
 90a:	dc4080e7          	jalr	-572(ra) # 6ca <printint>
 90e:	a269                	j	a98 <vprintf+0x23a>
 910:	fdc42783          	lw	a5,-36(s0)
 914:	0007871b          	sext.w	a4,a5
 918:	06c00793          	li	a5,108
 91c:	02f71663          	bne	a4,a5,948 <vprintf+0xea>
 920:	fb843783          	ld	a5,-72(s0)
 924:	00878713          	addi	a4,a5,8
 928:	fae43c23          	sd	a4,-72(s0)
 92c:	639c                	ld	a5,0(a5)
 92e:	0007871b          	sext.w	a4,a5
 932:	fcc42783          	lw	a5,-52(s0)
 936:	4681                	li	a3,0
 938:	4629                	li	a2,10
 93a:	85ba                	mv	a1,a4
 93c:	853e                	mv	a0,a5
 93e:	00000097          	auipc	ra,0x0
 942:	d8c080e7          	jalr	-628(ra) # 6ca <printint>
 946:	aa89                	j	a98 <vprintf+0x23a>
 948:	fdc42783          	lw	a5,-36(s0)
 94c:	0007871b          	sext.w	a4,a5
 950:	07800793          	li	a5,120
 954:	02f71463          	bne	a4,a5,97c <vprintf+0x11e>
 958:	fb843783          	ld	a5,-72(s0)
 95c:	00878713          	addi	a4,a5,8
 960:	fae43c23          	sd	a4,-72(s0)
 964:	4398                	lw	a4,0(a5)
 966:	fcc42783          	lw	a5,-52(s0)
 96a:	4681                	li	a3,0
 96c:	4641                	li	a2,16
 96e:	85ba                	mv	a1,a4
 970:	853e                	mv	a0,a5
 972:	00000097          	auipc	ra,0x0
 976:	d58080e7          	jalr	-680(ra) # 6ca <printint>
 97a:	aa39                	j	a98 <vprintf+0x23a>
 97c:	fdc42783          	lw	a5,-36(s0)
 980:	0007871b          	sext.w	a4,a5
 984:	07000793          	li	a5,112
 988:	02f71263          	bne	a4,a5,9ac <vprintf+0x14e>
 98c:	fb843783          	ld	a5,-72(s0)
 990:	00878713          	addi	a4,a5,8
 994:	fae43c23          	sd	a4,-72(s0)
 998:	6398                	ld	a4,0(a5)
 99a:	fcc42783          	lw	a5,-52(s0)
 99e:	85ba                	mv	a1,a4
 9a0:	853e                	mv	a0,a5
 9a2:	00000097          	auipc	ra,0x0
 9a6:	e30080e7          	jalr	-464(ra) # 7d2 <printptr>
 9aa:	a0fd                	j	a98 <vprintf+0x23a>
 9ac:	fdc42783          	lw	a5,-36(s0)
 9b0:	0007871b          	sext.w	a4,a5
 9b4:	07300793          	li	a5,115
 9b8:	04f71c63          	bne	a4,a5,a10 <vprintf+0x1b2>
 9bc:	fb843783          	ld	a5,-72(s0)
 9c0:	00878713          	addi	a4,a5,8
 9c4:	fae43c23          	sd	a4,-72(s0)
 9c8:	639c                	ld	a5,0(a5)
 9ca:	fef43423          	sd	a5,-24(s0)
 9ce:	fe843783          	ld	a5,-24(s0)
 9d2:	eb8d                	bnez	a5,a04 <vprintf+0x1a6>
 9d4:	00000797          	auipc	a5,0x0
 9d8:	4f478793          	addi	a5,a5,1268 # ec8 <malloc+0x1ba>
 9dc:	fef43423          	sd	a5,-24(s0)
 9e0:	a015                	j	a04 <vprintf+0x1a6>
 9e2:	fe843783          	ld	a5,-24(s0)
 9e6:	0007c703          	lbu	a4,0(a5)
 9ea:	fcc42783          	lw	a5,-52(s0)
 9ee:	85ba                	mv	a1,a4
 9f0:	853e                	mv	a0,a5
 9f2:	00000097          	auipc	ra,0x0
 9f6:	ca2080e7          	jalr	-862(ra) # 694 <putc>
 9fa:	fe843783          	ld	a5,-24(s0)
 9fe:	0785                	addi	a5,a5,1
 a00:	fef43423          	sd	a5,-24(s0)
 a04:	fe843783          	ld	a5,-24(s0)
 a08:	0007c783          	lbu	a5,0(a5)
 a0c:	fbf9                	bnez	a5,9e2 <vprintf+0x184>
 a0e:	a069                	j	a98 <vprintf+0x23a>
 a10:	fdc42783          	lw	a5,-36(s0)
 a14:	0007871b          	sext.w	a4,a5
 a18:	06300793          	li	a5,99
 a1c:	02f71463          	bne	a4,a5,a44 <vprintf+0x1e6>
 a20:	fb843783          	ld	a5,-72(s0)
 a24:	00878713          	addi	a4,a5,8
 a28:	fae43c23          	sd	a4,-72(s0)
 a2c:	439c                	lw	a5,0(a5)
 a2e:	0ff7f713          	zext.b	a4,a5
 a32:	fcc42783          	lw	a5,-52(s0)
 a36:	85ba                	mv	a1,a4
 a38:	853e                	mv	a0,a5
 a3a:	00000097          	auipc	ra,0x0
 a3e:	c5a080e7          	jalr	-934(ra) # 694 <putc>
 a42:	a899                	j	a98 <vprintf+0x23a>
 a44:	fdc42783          	lw	a5,-36(s0)
 a48:	0007871b          	sext.w	a4,a5
 a4c:	02500793          	li	a5,37
 a50:	00f71f63          	bne	a4,a5,a6e <vprintf+0x210>
 a54:	fdc42783          	lw	a5,-36(s0)
 a58:	0ff7f713          	zext.b	a4,a5
 a5c:	fcc42783          	lw	a5,-52(s0)
 a60:	85ba                	mv	a1,a4
 a62:	853e                	mv	a0,a5
 a64:	00000097          	auipc	ra,0x0
 a68:	c30080e7          	jalr	-976(ra) # 694 <putc>
 a6c:	a035                	j	a98 <vprintf+0x23a>
 a6e:	fcc42783          	lw	a5,-52(s0)
 a72:	02500593          	li	a1,37
 a76:	853e                	mv	a0,a5
 a78:	00000097          	auipc	ra,0x0
 a7c:	c1c080e7          	jalr	-996(ra) # 694 <putc>
 a80:	fdc42783          	lw	a5,-36(s0)
 a84:	0ff7f713          	zext.b	a4,a5
 a88:	fcc42783          	lw	a5,-52(s0)
 a8c:	85ba                	mv	a1,a4
 a8e:	853e                	mv	a0,a5
 a90:	00000097          	auipc	ra,0x0
 a94:	c04080e7          	jalr	-1020(ra) # 694 <putc>
 a98:	fe042023          	sw	zero,-32(s0)
 a9c:	fe442783          	lw	a5,-28(s0)
 aa0:	2785                	addiw	a5,a5,1
 aa2:	fef42223          	sw	a5,-28(s0)
 aa6:	fe442783          	lw	a5,-28(s0)
 aaa:	fc043703          	ld	a4,-64(s0)
 aae:	97ba                	add	a5,a5,a4
 ab0:	0007c783          	lbu	a5,0(a5)
 ab4:	dc0795e3          	bnez	a5,87e <vprintf+0x20>
 ab8:	0001                	nop
 aba:	0001                	nop
 abc:	60a6                	ld	ra,72(sp)
 abe:	6406                	ld	s0,64(sp)
 ac0:	6161                	addi	sp,sp,80
 ac2:	8082                	ret

0000000000000ac4 <fprintf>:
 ac4:	7159                	addi	sp,sp,-112
 ac6:	fc06                	sd	ra,56(sp)
 ac8:	f822                	sd	s0,48(sp)
 aca:	0080                	addi	s0,sp,64
 acc:	fcb43823          	sd	a1,-48(s0)
 ad0:	e010                	sd	a2,0(s0)
 ad2:	e414                	sd	a3,8(s0)
 ad4:	e818                	sd	a4,16(s0)
 ad6:	ec1c                	sd	a5,24(s0)
 ad8:	03043023          	sd	a6,32(s0)
 adc:	03143423          	sd	a7,40(s0)
 ae0:	87aa                	mv	a5,a0
 ae2:	fcf42e23          	sw	a5,-36(s0)
 ae6:	03040793          	addi	a5,s0,48
 aea:	fcf43423          	sd	a5,-56(s0)
 aee:	fc843783          	ld	a5,-56(s0)
 af2:	fd078793          	addi	a5,a5,-48
 af6:	fef43423          	sd	a5,-24(s0)
 afa:	fe843703          	ld	a4,-24(s0)
 afe:	fdc42783          	lw	a5,-36(s0)
 b02:	863a                	mv	a2,a4
 b04:	fd043583          	ld	a1,-48(s0)
 b08:	853e                	mv	a0,a5
 b0a:	00000097          	auipc	ra,0x0
 b0e:	d54080e7          	jalr	-684(ra) # 85e <vprintf>
 b12:	0001                	nop
 b14:	70e2                	ld	ra,56(sp)
 b16:	7442                	ld	s0,48(sp)
 b18:	6165                	addi	sp,sp,112
 b1a:	8082                	ret

0000000000000b1c <printf>:
 b1c:	7159                	addi	sp,sp,-112
 b1e:	f406                	sd	ra,40(sp)
 b20:	f022                	sd	s0,32(sp)
 b22:	1800                	addi	s0,sp,48
 b24:	fca43c23          	sd	a0,-40(s0)
 b28:	e40c                	sd	a1,8(s0)
 b2a:	e810                	sd	a2,16(s0)
 b2c:	ec14                	sd	a3,24(s0)
 b2e:	f018                	sd	a4,32(s0)
 b30:	f41c                	sd	a5,40(s0)
 b32:	03043823          	sd	a6,48(s0)
 b36:	03143c23          	sd	a7,56(s0)
 b3a:	04040793          	addi	a5,s0,64
 b3e:	fcf43823          	sd	a5,-48(s0)
 b42:	fd043783          	ld	a5,-48(s0)
 b46:	fc878793          	addi	a5,a5,-56
 b4a:	fef43423          	sd	a5,-24(s0)
 b4e:	fe843783          	ld	a5,-24(s0)
 b52:	863e                	mv	a2,a5
 b54:	fd843583          	ld	a1,-40(s0)
 b58:	4505                	li	a0,1
 b5a:	00000097          	auipc	ra,0x0
 b5e:	d04080e7          	jalr	-764(ra) # 85e <vprintf>
 b62:	0001                	nop
 b64:	70a2                	ld	ra,40(sp)
 b66:	7402                	ld	s0,32(sp)
 b68:	6165                	addi	sp,sp,112
 b6a:	8082                	ret

0000000000000b6c <free>:
 b6c:	7179                	addi	sp,sp,-48
 b6e:	f422                	sd	s0,40(sp)
 b70:	1800                	addi	s0,sp,48
 b72:	fca43c23          	sd	a0,-40(s0)
 b76:	fd843783          	ld	a5,-40(s0)
 b7a:	17c1                	addi	a5,a5,-16
 b7c:	fef43023          	sd	a5,-32(s0)
 b80:	00000797          	auipc	a5,0x0
 b84:	4c078793          	addi	a5,a5,1216 # 1040 <freep>
 b88:	639c                	ld	a5,0(a5)
 b8a:	fef43423          	sd	a5,-24(s0)
 b8e:	a815                	j	bc2 <free+0x56>
 b90:	fe843783          	ld	a5,-24(s0)
 b94:	639c                	ld	a5,0(a5)
 b96:	fe843703          	ld	a4,-24(s0)
 b9a:	00f76f63          	bltu	a4,a5,bb8 <free+0x4c>
 b9e:	fe043703          	ld	a4,-32(s0)
 ba2:	fe843783          	ld	a5,-24(s0)
 ba6:	02e7eb63          	bltu	a5,a4,bdc <free+0x70>
 baa:	fe843783          	ld	a5,-24(s0)
 bae:	639c                	ld	a5,0(a5)
 bb0:	fe043703          	ld	a4,-32(s0)
 bb4:	02f76463          	bltu	a4,a5,bdc <free+0x70>
 bb8:	fe843783          	ld	a5,-24(s0)
 bbc:	639c                	ld	a5,0(a5)
 bbe:	fef43423          	sd	a5,-24(s0)
 bc2:	fe043703          	ld	a4,-32(s0)
 bc6:	fe843783          	ld	a5,-24(s0)
 bca:	fce7f3e3          	bgeu	a5,a4,b90 <free+0x24>
 bce:	fe843783          	ld	a5,-24(s0)
 bd2:	639c                	ld	a5,0(a5)
 bd4:	fe043703          	ld	a4,-32(s0)
 bd8:	faf77ce3          	bgeu	a4,a5,b90 <free+0x24>
 bdc:	fe043783          	ld	a5,-32(s0)
 be0:	479c                	lw	a5,8(a5)
 be2:	1782                	slli	a5,a5,0x20
 be4:	9381                	srli	a5,a5,0x20
 be6:	0792                	slli	a5,a5,0x4
 be8:	fe043703          	ld	a4,-32(s0)
 bec:	973e                	add	a4,a4,a5
 bee:	fe843783          	ld	a5,-24(s0)
 bf2:	639c                	ld	a5,0(a5)
 bf4:	02f71763          	bne	a4,a5,c22 <free+0xb6>
 bf8:	fe043783          	ld	a5,-32(s0)
 bfc:	4798                	lw	a4,8(a5)
 bfe:	fe843783          	ld	a5,-24(s0)
 c02:	639c                	ld	a5,0(a5)
 c04:	479c                	lw	a5,8(a5)
 c06:	9fb9                	addw	a5,a5,a4
 c08:	0007871b          	sext.w	a4,a5
 c0c:	fe043783          	ld	a5,-32(s0)
 c10:	c798                	sw	a4,8(a5)
 c12:	fe843783          	ld	a5,-24(s0)
 c16:	639c                	ld	a5,0(a5)
 c18:	6398                	ld	a4,0(a5)
 c1a:	fe043783          	ld	a5,-32(s0)
 c1e:	e398                	sd	a4,0(a5)
 c20:	a039                	j	c2e <free+0xc2>
 c22:	fe843783          	ld	a5,-24(s0)
 c26:	6398                	ld	a4,0(a5)
 c28:	fe043783          	ld	a5,-32(s0)
 c2c:	e398                	sd	a4,0(a5)
 c2e:	fe843783          	ld	a5,-24(s0)
 c32:	479c                	lw	a5,8(a5)
 c34:	1782                	slli	a5,a5,0x20
 c36:	9381                	srli	a5,a5,0x20
 c38:	0792                	slli	a5,a5,0x4
 c3a:	fe843703          	ld	a4,-24(s0)
 c3e:	97ba                	add	a5,a5,a4
 c40:	fe043703          	ld	a4,-32(s0)
 c44:	02f71563          	bne	a4,a5,c6e <free+0x102>
 c48:	fe843783          	ld	a5,-24(s0)
 c4c:	4798                	lw	a4,8(a5)
 c4e:	fe043783          	ld	a5,-32(s0)
 c52:	479c                	lw	a5,8(a5)
 c54:	9fb9                	addw	a5,a5,a4
 c56:	0007871b          	sext.w	a4,a5
 c5a:	fe843783          	ld	a5,-24(s0)
 c5e:	c798                	sw	a4,8(a5)
 c60:	fe043783          	ld	a5,-32(s0)
 c64:	6398                	ld	a4,0(a5)
 c66:	fe843783          	ld	a5,-24(s0)
 c6a:	e398                	sd	a4,0(a5)
 c6c:	a031                	j	c78 <free+0x10c>
 c6e:	fe843783          	ld	a5,-24(s0)
 c72:	fe043703          	ld	a4,-32(s0)
 c76:	e398                	sd	a4,0(a5)
 c78:	00000797          	auipc	a5,0x0
 c7c:	3c878793          	addi	a5,a5,968 # 1040 <freep>
 c80:	fe843703          	ld	a4,-24(s0)
 c84:	e398                	sd	a4,0(a5)
 c86:	0001                	nop
 c88:	7422                	ld	s0,40(sp)
 c8a:	6145                	addi	sp,sp,48
 c8c:	8082                	ret

0000000000000c8e <morecore>:
 c8e:	7179                	addi	sp,sp,-48
 c90:	f406                	sd	ra,40(sp)
 c92:	f022                	sd	s0,32(sp)
 c94:	1800                	addi	s0,sp,48
 c96:	87aa                	mv	a5,a0
 c98:	fcf42e23          	sw	a5,-36(s0)
 c9c:	fdc42783          	lw	a5,-36(s0)
 ca0:	0007871b          	sext.w	a4,a5
 ca4:	6785                	lui	a5,0x1
 ca6:	00f77563          	bgeu	a4,a5,cb0 <morecore+0x22>
 caa:	6785                	lui	a5,0x1
 cac:	fcf42e23          	sw	a5,-36(s0)
 cb0:	fdc42783          	lw	a5,-36(s0)
 cb4:	0047979b          	slliw	a5,a5,0x4
 cb8:	2781                	sext.w	a5,a5
 cba:	2781                	sext.w	a5,a5
 cbc:	853e                	mv	a0,a5
 cbe:	00000097          	auipc	ra,0x0
 cc2:	996080e7          	jalr	-1642(ra) # 654 <sbrk>
 cc6:	fea43423          	sd	a0,-24(s0)
 cca:	fe843703          	ld	a4,-24(s0)
 cce:	57fd                	li	a5,-1
 cd0:	00f71463          	bne	a4,a5,cd8 <morecore+0x4a>
 cd4:	4781                	li	a5,0
 cd6:	a03d                	j	d04 <morecore+0x76>
 cd8:	fe843783          	ld	a5,-24(s0)
 cdc:	fef43023          	sd	a5,-32(s0)
 ce0:	fe043783          	ld	a5,-32(s0)
 ce4:	fdc42703          	lw	a4,-36(s0)
 ce8:	c798                	sw	a4,8(a5)
 cea:	fe043783          	ld	a5,-32(s0)
 cee:	07c1                	addi	a5,a5,16 # 1010 <digits>
 cf0:	853e                	mv	a0,a5
 cf2:	00000097          	auipc	ra,0x0
 cf6:	e7a080e7          	jalr	-390(ra) # b6c <free>
 cfa:	00000797          	auipc	a5,0x0
 cfe:	34678793          	addi	a5,a5,838 # 1040 <freep>
 d02:	639c                	ld	a5,0(a5)
 d04:	853e                	mv	a0,a5
 d06:	70a2                	ld	ra,40(sp)
 d08:	7402                	ld	s0,32(sp)
 d0a:	6145                	addi	sp,sp,48
 d0c:	8082                	ret

0000000000000d0e <malloc>:
 d0e:	7139                	addi	sp,sp,-64
 d10:	fc06                	sd	ra,56(sp)
 d12:	f822                	sd	s0,48(sp)
 d14:	0080                	addi	s0,sp,64
 d16:	87aa                	mv	a5,a0
 d18:	fcf42623          	sw	a5,-52(s0)
 d1c:	fcc46783          	lwu	a5,-52(s0)
 d20:	07bd                	addi	a5,a5,15
 d22:	8391                	srli	a5,a5,0x4
 d24:	2781                	sext.w	a5,a5
 d26:	2785                	addiw	a5,a5,1
 d28:	fcf42e23          	sw	a5,-36(s0)
 d2c:	00000797          	auipc	a5,0x0
 d30:	31478793          	addi	a5,a5,788 # 1040 <freep>
 d34:	639c                	ld	a5,0(a5)
 d36:	fef43023          	sd	a5,-32(s0)
 d3a:	fe043783          	ld	a5,-32(s0)
 d3e:	ef95                	bnez	a5,d7a <malloc+0x6c>
 d40:	00000797          	auipc	a5,0x0
 d44:	2f078793          	addi	a5,a5,752 # 1030 <base>
 d48:	fef43023          	sd	a5,-32(s0)
 d4c:	00000797          	auipc	a5,0x0
 d50:	2f478793          	addi	a5,a5,756 # 1040 <freep>
 d54:	fe043703          	ld	a4,-32(s0)
 d58:	e398                	sd	a4,0(a5)
 d5a:	00000797          	auipc	a5,0x0
 d5e:	2e678793          	addi	a5,a5,742 # 1040 <freep>
 d62:	6398                	ld	a4,0(a5)
 d64:	00000797          	auipc	a5,0x0
 d68:	2cc78793          	addi	a5,a5,716 # 1030 <base>
 d6c:	e398                	sd	a4,0(a5)
 d6e:	00000797          	auipc	a5,0x0
 d72:	2c278793          	addi	a5,a5,706 # 1030 <base>
 d76:	0007a423          	sw	zero,8(a5)
 d7a:	fe043783          	ld	a5,-32(s0)
 d7e:	639c                	ld	a5,0(a5)
 d80:	fef43423          	sd	a5,-24(s0)
 d84:	fe843783          	ld	a5,-24(s0)
 d88:	4798                	lw	a4,8(a5)
 d8a:	fdc42783          	lw	a5,-36(s0)
 d8e:	2781                	sext.w	a5,a5
 d90:	06f76763          	bltu	a4,a5,dfe <malloc+0xf0>
 d94:	fe843783          	ld	a5,-24(s0)
 d98:	4798                	lw	a4,8(a5)
 d9a:	fdc42783          	lw	a5,-36(s0)
 d9e:	2781                	sext.w	a5,a5
 da0:	00e79963          	bne	a5,a4,db2 <malloc+0xa4>
 da4:	fe843783          	ld	a5,-24(s0)
 da8:	6398                	ld	a4,0(a5)
 daa:	fe043783          	ld	a5,-32(s0)
 dae:	e398                	sd	a4,0(a5)
 db0:	a825                	j	de8 <malloc+0xda>
 db2:	fe843783          	ld	a5,-24(s0)
 db6:	479c                	lw	a5,8(a5)
 db8:	fdc42703          	lw	a4,-36(s0)
 dbc:	9f99                	subw	a5,a5,a4
 dbe:	0007871b          	sext.w	a4,a5
 dc2:	fe843783          	ld	a5,-24(s0)
 dc6:	c798                	sw	a4,8(a5)
 dc8:	fe843783          	ld	a5,-24(s0)
 dcc:	479c                	lw	a5,8(a5)
 dce:	1782                	slli	a5,a5,0x20
 dd0:	9381                	srli	a5,a5,0x20
 dd2:	0792                	slli	a5,a5,0x4
 dd4:	fe843703          	ld	a4,-24(s0)
 dd8:	97ba                	add	a5,a5,a4
 dda:	fef43423          	sd	a5,-24(s0)
 dde:	fe843783          	ld	a5,-24(s0)
 de2:	fdc42703          	lw	a4,-36(s0)
 de6:	c798                	sw	a4,8(a5)
 de8:	00000797          	auipc	a5,0x0
 dec:	25878793          	addi	a5,a5,600 # 1040 <freep>
 df0:	fe043703          	ld	a4,-32(s0)
 df4:	e398                	sd	a4,0(a5)
 df6:	fe843783          	ld	a5,-24(s0)
 dfa:	07c1                	addi	a5,a5,16
 dfc:	a091                	j	e40 <malloc+0x132>
 dfe:	00000797          	auipc	a5,0x0
 e02:	24278793          	addi	a5,a5,578 # 1040 <freep>
 e06:	639c                	ld	a5,0(a5)
 e08:	fe843703          	ld	a4,-24(s0)
 e0c:	02f71063          	bne	a4,a5,e2c <malloc+0x11e>
 e10:	fdc42783          	lw	a5,-36(s0)
 e14:	853e                	mv	a0,a5
 e16:	00000097          	auipc	ra,0x0
 e1a:	e78080e7          	jalr	-392(ra) # c8e <morecore>
 e1e:	fea43423          	sd	a0,-24(s0)
 e22:	fe843783          	ld	a5,-24(s0)
 e26:	e399                	bnez	a5,e2c <malloc+0x11e>
 e28:	4781                	li	a5,0
 e2a:	a819                	j	e40 <malloc+0x132>
 e2c:	fe843783          	ld	a5,-24(s0)
 e30:	fef43023          	sd	a5,-32(s0)
 e34:	fe843783          	ld	a5,-24(s0)
 e38:	639c                	ld	a5,0(a5)
 e3a:	fef43423          	sd	a5,-24(s0)
 e3e:	b799                	j	d84 <malloc+0x76>
 e40:	853e                	mv	a0,a5
 e42:	70e2                	ld	ra,56(sp)
 e44:	7442                	ld	s0,48(sp)
 e46:	6121                	addi	sp,sp,64
 e48:	8082                	ret
