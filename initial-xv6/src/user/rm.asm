
user/_rm:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	7179                	addi	sp,sp,-48
   2:	f406                	sd	ra,40(sp)
   4:	f022                	sd	s0,32(sp)
   6:	1800                	addi	s0,sp,48
   8:	87aa                	mv	a5,a0
   a:	fcb43823          	sd	a1,-48(s0)
   e:	fcf42e23          	sw	a5,-36(s0)
  12:	fdc42783          	lw	a5,-36(s0)
  16:	0007871b          	sext.w	a4,a5
  1a:	4785                	li	a5,1
  1c:	02e7c063          	blt	a5,a4,3c <main+0x3c>
  20:	00001597          	auipc	a1,0x1
  24:	dc058593          	addi	a1,a1,-576 # de0 <malloc+0x146>
  28:	4509                	li	a0,2
  2a:	00001097          	auipc	ra,0x1
  2e:	a26080e7          	jalr	-1498(ra) # a50 <fprintf>
  32:	4505                	li	a0,1
  34:	00000097          	auipc	ra,0x0
  38:	524080e7          	jalr	1316(ra) # 558 <exit>
  3c:	4785                	li	a5,1
  3e:	fef42623          	sw	a5,-20(s0)
  42:	a0b9                	j	90 <main+0x90>
  44:	fec42783          	lw	a5,-20(s0)
  48:	078e                	slli	a5,a5,0x3
  4a:	fd043703          	ld	a4,-48(s0)
  4e:	97ba                	add	a5,a5,a4
  50:	639c                	ld	a5,0(a5)
  52:	853e                	mv	a0,a5
  54:	00000097          	auipc	ra,0x0
  58:	554080e7          	jalr	1364(ra) # 5a8 <unlink>
  5c:	87aa                	mv	a5,a0
  5e:	0207d463          	bgez	a5,86 <main+0x86>
  62:	fec42783          	lw	a5,-20(s0)
  66:	078e                	slli	a5,a5,0x3
  68:	fd043703          	ld	a4,-48(s0)
  6c:	97ba                	add	a5,a5,a4
  6e:	639c                	ld	a5,0(a5)
  70:	863e                	mv	a2,a5
  72:	00001597          	auipc	a1,0x1
  76:	d8658593          	addi	a1,a1,-634 # df8 <malloc+0x15e>
  7a:	4509                	li	a0,2
  7c:	00001097          	auipc	ra,0x1
  80:	9d4080e7          	jalr	-1580(ra) # a50 <fprintf>
  84:	a839                	j	a2 <main+0xa2>
  86:	fec42783          	lw	a5,-20(s0)
  8a:	2785                	addiw	a5,a5,1
  8c:	fef42623          	sw	a5,-20(s0)
  90:	fec42783          	lw	a5,-20(s0)
  94:	873e                	mv	a4,a5
  96:	fdc42783          	lw	a5,-36(s0)
  9a:	2701                	sext.w	a4,a4
  9c:	2781                	sext.w	a5,a5
  9e:	faf743e3          	blt	a4,a5,44 <main+0x44>
  a2:	4501                	li	a0,0
  a4:	00000097          	auipc	ra,0x0
  a8:	4b4080e7          	jalr	1204(ra) # 558 <exit>

00000000000000ac <_main>:
  ac:	1141                	addi	sp,sp,-16
  ae:	e406                	sd	ra,8(sp)
  b0:	e022                	sd	s0,0(sp)
  b2:	0800                	addi	s0,sp,16
  b4:	00000097          	auipc	ra,0x0
  b8:	f4c080e7          	jalr	-180(ra) # 0 <main>
  bc:	4501                	li	a0,0
  be:	00000097          	auipc	ra,0x0
  c2:	49a080e7          	jalr	1178(ra) # 558 <exit>

00000000000000c6 <strcpy>:
  c6:	7179                	addi	sp,sp,-48
  c8:	f422                	sd	s0,40(sp)
  ca:	1800                	addi	s0,sp,48
  cc:	fca43c23          	sd	a0,-40(s0)
  d0:	fcb43823          	sd	a1,-48(s0)
  d4:	fd843783          	ld	a5,-40(s0)
  d8:	fef43423          	sd	a5,-24(s0)
  dc:	0001                	nop
  de:	fd043703          	ld	a4,-48(s0)
  e2:	00170793          	addi	a5,a4,1
  e6:	fcf43823          	sd	a5,-48(s0)
  ea:	fd843783          	ld	a5,-40(s0)
  ee:	00178693          	addi	a3,a5,1
  f2:	fcd43c23          	sd	a3,-40(s0)
  f6:	00074703          	lbu	a4,0(a4)
  fa:	00e78023          	sb	a4,0(a5)
  fe:	0007c783          	lbu	a5,0(a5)
 102:	fff1                	bnez	a5,de <strcpy+0x18>
 104:	fe843783          	ld	a5,-24(s0)
 108:	853e                	mv	a0,a5
 10a:	7422                	ld	s0,40(sp)
 10c:	6145                	addi	sp,sp,48
 10e:	8082                	ret

0000000000000110 <strcmp>:
 110:	1101                	addi	sp,sp,-32
 112:	ec22                	sd	s0,24(sp)
 114:	1000                	addi	s0,sp,32
 116:	fea43423          	sd	a0,-24(s0)
 11a:	feb43023          	sd	a1,-32(s0)
 11e:	a819                	j	134 <strcmp+0x24>
 120:	fe843783          	ld	a5,-24(s0)
 124:	0785                	addi	a5,a5,1
 126:	fef43423          	sd	a5,-24(s0)
 12a:	fe043783          	ld	a5,-32(s0)
 12e:	0785                	addi	a5,a5,1
 130:	fef43023          	sd	a5,-32(s0)
 134:	fe843783          	ld	a5,-24(s0)
 138:	0007c783          	lbu	a5,0(a5)
 13c:	cb99                	beqz	a5,152 <strcmp+0x42>
 13e:	fe843783          	ld	a5,-24(s0)
 142:	0007c703          	lbu	a4,0(a5)
 146:	fe043783          	ld	a5,-32(s0)
 14a:	0007c783          	lbu	a5,0(a5)
 14e:	fcf709e3          	beq	a4,a5,120 <strcmp+0x10>
 152:	fe843783          	ld	a5,-24(s0)
 156:	0007c783          	lbu	a5,0(a5)
 15a:	0007871b          	sext.w	a4,a5
 15e:	fe043783          	ld	a5,-32(s0)
 162:	0007c783          	lbu	a5,0(a5)
 166:	2781                	sext.w	a5,a5
 168:	40f707bb          	subw	a5,a4,a5
 16c:	2781                	sext.w	a5,a5
 16e:	853e                	mv	a0,a5
 170:	6462                	ld	s0,24(sp)
 172:	6105                	addi	sp,sp,32
 174:	8082                	ret

0000000000000176 <strlen>:
 176:	7179                	addi	sp,sp,-48
 178:	f422                	sd	s0,40(sp)
 17a:	1800                	addi	s0,sp,48
 17c:	fca43c23          	sd	a0,-40(s0)
 180:	fe042623          	sw	zero,-20(s0)
 184:	a031                	j	190 <strlen+0x1a>
 186:	fec42783          	lw	a5,-20(s0)
 18a:	2785                	addiw	a5,a5,1
 18c:	fef42623          	sw	a5,-20(s0)
 190:	fec42783          	lw	a5,-20(s0)
 194:	fd843703          	ld	a4,-40(s0)
 198:	97ba                	add	a5,a5,a4
 19a:	0007c783          	lbu	a5,0(a5)
 19e:	f7e5                	bnez	a5,186 <strlen+0x10>
 1a0:	fec42783          	lw	a5,-20(s0)
 1a4:	853e                	mv	a0,a5
 1a6:	7422                	ld	s0,40(sp)
 1a8:	6145                	addi	sp,sp,48
 1aa:	8082                	ret

00000000000001ac <memset>:
 1ac:	7179                	addi	sp,sp,-48
 1ae:	f422                	sd	s0,40(sp)
 1b0:	1800                	addi	s0,sp,48
 1b2:	fca43c23          	sd	a0,-40(s0)
 1b6:	87ae                	mv	a5,a1
 1b8:	8732                	mv	a4,a2
 1ba:	fcf42a23          	sw	a5,-44(s0)
 1be:	87ba                	mv	a5,a4
 1c0:	fcf42823          	sw	a5,-48(s0)
 1c4:	fd843783          	ld	a5,-40(s0)
 1c8:	fef43023          	sd	a5,-32(s0)
 1cc:	fe042623          	sw	zero,-20(s0)
 1d0:	a00d                	j	1f2 <memset+0x46>
 1d2:	fec42783          	lw	a5,-20(s0)
 1d6:	fe043703          	ld	a4,-32(s0)
 1da:	97ba                	add	a5,a5,a4
 1dc:	fd442703          	lw	a4,-44(s0)
 1e0:	0ff77713          	zext.b	a4,a4
 1e4:	00e78023          	sb	a4,0(a5)
 1e8:	fec42783          	lw	a5,-20(s0)
 1ec:	2785                	addiw	a5,a5,1
 1ee:	fef42623          	sw	a5,-20(s0)
 1f2:	fec42703          	lw	a4,-20(s0)
 1f6:	fd042783          	lw	a5,-48(s0)
 1fa:	2781                	sext.w	a5,a5
 1fc:	fcf76be3          	bltu	a4,a5,1d2 <memset+0x26>
 200:	fd843783          	ld	a5,-40(s0)
 204:	853e                	mv	a0,a5
 206:	7422                	ld	s0,40(sp)
 208:	6145                	addi	sp,sp,48
 20a:	8082                	ret

000000000000020c <strchr>:
 20c:	1101                	addi	sp,sp,-32
 20e:	ec22                	sd	s0,24(sp)
 210:	1000                	addi	s0,sp,32
 212:	fea43423          	sd	a0,-24(s0)
 216:	87ae                	mv	a5,a1
 218:	fef403a3          	sb	a5,-25(s0)
 21c:	a01d                	j	242 <strchr+0x36>
 21e:	fe843783          	ld	a5,-24(s0)
 222:	0007c703          	lbu	a4,0(a5)
 226:	fe744783          	lbu	a5,-25(s0)
 22a:	0ff7f793          	zext.b	a5,a5
 22e:	00e79563          	bne	a5,a4,238 <strchr+0x2c>
 232:	fe843783          	ld	a5,-24(s0)
 236:	a821                	j	24e <strchr+0x42>
 238:	fe843783          	ld	a5,-24(s0)
 23c:	0785                	addi	a5,a5,1
 23e:	fef43423          	sd	a5,-24(s0)
 242:	fe843783          	ld	a5,-24(s0)
 246:	0007c783          	lbu	a5,0(a5)
 24a:	fbf1                	bnez	a5,21e <strchr+0x12>
 24c:	4781                	li	a5,0
 24e:	853e                	mv	a0,a5
 250:	6462                	ld	s0,24(sp)
 252:	6105                	addi	sp,sp,32
 254:	8082                	ret

0000000000000256 <gets>:
 256:	7179                	addi	sp,sp,-48
 258:	f406                	sd	ra,40(sp)
 25a:	f022                	sd	s0,32(sp)
 25c:	1800                	addi	s0,sp,48
 25e:	fca43c23          	sd	a0,-40(s0)
 262:	87ae                	mv	a5,a1
 264:	fcf42a23          	sw	a5,-44(s0)
 268:	fe042623          	sw	zero,-20(s0)
 26c:	a8a1                	j	2c4 <gets+0x6e>
 26e:	fe740793          	addi	a5,s0,-25
 272:	4605                	li	a2,1
 274:	85be                	mv	a1,a5
 276:	4501                	li	a0,0
 278:	00000097          	auipc	ra,0x0
 27c:	2f8080e7          	jalr	760(ra) # 570 <read>
 280:	87aa                	mv	a5,a0
 282:	fef42423          	sw	a5,-24(s0)
 286:	fe842783          	lw	a5,-24(s0)
 28a:	2781                	sext.w	a5,a5
 28c:	04f05763          	blez	a5,2da <gets+0x84>
 290:	fec42783          	lw	a5,-20(s0)
 294:	0017871b          	addiw	a4,a5,1
 298:	fee42623          	sw	a4,-20(s0)
 29c:	873e                	mv	a4,a5
 29e:	fd843783          	ld	a5,-40(s0)
 2a2:	97ba                	add	a5,a5,a4
 2a4:	fe744703          	lbu	a4,-25(s0)
 2a8:	00e78023          	sb	a4,0(a5)
 2ac:	fe744783          	lbu	a5,-25(s0)
 2b0:	873e                	mv	a4,a5
 2b2:	47a9                	li	a5,10
 2b4:	02f70463          	beq	a4,a5,2dc <gets+0x86>
 2b8:	fe744783          	lbu	a5,-25(s0)
 2bc:	873e                	mv	a4,a5
 2be:	47b5                	li	a5,13
 2c0:	00f70e63          	beq	a4,a5,2dc <gets+0x86>
 2c4:	fec42783          	lw	a5,-20(s0)
 2c8:	2785                	addiw	a5,a5,1
 2ca:	0007871b          	sext.w	a4,a5
 2ce:	fd442783          	lw	a5,-44(s0)
 2d2:	2781                	sext.w	a5,a5
 2d4:	f8f74de3          	blt	a4,a5,26e <gets+0x18>
 2d8:	a011                	j	2dc <gets+0x86>
 2da:	0001                	nop
 2dc:	fec42783          	lw	a5,-20(s0)
 2e0:	fd843703          	ld	a4,-40(s0)
 2e4:	97ba                	add	a5,a5,a4
 2e6:	00078023          	sb	zero,0(a5)
 2ea:	fd843783          	ld	a5,-40(s0)
 2ee:	853e                	mv	a0,a5
 2f0:	70a2                	ld	ra,40(sp)
 2f2:	7402                	ld	s0,32(sp)
 2f4:	6145                	addi	sp,sp,48
 2f6:	8082                	ret

00000000000002f8 <stat>:
 2f8:	7179                	addi	sp,sp,-48
 2fa:	f406                	sd	ra,40(sp)
 2fc:	f022                	sd	s0,32(sp)
 2fe:	1800                	addi	s0,sp,48
 300:	fca43c23          	sd	a0,-40(s0)
 304:	fcb43823          	sd	a1,-48(s0)
 308:	4581                	li	a1,0
 30a:	fd843503          	ld	a0,-40(s0)
 30e:	00000097          	auipc	ra,0x0
 312:	28a080e7          	jalr	650(ra) # 598 <open>
 316:	87aa                	mv	a5,a0
 318:	fef42623          	sw	a5,-20(s0)
 31c:	fec42783          	lw	a5,-20(s0)
 320:	2781                	sext.w	a5,a5
 322:	0007d463          	bgez	a5,32a <stat+0x32>
 326:	57fd                	li	a5,-1
 328:	a035                	j	354 <stat+0x5c>
 32a:	fec42783          	lw	a5,-20(s0)
 32e:	fd043583          	ld	a1,-48(s0)
 332:	853e                	mv	a0,a5
 334:	00000097          	auipc	ra,0x0
 338:	27c080e7          	jalr	636(ra) # 5b0 <fstat>
 33c:	87aa                	mv	a5,a0
 33e:	fef42423          	sw	a5,-24(s0)
 342:	fec42783          	lw	a5,-20(s0)
 346:	853e                	mv	a0,a5
 348:	00000097          	auipc	ra,0x0
 34c:	238080e7          	jalr	568(ra) # 580 <close>
 350:	fe842783          	lw	a5,-24(s0)
 354:	853e                	mv	a0,a5
 356:	70a2                	ld	ra,40(sp)
 358:	7402                	ld	s0,32(sp)
 35a:	6145                	addi	sp,sp,48
 35c:	8082                	ret

000000000000035e <atoi>:
 35e:	7179                	addi	sp,sp,-48
 360:	f422                	sd	s0,40(sp)
 362:	1800                	addi	s0,sp,48
 364:	fca43c23          	sd	a0,-40(s0)
 368:	fe042623          	sw	zero,-20(s0)
 36c:	a81d                	j	3a2 <atoi+0x44>
 36e:	fec42783          	lw	a5,-20(s0)
 372:	873e                	mv	a4,a5
 374:	87ba                	mv	a5,a4
 376:	0027979b          	slliw	a5,a5,0x2
 37a:	9fb9                	addw	a5,a5,a4
 37c:	0017979b          	slliw	a5,a5,0x1
 380:	0007871b          	sext.w	a4,a5
 384:	fd843783          	ld	a5,-40(s0)
 388:	00178693          	addi	a3,a5,1
 38c:	fcd43c23          	sd	a3,-40(s0)
 390:	0007c783          	lbu	a5,0(a5)
 394:	2781                	sext.w	a5,a5
 396:	9fb9                	addw	a5,a5,a4
 398:	2781                	sext.w	a5,a5
 39a:	fd07879b          	addiw	a5,a5,-48
 39e:	fef42623          	sw	a5,-20(s0)
 3a2:	fd843783          	ld	a5,-40(s0)
 3a6:	0007c783          	lbu	a5,0(a5)
 3aa:	873e                	mv	a4,a5
 3ac:	02f00793          	li	a5,47
 3b0:	00e7fb63          	bgeu	a5,a4,3c6 <atoi+0x68>
 3b4:	fd843783          	ld	a5,-40(s0)
 3b8:	0007c783          	lbu	a5,0(a5)
 3bc:	873e                	mv	a4,a5
 3be:	03900793          	li	a5,57
 3c2:	fae7f6e3          	bgeu	a5,a4,36e <atoi+0x10>
 3c6:	fec42783          	lw	a5,-20(s0)
 3ca:	853e                	mv	a0,a5
 3cc:	7422                	ld	s0,40(sp)
 3ce:	6145                	addi	sp,sp,48
 3d0:	8082                	ret

00000000000003d2 <memmove>:
 3d2:	7139                	addi	sp,sp,-64
 3d4:	fc22                	sd	s0,56(sp)
 3d6:	0080                	addi	s0,sp,64
 3d8:	fca43c23          	sd	a0,-40(s0)
 3dc:	fcb43823          	sd	a1,-48(s0)
 3e0:	87b2                	mv	a5,a2
 3e2:	fcf42623          	sw	a5,-52(s0)
 3e6:	fd843783          	ld	a5,-40(s0)
 3ea:	fef43423          	sd	a5,-24(s0)
 3ee:	fd043783          	ld	a5,-48(s0)
 3f2:	fef43023          	sd	a5,-32(s0)
 3f6:	fe043703          	ld	a4,-32(s0)
 3fa:	fe843783          	ld	a5,-24(s0)
 3fe:	02e7fc63          	bgeu	a5,a4,436 <memmove+0x64>
 402:	a00d                	j	424 <memmove+0x52>
 404:	fe043703          	ld	a4,-32(s0)
 408:	00170793          	addi	a5,a4,1
 40c:	fef43023          	sd	a5,-32(s0)
 410:	fe843783          	ld	a5,-24(s0)
 414:	00178693          	addi	a3,a5,1
 418:	fed43423          	sd	a3,-24(s0)
 41c:	00074703          	lbu	a4,0(a4)
 420:	00e78023          	sb	a4,0(a5)
 424:	fcc42783          	lw	a5,-52(s0)
 428:	fff7871b          	addiw	a4,a5,-1
 42c:	fce42623          	sw	a4,-52(s0)
 430:	fcf04ae3          	bgtz	a5,404 <memmove+0x32>
 434:	a891                	j	488 <memmove+0xb6>
 436:	fcc42783          	lw	a5,-52(s0)
 43a:	fe843703          	ld	a4,-24(s0)
 43e:	97ba                	add	a5,a5,a4
 440:	fef43423          	sd	a5,-24(s0)
 444:	fcc42783          	lw	a5,-52(s0)
 448:	fe043703          	ld	a4,-32(s0)
 44c:	97ba                	add	a5,a5,a4
 44e:	fef43023          	sd	a5,-32(s0)
 452:	a01d                	j	478 <memmove+0xa6>
 454:	fe043783          	ld	a5,-32(s0)
 458:	17fd                	addi	a5,a5,-1
 45a:	fef43023          	sd	a5,-32(s0)
 45e:	fe843783          	ld	a5,-24(s0)
 462:	17fd                	addi	a5,a5,-1
 464:	fef43423          	sd	a5,-24(s0)
 468:	fe043783          	ld	a5,-32(s0)
 46c:	0007c703          	lbu	a4,0(a5)
 470:	fe843783          	ld	a5,-24(s0)
 474:	00e78023          	sb	a4,0(a5)
 478:	fcc42783          	lw	a5,-52(s0)
 47c:	fff7871b          	addiw	a4,a5,-1
 480:	fce42623          	sw	a4,-52(s0)
 484:	fcf048e3          	bgtz	a5,454 <memmove+0x82>
 488:	fd843783          	ld	a5,-40(s0)
 48c:	853e                	mv	a0,a5
 48e:	7462                	ld	s0,56(sp)
 490:	6121                	addi	sp,sp,64
 492:	8082                	ret

0000000000000494 <memcmp>:
 494:	7139                	addi	sp,sp,-64
 496:	fc22                	sd	s0,56(sp)
 498:	0080                	addi	s0,sp,64
 49a:	fca43c23          	sd	a0,-40(s0)
 49e:	fcb43823          	sd	a1,-48(s0)
 4a2:	87b2                	mv	a5,a2
 4a4:	fcf42623          	sw	a5,-52(s0)
 4a8:	fd843783          	ld	a5,-40(s0)
 4ac:	fef43423          	sd	a5,-24(s0)
 4b0:	fd043783          	ld	a5,-48(s0)
 4b4:	fef43023          	sd	a5,-32(s0)
 4b8:	a0a1                	j	500 <memcmp+0x6c>
 4ba:	fe843783          	ld	a5,-24(s0)
 4be:	0007c703          	lbu	a4,0(a5)
 4c2:	fe043783          	ld	a5,-32(s0)
 4c6:	0007c783          	lbu	a5,0(a5)
 4ca:	02f70163          	beq	a4,a5,4ec <memcmp+0x58>
 4ce:	fe843783          	ld	a5,-24(s0)
 4d2:	0007c783          	lbu	a5,0(a5)
 4d6:	0007871b          	sext.w	a4,a5
 4da:	fe043783          	ld	a5,-32(s0)
 4de:	0007c783          	lbu	a5,0(a5)
 4e2:	2781                	sext.w	a5,a5
 4e4:	40f707bb          	subw	a5,a4,a5
 4e8:	2781                	sext.w	a5,a5
 4ea:	a01d                	j	510 <memcmp+0x7c>
 4ec:	fe843783          	ld	a5,-24(s0)
 4f0:	0785                	addi	a5,a5,1
 4f2:	fef43423          	sd	a5,-24(s0)
 4f6:	fe043783          	ld	a5,-32(s0)
 4fa:	0785                	addi	a5,a5,1
 4fc:	fef43023          	sd	a5,-32(s0)
 500:	fcc42783          	lw	a5,-52(s0)
 504:	fff7871b          	addiw	a4,a5,-1
 508:	fce42623          	sw	a4,-52(s0)
 50c:	f7dd                	bnez	a5,4ba <memcmp+0x26>
 50e:	4781                	li	a5,0
 510:	853e                	mv	a0,a5
 512:	7462                	ld	s0,56(sp)
 514:	6121                	addi	sp,sp,64
 516:	8082                	ret

0000000000000518 <memcpy>:
 518:	7179                	addi	sp,sp,-48
 51a:	f406                	sd	ra,40(sp)
 51c:	f022                	sd	s0,32(sp)
 51e:	1800                	addi	s0,sp,48
 520:	fea43423          	sd	a0,-24(s0)
 524:	feb43023          	sd	a1,-32(s0)
 528:	87b2                	mv	a5,a2
 52a:	fcf42e23          	sw	a5,-36(s0)
 52e:	fdc42783          	lw	a5,-36(s0)
 532:	863e                	mv	a2,a5
 534:	fe043583          	ld	a1,-32(s0)
 538:	fe843503          	ld	a0,-24(s0)
 53c:	00000097          	auipc	ra,0x0
 540:	e96080e7          	jalr	-362(ra) # 3d2 <memmove>
 544:	87aa                	mv	a5,a0
 546:	853e                	mv	a0,a5
 548:	70a2                	ld	ra,40(sp)
 54a:	7402                	ld	s0,32(sp)
 54c:	6145                	addi	sp,sp,48
 54e:	8082                	ret

0000000000000550 <fork>:
 550:	4885                	li	a7,1
 552:	00000073          	ecall
 556:	8082                	ret

0000000000000558 <exit>:
 558:	4889                	li	a7,2
 55a:	00000073          	ecall
 55e:	8082                	ret

0000000000000560 <wait>:
 560:	488d                	li	a7,3
 562:	00000073          	ecall
 566:	8082                	ret

0000000000000568 <pipe>:
 568:	4891                	li	a7,4
 56a:	00000073          	ecall
 56e:	8082                	ret

0000000000000570 <read>:
 570:	4895                	li	a7,5
 572:	00000073          	ecall
 576:	8082                	ret

0000000000000578 <write>:
 578:	48c1                	li	a7,16
 57a:	00000073          	ecall
 57e:	8082                	ret

0000000000000580 <close>:
 580:	48d5                	li	a7,21
 582:	00000073          	ecall
 586:	8082                	ret

0000000000000588 <kill>:
 588:	4899                	li	a7,6
 58a:	00000073          	ecall
 58e:	8082                	ret

0000000000000590 <exec>:
 590:	489d                	li	a7,7
 592:	00000073          	ecall
 596:	8082                	ret

0000000000000598 <open>:
 598:	48bd                	li	a7,15
 59a:	00000073          	ecall
 59e:	8082                	ret

00000000000005a0 <mknod>:
 5a0:	48c5                	li	a7,17
 5a2:	00000073          	ecall
 5a6:	8082                	ret

00000000000005a8 <unlink>:
 5a8:	48c9                	li	a7,18
 5aa:	00000073          	ecall
 5ae:	8082                	ret

00000000000005b0 <fstat>:
 5b0:	48a1                	li	a7,8
 5b2:	00000073          	ecall
 5b6:	8082                	ret

00000000000005b8 <link>:
 5b8:	48cd                	li	a7,19
 5ba:	00000073          	ecall
 5be:	8082                	ret

00000000000005c0 <mkdir>:
 5c0:	48d1                	li	a7,20
 5c2:	00000073          	ecall
 5c6:	8082                	ret

00000000000005c8 <chdir>:
 5c8:	48a5                	li	a7,9
 5ca:	00000073          	ecall
 5ce:	8082                	ret

00000000000005d0 <dup>:
 5d0:	48a9                	li	a7,10
 5d2:	00000073          	ecall
 5d6:	8082                	ret

00000000000005d8 <getpid>:
 5d8:	48ad                	li	a7,11
 5da:	00000073          	ecall
 5de:	8082                	ret

00000000000005e0 <sbrk>:
 5e0:	48b1                	li	a7,12
 5e2:	00000073          	ecall
 5e6:	8082                	ret

00000000000005e8 <sleep>:
 5e8:	48b5                	li	a7,13
 5ea:	00000073          	ecall
 5ee:	8082                	ret

00000000000005f0 <uptime>:
 5f0:	48b9                	li	a7,14
 5f2:	00000073          	ecall
 5f6:	8082                	ret

00000000000005f8 <waitx>:
 5f8:	48d9                	li	a7,22
 5fa:	00000073          	ecall
 5fe:	8082                	ret

0000000000000600 <getsyscount>:
 600:	48dd                	li	a7,23
 602:	00000073          	ecall
 606:	8082                	ret

0000000000000608 <sigalarm>:
 608:	48e1                	li	a7,24
 60a:	00000073          	ecall
 60e:	8082                	ret

0000000000000610 <sigreturn>:
 610:	48e5                	li	a7,25
 612:	00000073          	ecall
 616:	8082                	ret

0000000000000618 <settickets>:
 618:	48e9                	li	a7,26
 61a:	00000073          	ecall
 61e:	8082                	ret

0000000000000620 <putc>:
 620:	1101                	addi	sp,sp,-32
 622:	ec06                	sd	ra,24(sp)
 624:	e822                	sd	s0,16(sp)
 626:	1000                	addi	s0,sp,32
 628:	87aa                	mv	a5,a0
 62a:	872e                	mv	a4,a1
 62c:	fef42623          	sw	a5,-20(s0)
 630:	87ba                	mv	a5,a4
 632:	fef405a3          	sb	a5,-21(s0)
 636:	feb40713          	addi	a4,s0,-21
 63a:	fec42783          	lw	a5,-20(s0)
 63e:	4605                	li	a2,1
 640:	85ba                	mv	a1,a4
 642:	853e                	mv	a0,a5
 644:	00000097          	auipc	ra,0x0
 648:	f34080e7          	jalr	-204(ra) # 578 <write>
 64c:	0001                	nop
 64e:	60e2                	ld	ra,24(sp)
 650:	6442                	ld	s0,16(sp)
 652:	6105                	addi	sp,sp,32
 654:	8082                	ret

0000000000000656 <printint>:
 656:	7139                	addi	sp,sp,-64
 658:	fc06                	sd	ra,56(sp)
 65a:	f822                	sd	s0,48(sp)
 65c:	0080                	addi	s0,sp,64
 65e:	87aa                	mv	a5,a0
 660:	8736                	mv	a4,a3
 662:	fcf42623          	sw	a5,-52(s0)
 666:	87ae                	mv	a5,a1
 668:	fcf42423          	sw	a5,-56(s0)
 66c:	87b2                	mv	a5,a2
 66e:	fcf42223          	sw	a5,-60(s0)
 672:	87ba                	mv	a5,a4
 674:	fcf42023          	sw	a5,-64(s0)
 678:	fe042423          	sw	zero,-24(s0)
 67c:	fc042783          	lw	a5,-64(s0)
 680:	2781                	sext.w	a5,a5
 682:	c38d                	beqz	a5,6a4 <printint+0x4e>
 684:	fc842783          	lw	a5,-56(s0)
 688:	2781                	sext.w	a5,a5
 68a:	0007dd63          	bgez	a5,6a4 <printint+0x4e>
 68e:	4785                	li	a5,1
 690:	fef42423          	sw	a5,-24(s0)
 694:	fc842783          	lw	a5,-56(s0)
 698:	40f007bb          	negw	a5,a5
 69c:	2781                	sext.w	a5,a5
 69e:	fef42223          	sw	a5,-28(s0)
 6a2:	a029                	j	6ac <printint+0x56>
 6a4:	fc842783          	lw	a5,-56(s0)
 6a8:	fef42223          	sw	a5,-28(s0)
 6ac:	fe042623          	sw	zero,-20(s0)
 6b0:	fc442783          	lw	a5,-60(s0)
 6b4:	fe442703          	lw	a4,-28(s0)
 6b8:	02f777bb          	remuw	a5,a4,a5
 6bc:	0007861b          	sext.w	a2,a5
 6c0:	fec42783          	lw	a5,-20(s0)
 6c4:	0017871b          	addiw	a4,a5,1
 6c8:	fee42623          	sw	a4,-20(s0)
 6cc:	00001697          	auipc	a3,0x1
 6d0:	93468693          	addi	a3,a3,-1740 # 1000 <digits>
 6d4:	02061713          	slli	a4,a2,0x20
 6d8:	9301                	srli	a4,a4,0x20
 6da:	9736                	add	a4,a4,a3
 6dc:	00074703          	lbu	a4,0(a4)
 6e0:	17c1                	addi	a5,a5,-16
 6e2:	97a2                	add	a5,a5,s0
 6e4:	fee78023          	sb	a4,-32(a5)
 6e8:	fc442783          	lw	a5,-60(s0)
 6ec:	fe442703          	lw	a4,-28(s0)
 6f0:	02f757bb          	divuw	a5,a4,a5
 6f4:	fef42223          	sw	a5,-28(s0)
 6f8:	fe442783          	lw	a5,-28(s0)
 6fc:	2781                	sext.w	a5,a5
 6fe:	fbcd                	bnez	a5,6b0 <printint+0x5a>
 700:	fe842783          	lw	a5,-24(s0)
 704:	2781                	sext.w	a5,a5
 706:	cf85                	beqz	a5,73e <printint+0xe8>
 708:	fec42783          	lw	a5,-20(s0)
 70c:	0017871b          	addiw	a4,a5,1
 710:	fee42623          	sw	a4,-20(s0)
 714:	17c1                	addi	a5,a5,-16
 716:	97a2                	add	a5,a5,s0
 718:	02d00713          	li	a4,45
 71c:	fee78023          	sb	a4,-32(a5)
 720:	a839                	j	73e <printint+0xe8>
 722:	fec42783          	lw	a5,-20(s0)
 726:	17c1                	addi	a5,a5,-16
 728:	97a2                	add	a5,a5,s0
 72a:	fe07c703          	lbu	a4,-32(a5)
 72e:	fcc42783          	lw	a5,-52(s0)
 732:	85ba                	mv	a1,a4
 734:	853e                	mv	a0,a5
 736:	00000097          	auipc	ra,0x0
 73a:	eea080e7          	jalr	-278(ra) # 620 <putc>
 73e:	fec42783          	lw	a5,-20(s0)
 742:	37fd                	addiw	a5,a5,-1
 744:	fef42623          	sw	a5,-20(s0)
 748:	fec42783          	lw	a5,-20(s0)
 74c:	2781                	sext.w	a5,a5
 74e:	fc07dae3          	bgez	a5,722 <printint+0xcc>
 752:	0001                	nop
 754:	0001                	nop
 756:	70e2                	ld	ra,56(sp)
 758:	7442                	ld	s0,48(sp)
 75a:	6121                	addi	sp,sp,64
 75c:	8082                	ret

000000000000075e <printptr>:
 75e:	7179                	addi	sp,sp,-48
 760:	f406                	sd	ra,40(sp)
 762:	f022                	sd	s0,32(sp)
 764:	1800                	addi	s0,sp,48
 766:	87aa                	mv	a5,a0
 768:	fcb43823          	sd	a1,-48(s0)
 76c:	fcf42e23          	sw	a5,-36(s0)
 770:	fdc42783          	lw	a5,-36(s0)
 774:	03000593          	li	a1,48
 778:	853e                	mv	a0,a5
 77a:	00000097          	auipc	ra,0x0
 77e:	ea6080e7          	jalr	-346(ra) # 620 <putc>
 782:	fdc42783          	lw	a5,-36(s0)
 786:	07800593          	li	a1,120
 78a:	853e                	mv	a0,a5
 78c:	00000097          	auipc	ra,0x0
 790:	e94080e7          	jalr	-364(ra) # 620 <putc>
 794:	fe042623          	sw	zero,-20(s0)
 798:	a82d                	j	7d2 <printptr+0x74>
 79a:	fd043783          	ld	a5,-48(s0)
 79e:	93f1                	srli	a5,a5,0x3c
 7a0:	00001717          	auipc	a4,0x1
 7a4:	86070713          	addi	a4,a4,-1952 # 1000 <digits>
 7a8:	97ba                	add	a5,a5,a4
 7aa:	0007c703          	lbu	a4,0(a5)
 7ae:	fdc42783          	lw	a5,-36(s0)
 7b2:	85ba                	mv	a1,a4
 7b4:	853e                	mv	a0,a5
 7b6:	00000097          	auipc	ra,0x0
 7ba:	e6a080e7          	jalr	-406(ra) # 620 <putc>
 7be:	fec42783          	lw	a5,-20(s0)
 7c2:	2785                	addiw	a5,a5,1
 7c4:	fef42623          	sw	a5,-20(s0)
 7c8:	fd043783          	ld	a5,-48(s0)
 7cc:	0792                	slli	a5,a5,0x4
 7ce:	fcf43823          	sd	a5,-48(s0)
 7d2:	fec42783          	lw	a5,-20(s0)
 7d6:	873e                	mv	a4,a5
 7d8:	47bd                	li	a5,15
 7da:	fce7f0e3          	bgeu	a5,a4,79a <printptr+0x3c>
 7de:	0001                	nop
 7e0:	0001                	nop
 7e2:	70a2                	ld	ra,40(sp)
 7e4:	7402                	ld	s0,32(sp)
 7e6:	6145                	addi	sp,sp,48
 7e8:	8082                	ret

00000000000007ea <vprintf>:
 7ea:	715d                	addi	sp,sp,-80
 7ec:	e486                	sd	ra,72(sp)
 7ee:	e0a2                	sd	s0,64(sp)
 7f0:	0880                	addi	s0,sp,80
 7f2:	87aa                	mv	a5,a0
 7f4:	fcb43023          	sd	a1,-64(s0)
 7f8:	fac43c23          	sd	a2,-72(s0)
 7fc:	fcf42623          	sw	a5,-52(s0)
 800:	fe042023          	sw	zero,-32(s0)
 804:	fe042223          	sw	zero,-28(s0)
 808:	a42d                	j	a32 <vprintf+0x248>
 80a:	fe442783          	lw	a5,-28(s0)
 80e:	fc043703          	ld	a4,-64(s0)
 812:	97ba                	add	a5,a5,a4
 814:	0007c783          	lbu	a5,0(a5)
 818:	fcf42e23          	sw	a5,-36(s0)
 81c:	fe042783          	lw	a5,-32(s0)
 820:	2781                	sext.w	a5,a5
 822:	eb9d                	bnez	a5,858 <vprintf+0x6e>
 824:	fdc42783          	lw	a5,-36(s0)
 828:	0007871b          	sext.w	a4,a5
 82c:	02500793          	li	a5,37
 830:	00f71763          	bne	a4,a5,83e <vprintf+0x54>
 834:	02500793          	li	a5,37
 838:	fef42023          	sw	a5,-32(s0)
 83c:	a2f5                	j	a28 <vprintf+0x23e>
 83e:	fdc42783          	lw	a5,-36(s0)
 842:	0ff7f713          	zext.b	a4,a5
 846:	fcc42783          	lw	a5,-52(s0)
 84a:	85ba                	mv	a1,a4
 84c:	853e                	mv	a0,a5
 84e:	00000097          	auipc	ra,0x0
 852:	dd2080e7          	jalr	-558(ra) # 620 <putc>
 856:	aac9                	j	a28 <vprintf+0x23e>
 858:	fe042783          	lw	a5,-32(s0)
 85c:	0007871b          	sext.w	a4,a5
 860:	02500793          	li	a5,37
 864:	1cf71263          	bne	a4,a5,a28 <vprintf+0x23e>
 868:	fdc42783          	lw	a5,-36(s0)
 86c:	0007871b          	sext.w	a4,a5
 870:	06400793          	li	a5,100
 874:	02f71463          	bne	a4,a5,89c <vprintf+0xb2>
 878:	fb843783          	ld	a5,-72(s0)
 87c:	00878713          	addi	a4,a5,8
 880:	fae43c23          	sd	a4,-72(s0)
 884:	4398                	lw	a4,0(a5)
 886:	fcc42783          	lw	a5,-52(s0)
 88a:	4685                	li	a3,1
 88c:	4629                	li	a2,10
 88e:	85ba                	mv	a1,a4
 890:	853e                	mv	a0,a5
 892:	00000097          	auipc	ra,0x0
 896:	dc4080e7          	jalr	-572(ra) # 656 <printint>
 89a:	a269                	j	a24 <vprintf+0x23a>
 89c:	fdc42783          	lw	a5,-36(s0)
 8a0:	0007871b          	sext.w	a4,a5
 8a4:	06c00793          	li	a5,108
 8a8:	02f71663          	bne	a4,a5,8d4 <vprintf+0xea>
 8ac:	fb843783          	ld	a5,-72(s0)
 8b0:	00878713          	addi	a4,a5,8
 8b4:	fae43c23          	sd	a4,-72(s0)
 8b8:	639c                	ld	a5,0(a5)
 8ba:	0007871b          	sext.w	a4,a5
 8be:	fcc42783          	lw	a5,-52(s0)
 8c2:	4681                	li	a3,0
 8c4:	4629                	li	a2,10
 8c6:	85ba                	mv	a1,a4
 8c8:	853e                	mv	a0,a5
 8ca:	00000097          	auipc	ra,0x0
 8ce:	d8c080e7          	jalr	-628(ra) # 656 <printint>
 8d2:	aa89                	j	a24 <vprintf+0x23a>
 8d4:	fdc42783          	lw	a5,-36(s0)
 8d8:	0007871b          	sext.w	a4,a5
 8dc:	07800793          	li	a5,120
 8e0:	02f71463          	bne	a4,a5,908 <vprintf+0x11e>
 8e4:	fb843783          	ld	a5,-72(s0)
 8e8:	00878713          	addi	a4,a5,8
 8ec:	fae43c23          	sd	a4,-72(s0)
 8f0:	4398                	lw	a4,0(a5)
 8f2:	fcc42783          	lw	a5,-52(s0)
 8f6:	4681                	li	a3,0
 8f8:	4641                	li	a2,16
 8fa:	85ba                	mv	a1,a4
 8fc:	853e                	mv	a0,a5
 8fe:	00000097          	auipc	ra,0x0
 902:	d58080e7          	jalr	-680(ra) # 656 <printint>
 906:	aa39                	j	a24 <vprintf+0x23a>
 908:	fdc42783          	lw	a5,-36(s0)
 90c:	0007871b          	sext.w	a4,a5
 910:	07000793          	li	a5,112
 914:	02f71263          	bne	a4,a5,938 <vprintf+0x14e>
 918:	fb843783          	ld	a5,-72(s0)
 91c:	00878713          	addi	a4,a5,8
 920:	fae43c23          	sd	a4,-72(s0)
 924:	6398                	ld	a4,0(a5)
 926:	fcc42783          	lw	a5,-52(s0)
 92a:	85ba                	mv	a1,a4
 92c:	853e                	mv	a0,a5
 92e:	00000097          	auipc	ra,0x0
 932:	e30080e7          	jalr	-464(ra) # 75e <printptr>
 936:	a0fd                	j	a24 <vprintf+0x23a>
 938:	fdc42783          	lw	a5,-36(s0)
 93c:	0007871b          	sext.w	a4,a5
 940:	07300793          	li	a5,115
 944:	04f71c63          	bne	a4,a5,99c <vprintf+0x1b2>
 948:	fb843783          	ld	a5,-72(s0)
 94c:	00878713          	addi	a4,a5,8
 950:	fae43c23          	sd	a4,-72(s0)
 954:	639c                	ld	a5,0(a5)
 956:	fef43423          	sd	a5,-24(s0)
 95a:	fe843783          	ld	a5,-24(s0)
 95e:	eb8d                	bnez	a5,990 <vprintf+0x1a6>
 960:	00000797          	auipc	a5,0x0
 964:	4b878793          	addi	a5,a5,1208 # e18 <malloc+0x17e>
 968:	fef43423          	sd	a5,-24(s0)
 96c:	a015                	j	990 <vprintf+0x1a6>
 96e:	fe843783          	ld	a5,-24(s0)
 972:	0007c703          	lbu	a4,0(a5)
 976:	fcc42783          	lw	a5,-52(s0)
 97a:	85ba                	mv	a1,a4
 97c:	853e                	mv	a0,a5
 97e:	00000097          	auipc	ra,0x0
 982:	ca2080e7          	jalr	-862(ra) # 620 <putc>
 986:	fe843783          	ld	a5,-24(s0)
 98a:	0785                	addi	a5,a5,1
 98c:	fef43423          	sd	a5,-24(s0)
 990:	fe843783          	ld	a5,-24(s0)
 994:	0007c783          	lbu	a5,0(a5)
 998:	fbf9                	bnez	a5,96e <vprintf+0x184>
 99a:	a069                	j	a24 <vprintf+0x23a>
 99c:	fdc42783          	lw	a5,-36(s0)
 9a0:	0007871b          	sext.w	a4,a5
 9a4:	06300793          	li	a5,99
 9a8:	02f71463          	bne	a4,a5,9d0 <vprintf+0x1e6>
 9ac:	fb843783          	ld	a5,-72(s0)
 9b0:	00878713          	addi	a4,a5,8
 9b4:	fae43c23          	sd	a4,-72(s0)
 9b8:	439c                	lw	a5,0(a5)
 9ba:	0ff7f713          	zext.b	a4,a5
 9be:	fcc42783          	lw	a5,-52(s0)
 9c2:	85ba                	mv	a1,a4
 9c4:	853e                	mv	a0,a5
 9c6:	00000097          	auipc	ra,0x0
 9ca:	c5a080e7          	jalr	-934(ra) # 620 <putc>
 9ce:	a899                	j	a24 <vprintf+0x23a>
 9d0:	fdc42783          	lw	a5,-36(s0)
 9d4:	0007871b          	sext.w	a4,a5
 9d8:	02500793          	li	a5,37
 9dc:	00f71f63          	bne	a4,a5,9fa <vprintf+0x210>
 9e0:	fdc42783          	lw	a5,-36(s0)
 9e4:	0ff7f713          	zext.b	a4,a5
 9e8:	fcc42783          	lw	a5,-52(s0)
 9ec:	85ba                	mv	a1,a4
 9ee:	853e                	mv	a0,a5
 9f0:	00000097          	auipc	ra,0x0
 9f4:	c30080e7          	jalr	-976(ra) # 620 <putc>
 9f8:	a035                	j	a24 <vprintf+0x23a>
 9fa:	fcc42783          	lw	a5,-52(s0)
 9fe:	02500593          	li	a1,37
 a02:	853e                	mv	a0,a5
 a04:	00000097          	auipc	ra,0x0
 a08:	c1c080e7          	jalr	-996(ra) # 620 <putc>
 a0c:	fdc42783          	lw	a5,-36(s0)
 a10:	0ff7f713          	zext.b	a4,a5
 a14:	fcc42783          	lw	a5,-52(s0)
 a18:	85ba                	mv	a1,a4
 a1a:	853e                	mv	a0,a5
 a1c:	00000097          	auipc	ra,0x0
 a20:	c04080e7          	jalr	-1020(ra) # 620 <putc>
 a24:	fe042023          	sw	zero,-32(s0)
 a28:	fe442783          	lw	a5,-28(s0)
 a2c:	2785                	addiw	a5,a5,1
 a2e:	fef42223          	sw	a5,-28(s0)
 a32:	fe442783          	lw	a5,-28(s0)
 a36:	fc043703          	ld	a4,-64(s0)
 a3a:	97ba                	add	a5,a5,a4
 a3c:	0007c783          	lbu	a5,0(a5)
 a40:	dc0795e3          	bnez	a5,80a <vprintf+0x20>
 a44:	0001                	nop
 a46:	0001                	nop
 a48:	60a6                	ld	ra,72(sp)
 a4a:	6406                	ld	s0,64(sp)
 a4c:	6161                	addi	sp,sp,80
 a4e:	8082                	ret

0000000000000a50 <fprintf>:
 a50:	7159                	addi	sp,sp,-112
 a52:	fc06                	sd	ra,56(sp)
 a54:	f822                	sd	s0,48(sp)
 a56:	0080                	addi	s0,sp,64
 a58:	fcb43823          	sd	a1,-48(s0)
 a5c:	e010                	sd	a2,0(s0)
 a5e:	e414                	sd	a3,8(s0)
 a60:	e818                	sd	a4,16(s0)
 a62:	ec1c                	sd	a5,24(s0)
 a64:	03043023          	sd	a6,32(s0)
 a68:	03143423          	sd	a7,40(s0)
 a6c:	87aa                	mv	a5,a0
 a6e:	fcf42e23          	sw	a5,-36(s0)
 a72:	03040793          	addi	a5,s0,48
 a76:	fcf43423          	sd	a5,-56(s0)
 a7a:	fc843783          	ld	a5,-56(s0)
 a7e:	fd078793          	addi	a5,a5,-48
 a82:	fef43423          	sd	a5,-24(s0)
 a86:	fe843703          	ld	a4,-24(s0)
 a8a:	fdc42783          	lw	a5,-36(s0)
 a8e:	863a                	mv	a2,a4
 a90:	fd043583          	ld	a1,-48(s0)
 a94:	853e                	mv	a0,a5
 a96:	00000097          	auipc	ra,0x0
 a9a:	d54080e7          	jalr	-684(ra) # 7ea <vprintf>
 a9e:	0001                	nop
 aa0:	70e2                	ld	ra,56(sp)
 aa2:	7442                	ld	s0,48(sp)
 aa4:	6165                	addi	sp,sp,112
 aa6:	8082                	ret

0000000000000aa8 <printf>:
 aa8:	7159                	addi	sp,sp,-112
 aaa:	f406                	sd	ra,40(sp)
 aac:	f022                	sd	s0,32(sp)
 aae:	1800                	addi	s0,sp,48
 ab0:	fca43c23          	sd	a0,-40(s0)
 ab4:	e40c                	sd	a1,8(s0)
 ab6:	e810                	sd	a2,16(s0)
 ab8:	ec14                	sd	a3,24(s0)
 aba:	f018                	sd	a4,32(s0)
 abc:	f41c                	sd	a5,40(s0)
 abe:	03043823          	sd	a6,48(s0)
 ac2:	03143c23          	sd	a7,56(s0)
 ac6:	04040793          	addi	a5,s0,64
 aca:	fcf43823          	sd	a5,-48(s0)
 ace:	fd043783          	ld	a5,-48(s0)
 ad2:	fc878793          	addi	a5,a5,-56
 ad6:	fef43423          	sd	a5,-24(s0)
 ada:	fe843783          	ld	a5,-24(s0)
 ade:	863e                	mv	a2,a5
 ae0:	fd843583          	ld	a1,-40(s0)
 ae4:	4505                	li	a0,1
 ae6:	00000097          	auipc	ra,0x0
 aea:	d04080e7          	jalr	-764(ra) # 7ea <vprintf>
 aee:	0001                	nop
 af0:	70a2                	ld	ra,40(sp)
 af2:	7402                	ld	s0,32(sp)
 af4:	6165                	addi	sp,sp,112
 af6:	8082                	ret

0000000000000af8 <free>:
 af8:	7179                	addi	sp,sp,-48
 afa:	f422                	sd	s0,40(sp)
 afc:	1800                	addi	s0,sp,48
 afe:	fca43c23          	sd	a0,-40(s0)
 b02:	fd843783          	ld	a5,-40(s0)
 b06:	17c1                	addi	a5,a5,-16
 b08:	fef43023          	sd	a5,-32(s0)
 b0c:	00000797          	auipc	a5,0x0
 b10:	52478793          	addi	a5,a5,1316 # 1030 <freep>
 b14:	639c                	ld	a5,0(a5)
 b16:	fef43423          	sd	a5,-24(s0)
 b1a:	a815                	j	b4e <free+0x56>
 b1c:	fe843783          	ld	a5,-24(s0)
 b20:	639c                	ld	a5,0(a5)
 b22:	fe843703          	ld	a4,-24(s0)
 b26:	00f76f63          	bltu	a4,a5,b44 <free+0x4c>
 b2a:	fe043703          	ld	a4,-32(s0)
 b2e:	fe843783          	ld	a5,-24(s0)
 b32:	02e7eb63          	bltu	a5,a4,b68 <free+0x70>
 b36:	fe843783          	ld	a5,-24(s0)
 b3a:	639c                	ld	a5,0(a5)
 b3c:	fe043703          	ld	a4,-32(s0)
 b40:	02f76463          	bltu	a4,a5,b68 <free+0x70>
 b44:	fe843783          	ld	a5,-24(s0)
 b48:	639c                	ld	a5,0(a5)
 b4a:	fef43423          	sd	a5,-24(s0)
 b4e:	fe043703          	ld	a4,-32(s0)
 b52:	fe843783          	ld	a5,-24(s0)
 b56:	fce7f3e3          	bgeu	a5,a4,b1c <free+0x24>
 b5a:	fe843783          	ld	a5,-24(s0)
 b5e:	639c                	ld	a5,0(a5)
 b60:	fe043703          	ld	a4,-32(s0)
 b64:	faf77ce3          	bgeu	a4,a5,b1c <free+0x24>
 b68:	fe043783          	ld	a5,-32(s0)
 b6c:	479c                	lw	a5,8(a5)
 b6e:	1782                	slli	a5,a5,0x20
 b70:	9381                	srli	a5,a5,0x20
 b72:	0792                	slli	a5,a5,0x4
 b74:	fe043703          	ld	a4,-32(s0)
 b78:	973e                	add	a4,a4,a5
 b7a:	fe843783          	ld	a5,-24(s0)
 b7e:	639c                	ld	a5,0(a5)
 b80:	02f71763          	bne	a4,a5,bae <free+0xb6>
 b84:	fe043783          	ld	a5,-32(s0)
 b88:	4798                	lw	a4,8(a5)
 b8a:	fe843783          	ld	a5,-24(s0)
 b8e:	639c                	ld	a5,0(a5)
 b90:	479c                	lw	a5,8(a5)
 b92:	9fb9                	addw	a5,a5,a4
 b94:	0007871b          	sext.w	a4,a5
 b98:	fe043783          	ld	a5,-32(s0)
 b9c:	c798                	sw	a4,8(a5)
 b9e:	fe843783          	ld	a5,-24(s0)
 ba2:	639c                	ld	a5,0(a5)
 ba4:	6398                	ld	a4,0(a5)
 ba6:	fe043783          	ld	a5,-32(s0)
 baa:	e398                	sd	a4,0(a5)
 bac:	a039                	j	bba <free+0xc2>
 bae:	fe843783          	ld	a5,-24(s0)
 bb2:	6398                	ld	a4,0(a5)
 bb4:	fe043783          	ld	a5,-32(s0)
 bb8:	e398                	sd	a4,0(a5)
 bba:	fe843783          	ld	a5,-24(s0)
 bbe:	479c                	lw	a5,8(a5)
 bc0:	1782                	slli	a5,a5,0x20
 bc2:	9381                	srli	a5,a5,0x20
 bc4:	0792                	slli	a5,a5,0x4
 bc6:	fe843703          	ld	a4,-24(s0)
 bca:	97ba                	add	a5,a5,a4
 bcc:	fe043703          	ld	a4,-32(s0)
 bd0:	02f71563          	bne	a4,a5,bfa <free+0x102>
 bd4:	fe843783          	ld	a5,-24(s0)
 bd8:	4798                	lw	a4,8(a5)
 bda:	fe043783          	ld	a5,-32(s0)
 bde:	479c                	lw	a5,8(a5)
 be0:	9fb9                	addw	a5,a5,a4
 be2:	0007871b          	sext.w	a4,a5
 be6:	fe843783          	ld	a5,-24(s0)
 bea:	c798                	sw	a4,8(a5)
 bec:	fe043783          	ld	a5,-32(s0)
 bf0:	6398                	ld	a4,0(a5)
 bf2:	fe843783          	ld	a5,-24(s0)
 bf6:	e398                	sd	a4,0(a5)
 bf8:	a031                	j	c04 <free+0x10c>
 bfa:	fe843783          	ld	a5,-24(s0)
 bfe:	fe043703          	ld	a4,-32(s0)
 c02:	e398                	sd	a4,0(a5)
 c04:	00000797          	auipc	a5,0x0
 c08:	42c78793          	addi	a5,a5,1068 # 1030 <freep>
 c0c:	fe843703          	ld	a4,-24(s0)
 c10:	e398                	sd	a4,0(a5)
 c12:	0001                	nop
 c14:	7422                	ld	s0,40(sp)
 c16:	6145                	addi	sp,sp,48
 c18:	8082                	ret

0000000000000c1a <morecore>:
 c1a:	7179                	addi	sp,sp,-48
 c1c:	f406                	sd	ra,40(sp)
 c1e:	f022                	sd	s0,32(sp)
 c20:	1800                	addi	s0,sp,48
 c22:	87aa                	mv	a5,a0
 c24:	fcf42e23          	sw	a5,-36(s0)
 c28:	fdc42783          	lw	a5,-36(s0)
 c2c:	0007871b          	sext.w	a4,a5
 c30:	6785                	lui	a5,0x1
 c32:	00f77563          	bgeu	a4,a5,c3c <morecore+0x22>
 c36:	6785                	lui	a5,0x1
 c38:	fcf42e23          	sw	a5,-36(s0)
 c3c:	fdc42783          	lw	a5,-36(s0)
 c40:	0047979b          	slliw	a5,a5,0x4
 c44:	2781                	sext.w	a5,a5
 c46:	2781                	sext.w	a5,a5
 c48:	853e                	mv	a0,a5
 c4a:	00000097          	auipc	ra,0x0
 c4e:	996080e7          	jalr	-1642(ra) # 5e0 <sbrk>
 c52:	fea43423          	sd	a0,-24(s0)
 c56:	fe843703          	ld	a4,-24(s0)
 c5a:	57fd                	li	a5,-1
 c5c:	00f71463          	bne	a4,a5,c64 <morecore+0x4a>
 c60:	4781                	li	a5,0
 c62:	a03d                	j	c90 <morecore+0x76>
 c64:	fe843783          	ld	a5,-24(s0)
 c68:	fef43023          	sd	a5,-32(s0)
 c6c:	fe043783          	ld	a5,-32(s0)
 c70:	fdc42703          	lw	a4,-36(s0)
 c74:	c798                	sw	a4,8(a5)
 c76:	fe043783          	ld	a5,-32(s0)
 c7a:	07c1                	addi	a5,a5,16 # 1010 <digits+0x10>
 c7c:	853e                	mv	a0,a5
 c7e:	00000097          	auipc	ra,0x0
 c82:	e7a080e7          	jalr	-390(ra) # af8 <free>
 c86:	00000797          	auipc	a5,0x0
 c8a:	3aa78793          	addi	a5,a5,938 # 1030 <freep>
 c8e:	639c                	ld	a5,0(a5)
 c90:	853e                	mv	a0,a5
 c92:	70a2                	ld	ra,40(sp)
 c94:	7402                	ld	s0,32(sp)
 c96:	6145                	addi	sp,sp,48
 c98:	8082                	ret

0000000000000c9a <malloc>:
 c9a:	7139                	addi	sp,sp,-64
 c9c:	fc06                	sd	ra,56(sp)
 c9e:	f822                	sd	s0,48(sp)
 ca0:	0080                	addi	s0,sp,64
 ca2:	87aa                	mv	a5,a0
 ca4:	fcf42623          	sw	a5,-52(s0)
 ca8:	fcc46783          	lwu	a5,-52(s0)
 cac:	07bd                	addi	a5,a5,15
 cae:	8391                	srli	a5,a5,0x4
 cb0:	2781                	sext.w	a5,a5
 cb2:	2785                	addiw	a5,a5,1
 cb4:	fcf42e23          	sw	a5,-36(s0)
 cb8:	00000797          	auipc	a5,0x0
 cbc:	37878793          	addi	a5,a5,888 # 1030 <freep>
 cc0:	639c                	ld	a5,0(a5)
 cc2:	fef43023          	sd	a5,-32(s0)
 cc6:	fe043783          	ld	a5,-32(s0)
 cca:	ef95                	bnez	a5,d06 <malloc+0x6c>
 ccc:	00000797          	auipc	a5,0x0
 cd0:	35478793          	addi	a5,a5,852 # 1020 <base>
 cd4:	fef43023          	sd	a5,-32(s0)
 cd8:	00000797          	auipc	a5,0x0
 cdc:	35878793          	addi	a5,a5,856 # 1030 <freep>
 ce0:	fe043703          	ld	a4,-32(s0)
 ce4:	e398                	sd	a4,0(a5)
 ce6:	00000797          	auipc	a5,0x0
 cea:	34a78793          	addi	a5,a5,842 # 1030 <freep>
 cee:	6398                	ld	a4,0(a5)
 cf0:	00000797          	auipc	a5,0x0
 cf4:	33078793          	addi	a5,a5,816 # 1020 <base>
 cf8:	e398                	sd	a4,0(a5)
 cfa:	00000797          	auipc	a5,0x0
 cfe:	32678793          	addi	a5,a5,806 # 1020 <base>
 d02:	0007a423          	sw	zero,8(a5)
 d06:	fe043783          	ld	a5,-32(s0)
 d0a:	639c                	ld	a5,0(a5)
 d0c:	fef43423          	sd	a5,-24(s0)
 d10:	fe843783          	ld	a5,-24(s0)
 d14:	4798                	lw	a4,8(a5)
 d16:	fdc42783          	lw	a5,-36(s0)
 d1a:	2781                	sext.w	a5,a5
 d1c:	06f76763          	bltu	a4,a5,d8a <malloc+0xf0>
 d20:	fe843783          	ld	a5,-24(s0)
 d24:	4798                	lw	a4,8(a5)
 d26:	fdc42783          	lw	a5,-36(s0)
 d2a:	2781                	sext.w	a5,a5
 d2c:	00e79963          	bne	a5,a4,d3e <malloc+0xa4>
 d30:	fe843783          	ld	a5,-24(s0)
 d34:	6398                	ld	a4,0(a5)
 d36:	fe043783          	ld	a5,-32(s0)
 d3a:	e398                	sd	a4,0(a5)
 d3c:	a825                	j	d74 <malloc+0xda>
 d3e:	fe843783          	ld	a5,-24(s0)
 d42:	479c                	lw	a5,8(a5)
 d44:	fdc42703          	lw	a4,-36(s0)
 d48:	9f99                	subw	a5,a5,a4
 d4a:	0007871b          	sext.w	a4,a5
 d4e:	fe843783          	ld	a5,-24(s0)
 d52:	c798                	sw	a4,8(a5)
 d54:	fe843783          	ld	a5,-24(s0)
 d58:	479c                	lw	a5,8(a5)
 d5a:	1782                	slli	a5,a5,0x20
 d5c:	9381                	srli	a5,a5,0x20
 d5e:	0792                	slli	a5,a5,0x4
 d60:	fe843703          	ld	a4,-24(s0)
 d64:	97ba                	add	a5,a5,a4
 d66:	fef43423          	sd	a5,-24(s0)
 d6a:	fe843783          	ld	a5,-24(s0)
 d6e:	fdc42703          	lw	a4,-36(s0)
 d72:	c798                	sw	a4,8(a5)
 d74:	00000797          	auipc	a5,0x0
 d78:	2bc78793          	addi	a5,a5,700 # 1030 <freep>
 d7c:	fe043703          	ld	a4,-32(s0)
 d80:	e398                	sd	a4,0(a5)
 d82:	fe843783          	ld	a5,-24(s0)
 d86:	07c1                	addi	a5,a5,16
 d88:	a091                	j	dcc <malloc+0x132>
 d8a:	00000797          	auipc	a5,0x0
 d8e:	2a678793          	addi	a5,a5,678 # 1030 <freep>
 d92:	639c                	ld	a5,0(a5)
 d94:	fe843703          	ld	a4,-24(s0)
 d98:	02f71063          	bne	a4,a5,db8 <malloc+0x11e>
 d9c:	fdc42783          	lw	a5,-36(s0)
 da0:	853e                	mv	a0,a5
 da2:	00000097          	auipc	ra,0x0
 da6:	e78080e7          	jalr	-392(ra) # c1a <morecore>
 daa:	fea43423          	sd	a0,-24(s0)
 dae:	fe843783          	ld	a5,-24(s0)
 db2:	e399                	bnez	a5,db8 <malloc+0x11e>
 db4:	4781                	li	a5,0
 db6:	a819                	j	dcc <malloc+0x132>
 db8:	fe843783          	ld	a5,-24(s0)
 dbc:	fef43023          	sd	a5,-32(s0)
 dc0:	fe843783          	ld	a5,-24(s0)
 dc4:	639c                	ld	a5,0(a5)
 dc6:	fef43423          	sd	a5,-24(s0)
 dca:	b799                	j	d10 <malloc+0x76>
 dcc:	853e                	mv	a0,a5
 dce:	70e2                	ld	ra,56(sp)
 dd0:	7442                	ld	s0,48(sp)
 dd2:	6121                	addi	sp,sp,64
 dd4:	8082                	ret
