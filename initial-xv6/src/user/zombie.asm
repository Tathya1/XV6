
user/_zombie:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	1141                	addi	sp,sp,-16
   2:	e406                	sd	ra,8(sp)
   4:	e022                	sd	s0,0(sp)
   6:	0800                	addi	s0,sp,16
   8:	00000097          	auipc	ra,0x0
   c:	4c6080e7          	jalr	1222(ra) # 4ce <fork>
  10:	87aa                	mv	a5,a0
  12:	00f05763          	blez	a5,20 <main+0x20>
  16:	4515                	li	a0,5
  18:	00000097          	auipc	ra,0x0
  1c:	54e080e7          	jalr	1358(ra) # 566 <sleep>
  20:	4501                	li	a0,0
  22:	00000097          	auipc	ra,0x0
  26:	4b4080e7          	jalr	1204(ra) # 4d6 <exit>

000000000000002a <_main>:
  2a:	1141                	addi	sp,sp,-16
  2c:	e406                	sd	ra,8(sp)
  2e:	e022                	sd	s0,0(sp)
  30:	0800                	addi	s0,sp,16
  32:	00000097          	auipc	ra,0x0
  36:	fce080e7          	jalr	-50(ra) # 0 <main>
  3a:	4501                	li	a0,0
  3c:	00000097          	auipc	ra,0x0
  40:	49a080e7          	jalr	1178(ra) # 4d6 <exit>

0000000000000044 <strcpy>:
  44:	7179                	addi	sp,sp,-48
  46:	f422                	sd	s0,40(sp)
  48:	1800                	addi	s0,sp,48
  4a:	fca43c23          	sd	a0,-40(s0)
  4e:	fcb43823          	sd	a1,-48(s0)
  52:	fd843783          	ld	a5,-40(s0)
  56:	fef43423          	sd	a5,-24(s0)
  5a:	0001                	nop
  5c:	fd043703          	ld	a4,-48(s0)
  60:	00170793          	addi	a5,a4,1
  64:	fcf43823          	sd	a5,-48(s0)
  68:	fd843783          	ld	a5,-40(s0)
  6c:	00178693          	addi	a3,a5,1
  70:	fcd43c23          	sd	a3,-40(s0)
  74:	00074703          	lbu	a4,0(a4)
  78:	00e78023          	sb	a4,0(a5)
  7c:	0007c783          	lbu	a5,0(a5)
  80:	fff1                	bnez	a5,5c <strcpy+0x18>
  82:	fe843783          	ld	a5,-24(s0)
  86:	853e                	mv	a0,a5
  88:	7422                	ld	s0,40(sp)
  8a:	6145                	addi	sp,sp,48
  8c:	8082                	ret

000000000000008e <strcmp>:
  8e:	1101                	addi	sp,sp,-32
  90:	ec22                	sd	s0,24(sp)
  92:	1000                	addi	s0,sp,32
  94:	fea43423          	sd	a0,-24(s0)
  98:	feb43023          	sd	a1,-32(s0)
  9c:	a819                	j	b2 <strcmp+0x24>
  9e:	fe843783          	ld	a5,-24(s0)
  a2:	0785                	addi	a5,a5,1
  a4:	fef43423          	sd	a5,-24(s0)
  a8:	fe043783          	ld	a5,-32(s0)
  ac:	0785                	addi	a5,a5,1
  ae:	fef43023          	sd	a5,-32(s0)
  b2:	fe843783          	ld	a5,-24(s0)
  b6:	0007c783          	lbu	a5,0(a5)
  ba:	cb99                	beqz	a5,d0 <strcmp+0x42>
  bc:	fe843783          	ld	a5,-24(s0)
  c0:	0007c703          	lbu	a4,0(a5)
  c4:	fe043783          	ld	a5,-32(s0)
  c8:	0007c783          	lbu	a5,0(a5)
  cc:	fcf709e3          	beq	a4,a5,9e <strcmp+0x10>
  d0:	fe843783          	ld	a5,-24(s0)
  d4:	0007c783          	lbu	a5,0(a5)
  d8:	0007871b          	sext.w	a4,a5
  dc:	fe043783          	ld	a5,-32(s0)
  e0:	0007c783          	lbu	a5,0(a5)
  e4:	2781                	sext.w	a5,a5
  e6:	40f707bb          	subw	a5,a4,a5
  ea:	2781                	sext.w	a5,a5
  ec:	853e                	mv	a0,a5
  ee:	6462                	ld	s0,24(sp)
  f0:	6105                	addi	sp,sp,32
  f2:	8082                	ret

00000000000000f4 <strlen>:
  f4:	7179                	addi	sp,sp,-48
  f6:	f422                	sd	s0,40(sp)
  f8:	1800                	addi	s0,sp,48
  fa:	fca43c23          	sd	a0,-40(s0)
  fe:	fe042623          	sw	zero,-20(s0)
 102:	a031                	j	10e <strlen+0x1a>
 104:	fec42783          	lw	a5,-20(s0)
 108:	2785                	addiw	a5,a5,1
 10a:	fef42623          	sw	a5,-20(s0)
 10e:	fec42783          	lw	a5,-20(s0)
 112:	fd843703          	ld	a4,-40(s0)
 116:	97ba                	add	a5,a5,a4
 118:	0007c783          	lbu	a5,0(a5)
 11c:	f7e5                	bnez	a5,104 <strlen+0x10>
 11e:	fec42783          	lw	a5,-20(s0)
 122:	853e                	mv	a0,a5
 124:	7422                	ld	s0,40(sp)
 126:	6145                	addi	sp,sp,48
 128:	8082                	ret

000000000000012a <memset>:
 12a:	7179                	addi	sp,sp,-48
 12c:	f422                	sd	s0,40(sp)
 12e:	1800                	addi	s0,sp,48
 130:	fca43c23          	sd	a0,-40(s0)
 134:	87ae                	mv	a5,a1
 136:	8732                	mv	a4,a2
 138:	fcf42a23          	sw	a5,-44(s0)
 13c:	87ba                	mv	a5,a4
 13e:	fcf42823          	sw	a5,-48(s0)
 142:	fd843783          	ld	a5,-40(s0)
 146:	fef43023          	sd	a5,-32(s0)
 14a:	fe042623          	sw	zero,-20(s0)
 14e:	a00d                	j	170 <memset+0x46>
 150:	fec42783          	lw	a5,-20(s0)
 154:	fe043703          	ld	a4,-32(s0)
 158:	97ba                	add	a5,a5,a4
 15a:	fd442703          	lw	a4,-44(s0)
 15e:	0ff77713          	zext.b	a4,a4
 162:	00e78023          	sb	a4,0(a5)
 166:	fec42783          	lw	a5,-20(s0)
 16a:	2785                	addiw	a5,a5,1
 16c:	fef42623          	sw	a5,-20(s0)
 170:	fec42703          	lw	a4,-20(s0)
 174:	fd042783          	lw	a5,-48(s0)
 178:	2781                	sext.w	a5,a5
 17a:	fcf76be3          	bltu	a4,a5,150 <memset+0x26>
 17e:	fd843783          	ld	a5,-40(s0)
 182:	853e                	mv	a0,a5
 184:	7422                	ld	s0,40(sp)
 186:	6145                	addi	sp,sp,48
 188:	8082                	ret

000000000000018a <strchr>:
 18a:	1101                	addi	sp,sp,-32
 18c:	ec22                	sd	s0,24(sp)
 18e:	1000                	addi	s0,sp,32
 190:	fea43423          	sd	a0,-24(s0)
 194:	87ae                	mv	a5,a1
 196:	fef403a3          	sb	a5,-25(s0)
 19a:	a01d                	j	1c0 <strchr+0x36>
 19c:	fe843783          	ld	a5,-24(s0)
 1a0:	0007c703          	lbu	a4,0(a5)
 1a4:	fe744783          	lbu	a5,-25(s0)
 1a8:	0ff7f793          	zext.b	a5,a5
 1ac:	00e79563          	bne	a5,a4,1b6 <strchr+0x2c>
 1b0:	fe843783          	ld	a5,-24(s0)
 1b4:	a821                	j	1cc <strchr+0x42>
 1b6:	fe843783          	ld	a5,-24(s0)
 1ba:	0785                	addi	a5,a5,1
 1bc:	fef43423          	sd	a5,-24(s0)
 1c0:	fe843783          	ld	a5,-24(s0)
 1c4:	0007c783          	lbu	a5,0(a5)
 1c8:	fbf1                	bnez	a5,19c <strchr+0x12>
 1ca:	4781                	li	a5,0
 1cc:	853e                	mv	a0,a5
 1ce:	6462                	ld	s0,24(sp)
 1d0:	6105                	addi	sp,sp,32
 1d2:	8082                	ret

00000000000001d4 <gets>:
 1d4:	7179                	addi	sp,sp,-48
 1d6:	f406                	sd	ra,40(sp)
 1d8:	f022                	sd	s0,32(sp)
 1da:	1800                	addi	s0,sp,48
 1dc:	fca43c23          	sd	a0,-40(s0)
 1e0:	87ae                	mv	a5,a1
 1e2:	fcf42a23          	sw	a5,-44(s0)
 1e6:	fe042623          	sw	zero,-20(s0)
 1ea:	a8a1                	j	242 <gets+0x6e>
 1ec:	fe740793          	addi	a5,s0,-25
 1f0:	4605                	li	a2,1
 1f2:	85be                	mv	a1,a5
 1f4:	4501                	li	a0,0
 1f6:	00000097          	auipc	ra,0x0
 1fa:	2f8080e7          	jalr	760(ra) # 4ee <read>
 1fe:	87aa                	mv	a5,a0
 200:	fef42423          	sw	a5,-24(s0)
 204:	fe842783          	lw	a5,-24(s0)
 208:	2781                	sext.w	a5,a5
 20a:	04f05763          	blez	a5,258 <gets+0x84>
 20e:	fec42783          	lw	a5,-20(s0)
 212:	0017871b          	addiw	a4,a5,1
 216:	fee42623          	sw	a4,-20(s0)
 21a:	873e                	mv	a4,a5
 21c:	fd843783          	ld	a5,-40(s0)
 220:	97ba                	add	a5,a5,a4
 222:	fe744703          	lbu	a4,-25(s0)
 226:	00e78023          	sb	a4,0(a5)
 22a:	fe744783          	lbu	a5,-25(s0)
 22e:	873e                	mv	a4,a5
 230:	47a9                	li	a5,10
 232:	02f70463          	beq	a4,a5,25a <gets+0x86>
 236:	fe744783          	lbu	a5,-25(s0)
 23a:	873e                	mv	a4,a5
 23c:	47b5                	li	a5,13
 23e:	00f70e63          	beq	a4,a5,25a <gets+0x86>
 242:	fec42783          	lw	a5,-20(s0)
 246:	2785                	addiw	a5,a5,1
 248:	0007871b          	sext.w	a4,a5
 24c:	fd442783          	lw	a5,-44(s0)
 250:	2781                	sext.w	a5,a5
 252:	f8f74de3          	blt	a4,a5,1ec <gets+0x18>
 256:	a011                	j	25a <gets+0x86>
 258:	0001                	nop
 25a:	fec42783          	lw	a5,-20(s0)
 25e:	fd843703          	ld	a4,-40(s0)
 262:	97ba                	add	a5,a5,a4
 264:	00078023          	sb	zero,0(a5)
 268:	fd843783          	ld	a5,-40(s0)
 26c:	853e                	mv	a0,a5
 26e:	70a2                	ld	ra,40(sp)
 270:	7402                	ld	s0,32(sp)
 272:	6145                	addi	sp,sp,48
 274:	8082                	ret

0000000000000276 <stat>:
 276:	7179                	addi	sp,sp,-48
 278:	f406                	sd	ra,40(sp)
 27a:	f022                	sd	s0,32(sp)
 27c:	1800                	addi	s0,sp,48
 27e:	fca43c23          	sd	a0,-40(s0)
 282:	fcb43823          	sd	a1,-48(s0)
 286:	4581                	li	a1,0
 288:	fd843503          	ld	a0,-40(s0)
 28c:	00000097          	auipc	ra,0x0
 290:	28a080e7          	jalr	650(ra) # 516 <open>
 294:	87aa                	mv	a5,a0
 296:	fef42623          	sw	a5,-20(s0)
 29a:	fec42783          	lw	a5,-20(s0)
 29e:	2781                	sext.w	a5,a5
 2a0:	0007d463          	bgez	a5,2a8 <stat+0x32>
 2a4:	57fd                	li	a5,-1
 2a6:	a035                	j	2d2 <stat+0x5c>
 2a8:	fec42783          	lw	a5,-20(s0)
 2ac:	fd043583          	ld	a1,-48(s0)
 2b0:	853e                	mv	a0,a5
 2b2:	00000097          	auipc	ra,0x0
 2b6:	27c080e7          	jalr	636(ra) # 52e <fstat>
 2ba:	87aa                	mv	a5,a0
 2bc:	fef42423          	sw	a5,-24(s0)
 2c0:	fec42783          	lw	a5,-20(s0)
 2c4:	853e                	mv	a0,a5
 2c6:	00000097          	auipc	ra,0x0
 2ca:	238080e7          	jalr	568(ra) # 4fe <close>
 2ce:	fe842783          	lw	a5,-24(s0)
 2d2:	853e                	mv	a0,a5
 2d4:	70a2                	ld	ra,40(sp)
 2d6:	7402                	ld	s0,32(sp)
 2d8:	6145                	addi	sp,sp,48
 2da:	8082                	ret

00000000000002dc <atoi>:
 2dc:	7179                	addi	sp,sp,-48
 2de:	f422                	sd	s0,40(sp)
 2e0:	1800                	addi	s0,sp,48
 2e2:	fca43c23          	sd	a0,-40(s0)
 2e6:	fe042623          	sw	zero,-20(s0)
 2ea:	a81d                	j	320 <atoi+0x44>
 2ec:	fec42783          	lw	a5,-20(s0)
 2f0:	873e                	mv	a4,a5
 2f2:	87ba                	mv	a5,a4
 2f4:	0027979b          	slliw	a5,a5,0x2
 2f8:	9fb9                	addw	a5,a5,a4
 2fa:	0017979b          	slliw	a5,a5,0x1
 2fe:	0007871b          	sext.w	a4,a5
 302:	fd843783          	ld	a5,-40(s0)
 306:	00178693          	addi	a3,a5,1
 30a:	fcd43c23          	sd	a3,-40(s0)
 30e:	0007c783          	lbu	a5,0(a5)
 312:	2781                	sext.w	a5,a5
 314:	9fb9                	addw	a5,a5,a4
 316:	2781                	sext.w	a5,a5
 318:	fd07879b          	addiw	a5,a5,-48
 31c:	fef42623          	sw	a5,-20(s0)
 320:	fd843783          	ld	a5,-40(s0)
 324:	0007c783          	lbu	a5,0(a5)
 328:	873e                	mv	a4,a5
 32a:	02f00793          	li	a5,47
 32e:	00e7fb63          	bgeu	a5,a4,344 <atoi+0x68>
 332:	fd843783          	ld	a5,-40(s0)
 336:	0007c783          	lbu	a5,0(a5)
 33a:	873e                	mv	a4,a5
 33c:	03900793          	li	a5,57
 340:	fae7f6e3          	bgeu	a5,a4,2ec <atoi+0x10>
 344:	fec42783          	lw	a5,-20(s0)
 348:	853e                	mv	a0,a5
 34a:	7422                	ld	s0,40(sp)
 34c:	6145                	addi	sp,sp,48
 34e:	8082                	ret

0000000000000350 <memmove>:
 350:	7139                	addi	sp,sp,-64
 352:	fc22                	sd	s0,56(sp)
 354:	0080                	addi	s0,sp,64
 356:	fca43c23          	sd	a0,-40(s0)
 35a:	fcb43823          	sd	a1,-48(s0)
 35e:	87b2                	mv	a5,a2
 360:	fcf42623          	sw	a5,-52(s0)
 364:	fd843783          	ld	a5,-40(s0)
 368:	fef43423          	sd	a5,-24(s0)
 36c:	fd043783          	ld	a5,-48(s0)
 370:	fef43023          	sd	a5,-32(s0)
 374:	fe043703          	ld	a4,-32(s0)
 378:	fe843783          	ld	a5,-24(s0)
 37c:	02e7fc63          	bgeu	a5,a4,3b4 <memmove+0x64>
 380:	a00d                	j	3a2 <memmove+0x52>
 382:	fe043703          	ld	a4,-32(s0)
 386:	00170793          	addi	a5,a4,1
 38a:	fef43023          	sd	a5,-32(s0)
 38e:	fe843783          	ld	a5,-24(s0)
 392:	00178693          	addi	a3,a5,1
 396:	fed43423          	sd	a3,-24(s0)
 39a:	00074703          	lbu	a4,0(a4)
 39e:	00e78023          	sb	a4,0(a5)
 3a2:	fcc42783          	lw	a5,-52(s0)
 3a6:	fff7871b          	addiw	a4,a5,-1
 3aa:	fce42623          	sw	a4,-52(s0)
 3ae:	fcf04ae3          	bgtz	a5,382 <memmove+0x32>
 3b2:	a891                	j	406 <memmove+0xb6>
 3b4:	fcc42783          	lw	a5,-52(s0)
 3b8:	fe843703          	ld	a4,-24(s0)
 3bc:	97ba                	add	a5,a5,a4
 3be:	fef43423          	sd	a5,-24(s0)
 3c2:	fcc42783          	lw	a5,-52(s0)
 3c6:	fe043703          	ld	a4,-32(s0)
 3ca:	97ba                	add	a5,a5,a4
 3cc:	fef43023          	sd	a5,-32(s0)
 3d0:	a01d                	j	3f6 <memmove+0xa6>
 3d2:	fe043783          	ld	a5,-32(s0)
 3d6:	17fd                	addi	a5,a5,-1
 3d8:	fef43023          	sd	a5,-32(s0)
 3dc:	fe843783          	ld	a5,-24(s0)
 3e0:	17fd                	addi	a5,a5,-1
 3e2:	fef43423          	sd	a5,-24(s0)
 3e6:	fe043783          	ld	a5,-32(s0)
 3ea:	0007c703          	lbu	a4,0(a5)
 3ee:	fe843783          	ld	a5,-24(s0)
 3f2:	00e78023          	sb	a4,0(a5)
 3f6:	fcc42783          	lw	a5,-52(s0)
 3fa:	fff7871b          	addiw	a4,a5,-1
 3fe:	fce42623          	sw	a4,-52(s0)
 402:	fcf048e3          	bgtz	a5,3d2 <memmove+0x82>
 406:	fd843783          	ld	a5,-40(s0)
 40a:	853e                	mv	a0,a5
 40c:	7462                	ld	s0,56(sp)
 40e:	6121                	addi	sp,sp,64
 410:	8082                	ret

0000000000000412 <memcmp>:
 412:	7139                	addi	sp,sp,-64
 414:	fc22                	sd	s0,56(sp)
 416:	0080                	addi	s0,sp,64
 418:	fca43c23          	sd	a0,-40(s0)
 41c:	fcb43823          	sd	a1,-48(s0)
 420:	87b2                	mv	a5,a2
 422:	fcf42623          	sw	a5,-52(s0)
 426:	fd843783          	ld	a5,-40(s0)
 42a:	fef43423          	sd	a5,-24(s0)
 42e:	fd043783          	ld	a5,-48(s0)
 432:	fef43023          	sd	a5,-32(s0)
 436:	a0a1                	j	47e <memcmp+0x6c>
 438:	fe843783          	ld	a5,-24(s0)
 43c:	0007c703          	lbu	a4,0(a5)
 440:	fe043783          	ld	a5,-32(s0)
 444:	0007c783          	lbu	a5,0(a5)
 448:	02f70163          	beq	a4,a5,46a <memcmp+0x58>
 44c:	fe843783          	ld	a5,-24(s0)
 450:	0007c783          	lbu	a5,0(a5)
 454:	0007871b          	sext.w	a4,a5
 458:	fe043783          	ld	a5,-32(s0)
 45c:	0007c783          	lbu	a5,0(a5)
 460:	2781                	sext.w	a5,a5
 462:	40f707bb          	subw	a5,a4,a5
 466:	2781                	sext.w	a5,a5
 468:	a01d                	j	48e <memcmp+0x7c>
 46a:	fe843783          	ld	a5,-24(s0)
 46e:	0785                	addi	a5,a5,1
 470:	fef43423          	sd	a5,-24(s0)
 474:	fe043783          	ld	a5,-32(s0)
 478:	0785                	addi	a5,a5,1
 47a:	fef43023          	sd	a5,-32(s0)
 47e:	fcc42783          	lw	a5,-52(s0)
 482:	fff7871b          	addiw	a4,a5,-1
 486:	fce42623          	sw	a4,-52(s0)
 48a:	f7dd                	bnez	a5,438 <memcmp+0x26>
 48c:	4781                	li	a5,0
 48e:	853e                	mv	a0,a5
 490:	7462                	ld	s0,56(sp)
 492:	6121                	addi	sp,sp,64
 494:	8082                	ret

0000000000000496 <memcpy>:
 496:	7179                	addi	sp,sp,-48
 498:	f406                	sd	ra,40(sp)
 49a:	f022                	sd	s0,32(sp)
 49c:	1800                	addi	s0,sp,48
 49e:	fea43423          	sd	a0,-24(s0)
 4a2:	feb43023          	sd	a1,-32(s0)
 4a6:	87b2                	mv	a5,a2
 4a8:	fcf42e23          	sw	a5,-36(s0)
 4ac:	fdc42783          	lw	a5,-36(s0)
 4b0:	863e                	mv	a2,a5
 4b2:	fe043583          	ld	a1,-32(s0)
 4b6:	fe843503          	ld	a0,-24(s0)
 4ba:	00000097          	auipc	ra,0x0
 4be:	e96080e7          	jalr	-362(ra) # 350 <memmove>
 4c2:	87aa                	mv	a5,a0
 4c4:	853e                	mv	a0,a5
 4c6:	70a2                	ld	ra,40(sp)
 4c8:	7402                	ld	s0,32(sp)
 4ca:	6145                	addi	sp,sp,48
 4cc:	8082                	ret

00000000000004ce <fork>:
 4ce:	4885                	li	a7,1
 4d0:	00000073          	ecall
 4d4:	8082                	ret

00000000000004d6 <exit>:
 4d6:	4889                	li	a7,2
 4d8:	00000073          	ecall
 4dc:	8082                	ret

00000000000004de <wait>:
 4de:	488d                	li	a7,3
 4e0:	00000073          	ecall
 4e4:	8082                	ret

00000000000004e6 <pipe>:
 4e6:	4891                	li	a7,4
 4e8:	00000073          	ecall
 4ec:	8082                	ret

00000000000004ee <read>:
 4ee:	4895                	li	a7,5
 4f0:	00000073          	ecall
 4f4:	8082                	ret

00000000000004f6 <write>:
 4f6:	48c1                	li	a7,16
 4f8:	00000073          	ecall
 4fc:	8082                	ret

00000000000004fe <close>:
 4fe:	48d5                	li	a7,21
 500:	00000073          	ecall
 504:	8082                	ret

0000000000000506 <kill>:
 506:	4899                	li	a7,6
 508:	00000073          	ecall
 50c:	8082                	ret

000000000000050e <exec>:
 50e:	489d                	li	a7,7
 510:	00000073          	ecall
 514:	8082                	ret

0000000000000516 <open>:
 516:	48bd                	li	a7,15
 518:	00000073          	ecall
 51c:	8082                	ret

000000000000051e <mknod>:
 51e:	48c5                	li	a7,17
 520:	00000073          	ecall
 524:	8082                	ret

0000000000000526 <unlink>:
 526:	48c9                	li	a7,18
 528:	00000073          	ecall
 52c:	8082                	ret

000000000000052e <fstat>:
 52e:	48a1                	li	a7,8
 530:	00000073          	ecall
 534:	8082                	ret

0000000000000536 <link>:
 536:	48cd                	li	a7,19
 538:	00000073          	ecall
 53c:	8082                	ret

000000000000053e <mkdir>:
 53e:	48d1                	li	a7,20
 540:	00000073          	ecall
 544:	8082                	ret

0000000000000546 <chdir>:
 546:	48a5                	li	a7,9
 548:	00000073          	ecall
 54c:	8082                	ret

000000000000054e <dup>:
 54e:	48a9                	li	a7,10
 550:	00000073          	ecall
 554:	8082                	ret

0000000000000556 <getpid>:
 556:	48ad                	li	a7,11
 558:	00000073          	ecall
 55c:	8082                	ret

000000000000055e <sbrk>:
 55e:	48b1                	li	a7,12
 560:	00000073          	ecall
 564:	8082                	ret

0000000000000566 <sleep>:
 566:	48b5                	li	a7,13
 568:	00000073          	ecall
 56c:	8082                	ret

000000000000056e <uptime>:
 56e:	48b9                	li	a7,14
 570:	00000073          	ecall
 574:	8082                	ret

0000000000000576 <waitx>:
 576:	48d9                	li	a7,22
 578:	00000073          	ecall
 57c:	8082                	ret

000000000000057e <getsyscount>:
 57e:	48dd                	li	a7,23
 580:	00000073          	ecall
 584:	8082                	ret

0000000000000586 <sigalarm>:
 586:	48e1                	li	a7,24
 588:	00000073          	ecall
 58c:	8082                	ret

000000000000058e <sigreturn>:
 58e:	48e5                	li	a7,25
 590:	00000073          	ecall
 594:	8082                	ret

0000000000000596 <settickets>:
 596:	48e9                	li	a7,26
 598:	00000073          	ecall
 59c:	8082                	ret

000000000000059e <putc>:
 59e:	1101                	addi	sp,sp,-32
 5a0:	ec06                	sd	ra,24(sp)
 5a2:	e822                	sd	s0,16(sp)
 5a4:	1000                	addi	s0,sp,32
 5a6:	87aa                	mv	a5,a0
 5a8:	872e                	mv	a4,a1
 5aa:	fef42623          	sw	a5,-20(s0)
 5ae:	87ba                	mv	a5,a4
 5b0:	fef405a3          	sb	a5,-21(s0)
 5b4:	feb40713          	addi	a4,s0,-21
 5b8:	fec42783          	lw	a5,-20(s0)
 5bc:	4605                	li	a2,1
 5be:	85ba                	mv	a1,a4
 5c0:	853e                	mv	a0,a5
 5c2:	00000097          	auipc	ra,0x0
 5c6:	f34080e7          	jalr	-204(ra) # 4f6 <write>
 5ca:	0001                	nop
 5cc:	60e2                	ld	ra,24(sp)
 5ce:	6442                	ld	s0,16(sp)
 5d0:	6105                	addi	sp,sp,32
 5d2:	8082                	ret

00000000000005d4 <printint>:
 5d4:	7139                	addi	sp,sp,-64
 5d6:	fc06                	sd	ra,56(sp)
 5d8:	f822                	sd	s0,48(sp)
 5da:	0080                	addi	s0,sp,64
 5dc:	87aa                	mv	a5,a0
 5de:	8736                	mv	a4,a3
 5e0:	fcf42623          	sw	a5,-52(s0)
 5e4:	87ae                	mv	a5,a1
 5e6:	fcf42423          	sw	a5,-56(s0)
 5ea:	87b2                	mv	a5,a2
 5ec:	fcf42223          	sw	a5,-60(s0)
 5f0:	87ba                	mv	a5,a4
 5f2:	fcf42023          	sw	a5,-64(s0)
 5f6:	fe042423          	sw	zero,-24(s0)
 5fa:	fc042783          	lw	a5,-64(s0)
 5fe:	2781                	sext.w	a5,a5
 600:	c38d                	beqz	a5,622 <printint+0x4e>
 602:	fc842783          	lw	a5,-56(s0)
 606:	2781                	sext.w	a5,a5
 608:	0007dd63          	bgez	a5,622 <printint+0x4e>
 60c:	4785                	li	a5,1
 60e:	fef42423          	sw	a5,-24(s0)
 612:	fc842783          	lw	a5,-56(s0)
 616:	40f007bb          	negw	a5,a5
 61a:	2781                	sext.w	a5,a5
 61c:	fef42223          	sw	a5,-28(s0)
 620:	a029                	j	62a <printint+0x56>
 622:	fc842783          	lw	a5,-56(s0)
 626:	fef42223          	sw	a5,-28(s0)
 62a:	fe042623          	sw	zero,-20(s0)
 62e:	fc442783          	lw	a5,-60(s0)
 632:	fe442703          	lw	a4,-28(s0)
 636:	02f777bb          	remuw	a5,a4,a5
 63a:	0007861b          	sext.w	a2,a5
 63e:	fec42783          	lw	a5,-20(s0)
 642:	0017871b          	addiw	a4,a5,1
 646:	fee42623          	sw	a4,-20(s0)
 64a:	00001697          	auipc	a3,0x1
 64e:	9b668693          	addi	a3,a3,-1610 # 1000 <digits>
 652:	02061713          	slli	a4,a2,0x20
 656:	9301                	srli	a4,a4,0x20
 658:	9736                	add	a4,a4,a3
 65a:	00074703          	lbu	a4,0(a4)
 65e:	17c1                	addi	a5,a5,-16
 660:	97a2                	add	a5,a5,s0
 662:	fee78023          	sb	a4,-32(a5)
 666:	fc442783          	lw	a5,-60(s0)
 66a:	fe442703          	lw	a4,-28(s0)
 66e:	02f757bb          	divuw	a5,a4,a5
 672:	fef42223          	sw	a5,-28(s0)
 676:	fe442783          	lw	a5,-28(s0)
 67a:	2781                	sext.w	a5,a5
 67c:	fbcd                	bnez	a5,62e <printint+0x5a>
 67e:	fe842783          	lw	a5,-24(s0)
 682:	2781                	sext.w	a5,a5
 684:	cf85                	beqz	a5,6bc <printint+0xe8>
 686:	fec42783          	lw	a5,-20(s0)
 68a:	0017871b          	addiw	a4,a5,1
 68e:	fee42623          	sw	a4,-20(s0)
 692:	17c1                	addi	a5,a5,-16
 694:	97a2                	add	a5,a5,s0
 696:	02d00713          	li	a4,45
 69a:	fee78023          	sb	a4,-32(a5)
 69e:	a839                	j	6bc <printint+0xe8>
 6a0:	fec42783          	lw	a5,-20(s0)
 6a4:	17c1                	addi	a5,a5,-16
 6a6:	97a2                	add	a5,a5,s0
 6a8:	fe07c703          	lbu	a4,-32(a5)
 6ac:	fcc42783          	lw	a5,-52(s0)
 6b0:	85ba                	mv	a1,a4
 6b2:	853e                	mv	a0,a5
 6b4:	00000097          	auipc	ra,0x0
 6b8:	eea080e7          	jalr	-278(ra) # 59e <putc>
 6bc:	fec42783          	lw	a5,-20(s0)
 6c0:	37fd                	addiw	a5,a5,-1
 6c2:	fef42623          	sw	a5,-20(s0)
 6c6:	fec42783          	lw	a5,-20(s0)
 6ca:	2781                	sext.w	a5,a5
 6cc:	fc07dae3          	bgez	a5,6a0 <printint+0xcc>
 6d0:	0001                	nop
 6d2:	0001                	nop
 6d4:	70e2                	ld	ra,56(sp)
 6d6:	7442                	ld	s0,48(sp)
 6d8:	6121                	addi	sp,sp,64
 6da:	8082                	ret

00000000000006dc <printptr>:
 6dc:	7179                	addi	sp,sp,-48
 6de:	f406                	sd	ra,40(sp)
 6e0:	f022                	sd	s0,32(sp)
 6e2:	1800                	addi	s0,sp,48
 6e4:	87aa                	mv	a5,a0
 6e6:	fcb43823          	sd	a1,-48(s0)
 6ea:	fcf42e23          	sw	a5,-36(s0)
 6ee:	fdc42783          	lw	a5,-36(s0)
 6f2:	03000593          	li	a1,48
 6f6:	853e                	mv	a0,a5
 6f8:	00000097          	auipc	ra,0x0
 6fc:	ea6080e7          	jalr	-346(ra) # 59e <putc>
 700:	fdc42783          	lw	a5,-36(s0)
 704:	07800593          	li	a1,120
 708:	853e                	mv	a0,a5
 70a:	00000097          	auipc	ra,0x0
 70e:	e94080e7          	jalr	-364(ra) # 59e <putc>
 712:	fe042623          	sw	zero,-20(s0)
 716:	a82d                	j	750 <printptr+0x74>
 718:	fd043783          	ld	a5,-48(s0)
 71c:	93f1                	srli	a5,a5,0x3c
 71e:	00001717          	auipc	a4,0x1
 722:	8e270713          	addi	a4,a4,-1822 # 1000 <digits>
 726:	97ba                	add	a5,a5,a4
 728:	0007c703          	lbu	a4,0(a5)
 72c:	fdc42783          	lw	a5,-36(s0)
 730:	85ba                	mv	a1,a4
 732:	853e                	mv	a0,a5
 734:	00000097          	auipc	ra,0x0
 738:	e6a080e7          	jalr	-406(ra) # 59e <putc>
 73c:	fec42783          	lw	a5,-20(s0)
 740:	2785                	addiw	a5,a5,1
 742:	fef42623          	sw	a5,-20(s0)
 746:	fd043783          	ld	a5,-48(s0)
 74a:	0792                	slli	a5,a5,0x4
 74c:	fcf43823          	sd	a5,-48(s0)
 750:	fec42783          	lw	a5,-20(s0)
 754:	873e                	mv	a4,a5
 756:	47bd                	li	a5,15
 758:	fce7f0e3          	bgeu	a5,a4,718 <printptr+0x3c>
 75c:	0001                	nop
 75e:	0001                	nop
 760:	70a2                	ld	ra,40(sp)
 762:	7402                	ld	s0,32(sp)
 764:	6145                	addi	sp,sp,48
 766:	8082                	ret

0000000000000768 <vprintf>:
 768:	715d                	addi	sp,sp,-80
 76a:	e486                	sd	ra,72(sp)
 76c:	e0a2                	sd	s0,64(sp)
 76e:	0880                	addi	s0,sp,80
 770:	87aa                	mv	a5,a0
 772:	fcb43023          	sd	a1,-64(s0)
 776:	fac43c23          	sd	a2,-72(s0)
 77a:	fcf42623          	sw	a5,-52(s0)
 77e:	fe042023          	sw	zero,-32(s0)
 782:	fe042223          	sw	zero,-28(s0)
 786:	a42d                	j	9b0 <vprintf+0x248>
 788:	fe442783          	lw	a5,-28(s0)
 78c:	fc043703          	ld	a4,-64(s0)
 790:	97ba                	add	a5,a5,a4
 792:	0007c783          	lbu	a5,0(a5)
 796:	fcf42e23          	sw	a5,-36(s0)
 79a:	fe042783          	lw	a5,-32(s0)
 79e:	2781                	sext.w	a5,a5
 7a0:	eb9d                	bnez	a5,7d6 <vprintf+0x6e>
 7a2:	fdc42783          	lw	a5,-36(s0)
 7a6:	0007871b          	sext.w	a4,a5
 7aa:	02500793          	li	a5,37
 7ae:	00f71763          	bne	a4,a5,7bc <vprintf+0x54>
 7b2:	02500793          	li	a5,37
 7b6:	fef42023          	sw	a5,-32(s0)
 7ba:	a2f5                	j	9a6 <vprintf+0x23e>
 7bc:	fdc42783          	lw	a5,-36(s0)
 7c0:	0ff7f713          	zext.b	a4,a5
 7c4:	fcc42783          	lw	a5,-52(s0)
 7c8:	85ba                	mv	a1,a4
 7ca:	853e                	mv	a0,a5
 7cc:	00000097          	auipc	ra,0x0
 7d0:	dd2080e7          	jalr	-558(ra) # 59e <putc>
 7d4:	aac9                	j	9a6 <vprintf+0x23e>
 7d6:	fe042783          	lw	a5,-32(s0)
 7da:	0007871b          	sext.w	a4,a5
 7de:	02500793          	li	a5,37
 7e2:	1cf71263          	bne	a4,a5,9a6 <vprintf+0x23e>
 7e6:	fdc42783          	lw	a5,-36(s0)
 7ea:	0007871b          	sext.w	a4,a5
 7ee:	06400793          	li	a5,100
 7f2:	02f71463          	bne	a4,a5,81a <vprintf+0xb2>
 7f6:	fb843783          	ld	a5,-72(s0)
 7fa:	00878713          	addi	a4,a5,8
 7fe:	fae43c23          	sd	a4,-72(s0)
 802:	4398                	lw	a4,0(a5)
 804:	fcc42783          	lw	a5,-52(s0)
 808:	4685                	li	a3,1
 80a:	4629                	li	a2,10
 80c:	85ba                	mv	a1,a4
 80e:	853e                	mv	a0,a5
 810:	00000097          	auipc	ra,0x0
 814:	dc4080e7          	jalr	-572(ra) # 5d4 <printint>
 818:	a269                	j	9a2 <vprintf+0x23a>
 81a:	fdc42783          	lw	a5,-36(s0)
 81e:	0007871b          	sext.w	a4,a5
 822:	06c00793          	li	a5,108
 826:	02f71663          	bne	a4,a5,852 <vprintf+0xea>
 82a:	fb843783          	ld	a5,-72(s0)
 82e:	00878713          	addi	a4,a5,8
 832:	fae43c23          	sd	a4,-72(s0)
 836:	639c                	ld	a5,0(a5)
 838:	0007871b          	sext.w	a4,a5
 83c:	fcc42783          	lw	a5,-52(s0)
 840:	4681                	li	a3,0
 842:	4629                	li	a2,10
 844:	85ba                	mv	a1,a4
 846:	853e                	mv	a0,a5
 848:	00000097          	auipc	ra,0x0
 84c:	d8c080e7          	jalr	-628(ra) # 5d4 <printint>
 850:	aa89                	j	9a2 <vprintf+0x23a>
 852:	fdc42783          	lw	a5,-36(s0)
 856:	0007871b          	sext.w	a4,a5
 85a:	07800793          	li	a5,120
 85e:	02f71463          	bne	a4,a5,886 <vprintf+0x11e>
 862:	fb843783          	ld	a5,-72(s0)
 866:	00878713          	addi	a4,a5,8
 86a:	fae43c23          	sd	a4,-72(s0)
 86e:	4398                	lw	a4,0(a5)
 870:	fcc42783          	lw	a5,-52(s0)
 874:	4681                	li	a3,0
 876:	4641                	li	a2,16
 878:	85ba                	mv	a1,a4
 87a:	853e                	mv	a0,a5
 87c:	00000097          	auipc	ra,0x0
 880:	d58080e7          	jalr	-680(ra) # 5d4 <printint>
 884:	aa39                	j	9a2 <vprintf+0x23a>
 886:	fdc42783          	lw	a5,-36(s0)
 88a:	0007871b          	sext.w	a4,a5
 88e:	07000793          	li	a5,112
 892:	02f71263          	bne	a4,a5,8b6 <vprintf+0x14e>
 896:	fb843783          	ld	a5,-72(s0)
 89a:	00878713          	addi	a4,a5,8
 89e:	fae43c23          	sd	a4,-72(s0)
 8a2:	6398                	ld	a4,0(a5)
 8a4:	fcc42783          	lw	a5,-52(s0)
 8a8:	85ba                	mv	a1,a4
 8aa:	853e                	mv	a0,a5
 8ac:	00000097          	auipc	ra,0x0
 8b0:	e30080e7          	jalr	-464(ra) # 6dc <printptr>
 8b4:	a0fd                	j	9a2 <vprintf+0x23a>
 8b6:	fdc42783          	lw	a5,-36(s0)
 8ba:	0007871b          	sext.w	a4,a5
 8be:	07300793          	li	a5,115
 8c2:	04f71c63          	bne	a4,a5,91a <vprintf+0x1b2>
 8c6:	fb843783          	ld	a5,-72(s0)
 8ca:	00878713          	addi	a4,a5,8
 8ce:	fae43c23          	sd	a4,-72(s0)
 8d2:	639c                	ld	a5,0(a5)
 8d4:	fef43423          	sd	a5,-24(s0)
 8d8:	fe843783          	ld	a5,-24(s0)
 8dc:	eb8d                	bnez	a5,90e <vprintf+0x1a6>
 8de:	00000797          	auipc	a5,0x0
 8e2:	48278793          	addi	a5,a5,1154 # d60 <malloc+0x148>
 8e6:	fef43423          	sd	a5,-24(s0)
 8ea:	a015                	j	90e <vprintf+0x1a6>
 8ec:	fe843783          	ld	a5,-24(s0)
 8f0:	0007c703          	lbu	a4,0(a5)
 8f4:	fcc42783          	lw	a5,-52(s0)
 8f8:	85ba                	mv	a1,a4
 8fa:	853e                	mv	a0,a5
 8fc:	00000097          	auipc	ra,0x0
 900:	ca2080e7          	jalr	-862(ra) # 59e <putc>
 904:	fe843783          	ld	a5,-24(s0)
 908:	0785                	addi	a5,a5,1
 90a:	fef43423          	sd	a5,-24(s0)
 90e:	fe843783          	ld	a5,-24(s0)
 912:	0007c783          	lbu	a5,0(a5)
 916:	fbf9                	bnez	a5,8ec <vprintf+0x184>
 918:	a069                	j	9a2 <vprintf+0x23a>
 91a:	fdc42783          	lw	a5,-36(s0)
 91e:	0007871b          	sext.w	a4,a5
 922:	06300793          	li	a5,99
 926:	02f71463          	bne	a4,a5,94e <vprintf+0x1e6>
 92a:	fb843783          	ld	a5,-72(s0)
 92e:	00878713          	addi	a4,a5,8
 932:	fae43c23          	sd	a4,-72(s0)
 936:	439c                	lw	a5,0(a5)
 938:	0ff7f713          	zext.b	a4,a5
 93c:	fcc42783          	lw	a5,-52(s0)
 940:	85ba                	mv	a1,a4
 942:	853e                	mv	a0,a5
 944:	00000097          	auipc	ra,0x0
 948:	c5a080e7          	jalr	-934(ra) # 59e <putc>
 94c:	a899                	j	9a2 <vprintf+0x23a>
 94e:	fdc42783          	lw	a5,-36(s0)
 952:	0007871b          	sext.w	a4,a5
 956:	02500793          	li	a5,37
 95a:	00f71f63          	bne	a4,a5,978 <vprintf+0x210>
 95e:	fdc42783          	lw	a5,-36(s0)
 962:	0ff7f713          	zext.b	a4,a5
 966:	fcc42783          	lw	a5,-52(s0)
 96a:	85ba                	mv	a1,a4
 96c:	853e                	mv	a0,a5
 96e:	00000097          	auipc	ra,0x0
 972:	c30080e7          	jalr	-976(ra) # 59e <putc>
 976:	a035                	j	9a2 <vprintf+0x23a>
 978:	fcc42783          	lw	a5,-52(s0)
 97c:	02500593          	li	a1,37
 980:	853e                	mv	a0,a5
 982:	00000097          	auipc	ra,0x0
 986:	c1c080e7          	jalr	-996(ra) # 59e <putc>
 98a:	fdc42783          	lw	a5,-36(s0)
 98e:	0ff7f713          	zext.b	a4,a5
 992:	fcc42783          	lw	a5,-52(s0)
 996:	85ba                	mv	a1,a4
 998:	853e                	mv	a0,a5
 99a:	00000097          	auipc	ra,0x0
 99e:	c04080e7          	jalr	-1020(ra) # 59e <putc>
 9a2:	fe042023          	sw	zero,-32(s0)
 9a6:	fe442783          	lw	a5,-28(s0)
 9aa:	2785                	addiw	a5,a5,1
 9ac:	fef42223          	sw	a5,-28(s0)
 9b0:	fe442783          	lw	a5,-28(s0)
 9b4:	fc043703          	ld	a4,-64(s0)
 9b8:	97ba                	add	a5,a5,a4
 9ba:	0007c783          	lbu	a5,0(a5)
 9be:	dc0795e3          	bnez	a5,788 <vprintf+0x20>
 9c2:	0001                	nop
 9c4:	0001                	nop
 9c6:	60a6                	ld	ra,72(sp)
 9c8:	6406                	ld	s0,64(sp)
 9ca:	6161                	addi	sp,sp,80
 9cc:	8082                	ret

00000000000009ce <fprintf>:
 9ce:	7159                	addi	sp,sp,-112
 9d0:	fc06                	sd	ra,56(sp)
 9d2:	f822                	sd	s0,48(sp)
 9d4:	0080                	addi	s0,sp,64
 9d6:	fcb43823          	sd	a1,-48(s0)
 9da:	e010                	sd	a2,0(s0)
 9dc:	e414                	sd	a3,8(s0)
 9de:	e818                	sd	a4,16(s0)
 9e0:	ec1c                	sd	a5,24(s0)
 9e2:	03043023          	sd	a6,32(s0)
 9e6:	03143423          	sd	a7,40(s0)
 9ea:	87aa                	mv	a5,a0
 9ec:	fcf42e23          	sw	a5,-36(s0)
 9f0:	03040793          	addi	a5,s0,48
 9f4:	fcf43423          	sd	a5,-56(s0)
 9f8:	fc843783          	ld	a5,-56(s0)
 9fc:	fd078793          	addi	a5,a5,-48
 a00:	fef43423          	sd	a5,-24(s0)
 a04:	fe843703          	ld	a4,-24(s0)
 a08:	fdc42783          	lw	a5,-36(s0)
 a0c:	863a                	mv	a2,a4
 a0e:	fd043583          	ld	a1,-48(s0)
 a12:	853e                	mv	a0,a5
 a14:	00000097          	auipc	ra,0x0
 a18:	d54080e7          	jalr	-684(ra) # 768 <vprintf>
 a1c:	0001                	nop
 a1e:	70e2                	ld	ra,56(sp)
 a20:	7442                	ld	s0,48(sp)
 a22:	6165                	addi	sp,sp,112
 a24:	8082                	ret

0000000000000a26 <printf>:
 a26:	7159                	addi	sp,sp,-112
 a28:	f406                	sd	ra,40(sp)
 a2a:	f022                	sd	s0,32(sp)
 a2c:	1800                	addi	s0,sp,48
 a2e:	fca43c23          	sd	a0,-40(s0)
 a32:	e40c                	sd	a1,8(s0)
 a34:	e810                	sd	a2,16(s0)
 a36:	ec14                	sd	a3,24(s0)
 a38:	f018                	sd	a4,32(s0)
 a3a:	f41c                	sd	a5,40(s0)
 a3c:	03043823          	sd	a6,48(s0)
 a40:	03143c23          	sd	a7,56(s0)
 a44:	04040793          	addi	a5,s0,64
 a48:	fcf43823          	sd	a5,-48(s0)
 a4c:	fd043783          	ld	a5,-48(s0)
 a50:	fc878793          	addi	a5,a5,-56
 a54:	fef43423          	sd	a5,-24(s0)
 a58:	fe843783          	ld	a5,-24(s0)
 a5c:	863e                	mv	a2,a5
 a5e:	fd843583          	ld	a1,-40(s0)
 a62:	4505                	li	a0,1
 a64:	00000097          	auipc	ra,0x0
 a68:	d04080e7          	jalr	-764(ra) # 768 <vprintf>
 a6c:	0001                	nop
 a6e:	70a2                	ld	ra,40(sp)
 a70:	7402                	ld	s0,32(sp)
 a72:	6165                	addi	sp,sp,112
 a74:	8082                	ret

0000000000000a76 <free>:
 a76:	7179                	addi	sp,sp,-48
 a78:	f422                	sd	s0,40(sp)
 a7a:	1800                	addi	s0,sp,48
 a7c:	fca43c23          	sd	a0,-40(s0)
 a80:	fd843783          	ld	a5,-40(s0)
 a84:	17c1                	addi	a5,a5,-16
 a86:	fef43023          	sd	a5,-32(s0)
 a8a:	00000797          	auipc	a5,0x0
 a8e:	5a678793          	addi	a5,a5,1446 # 1030 <freep>
 a92:	639c                	ld	a5,0(a5)
 a94:	fef43423          	sd	a5,-24(s0)
 a98:	a815                	j	acc <free+0x56>
 a9a:	fe843783          	ld	a5,-24(s0)
 a9e:	639c                	ld	a5,0(a5)
 aa0:	fe843703          	ld	a4,-24(s0)
 aa4:	00f76f63          	bltu	a4,a5,ac2 <free+0x4c>
 aa8:	fe043703          	ld	a4,-32(s0)
 aac:	fe843783          	ld	a5,-24(s0)
 ab0:	02e7eb63          	bltu	a5,a4,ae6 <free+0x70>
 ab4:	fe843783          	ld	a5,-24(s0)
 ab8:	639c                	ld	a5,0(a5)
 aba:	fe043703          	ld	a4,-32(s0)
 abe:	02f76463          	bltu	a4,a5,ae6 <free+0x70>
 ac2:	fe843783          	ld	a5,-24(s0)
 ac6:	639c                	ld	a5,0(a5)
 ac8:	fef43423          	sd	a5,-24(s0)
 acc:	fe043703          	ld	a4,-32(s0)
 ad0:	fe843783          	ld	a5,-24(s0)
 ad4:	fce7f3e3          	bgeu	a5,a4,a9a <free+0x24>
 ad8:	fe843783          	ld	a5,-24(s0)
 adc:	639c                	ld	a5,0(a5)
 ade:	fe043703          	ld	a4,-32(s0)
 ae2:	faf77ce3          	bgeu	a4,a5,a9a <free+0x24>
 ae6:	fe043783          	ld	a5,-32(s0)
 aea:	479c                	lw	a5,8(a5)
 aec:	1782                	slli	a5,a5,0x20
 aee:	9381                	srli	a5,a5,0x20
 af0:	0792                	slli	a5,a5,0x4
 af2:	fe043703          	ld	a4,-32(s0)
 af6:	973e                	add	a4,a4,a5
 af8:	fe843783          	ld	a5,-24(s0)
 afc:	639c                	ld	a5,0(a5)
 afe:	02f71763          	bne	a4,a5,b2c <free+0xb6>
 b02:	fe043783          	ld	a5,-32(s0)
 b06:	4798                	lw	a4,8(a5)
 b08:	fe843783          	ld	a5,-24(s0)
 b0c:	639c                	ld	a5,0(a5)
 b0e:	479c                	lw	a5,8(a5)
 b10:	9fb9                	addw	a5,a5,a4
 b12:	0007871b          	sext.w	a4,a5
 b16:	fe043783          	ld	a5,-32(s0)
 b1a:	c798                	sw	a4,8(a5)
 b1c:	fe843783          	ld	a5,-24(s0)
 b20:	639c                	ld	a5,0(a5)
 b22:	6398                	ld	a4,0(a5)
 b24:	fe043783          	ld	a5,-32(s0)
 b28:	e398                	sd	a4,0(a5)
 b2a:	a039                	j	b38 <free+0xc2>
 b2c:	fe843783          	ld	a5,-24(s0)
 b30:	6398                	ld	a4,0(a5)
 b32:	fe043783          	ld	a5,-32(s0)
 b36:	e398                	sd	a4,0(a5)
 b38:	fe843783          	ld	a5,-24(s0)
 b3c:	479c                	lw	a5,8(a5)
 b3e:	1782                	slli	a5,a5,0x20
 b40:	9381                	srli	a5,a5,0x20
 b42:	0792                	slli	a5,a5,0x4
 b44:	fe843703          	ld	a4,-24(s0)
 b48:	97ba                	add	a5,a5,a4
 b4a:	fe043703          	ld	a4,-32(s0)
 b4e:	02f71563          	bne	a4,a5,b78 <free+0x102>
 b52:	fe843783          	ld	a5,-24(s0)
 b56:	4798                	lw	a4,8(a5)
 b58:	fe043783          	ld	a5,-32(s0)
 b5c:	479c                	lw	a5,8(a5)
 b5e:	9fb9                	addw	a5,a5,a4
 b60:	0007871b          	sext.w	a4,a5
 b64:	fe843783          	ld	a5,-24(s0)
 b68:	c798                	sw	a4,8(a5)
 b6a:	fe043783          	ld	a5,-32(s0)
 b6e:	6398                	ld	a4,0(a5)
 b70:	fe843783          	ld	a5,-24(s0)
 b74:	e398                	sd	a4,0(a5)
 b76:	a031                	j	b82 <free+0x10c>
 b78:	fe843783          	ld	a5,-24(s0)
 b7c:	fe043703          	ld	a4,-32(s0)
 b80:	e398                	sd	a4,0(a5)
 b82:	00000797          	auipc	a5,0x0
 b86:	4ae78793          	addi	a5,a5,1198 # 1030 <freep>
 b8a:	fe843703          	ld	a4,-24(s0)
 b8e:	e398                	sd	a4,0(a5)
 b90:	0001                	nop
 b92:	7422                	ld	s0,40(sp)
 b94:	6145                	addi	sp,sp,48
 b96:	8082                	ret

0000000000000b98 <morecore>:
 b98:	7179                	addi	sp,sp,-48
 b9a:	f406                	sd	ra,40(sp)
 b9c:	f022                	sd	s0,32(sp)
 b9e:	1800                	addi	s0,sp,48
 ba0:	87aa                	mv	a5,a0
 ba2:	fcf42e23          	sw	a5,-36(s0)
 ba6:	fdc42783          	lw	a5,-36(s0)
 baa:	0007871b          	sext.w	a4,a5
 bae:	6785                	lui	a5,0x1
 bb0:	00f77563          	bgeu	a4,a5,bba <morecore+0x22>
 bb4:	6785                	lui	a5,0x1
 bb6:	fcf42e23          	sw	a5,-36(s0)
 bba:	fdc42783          	lw	a5,-36(s0)
 bbe:	0047979b          	slliw	a5,a5,0x4
 bc2:	2781                	sext.w	a5,a5
 bc4:	2781                	sext.w	a5,a5
 bc6:	853e                	mv	a0,a5
 bc8:	00000097          	auipc	ra,0x0
 bcc:	996080e7          	jalr	-1642(ra) # 55e <sbrk>
 bd0:	fea43423          	sd	a0,-24(s0)
 bd4:	fe843703          	ld	a4,-24(s0)
 bd8:	57fd                	li	a5,-1
 bda:	00f71463          	bne	a4,a5,be2 <morecore+0x4a>
 bde:	4781                	li	a5,0
 be0:	a03d                	j	c0e <morecore+0x76>
 be2:	fe843783          	ld	a5,-24(s0)
 be6:	fef43023          	sd	a5,-32(s0)
 bea:	fe043783          	ld	a5,-32(s0)
 bee:	fdc42703          	lw	a4,-36(s0)
 bf2:	c798                	sw	a4,8(a5)
 bf4:	fe043783          	ld	a5,-32(s0)
 bf8:	07c1                	addi	a5,a5,16 # 1010 <digits+0x10>
 bfa:	853e                	mv	a0,a5
 bfc:	00000097          	auipc	ra,0x0
 c00:	e7a080e7          	jalr	-390(ra) # a76 <free>
 c04:	00000797          	auipc	a5,0x0
 c08:	42c78793          	addi	a5,a5,1068 # 1030 <freep>
 c0c:	639c                	ld	a5,0(a5)
 c0e:	853e                	mv	a0,a5
 c10:	70a2                	ld	ra,40(sp)
 c12:	7402                	ld	s0,32(sp)
 c14:	6145                	addi	sp,sp,48
 c16:	8082                	ret

0000000000000c18 <malloc>:
 c18:	7139                	addi	sp,sp,-64
 c1a:	fc06                	sd	ra,56(sp)
 c1c:	f822                	sd	s0,48(sp)
 c1e:	0080                	addi	s0,sp,64
 c20:	87aa                	mv	a5,a0
 c22:	fcf42623          	sw	a5,-52(s0)
 c26:	fcc46783          	lwu	a5,-52(s0)
 c2a:	07bd                	addi	a5,a5,15
 c2c:	8391                	srli	a5,a5,0x4
 c2e:	2781                	sext.w	a5,a5
 c30:	2785                	addiw	a5,a5,1
 c32:	fcf42e23          	sw	a5,-36(s0)
 c36:	00000797          	auipc	a5,0x0
 c3a:	3fa78793          	addi	a5,a5,1018 # 1030 <freep>
 c3e:	639c                	ld	a5,0(a5)
 c40:	fef43023          	sd	a5,-32(s0)
 c44:	fe043783          	ld	a5,-32(s0)
 c48:	ef95                	bnez	a5,c84 <malloc+0x6c>
 c4a:	00000797          	auipc	a5,0x0
 c4e:	3d678793          	addi	a5,a5,982 # 1020 <base>
 c52:	fef43023          	sd	a5,-32(s0)
 c56:	00000797          	auipc	a5,0x0
 c5a:	3da78793          	addi	a5,a5,986 # 1030 <freep>
 c5e:	fe043703          	ld	a4,-32(s0)
 c62:	e398                	sd	a4,0(a5)
 c64:	00000797          	auipc	a5,0x0
 c68:	3cc78793          	addi	a5,a5,972 # 1030 <freep>
 c6c:	6398                	ld	a4,0(a5)
 c6e:	00000797          	auipc	a5,0x0
 c72:	3b278793          	addi	a5,a5,946 # 1020 <base>
 c76:	e398                	sd	a4,0(a5)
 c78:	00000797          	auipc	a5,0x0
 c7c:	3a878793          	addi	a5,a5,936 # 1020 <base>
 c80:	0007a423          	sw	zero,8(a5)
 c84:	fe043783          	ld	a5,-32(s0)
 c88:	639c                	ld	a5,0(a5)
 c8a:	fef43423          	sd	a5,-24(s0)
 c8e:	fe843783          	ld	a5,-24(s0)
 c92:	4798                	lw	a4,8(a5)
 c94:	fdc42783          	lw	a5,-36(s0)
 c98:	2781                	sext.w	a5,a5
 c9a:	06f76763          	bltu	a4,a5,d08 <malloc+0xf0>
 c9e:	fe843783          	ld	a5,-24(s0)
 ca2:	4798                	lw	a4,8(a5)
 ca4:	fdc42783          	lw	a5,-36(s0)
 ca8:	2781                	sext.w	a5,a5
 caa:	00e79963          	bne	a5,a4,cbc <malloc+0xa4>
 cae:	fe843783          	ld	a5,-24(s0)
 cb2:	6398                	ld	a4,0(a5)
 cb4:	fe043783          	ld	a5,-32(s0)
 cb8:	e398                	sd	a4,0(a5)
 cba:	a825                	j	cf2 <malloc+0xda>
 cbc:	fe843783          	ld	a5,-24(s0)
 cc0:	479c                	lw	a5,8(a5)
 cc2:	fdc42703          	lw	a4,-36(s0)
 cc6:	9f99                	subw	a5,a5,a4
 cc8:	0007871b          	sext.w	a4,a5
 ccc:	fe843783          	ld	a5,-24(s0)
 cd0:	c798                	sw	a4,8(a5)
 cd2:	fe843783          	ld	a5,-24(s0)
 cd6:	479c                	lw	a5,8(a5)
 cd8:	1782                	slli	a5,a5,0x20
 cda:	9381                	srli	a5,a5,0x20
 cdc:	0792                	slli	a5,a5,0x4
 cde:	fe843703          	ld	a4,-24(s0)
 ce2:	97ba                	add	a5,a5,a4
 ce4:	fef43423          	sd	a5,-24(s0)
 ce8:	fe843783          	ld	a5,-24(s0)
 cec:	fdc42703          	lw	a4,-36(s0)
 cf0:	c798                	sw	a4,8(a5)
 cf2:	00000797          	auipc	a5,0x0
 cf6:	33e78793          	addi	a5,a5,830 # 1030 <freep>
 cfa:	fe043703          	ld	a4,-32(s0)
 cfe:	e398                	sd	a4,0(a5)
 d00:	fe843783          	ld	a5,-24(s0)
 d04:	07c1                	addi	a5,a5,16
 d06:	a091                	j	d4a <malloc+0x132>
 d08:	00000797          	auipc	a5,0x0
 d0c:	32878793          	addi	a5,a5,808 # 1030 <freep>
 d10:	639c                	ld	a5,0(a5)
 d12:	fe843703          	ld	a4,-24(s0)
 d16:	02f71063          	bne	a4,a5,d36 <malloc+0x11e>
 d1a:	fdc42783          	lw	a5,-36(s0)
 d1e:	853e                	mv	a0,a5
 d20:	00000097          	auipc	ra,0x0
 d24:	e78080e7          	jalr	-392(ra) # b98 <morecore>
 d28:	fea43423          	sd	a0,-24(s0)
 d2c:	fe843783          	ld	a5,-24(s0)
 d30:	e399                	bnez	a5,d36 <malloc+0x11e>
 d32:	4781                	li	a5,0
 d34:	a819                	j	d4a <malloc+0x132>
 d36:	fe843783          	ld	a5,-24(s0)
 d3a:	fef43023          	sd	a5,-32(s0)
 d3e:	fe843783          	ld	a5,-24(s0)
 d42:	639c                	ld	a5,0(a5)
 d44:	fef43423          	sd	a5,-24(s0)
 d48:	b799                	j	c8e <malloc+0x76>
 d4a:	853e                	mv	a0,a5
 d4c:	70e2                	ld	ra,56(sp)
 d4e:	7442                	ld	s0,48(sp)
 d50:	6121                	addi	sp,sp,64
 d52:	8082                	ret
