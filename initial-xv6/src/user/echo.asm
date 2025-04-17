
user/_echo:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	7139                	addi	sp,sp,-64
   2:	fc06                	sd	ra,56(sp)
   4:	f822                	sd	s0,48(sp)
   6:	f426                	sd	s1,40(sp)
   8:	0080                	addi	s0,sp,64
   a:	87aa                	mv	a5,a0
   c:	fcb43023          	sd	a1,-64(s0)
  10:	fcf42623          	sw	a5,-52(s0)
  14:	4785                	li	a5,1
  16:	fcf42e23          	sw	a5,-36(s0)
  1a:	a051                	j	9e <main+0x9e>
  1c:	fdc42783          	lw	a5,-36(s0)
  20:	078e                	slli	a5,a5,0x3
  22:	fc043703          	ld	a4,-64(s0)
  26:	97ba                	add	a5,a5,a4
  28:	6384                	ld	s1,0(a5)
  2a:	fdc42783          	lw	a5,-36(s0)
  2e:	078e                	slli	a5,a5,0x3
  30:	fc043703          	ld	a4,-64(s0)
  34:	97ba                	add	a5,a5,a4
  36:	639c                	ld	a5,0(a5)
  38:	853e                	mv	a0,a5
  3a:	00000097          	auipc	ra,0x0
  3e:	14a080e7          	jalr	330(ra) # 184 <strlen>
  42:	87aa                	mv	a5,a0
  44:	2781                	sext.w	a5,a5
  46:	2781                	sext.w	a5,a5
  48:	863e                	mv	a2,a5
  4a:	85a6                	mv	a1,s1
  4c:	4505                	li	a0,1
  4e:	00000097          	auipc	ra,0x0
  52:	538080e7          	jalr	1336(ra) # 586 <write>
  56:	fdc42783          	lw	a5,-36(s0)
  5a:	2785                	addiw	a5,a5,1
  5c:	0007871b          	sext.w	a4,a5
  60:	fcc42783          	lw	a5,-52(s0)
  64:	2781                	sext.w	a5,a5
  66:	00f75d63          	bge	a4,a5,80 <main+0x80>
  6a:	4605                	li	a2,1
  6c:	00001597          	auipc	a1,0x1
  70:	d8458593          	addi	a1,a1,-636 # df0 <malloc+0x148>
  74:	4505                	li	a0,1
  76:	00000097          	auipc	ra,0x0
  7a:	510080e7          	jalr	1296(ra) # 586 <write>
  7e:	a819                	j	94 <main+0x94>
  80:	4605                	li	a2,1
  82:	00001597          	auipc	a1,0x1
  86:	d7658593          	addi	a1,a1,-650 # df8 <malloc+0x150>
  8a:	4505                	li	a0,1
  8c:	00000097          	auipc	ra,0x0
  90:	4fa080e7          	jalr	1274(ra) # 586 <write>
  94:	fdc42783          	lw	a5,-36(s0)
  98:	2785                	addiw	a5,a5,1
  9a:	fcf42e23          	sw	a5,-36(s0)
  9e:	fdc42783          	lw	a5,-36(s0)
  a2:	873e                	mv	a4,a5
  a4:	fcc42783          	lw	a5,-52(s0)
  a8:	2701                	sext.w	a4,a4
  aa:	2781                	sext.w	a5,a5
  ac:	f6f748e3          	blt	a4,a5,1c <main+0x1c>
  b0:	4501                	li	a0,0
  b2:	00000097          	auipc	ra,0x0
  b6:	4b4080e7          	jalr	1204(ra) # 566 <exit>

00000000000000ba <_main>:
  ba:	1141                	addi	sp,sp,-16
  bc:	e406                	sd	ra,8(sp)
  be:	e022                	sd	s0,0(sp)
  c0:	0800                	addi	s0,sp,16
  c2:	00000097          	auipc	ra,0x0
  c6:	f3e080e7          	jalr	-194(ra) # 0 <main>
  ca:	4501                	li	a0,0
  cc:	00000097          	auipc	ra,0x0
  d0:	49a080e7          	jalr	1178(ra) # 566 <exit>

00000000000000d4 <strcpy>:
  d4:	7179                	addi	sp,sp,-48
  d6:	f422                	sd	s0,40(sp)
  d8:	1800                	addi	s0,sp,48
  da:	fca43c23          	sd	a0,-40(s0)
  de:	fcb43823          	sd	a1,-48(s0)
  e2:	fd843783          	ld	a5,-40(s0)
  e6:	fef43423          	sd	a5,-24(s0)
  ea:	0001                	nop
  ec:	fd043703          	ld	a4,-48(s0)
  f0:	00170793          	addi	a5,a4,1
  f4:	fcf43823          	sd	a5,-48(s0)
  f8:	fd843783          	ld	a5,-40(s0)
  fc:	00178693          	addi	a3,a5,1
 100:	fcd43c23          	sd	a3,-40(s0)
 104:	00074703          	lbu	a4,0(a4)
 108:	00e78023          	sb	a4,0(a5)
 10c:	0007c783          	lbu	a5,0(a5)
 110:	fff1                	bnez	a5,ec <strcpy+0x18>
 112:	fe843783          	ld	a5,-24(s0)
 116:	853e                	mv	a0,a5
 118:	7422                	ld	s0,40(sp)
 11a:	6145                	addi	sp,sp,48
 11c:	8082                	ret

000000000000011e <strcmp>:
 11e:	1101                	addi	sp,sp,-32
 120:	ec22                	sd	s0,24(sp)
 122:	1000                	addi	s0,sp,32
 124:	fea43423          	sd	a0,-24(s0)
 128:	feb43023          	sd	a1,-32(s0)
 12c:	a819                	j	142 <strcmp+0x24>
 12e:	fe843783          	ld	a5,-24(s0)
 132:	0785                	addi	a5,a5,1
 134:	fef43423          	sd	a5,-24(s0)
 138:	fe043783          	ld	a5,-32(s0)
 13c:	0785                	addi	a5,a5,1
 13e:	fef43023          	sd	a5,-32(s0)
 142:	fe843783          	ld	a5,-24(s0)
 146:	0007c783          	lbu	a5,0(a5)
 14a:	cb99                	beqz	a5,160 <strcmp+0x42>
 14c:	fe843783          	ld	a5,-24(s0)
 150:	0007c703          	lbu	a4,0(a5)
 154:	fe043783          	ld	a5,-32(s0)
 158:	0007c783          	lbu	a5,0(a5)
 15c:	fcf709e3          	beq	a4,a5,12e <strcmp+0x10>
 160:	fe843783          	ld	a5,-24(s0)
 164:	0007c783          	lbu	a5,0(a5)
 168:	0007871b          	sext.w	a4,a5
 16c:	fe043783          	ld	a5,-32(s0)
 170:	0007c783          	lbu	a5,0(a5)
 174:	2781                	sext.w	a5,a5
 176:	40f707bb          	subw	a5,a4,a5
 17a:	2781                	sext.w	a5,a5
 17c:	853e                	mv	a0,a5
 17e:	6462                	ld	s0,24(sp)
 180:	6105                	addi	sp,sp,32
 182:	8082                	ret

0000000000000184 <strlen>:
 184:	7179                	addi	sp,sp,-48
 186:	f422                	sd	s0,40(sp)
 188:	1800                	addi	s0,sp,48
 18a:	fca43c23          	sd	a0,-40(s0)
 18e:	fe042623          	sw	zero,-20(s0)
 192:	a031                	j	19e <strlen+0x1a>
 194:	fec42783          	lw	a5,-20(s0)
 198:	2785                	addiw	a5,a5,1
 19a:	fef42623          	sw	a5,-20(s0)
 19e:	fec42783          	lw	a5,-20(s0)
 1a2:	fd843703          	ld	a4,-40(s0)
 1a6:	97ba                	add	a5,a5,a4
 1a8:	0007c783          	lbu	a5,0(a5)
 1ac:	f7e5                	bnez	a5,194 <strlen+0x10>
 1ae:	fec42783          	lw	a5,-20(s0)
 1b2:	853e                	mv	a0,a5
 1b4:	7422                	ld	s0,40(sp)
 1b6:	6145                	addi	sp,sp,48
 1b8:	8082                	ret

00000000000001ba <memset>:
 1ba:	7179                	addi	sp,sp,-48
 1bc:	f422                	sd	s0,40(sp)
 1be:	1800                	addi	s0,sp,48
 1c0:	fca43c23          	sd	a0,-40(s0)
 1c4:	87ae                	mv	a5,a1
 1c6:	8732                	mv	a4,a2
 1c8:	fcf42a23          	sw	a5,-44(s0)
 1cc:	87ba                	mv	a5,a4
 1ce:	fcf42823          	sw	a5,-48(s0)
 1d2:	fd843783          	ld	a5,-40(s0)
 1d6:	fef43023          	sd	a5,-32(s0)
 1da:	fe042623          	sw	zero,-20(s0)
 1de:	a00d                	j	200 <memset+0x46>
 1e0:	fec42783          	lw	a5,-20(s0)
 1e4:	fe043703          	ld	a4,-32(s0)
 1e8:	97ba                	add	a5,a5,a4
 1ea:	fd442703          	lw	a4,-44(s0)
 1ee:	0ff77713          	zext.b	a4,a4
 1f2:	00e78023          	sb	a4,0(a5)
 1f6:	fec42783          	lw	a5,-20(s0)
 1fa:	2785                	addiw	a5,a5,1
 1fc:	fef42623          	sw	a5,-20(s0)
 200:	fec42703          	lw	a4,-20(s0)
 204:	fd042783          	lw	a5,-48(s0)
 208:	2781                	sext.w	a5,a5
 20a:	fcf76be3          	bltu	a4,a5,1e0 <memset+0x26>
 20e:	fd843783          	ld	a5,-40(s0)
 212:	853e                	mv	a0,a5
 214:	7422                	ld	s0,40(sp)
 216:	6145                	addi	sp,sp,48
 218:	8082                	ret

000000000000021a <strchr>:
 21a:	1101                	addi	sp,sp,-32
 21c:	ec22                	sd	s0,24(sp)
 21e:	1000                	addi	s0,sp,32
 220:	fea43423          	sd	a0,-24(s0)
 224:	87ae                	mv	a5,a1
 226:	fef403a3          	sb	a5,-25(s0)
 22a:	a01d                	j	250 <strchr+0x36>
 22c:	fe843783          	ld	a5,-24(s0)
 230:	0007c703          	lbu	a4,0(a5)
 234:	fe744783          	lbu	a5,-25(s0)
 238:	0ff7f793          	zext.b	a5,a5
 23c:	00e79563          	bne	a5,a4,246 <strchr+0x2c>
 240:	fe843783          	ld	a5,-24(s0)
 244:	a821                	j	25c <strchr+0x42>
 246:	fe843783          	ld	a5,-24(s0)
 24a:	0785                	addi	a5,a5,1
 24c:	fef43423          	sd	a5,-24(s0)
 250:	fe843783          	ld	a5,-24(s0)
 254:	0007c783          	lbu	a5,0(a5)
 258:	fbf1                	bnez	a5,22c <strchr+0x12>
 25a:	4781                	li	a5,0
 25c:	853e                	mv	a0,a5
 25e:	6462                	ld	s0,24(sp)
 260:	6105                	addi	sp,sp,32
 262:	8082                	ret

0000000000000264 <gets>:
 264:	7179                	addi	sp,sp,-48
 266:	f406                	sd	ra,40(sp)
 268:	f022                	sd	s0,32(sp)
 26a:	1800                	addi	s0,sp,48
 26c:	fca43c23          	sd	a0,-40(s0)
 270:	87ae                	mv	a5,a1
 272:	fcf42a23          	sw	a5,-44(s0)
 276:	fe042623          	sw	zero,-20(s0)
 27a:	a8a1                	j	2d2 <gets+0x6e>
 27c:	fe740793          	addi	a5,s0,-25
 280:	4605                	li	a2,1
 282:	85be                	mv	a1,a5
 284:	4501                	li	a0,0
 286:	00000097          	auipc	ra,0x0
 28a:	2f8080e7          	jalr	760(ra) # 57e <read>
 28e:	87aa                	mv	a5,a0
 290:	fef42423          	sw	a5,-24(s0)
 294:	fe842783          	lw	a5,-24(s0)
 298:	2781                	sext.w	a5,a5
 29a:	04f05763          	blez	a5,2e8 <gets+0x84>
 29e:	fec42783          	lw	a5,-20(s0)
 2a2:	0017871b          	addiw	a4,a5,1
 2a6:	fee42623          	sw	a4,-20(s0)
 2aa:	873e                	mv	a4,a5
 2ac:	fd843783          	ld	a5,-40(s0)
 2b0:	97ba                	add	a5,a5,a4
 2b2:	fe744703          	lbu	a4,-25(s0)
 2b6:	00e78023          	sb	a4,0(a5)
 2ba:	fe744783          	lbu	a5,-25(s0)
 2be:	873e                	mv	a4,a5
 2c0:	47a9                	li	a5,10
 2c2:	02f70463          	beq	a4,a5,2ea <gets+0x86>
 2c6:	fe744783          	lbu	a5,-25(s0)
 2ca:	873e                	mv	a4,a5
 2cc:	47b5                	li	a5,13
 2ce:	00f70e63          	beq	a4,a5,2ea <gets+0x86>
 2d2:	fec42783          	lw	a5,-20(s0)
 2d6:	2785                	addiw	a5,a5,1
 2d8:	0007871b          	sext.w	a4,a5
 2dc:	fd442783          	lw	a5,-44(s0)
 2e0:	2781                	sext.w	a5,a5
 2e2:	f8f74de3          	blt	a4,a5,27c <gets+0x18>
 2e6:	a011                	j	2ea <gets+0x86>
 2e8:	0001                	nop
 2ea:	fec42783          	lw	a5,-20(s0)
 2ee:	fd843703          	ld	a4,-40(s0)
 2f2:	97ba                	add	a5,a5,a4
 2f4:	00078023          	sb	zero,0(a5)
 2f8:	fd843783          	ld	a5,-40(s0)
 2fc:	853e                	mv	a0,a5
 2fe:	70a2                	ld	ra,40(sp)
 300:	7402                	ld	s0,32(sp)
 302:	6145                	addi	sp,sp,48
 304:	8082                	ret

0000000000000306 <stat>:
 306:	7179                	addi	sp,sp,-48
 308:	f406                	sd	ra,40(sp)
 30a:	f022                	sd	s0,32(sp)
 30c:	1800                	addi	s0,sp,48
 30e:	fca43c23          	sd	a0,-40(s0)
 312:	fcb43823          	sd	a1,-48(s0)
 316:	4581                	li	a1,0
 318:	fd843503          	ld	a0,-40(s0)
 31c:	00000097          	auipc	ra,0x0
 320:	28a080e7          	jalr	650(ra) # 5a6 <open>
 324:	87aa                	mv	a5,a0
 326:	fef42623          	sw	a5,-20(s0)
 32a:	fec42783          	lw	a5,-20(s0)
 32e:	2781                	sext.w	a5,a5
 330:	0007d463          	bgez	a5,338 <stat+0x32>
 334:	57fd                	li	a5,-1
 336:	a035                	j	362 <stat+0x5c>
 338:	fec42783          	lw	a5,-20(s0)
 33c:	fd043583          	ld	a1,-48(s0)
 340:	853e                	mv	a0,a5
 342:	00000097          	auipc	ra,0x0
 346:	27c080e7          	jalr	636(ra) # 5be <fstat>
 34a:	87aa                	mv	a5,a0
 34c:	fef42423          	sw	a5,-24(s0)
 350:	fec42783          	lw	a5,-20(s0)
 354:	853e                	mv	a0,a5
 356:	00000097          	auipc	ra,0x0
 35a:	238080e7          	jalr	568(ra) # 58e <close>
 35e:	fe842783          	lw	a5,-24(s0)
 362:	853e                	mv	a0,a5
 364:	70a2                	ld	ra,40(sp)
 366:	7402                	ld	s0,32(sp)
 368:	6145                	addi	sp,sp,48
 36a:	8082                	ret

000000000000036c <atoi>:
 36c:	7179                	addi	sp,sp,-48
 36e:	f422                	sd	s0,40(sp)
 370:	1800                	addi	s0,sp,48
 372:	fca43c23          	sd	a0,-40(s0)
 376:	fe042623          	sw	zero,-20(s0)
 37a:	a81d                	j	3b0 <atoi+0x44>
 37c:	fec42783          	lw	a5,-20(s0)
 380:	873e                	mv	a4,a5
 382:	87ba                	mv	a5,a4
 384:	0027979b          	slliw	a5,a5,0x2
 388:	9fb9                	addw	a5,a5,a4
 38a:	0017979b          	slliw	a5,a5,0x1
 38e:	0007871b          	sext.w	a4,a5
 392:	fd843783          	ld	a5,-40(s0)
 396:	00178693          	addi	a3,a5,1
 39a:	fcd43c23          	sd	a3,-40(s0)
 39e:	0007c783          	lbu	a5,0(a5)
 3a2:	2781                	sext.w	a5,a5
 3a4:	9fb9                	addw	a5,a5,a4
 3a6:	2781                	sext.w	a5,a5
 3a8:	fd07879b          	addiw	a5,a5,-48
 3ac:	fef42623          	sw	a5,-20(s0)
 3b0:	fd843783          	ld	a5,-40(s0)
 3b4:	0007c783          	lbu	a5,0(a5)
 3b8:	873e                	mv	a4,a5
 3ba:	02f00793          	li	a5,47
 3be:	00e7fb63          	bgeu	a5,a4,3d4 <atoi+0x68>
 3c2:	fd843783          	ld	a5,-40(s0)
 3c6:	0007c783          	lbu	a5,0(a5)
 3ca:	873e                	mv	a4,a5
 3cc:	03900793          	li	a5,57
 3d0:	fae7f6e3          	bgeu	a5,a4,37c <atoi+0x10>
 3d4:	fec42783          	lw	a5,-20(s0)
 3d8:	853e                	mv	a0,a5
 3da:	7422                	ld	s0,40(sp)
 3dc:	6145                	addi	sp,sp,48
 3de:	8082                	ret

00000000000003e0 <memmove>:
 3e0:	7139                	addi	sp,sp,-64
 3e2:	fc22                	sd	s0,56(sp)
 3e4:	0080                	addi	s0,sp,64
 3e6:	fca43c23          	sd	a0,-40(s0)
 3ea:	fcb43823          	sd	a1,-48(s0)
 3ee:	87b2                	mv	a5,a2
 3f0:	fcf42623          	sw	a5,-52(s0)
 3f4:	fd843783          	ld	a5,-40(s0)
 3f8:	fef43423          	sd	a5,-24(s0)
 3fc:	fd043783          	ld	a5,-48(s0)
 400:	fef43023          	sd	a5,-32(s0)
 404:	fe043703          	ld	a4,-32(s0)
 408:	fe843783          	ld	a5,-24(s0)
 40c:	02e7fc63          	bgeu	a5,a4,444 <memmove+0x64>
 410:	a00d                	j	432 <memmove+0x52>
 412:	fe043703          	ld	a4,-32(s0)
 416:	00170793          	addi	a5,a4,1
 41a:	fef43023          	sd	a5,-32(s0)
 41e:	fe843783          	ld	a5,-24(s0)
 422:	00178693          	addi	a3,a5,1
 426:	fed43423          	sd	a3,-24(s0)
 42a:	00074703          	lbu	a4,0(a4)
 42e:	00e78023          	sb	a4,0(a5)
 432:	fcc42783          	lw	a5,-52(s0)
 436:	fff7871b          	addiw	a4,a5,-1
 43a:	fce42623          	sw	a4,-52(s0)
 43e:	fcf04ae3          	bgtz	a5,412 <memmove+0x32>
 442:	a891                	j	496 <memmove+0xb6>
 444:	fcc42783          	lw	a5,-52(s0)
 448:	fe843703          	ld	a4,-24(s0)
 44c:	97ba                	add	a5,a5,a4
 44e:	fef43423          	sd	a5,-24(s0)
 452:	fcc42783          	lw	a5,-52(s0)
 456:	fe043703          	ld	a4,-32(s0)
 45a:	97ba                	add	a5,a5,a4
 45c:	fef43023          	sd	a5,-32(s0)
 460:	a01d                	j	486 <memmove+0xa6>
 462:	fe043783          	ld	a5,-32(s0)
 466:	17fd                	addi	a5,a5,-1
 468:	fef43023          	sd	a5,-32(s0)
 46c:	fe843783          	ld	a5,-24(s0)
 470:	17fd                	addi	a5,a5,-1
 472:	fef43423          	sd	a5,-24(s0)
 476:	fe043783          	ld	a5,-32(s0)
 47a:	0007c703          	lbu	a4,0(a5)
 47e:	fe843783          	ld	a5,-24(s0)
 482:	00e78023          	sb	a4,0(a5)
 486:	fcc42783          	lw	a5,-52(s0)
 48a:	fff7871b          	addiw	a4,a5,-1
 48e:	fce42623          	sw	a4,-52(s0)
 492:	fcf048e3          	bgtz	a5,462 <memmove+0x82>
 496:	fd843783          	ld	a5,-40(s0)
 49a:	853e                	mv	a0,a5
 49c:	7462                	ld	s0,56(sp)
 49e:	6121                	addi	sp,sp,64
 4a0:	8082                	ret

00000000000004a2 <memcmp>:
 4a2:	7139                	addi	sp,sp,-64
 4a4:	fc22                	sd	s0,56(sp)
 4a6:	0080                	addi	s0,sp,64
 4a8:	fca43c23          	sd	a0,-40(s0)
 4ac:	fcb43823          	sd	a1,-48(s0)
 4b0:	87b2                	mv	a5,a2
 4b2:	fcf42623          	sw	a5,-52(s0)
 4b6:	fd843783          	ld	a5,-40(s0)
 4ba:	fef43423          	sd	a5,-24(s0)
 4be:	fd043783          	ld	a5,-48(s0)
 4c2:	fef43023          	sd	a5,-32(s0)
 4c6:	a0a1                	j	50e <memcmp+0x6c>
 4c8:	fe843783          	ld	a5,-24(s0)
 4cc:	0007c703          	lbu	a4,0(a5)
 4d0:	fe043783          	ld	a5,-32(s0)
 4d4:	0007c783          	lbu	a5,0(a5)
 4d8:	02f70163          	beq	a4,a5,4fa <memcmp+0x58>
 4dc:	fe843783          	ld	a5,-24(s0)
 4e0:	0007c783          	lbu	a5,0(a5)
 4e4:	0007871b          	sext.w	a4,a5
 4e8:	fe043783          	ld	a5,-32(s0)
 4ec:	0007c783          	lbu	a5,0(a5)
 4f0:	2781                	sext.w	a5,a5
 4f2:	40f707bb          	subw	a5,a4,a5
 4f6:	2781                	sext.w	a5,a5
 4f8:	a01d                	j	51e <memcmp+0x7c>
 4fa:	fe843783          	ld	a5,-24(s0)
 4fe:	0785                	addi	a5,a5,1
 500:	fef43423          	sd	a5,-24(s0)
 504:	fe043783          	ld	a5,-32(s0)
 508:	0785                	addi	a5,a5,1
 50a:	fef43023          	sd	a5,-32(s0)
 50e:	fcc42783          	lw	a5,-52(s0)
 512:	fff7871b          	addiw	a4,a5,-1
 516:	fce42623          	sw	a4,-52(s0)
 51a:	f7dd                	bnez	a5,4c8 <memcmp+0x26>
 51c:	4781                	li	a5,0
 51e:	853e                	mv	a0,a5
 520:	7462                	ld	s0,56(sp)
 522:	6121                	addi	sp,sp,64
 524:	8082                	ret

0000000000000526 <memcpy>:
 526:	7179                	addi	sp,sp,-48
 528:	f406                	sd	ra,40(sp)
 52a:	f022                	sd	s0,32(sp)
 52c:	1800                	addi	s0,sp,48
 52e:	fea43423          	sd	a0,-24(s0)
 532:	feb43023          	sd	a1,-32(s0)
 536:	87b2                	mv	a5,a2
 538:	fcf42e23          	sw	a5,-36(s0)
 53c:	fdc42783          	lw	a5,-36(s0)
 540:	863e                	mv	a2,a5
 542:	fe043583          	ld	a1,-32(s0)
 546:	fe843503          	ld	a0,-24(s0)
 54a:	00000097          	auipc	ra,0x0
 54e:	e96080e7          	jalr	-362(ra) # 3e0 <memmove>
 552:	87aa                	mv	a5,a0
 554:	853e                	mv	a0,a5
 556:	70a2                	ld	ra,40(sp)
 558:	7402                	ld	s0,32(sp)
 55a:	6145                	addi	sp,sp,48
 55c:	8082                	ret

000000000000055e <fork>:
 55e:	4885                	li	a7,1
 560:	00000073          	ecall
 564:	8082                	ret

0000000000000566 <exit>:
 566:	4889                	li	a7,2
 568:	00000073          	ecall
 56c:	8082                	ret

000000000000056e <wait>:
 56e:	488d                	li	a7,3
 570:	00000073          	ecall
 574:	8082                	ret

0000000000000576 <pipe>:
 576:	4891                	li	a7,4
 578:	00000073          	ecall
 57c:	8082                	ret

000000000000057e <read>:
 57e:	4895                	li	a7,5
 580:	00000073          	ecall
 584:	8082                	ret

0000000000000586 <write>:
 586:	48c1                	li	a7,16
 588:	00000073          	ecall
 58c:	8082                	ret

000000000000058e <close>:
 58e:	48d5                	li	a7,21
 590:	00000073          	ecall
 594:	8082                	ret

0000000000000596 <kill>:
 596:	4899                	li	a7,6
 598:	00000073          	ecall
 59c:	8082                	ret

000000000000059e <exec>:
 59e:	489d                	li	a7,7
 5a0:	00000073          	ecall
 5a4:	8082                	ret

00000000000005a6 <open>:
 5a6:	48bd                	li	a7,15
 5a8:	00000073          	ecall
 5ac:	8082                	ret

00000000000005ae <mknod>:
 5ae:	48c5                	li	a7,17
 5b0:	00000073          	ecall
 5b4:	8082                	ret

00000000000005b6 <unlink>:
 5b6:	48c9                	li	a7,18
 5b8:	00000073          	ecall
 5bc:	8082                	ret

00000000000005be <fstat>:
 5be:	48a1                	li	a7,8
 5c0:	00000073          	ecall
 5c4:	8082                	ret

00000000000005c6 <link>:
 5c6:	48cd                	li	a7,19
 5c8:	00000073          	ecall
 5cc:	8082                	ret

00000000000005ce <mkdir>:
 5ce:	48d1                	li	a7,20
 5d0:	00000073          	ecall
 5d4:	8082                	ret

00000000000005d6 <chdir>:
 5d6:	48a5                	li	a7,9
 5d8:	00000073          	ecall
 5dc:	8082                	ret

00000000000005de <dup>:
 5de:	48a9                	li	a7,10
 5e0:	00000073          	ecall
 5e4:	8082                	ret

00000000000005e6 <getpid>:
 5e6:	48ad                	li	a7,11
 5e8:	00000073          	ecall
 5ec:	8082                	ret

00000000000005ee <sbrk>:
 5ee:	48b1                	li	a7,12
 5f0:	00000073          	ecall
 5f4:	8082                	ret

00000000000005f6 <sleep>:
 5f6:	48b5                	li	a7,13
 5f8:	00000073          	ecall
 5fc:	8082                	ret

00000000000005fe <uptime>:
 5fe:	48b9                	li	a7,14
 600:	00000073          	ecall
 604:	8082                	ret

0000000000000606 <waitx>:
 606:	48d9                	li	a7,22
 608:	00000073          	ecall
 60c:	8082                	ret

000000000000060e <getsyscount>:
 60e:	48dd                	li	a7,23
 610:	00000073          	ecall
 614:	8082                	ret

0000000000000616 <sigalarm>:
 616:	48e1                	li	a7,24
 618:	00000073          	ecall
 61c:	8082                	ret

000000000000061e <sigreturn>:
 61e:	48e5                	li	a7,25
 620:	00000073          	ecall
 624:	8082                	ret

0000000000000626 <settickets>:
 626:	48e9                	li	a7,26
 628:	00000073          	ecall
 62c:	8082                	ret

000000000000062e <putc>:
 62e:	1101                	addi	sp,sp,-32
 630:	ec06                	sd	ra,24(sp)
 632:	e822                	sd	s0,16(sp)
 634:	1000                	addi	s0,sp,32
 636:	87aa                	mv	a5,a0
 638:	872e                	mv	a4,a1
 63a:	fef42623          	sw	a5,-20(s0)
 63e:	87ba                	mv	a5,a4
 640:	fef405a3          	sb	a5,-21(s0)
 644:	feb40713          	addi	a4,s0,-21
 648:	fec42783          	lw	a5,-20(s0)
 64c:	4605                	li	a2,1
 64e:	85ba                	mv	a1,a4
 650:	853e                	mv	a0,a5
 652:	00000097          	auipc	ra,0x0
 656:	f34080e7          	jalr	-204(ra) # 586 <write>
 65a:	0001                	nop
 65c:	60e2                	ld	ra,24(sp)
 65e:	6442                	ld	s0,16(sp)
 660:	6105                	addi	sp,sp,32
 662:	8082                	ret

0000000000000664 <printint>:
 664:	7139                	addi	sp,sp,-64
 666:	fc06                	sd	ra,56(sp)
 668:	f822                	sd	s0,48(sp)
 66a:	0080                	addi	s0,sp,64
 66c:	87aa                	mv	a5,a0
 66e:	8736                	mv	a4,a3
 670:	fcf42623          	sw	a5,-52(s0)
 674:	87ae                	mv	a5,a1
 676:	fcf42423          	sw	a5,-56(s0)
 67a:	87b2                	mv	a5,a2
 67c:	fcf42223          	sw	a5,-60(s0)
 680:	87ba                	mv	a5,a4
 682:	fcf42023          	sw	a5,-64(s0)
 686:	fe042423          	sw	zero,-24(s0)
 68a:	fc042783          	lw	a5,-64(s0)
 68e:	2781                	sext.w	a5,a5
 690:	c38d                	beqz	a5,6b2 <printint+0x4e>
 692:	fc842783          	lw	a5,-56(s0)
 696:	2781                	sext.w	a5,a5
 698:	0007dd63          	bgez	a5,6b2 <printint+0x4e>
 69c:	4785                	li	a5,1
 69e:	fef42423          	sw	a5,-24(s0)
 6a2:	fc842783          	lw	a5,-56(s0)
 6a6:	40f007bb          	negw	a5,a5
 6aa:	2781                	sext.w	a5,a5
 6ac:	fef42223          	sw	a5,-28(s0)
 6b0:	a029                	j	6ba <printint+0x56>
 6b2:	fc842783          	lw	a5,-56(s0)
 6b6:	fef42223          	sw	a5,-28(s0)
 6ba:	fe042623          	sw	zero,-20(s0)
 6be:	fc442783          	lw	a5,-60(s0)
 6c2:	fe442703          	lw	a4,-28(s0)
 6c6:	02f777bb          	remuw	a5,a4,a5
 6ca:	0007861b          	sext.w	a2,a5
 6ce:	fec42783          	lw	a5,-20(s0)
 6d2:	0017871b          	addiw	a4,a5,1
 6d6:	fee42623          	sw	a4,-20(s0)
 6da:	00001697          	auipc	a3,0x1
 6de:	92668693          	addi	a3,a3,-1754 # 1000 <digits>
 6e2:	02061713          	slli	a4,a2,0x20
 6e6:	9301                	srli	a4,a4,0x20
 6e8:	9736                	add	a4,a4,a3
 6ea:	00074703          	lbu	a4,0(a4)
 6ee:	17c1                	addi	a5,a5,-16
 6f0:	97a2                	add	a5,a5,s0
 6f2:	fee78023          	sb	a4,-32(a5)
 6f6:	fc442783          	lw	a5,-60(s0)
 6fa:	fe442703          	lw	a4,-28(s0)
 6fe:	02f757bb          	divuw	a5,a4,a5
 702:	fef42223          	sw	a5,-28(s0)
 706:	fe442783          	lw	a5,-28(s0)
 70a:	2781                	sext.w	a5,a5
 70c:	fbcd                	bnez	a5,6be <printint+0x5a>
 70e:	fe842783          	lw	a5,-24(s0)
 712:	2781                	sext.w	a5,a5
 714:	cf85                	beqz	a5,74c <printint+0xe8>
 716:	fec42783          	lw	a5,-20(s0)
 71a:	0017871b          	addiw	a4,a5,1
 71e:	fee42623          	sw	a4,-20(s0)
 722:	17c1                	addi	a5,a5,-16
 724:	97a2                	add	a5,a5,s0
 726:	02d00713          	li	a4,45
 72a:	fee78023          	sb	a4,-32(a5)
 72e:	a839                	j	74c <printint+0xe8>
 730:	fec42783          	lw	a5,-20(s0)
 734:	17c1                	addi	a5,a5,-16
 736:	97a2                	add	a5,a5,s0
 738:	fe07c703          	lbu	a4,-32(a5)
 73c:	fcc42783          	lw	a5,-52(s0)
 740:	85ba                	mv	a1,a4
 742:	853e                	mv	a0,a5
 744:	00000097          	auipc	ra,0x0
 748:	eea080e7          	jalr	-278(ra) # 62e <putc>
 74c:	fec42783          	lw	a5,-20(s0)
 750:	37fd                	addiw	a5,a5,-1
 752:	fef42623          	sw	a5,-20(s0)
 756:	fec42783          	lw	a5,-20(s0)
 75a:	2781                	sext.w	a5,a5
 75c:	fc07dae3          	bgez	a5,730 <printint+0xcc>
 760:	0001                	nop
 762:	0001                	nop
 764:	70e2                	ld	ra,56(sp)
 766:	7442                	ld	s0,48(sp)
 768:	6121                	addi	sp,sp,64
 76a:	8082                	ret

000000000000076c <printptr>:
 76c:	7179                	addi	sp,sp,-48
 76e:	f406                	sd	ra,40(sp)
 770:	f022                	sd	s0,32(sp)
 772:	1800                	addi	s0,sp,48
 774:	87aa                	mv	a5,a0
 776:	fcb43823          	sd	a1,-48(s0)
 77a:	fcf42e23          	sw	a5,-36(s0)
 77e:	fdc42783          	lw	a5,-36(s0)
 782:	03000593          	li	a1,48
 786:	853e                	mv	a0,a5
 788:	00000097          	auipc	ra,0x0
 78c:	ea6080e7          	jalr	-346(ra) # 62e <putc>
 790:	fdc42783          	lw	a5,-36(s0)
 794:	07800593          	li	a1,120
 798:	853e                	mv	a0,a5
 79a:	00000097          	auipc	ra,0x0
 79e:	e94080e7          	jalr	-364(ra) # 62e <putc>
 7a2:	fe042623          	sw	zero,-20(s0)
 7a6:	a82d                	j	7e0 <printptr+0x74>
 7a8:	fd043783          	ld	a5,-48(s0)
 7ac:	93f1                	srli	a5,a5,0x3c
 7ae:	00001717          	auipc	a4,0x1
 7b2:	85270713          	addi	a4,a4,-1966 # 1000 <digits>
 7b6:	97ba                	add	a5,a5,a4
 7b8:	0007c703          	lbu	a4,0(a5)
 7bc:	fdc42783          	lw	a5,-36(s0)
 7c0:	85ba                	mv	a1,a4
 7c2:	853e                	mv	a0,a5
 7c4:	00000097          	auipc	ra,0x0
 7c8:	e6a080e7          	jalr	-406(ra) # 62e <putc>
 7cc:	fec42783          	lw	a5,-20(s0)
 7d0:	2785                	addiw	a5,a5,1
 7d2:	fef42623          	sw	a5,-20(s0)
 7d6:	fd043783          	ld	a5,-48(s0)
 7da:	0792                	slli	a5,a5,0x4
 7dc:	fcf43823          	sd	a5,-48(s0)
 7e0:	fec42783          	lw	a5,-20(s0)
 7e4:	873e                	mv	a4,a5
 7e6:	47bd                	li	a5,15
 7e8:	fce7f0e3          	bgeu	a5,a4,7a8 <printptr+0x3c>
 7ec:	0001                	nop
 7ee:	0001                	nop
 7f0:	70a2                	ld	ra,40(sp)
 7f2:	7402                	ld	s0,32(sp)
 7f4:	6145                	addi	sp,sp,48
 7f6:	8082                	ret

00000000000007f8 <vprintf>:
 7f8:	715d                	addi	sp,sp,-80
 7fa:	e486                	sd	ra,72(sp)
 7fc:	e0a2                	sd	s0,64(sp)
 7fe:	0880                	addi	s0,sp,80
 800:	87aa                	mv	a5,a0
 802:	fcb43023          	sd	a1,-64(s0)
 806:	fac43c23          	sd	a2,-72(s0)
 80a:	fcf42623          	sw	a5,-52(s0)
 80e:	fe042023          	sw	zero,-32(s0)
 812:	fe042223          	sw	zero,-28(s0)
 816:	a42d                	j	a40 <vprintf+0x248>
 818:	fe442783          	lw	a5,-28(s0)
 81c:	fc043703          	ld	a4,-64(s0)
 820:	97ba                	add	a5,a5,a4
 822:	0007c783          	lbu	a5,0(a5)
 826:	fcf42e23          	sw	a5,-36(s0)
 82a:	fe042783          	lw	a5,-32(s0)
 82e:	2781                	sext.w	a5,a5
 830:	eb9d                	bnez	a5,866 <vprintf+0x6e>
 832:	fdc42783          	lw	a5,-36(s0)
 836:	0007871b          	sext.w	a4,a5
 83a:	02500793          	li	a5,37
 83e:	00f71763          	bne	a4,a5,84c <vprintf+0x54>
 842:	02500793          	li	a5,37
 846:	fef42023          	sw	a5,-32(s0)
 84a:	a2f5                	j	a36 <vprintf+0x23e>
 84c:	fdc42783          	lw	a5,-36(s0)
 850:	0ff7f713          	zext.b	a4,a5
 854:	fcc42783          	lw	a5,-52(s0)
 858:	85ba                	mv	a1,a4
 85a:	853e                	mv	a0,a5
 85c:	00000097          	auipc	ra,0x0
 860:	dd2080e7          	jalr	-558(ra) # 62e <putc>
 864:	aac9                	j	a36 <vprintf+0x23e>
 866:	fe042783          	lw	a5,-32(s0)
 86a:	0007871b          	sext.w	a4,a5
 86e:	02500793          	li	a5,37
 872:	1cf71263          	bne	a4,a5,a36 <vprintf+0x23e>
 876:	fdc42783          	lw	a5,-36(s0)
 87a:	0007871b          	sext.w	a4,a5
 87e:	06400793          	li	a5,100
 882:	02f71463          	bne	a4,a5,8aa <vprintf+0xb2>
 886:	fb843783          	ld	a5,-72(s0)
 88a:	00878713          	addi	a4,a5,8
 88e:	fae43c23          	sd	a4,-72(s0)
 892:	4398                	lw	a4,0(a5)
 894:	fcc42783          	lw	a5,-52(s0)
 898:	4685                	li	a3,1
 89a:	4629                	li	a2,10
 89c:	85ba                	mv	a1,a4
 89e:	853e                	mv	a0,a5
 8a0:	00000097          	auipc	ra,0x0
 8a4:	dc4080e7          	jalr	-572(ra) # 664 <printint>
 8a8:	a269                	j	a32 <vprintf+0x23a>
 8aa:	fdc42783          	lw	a5,-36(s0)
 8ae:	0007871b          	sext.w	a4,a5
 8b2:	06c00793          	li	a5,108
 8b6:	02f71663          	bne	a4,a5,8e2 <vprintf+0xea>
 8ba:	fb843783          	ld	a5,-72(s0)
 8be:	00878713          	addi	a4,a5,8
 8c2:	fae43c23          	sd	a4,-72(s0)
 8c6:	639c                	ld	a5,0(a5)
 8c8:	0007871b          	sext.w	a4,a5
 8cc:	fcc42783          	lw	a5,-52(s0)
 8d0:	4681                	li	a3,0
 8d2:	4629                	li	a2,10
 8d4:	85ba                	mv	a1,a4
 8d6:	853e                	mv	a0,a5
 8d8:	00000097          	auipc	ra,0x0
 8dc:	d8c080e7          	jalr	-628(ra) # 664 <printint>
 8e0:	aa89                	j	a32 <vprintf+0x23a>
 8e2:	fdc42783          	lw	a5,-36(s0)
 8e6:	0007871b          	sext.w	a4,a5
 8ea:	07800793          	li	a5,120
 8ee:	02f71463          	bne	a4,a5,916 <vprintf+0x11e>
 8f2:	fb843783          	ld	a5,-72(s0)
 8f6:	00878713          	addi	a4,a5,8
 8fa:	fae43c23          	sd	a4,-72(s0)
 8fe:	4398                	lw	a4,0(a5)
 900:	fcc42783          	lw	a5,-52(s0)
 904:	4681                	li	a3,0
 906:	4641                	li	a2,16
 908:	85ba                	mv	a1,a4
 90a:	853e                	mv	a0,a5
 90c:	00000097          	auipc	ra,0x0
 910:	d58080e7          	jalr	-680(ra) # 664 <printint>
 914:	aa39                	j	a32 <vprintf+0x23a>
 916:	fdc42783          	lw	a5,-36(s0)
 91a:	0007871b          	sext.w	a4,a5
 91e:	07000793          	li	a5,112
 922:	02f71263          	bne	a4,a5,946 <vprintf+0x14e>
 926:	fb843783          	ld	a5,-72(s0)
 92a:	00878713          	addi	a4,a5,8
 92e:	fae43c23          	sd	a4,-72(s0)
 932:	6398                	ld	a4,0(a5)
 934:	fcc42783          	lw	a5,-52(s0)
 938:	85ba                	mv	a1,a4
 93a:	853e                	mv	a0,a5
 93c:	00000097          	auipc	ra,0x0
 940:	e30080e7          	jalr	-464(ra) # 76c <printptr>
 944:	a0fd                	j	a32 <vprintf+0x23a>
 946:	fdc42783          	lw	a5,-36(s0)
 94a:	0007871b          	sext.w	a4,a5
 94e:	07300793          	li	a5,115
 952:	04f71c63          	bne	a4,a5,9aa <vprintf+0x1b2>
 956:	fb843783          	ld	a5,-72(s0)
 95a:	00878713          	addi	a4,a5,8
 95e:	fae43c23          	sd	a4,-72(s0)
 962:	639c                	ld	a5,0(a5)
 964:	fef43423          	sd	a5,-24(s0)
 968:	fe843783          	ld	a5,-24(s0)
 96c:	eb8d                	bnez	a5,99e <vprintf+0x1a6>
 96e:	00000797          	auipc	a5,0x0
 972:	49278793          	addi	a5,a5,1170 # e00 <malloc+0x158>
 976:	fef43423          	sd	a5,-24(s0)
 97a:	a015                	j	99e <vprintf+0x1a6>
 97c:	fe843783          	ld	a5,-24(s0)
 980:	0007c703          	lbu	a4,0(a5)
 984:	fcc42783          	lw	a5,-52(s0)
 988:	85ba                	mv	a1,a4
 98a:	853e                	mv	a0,a5
 98c:	00000097          	auipc	ra,0x0
 990:	ca2080e7          	jalr	-862(ra) # 62e <putc>
 994:	fe843783          	ld	a5,-24(s0)
 998:	0785                	addi	a5,a5,1
 99a:	fef43423          	sd	a5,-24(s0)
 99e:	fe843783          	ld	a5,-24(s0)
 9a2:	0007c783          	lbu	a5,0(a5)
 9a6:	fbf9                	bnez	a5,97c <vprintf+0x184>
 9a8:	a069                	j	a32 <vprintf+0x23a>
 9aa:	fdc42783          	lw	a5,-36(s0)
 9ae:	0007871b          	sext.w	a4,a5
 9b2:	06300793          	li	a5,99
 9b6:	02f71463          	bne	a4,a5,9de <vprintf+0x1e6>
 9ba:	fb843783          	ld	a5,-72(s0)
 9be:	00878713          	addi	a4,a5,8
 9c2:	fae43c23          	sd	a4,-72(s0)
 9c6:	439c                	lw	a5,0(a5)
 9c8:	0ff7f713          	zext.b	a4,a5
 9cc:	fcc42783          	lw	a5,-52(s0)
 9d0:	85ba                	mv	a1,a4
 9d2:	853e                	mv	a0,a5
 9d4:	00000097          	auipc	ra,0x0
 9d8:	c5a080e7          	jalr	-934(ra) # 62e <putc>
 9dc:	a899                	j	a32 <vprintf+0x23a>
 9de:	fdc42783          	lw	a5,-36(s0)
 9e2:	0007871b          	sext.w	a4,a5
 9e6:	02500793          	li	a5,37
 9ea:	00f71f63          	bne	a4,a5,a08 <vprintf+0x210>
 9ee:	fdc42783          	lw	a5,-36(s0)
 9f2:	0ff7f713          	zext.b	a4,a5
 9f6:	fcc42783          	lw	a5,-52(s0)
 9fa:	85ba                	mv	a1,a4
 9fc:	853e                	mv	a0,a5
 9fe:	00000097          	auipc	ra,0x0
 a02:	c30080e7          	jalr	-976(ra) # 62e <putc>
 a06:	a035                	j	a32 <vprintf+0x23a>
 a08:	fcc42783          	lw	a5,-52(s0)
 a0c:	02500593          	li	a1,37
 a10:	853e                	mv	a0,a5
 a12:	00000097          	auipc	ra,0x0
 a16:	c1c080e7          	jalr	-996(ra) # 62e <putc>
 a1a:	fdc42783          	lw	a5,-36(s0)
 a1e:	0ff7f713          	zext.b	a4,a5
 a22:	fcc42783          	lw	a5,-52(s0)
 a26:	85ba                	mv	a1,a4
 a28:	853e                	mv	a0,a5
 a2a:	00000097          	auipc	ra,0x0
 a2e:	c04080e7          	jalr	-1020(ra) # 62e <putc>
 a32:	fe042023          	sw	zero,-32(s0)
 a36:	fe442783          	lw	a5,-28(s0)
 a3a:	2785                	addiw	a5,a5,1
 a3c:	fef42223          	sw	a5,-28(s0)
 a40:	fe442783          	lw	a5,-28(s0)
 a44:	fc043703          	ld	a4,-64(s0)
 a48:	97ba                	add	a5,a5,a4
 a4a:	0007c783          	lbu	a5,0(a5)
 a4e:	dc0795e3          	bnez	a5,818 <vprintf+0x20>
 a52:	0001                	nop
 a54:	0001                	nop
 a56:	60a6                	ld	ra,72(sp)
 a58:	6406                	ld	s0,64(sp)
 a5a:	6161                	addi	sp,sp,80
 a5c:	8082                	ret

0000000000000a5e <fprintf>:
 a5e:	7159                	addi	sp,sp,-112
 a60:	fc06                	sd	ra,56(sp)
 a62:	f822                	sd	s0,48(sp)
 a64:	0080                	addi	s0,sp,64
 a66:	fcb43823          	sd	a1,-48(s0)
 a6a:	e010                	sd	a2,0(s0)
 a6c:	e414                	sd	a3,8(s0)
 a6e:	e818                	sd	a4,16(s0)
 a70:	ec1c                	sd	a5,24(s0)
 a72:	03043023          	sd	a6,32(s0)
 a76:	03143423          	sd	a7,40(s0)
 a7a:	87aa                	mv	a5,a0
 a7c:	fcf42e23          	sw	a5,-36(s0)
 a80:	03040793          	addi	a5,s0,48
 a84:	fcf43423          	sd	a5,-56(s0)
 a88:	fc843783          	ld	a5,-56(s0)
 a8c:	fd078793          	addi	a5,a5,-48
 a90:	fef43423          	sd	a5,-24(s0)
 a94:	fe843703          	ld	a4,-24(s0)
 a98:	fdc42783          	lw	a5,-36(s0)
 a9c:	863a                	mv	a2,a4
 a9e:	fd043583          	ld	a1,-48(s0)
 aa2:	853e                	mv	a0,a5
 aa4:	00000097          	auipc	ra,0x0
 aa8:	d54080e7          	jalr	-684(ra) # 7f8 <vprintf>
 aac:	0001                	nop
 aae:	70e2                	ld	ra,56(sp)
 ab0:	7442                	ld	s0,48(sp)
 ab2:	6165                	addi	sp,sp,112
 ab4:	8082                	ret

0000000000000ab6 <printf>:
 ab6:	7159                	addi	sp,sp,-112
 ab8:	f406                	sd	ra,40(sp)
 aba:	f022                	sd	s0,32(sp)
 abc:	1800                	addi	s0,sp,48
 abe:	fca43c23          	sd	a0,-40(s0)
 ac2:	e40c                	sd	a1,8(s0)
 ac4:	e810                	sd	a2,16(s0)
 ac6:	ec14                	sd	a3,24(s0)
 ac8:	f018                	sd	a4,32(s0)
 aca:	f41c                	sd	a5,40(s0)
 acc:	03043823          	sd	a6,48(s0)
 ad0:	03143c23          	sd	a7,56(s0)
 ad4:	04040793          	addi	a5,s0,64
 ad8:	fcf43823          	sd	a5,-48(s0)
 adc:	fd043783          	ld	a5,-48(s0)
 ae0:	fc878793          	addi	a5,a5,-56
 ae4:	fef43423          	sd	a5,-24(s0)
 ae8:	fe843783          	ld	a5,-24(s0)
 aec:	863e                	mv	a2,a5
 aee:	fd843583          	ld	a1,-40(s0)
 af2:	4505                	li	a0,1
 af4:	00000097          	auipc	ra,0x0
 af8:	d04080e7          	jalr	-764(ra) # 7f8 <vprintf>
 afc:	0001                	nop
 afe:	70a2                	ld	ra,40(sp)
 b00:	7402                	ld	s0,32(sp)
 b02:	6165                	addi	sp,sp,112
 b04:	8082                	ret

0000000000000b06 <free>:
 b06:	7179                	addi	sp,sp,-48
 b08:	f422                	sd	s0,40(sp)
 b0a:	1800                	addi	s0,sp,48
 b0c:	fca43c23          	sd	a0,-40(s0)
 b10:	fd843783          	ld	a5,-40(s0)
 b14:	17c1                	addi	a5,a5,-16
 b16:	fef43023          	sd	a5,-32(s0)
 b1a:	00000797          	auipc	a5,0x0
 b1e:	51678793          	addi	a5,a5,1302 # 1030 <freep>
 b22:	639c                	ld	a5,0(a5)
 b24:	fef43423          	sd	a5,-24(s0)
 b28:	a815                	j	b5c <free+0x56>
 b2a:	fe843783          	ld	a5,-24(s0)
 b2e:	639c                	ld	a5,0(a5)
 b30:	fe843703          	ld	a4,-24(s0)
 b34:	00f76f63          	bltu	a4,a5,b52 <free+0x4c>
 b38:	fe043703          	ld	a4,-32(s0)
 b3c:	fe843783          	ld	a5,-24(s0)
 b40:	02e7eb63          	bltu	a5,a4,b76 <free+0x70>
 b44:	fe843783          	ld	a5,-24(s0)
 b48:	639c                	ld	a5,0(a5)
 b4a:	fe043703          	ld	a4,-32(s0)
 b4e:	02f76463          	bltu	a4,a5,b76 <free+0x70>
 b52:	fe843783          	ld	a5,-24(s0)
 b56:	639c                	ld	a5,0(a5)
 b58:	fef43423          	sd	a5,-24(s0)
 b5c:	fe043703          	ld	a4,-32(s0)
 b60:	fe843783          	ld	a5,-24(s0)
 b64:	fce7f3e3          	bgeu	a5,a4,b2a <free+0x24>
 b68:	fe843783          	ld	a5,-24(s0)
 b6c:	639c                	ld	a5,0(a5)
 b6e:	fe043703          	ld	a4,-32(s0)
 b72:	faf77ce3          	bgeu	a4,a5,b2a <free+0x24>
 b76:	fe043783          	ld	a5,-32(s0)
 b7a:	479c                	lw	a5,8(a5)
 b7c:	1782                	slli	a5,a5,0x20
 b7e:	9381                	srli	a5,a5,0x20
 b80:	0792                	slli	a5,a5,0x4
 b82:	fe043703          	ld	a4,-32(s0)
 b86:	973e                	add	a4,a4,a5
 b88:	fe843783          	ld	a5,-24(s0)
 b8c:	639c                	ld	a5,0(a5)
 b8e:	02f71763          	bne	a4,a5,bbc <free+0xb6>
 b92:	fe043783          	ld	a5,-32(s0)
 b96:	4798                	lw	a4,8(a5)
 b98:	fe843783          	ld	a5,-24(s0)
 b9c:	639c                	ld	a5,0(a5)
 b9e:	479c                	lw	a5,8(a5)
 ba0:	9fb9                	addw	a5,a5,a4
 ba2:	0007871b          	sext.w	a4,a5
 ba6:	fe043783          	ld	a5,-32(s0)
 baa:	c798                	sw	a4,8(a5)
 bac:	fe843783          	ld	a5,-24(s0)
 bb0:	639c                	ld	a5,0(a5)
 bb2:	6398                	ld	a4,0(a5)
 bb4:	fe043783          	ld	a5,-32(s0)
 bb8:	e398                	sd	a4,0(a5)
 bba:	a039                	j	bc8 <free+0xc2>
 bbc:	fe843783          	ld	a5,-24(s0)
 bc0:	6398                	ld	a4,0(a5)
 bc2:	fe043783          	ld	a5,-32(s0)
 bc6:	e398                	sd	a4,0(a5)
 bc8:	fe843783          	ld	a5,-24(s0)
 bcc:	479c                	lw	a5,8(a5)
 bce:	1782                	slli	a5,a5,0x20
 bd0:	9381                	srli	a5,a5,0x20
 bd2:	0792                	slli	a5,a5,0x4
 bd4:	fe843703          	ld	a4,-24(s0)
 bd8:	97ba                	add	a5,a5,a4
 bda:	fe043703          	ld	a4,-32(s0)
 bde:	02f71563          	bne	a4,a5,c08 <free+0x102>
 be2:	fe843783          	ld	a5,-24(s0)
 be6:	4798                	lw	a4,8(a5)
 be8:	fe043783          	ld	a5,-32(s0)
 bec:	479c                	lw	a5,8(a5)
 bee:	9fb9                	addw	a5,a5,a4
 bf0:	0007871b          	sext.w	a4,a5
 bf4:	fe843783          	ld	a5,-24(s0)
 bf8:	c798                	sw	a4,8(a5)
 bfa:	fe043783          	ld	a5,-32(s0)
 bfe:	6398                	ld	a4,0(a5)
 c00:	fe843783          	ld	a5,-24(s0)
 c04:	e398                	sd	a4,0(a5)
 c06:	a031                	j	c12 <free+0x10c>
 c08:	fe843783          	ld	a5,-24(s0)
 c0c:	fe043703          	ld	a4,-32(s0)
 c10:	e398                	sd	a4,0(a5)
 c12:	00000797          	auipc	a5,0x0
 c16:	41e78793          	addi	a5,a5,1054 # 1030 <freep>
 c1a:	fe843703          	ld	a4,-24(s0)
 c1e:	e398                	sd	a4,0(a5)
 c20:	0001                	nop
 c22:	7422                	ld	s0,40(sp)
 c24:	6145                	addi	sp,sp,48
 c26:	8082                	ret

0000000000000c28 <morecore>:
 c28:	7179                	addi	sp,sp,-48
 c2a:	f406                	sd	ra,40(sp)
 c2c:	f022                	sd	s0,32(sp)
 c2e:	1800                	addi	s0,sp,48
 c30:	87aa                	mv	a5,a0
 c32:	fcf42e23          	sw	a5,-36(s0)
 c36:	fdc42783          	lw	a5,-36(s0)
 c3a:	0007871b          	sext.w	a4,a5
 c3e:	6785                	lui	a5,0x1
 c40:	00f77563          	bgeu	a4,a5,c4a <morecore+0x22>
 c44:	6785                	lui	a5,0x1
 c46:	fcf42e23          	sw	a5,-36(s0)
 c4a:	fdc42783          	lw	a5,-36(s0)
 c4e:	0047979b          	slliw	a5,a5,0x4
 c52:	2781                	sext.w	a5,a5
 c54:	2781                	sext.w	a5,a5
 c56:	853e                	mv	a0,a5
 c58:	00000097          	auipc	ra,0x0
 c5c:	996080e7          	jalr	-1642(ra) # 5ee <sbrk>
 c60:	fea43423          	sd	a0,-24(s0)
 c64:	fe843703          	ld	a4,-24(s0)
 c68:	57fd                	li	a5,-1
 c6a:	00f71463          	bne	a4,a5,c72 <morecore+0x4a>
 c6e:	4781                	li	a5,0
 c70:	a03d                	j	c9e <morecore+0x76>
 c72:	fe843783          	ld	a5,-24(s0)
 c76:	fef43023          	sd	a5,-32(s0)
 c7a:	fe043783          	ld	a5,-32(s0)
 c7e:	fdc42703          	lw	a4,-36(s0)
 c82:	c798                	sw	a4,8(a5)
 c84:	fe043783          	ld	a5,-32(s0)
 c88:	07c1                	addi	a5,a5,16 # 1010 <digits+0x10>
 c8a:	853e                	mv	a0,a5
 c8c:	00000097          	auipc	ra,0x0
 c90:	e7a080e7          	jalr	-390(ra) # b06 <free>
 c94:	00000797          	auipc	a5,0x0
 c98:	39c78793          	addi	a5,a5,924 # 1030 <freep>
 c9c:	639c                	ld	a5,0(a5)
 c9e:	853e                	mv	a0,a5
 ca0:	70a2                	ld	ra,40(sp)
 ca2:	7402                	ld	s0,32(sp)
 ca4:	6145                	addi	sp,sp,48
 ca6:	8082                	ret

0000000000000ca8 <malloc>:
 ca8:	7139                	addi	sp,sp,-64
 caa:	fc06                	sd	ra,56(sp)
 cac:	f822                	sd	s0,48(sp)
 cae:	0080                	addi	s0,sp,64
 cb0:	87aa                	mv	a5,a0
 cb2:	fcf42623          	sw	a5,-52(s0)
 cb6:	fcc46783          	lwu	a5,-52(s0)
 cba:	07bd                	addi	a5,a5,15
 cbc:	8391                	srli	a5,a5,0x4
 cbe:	2781                	sext.w	a5,a5
 cc0:	2785                	addiw	a5,a5,1
 cc2:	fcf42e23          	sw	a5,-36(s0)
 cc6:	00000797          	auipc	a5,0x0
 cca:	36a78793          	addi	a5,a5,874 # 1030 <freep>
 cce:	639c                	ld	a5,0(a5)
 cd0:	fef43023          	sd	a5,-32(s0)
 cd4:	fe043783          	ld	a5,-32(s0)
 cd8:	ef95                	bnez	a5,d14 <malloc+0x6c>
 cda:	00000797          	auipc	a5,0x0
 cde:	34678793          	addi	a5,a5,838 # 1020 <base>
 ce2:	fef43023          	sd	a5,-32(s0)
 ce6:	00000797          	auipc	a5,0x0
 cea:	34a78793          	addi	a5,a5,842 # 1030 <freep>
 cee:	fe043703          	ld	a4,-32(s0)
 cf2:	e398                	sd	a4,0(a5)
 cf4:	00000797          	auipc	a5,0x0
 cf8:	33c78793          	addi	a5,a5,828 # 1030 <freep>
 cfc:	6398                	ld	a4,0(a5)
 cfe:	00000797          	auipc	a5,0x0
 d02:	32278793          	addi	a5,a5,802 # 1020 <base>
 d06:	e398                	sd	a4,0(a5)
 d08:	00000797          	auipc	a5,0x0
 d0c:	31878793          	addi	a5,a5,792 # 1020 <base>
 d10:	0007a423          	sw	zero,8(a5)
 d14:	fe043783          	ld	a5,-32(s0)
 d18:	639c                	ld	a5,0(a5)
 d1a:	fef43423          	sd	a5,-24(s0)
 d1e:	fe843783          	ld	a5,-24(s0)
 d22:	4798                	lw	a4,8(a5)
 d24:	fdc42783          	lw	a5,-36(s0)
 d28:	2781                	sext.w	a5,a5
 d2a:	06f76763          	bltu	a4,a5,d98 <malloc+0xf0>
 d2e:	fe843783          	ld	a5,-24(s0)
 d32:	4798                	lw	a4,8(a5)
 d34:	fdc42783          	lw	a5,-36(s0)
 d38:	2781                	sext.w	a5,a5
 d3a:	00e79963          	bne	a5,a4,d4c <malloc+0xa4>
 d3e:	fe843783          	ld	a5,-24(s0)
 d42:	6398                	ld	a4,0(a5)
 d44:	fe043783          	ld	a5,-32(s0)
 d48:	e398                	sd	a4,0(a5)
 d4a:	a825                	j	d82 <malloc+0xda>
 d4c:	fe843783          	ld	a5,-24(s0)
 d50:	479c                	lw	a5,8(a5)
 d52:	fdc42703          	lw	a4,-36(s0)
 d56:	9f99                	subw	a5,a5,a4
 d58:	0007871b          	sext.w	a4,a5
 d5c:	fe843783          	ld	a5,-24(s0)
 d60:	c798                	sw	a4,8(a5)
 d62:	fe843783          	ld	a5,-24(s0)
 d66:	479c                	lw	a5,8(a5)
 d68:	1782                	slli	a5,a5,0x20
 d6a:	9381                	srli	a5,a5,0x20
 d6c:	0792                	slli	a5,a5,0x4
 d6e:	fe843703          	ld	a4,-24(s0)
 d72:	97ba                	add	a5,a5,a4
 d74:	fef43423          	sd	a5,-24(s0)
 d78:	fe843783          	ld	a5,-24(s0)
 d7c:	fdc42703          	lw	a4,-36(s0)
 d80:	c798                	sw	a4,8(a5)
 d82:	00000797          	auipc	a5,0x0
 d86:	2ae78793          	addi	a5,a5,686 # 1030 <freep>
 d8a:	fe043703          	ld	a4,-32(s0)
 d8e:	e398                	sd	a4,0(a5)
 d90:	fe843783          	ld	a5,-24(s0)
 d94:	07c1                	addi	a5,a5,16
 d96:	a091                	j	dda <malloc+0x132>
 d98:	00000797          	auipc	a5,0x0
 d9c:	29878793          	addi	a5,a5,664 # 1030 <freep>
 da0:	639c                	ld	a5,0(a5)
 da2:	fe843703          	ld	a4,-24(s0)
 da6:	02f71063          	bne	a4,a5,dc6 <malloc+0x11e>
 daa:	fdc42783          	lw	a5,-36(s0)
 dae:	853e                	mv	a0,a5
 db0:	00000097          	auipc	ra,0x0
 db4:	e78080e7          	jalr	-392(ra) # c28 <morecore>
 db8:	fea43423          	sd	a0,-24(s0)
 dbc:	fe843783          	ld	a5,-24(s0)
 dc0:	e399                	bnez	a5,dc6 <malloc+0x11e>
 dc2:	4781                	li	a5,0
 dc4:	a819                	j	dda <malloc+0x132>
 dc6:	fe843783          	ld	a5,-24(s0)
 dca:	fef43023          	sd	a5,-32(s0)
 dce:	fe843783          	ld	a5,-24(s0)
 dd2:	639c                	ld	a5,0(a5)
 dd4:	fef43423          	sd	a5,-24(s0)
 dd8:	b799                	j	d1e <malloc+0x76>
 dda:	853e                	mv	a0,a5
 ddc:	70e2                	ld	ra,56(sp)
 dde:	7442                	ld	s0,48(sp)
 de0:	6121                	addi	sp,sp,64
 de2:	8082                	ret
