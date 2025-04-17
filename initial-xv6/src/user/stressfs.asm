
user/_stressfs:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	dc010113          	addi	sp,sp,-576
   4:	22113c23          	sd	ra,568(sp)
   8:	22813823          	sd	s0,560(sp)
   c:	0480                	addi	s0,sp,576
   e:	87aa                	mv	a5,a0
  10:	dcb43023          	sd	a1,-576(s0)
  14:	dcf42623          	sw	a5,-564(s0)
  18:	00001797          	auipc	a5,0x1
  1c:	ed878793          	addi	a5,a5,-296 # ef0 <malloc+0x178>
  20:	6398                	ld	a4,0(a5)
  22:	fce43c23          	sd	a4,-40(s0)
  26:	0087d783          	lhu	a5,8(a5)
  2a:	fef41023          	sh	a5,-32(s0)
  2e:	00001517          	auipc	a0,0x1
  32:	e9250513          	addi	a0,a0,-366 # ec0 <malloc+0x148>
  36:	00001097          	auipc	ra,0x1
  3a:	b50080e7          	jalr	-1200(ra) # b86 <printf>
  3e:	dd840793          	addi	a5,s0,-552
  42:	20000613          	li	a2,512
  46:	06100593          	li	a1,97
  4a:	853e                	mv	a0,a5
  4c:	00000097          	auipc	ra,0x0
  50:	23e080e7          	jalr	574(ra) # 28a <memset>
  54:	fe042623          	sw	zero,-20(s0)
  58:	a829                	j	72 <main+0x72>
  5a:	00000097          	auipc	ra,0x0
  5e:	5d4080e7          	jalr	1492(ra) # 62e <fork>
  62:	87aa                	mv	a5,a0
  64:	00f04f63          	bgtz	a5,82 <main+0x82>
  68:	fec42783          	lw	a5,-20(s0)
  6c:	2785                	addiw	a5,a5,1
  6e:	fef42623          	sw	a5,-20(s0)
  72:	fec42783          	lw	a5,-20(s0)
  76:	0007871b          	sext.w	a4,a5
  7a:	478d                	li	a5,3
  7c:	fce7dfe3          	bge	a5,a4,5a <main+0x5a>
  80:	a011                	j	84 <main+0x84>
  82:	0001                	nop
  84:	fec42783          	lw	a5,-20(s0)
  88:	85be                	mv	a1,a5
  8a:	00001517          	auipc	a0,0x1
  8e:	e4e50513          	addi	a0,a0,-434 # ed8 <malloc+0x160>
  92:	00001097          	auipc	ra,0x1
  96:	af4080e7          	jalr	-1292(ra) # b86 <printf>
  9a:	fe044703          	lbu	a4,-32(s0)
  9e:	fec42783          	lw	a5,-20(s0)
  a2:	0ff7f793          	zext.b	a5,a5
  a6:	9fb9                	addw	a5,a5,a4
  a8:	0ff7f793          	zext.b	a5,a5
  ac:	fef40023          	sb	a5,-32(s0)
  b0:	fd840793          	addi	a5,s0,-40
  b4:	20200593          	li	a1,514
  b8:	853e                	mv	a0,a5
  ba:	00000097          	auipc	ra,0x0
  be:	5bc080e7          	jalr	1468(ra) # 676 <open>
  c2:	87aa                	mv	a5,a0
  c4:	fef42423          	sw	a5,-24(s0)
  c8:	fe042623          	sw	zero,-20(s0)
  cc:	a015                	j	f0 <main+0xf0>
  ce:	dd840713          	addi	a4,s0,-552
  d2:	fe842783          	lw	a5,-24(s0)
  d6:	20000613          	li	a2,512
  da:	85ba                	mv	a1,a4
  dc:	853e                	mv	a0,a5
  de:	00000097          	auipc	ra,0x0
  e2:	578080e7          	jalr	1400(ra) # 656 <write>
  e6:	fec42783          	lw	a5,-20(s0)
  ea:	2785                	addiw	a5,a5,1
  ec:	fef42623          	sw	a5,-20(s0)
  f0:	fec42783          	lw	a5,-20(s0)
  f4:	0007871b          	sext.w	a4,a5
  f8:	47cd                	li	a5,19
  fa:	fce7dae3          	bge	a5,a4,ce <main+0xce>
  fe:	fe842783          	lw	a5,-24(s0)
 102:	853e                	mv	a0,a5
 104:	00000097          	auipc	ra,0x0
 108:	55a080e7          	jalr	1370(ra) # 65e <close>
 10c:	00001517          	auipc	a0,0x1
 110:	ddc50513          	addi	a0,a0,-548 # ee8 <malloc+0x170>
 114:	00001097          	auipc	ra,0x1
 118:	a72080e7          	jalr	-1422(ra) # b86 <printf>
 11c:	fd840793          	addi	a5,s0,-40
 120:	4581                	li	a1,0
 122:	853e                	mv	a0,a5
 124:	00000097          	auipc	ra,0x0
 128:	552080e7          	jalr	1362(ra) # 676 <open>
 12c:	87aa                	mv	a5,a0
 12e:	fef42423          	sw	a5,-24(s0)
 132:	fe042623          	sw	zero,-20(s0)
 136:	a015                	j	15a <main+0x15a>
 138:	dd840713          	addi	a4,s0,-552
 13c:	fe842783          	lw	a5,-24(s0)
 140:	20000613          	li	a2,512
 144:	85ba                	mv	a1,a4
 146:	853e                	mv	a0,a5
 148:	00000097          	auipc	ra,0x0
 14c:	506080e7          	jalr	1286(ra) # 64e <read>
 150:	fec42783          	lw	a5,-20(s0)
 154:	2785                	addiw	a5,a5,1
 156:	fef42623          	sw	a5,-20(s0)
 15a:	fec42783          	lw	a5,-20(s0)
 15e:	0007871b          	sext.w	a4,a5
 162:	47cd                	li	a5,19
 164:	fce7dae3          	bge	a5,a4,138 <main+0x138>
 168:	fe842783          	lw	a5,-24(s0)
 16c:	853e                	mv	a0,a5
 16e:	00000097          	auipc	ra,0x0
 172:	4f0080e7          	jalr	1264(ra) # 65e <close>
 176:	4501                	li	a0,0
 178:	00000097          	auipc	ra,0x0
 17c:	4c6080e7          	jalr	1222(ra) # 63e <wait>
 180:	4501                	li	a0,0
 182:	00000097          	auipc	ra,0x0
 186:	4b4080e7          	jalr	1204(ra) # 636 <exit>

000000000000018a <_main>:
 18a:	1141                	addi	sp,sp,-16
 18c:	e406                	sd	ra,8(sp)
 18e:	e022                	sd	s0,0(sp)
 190:	0800                	addi	s0,sp,16
 192:	00000097          	auipc	ra,0x0
 196:	e6e080e7          	jalr	-402(ra) # 0 <main>
 19a:	4501                	li	a0,0
 19c:	00000097          	auipc	ra,0x0
 1a0:	49a080e7          	jalr	1178(ra) # 636 <exit>

00000000000001a4 <strcpy>:
 1a4:	7179                	addi	sp,sp,-48
 1a6:	f422                	sd	s0,40(sp)
 1a8:	1800                	addi	s0,sp,48
 1aa:	fca43c23          	sd	a0,-40(s0)
 1ae:	fcb43823          	sd	a1,-48(s0)
 1b2:	fd843783          	ld	a5,-40(s0)
 1b6:	fef43423          	sd	a5,-24(s0)
 1ba:	0001                	nop
 1bc:	fd043703          	ld	a4,-48(s0)
 1c0:	00170793          	addi	a5,a4,1
 1c4:	fcf43823          	sd	a5,-48(s0)
 1c8:	fd843783          	ld	a5,-40(s0)
 1cc:	00178693          	addi	a3,a5,1
 1d0:	fcd43c23          	sd	a3,-40(s0)
 1d4:	00074703          	lbu	a4,0(a4)
 1d8:	00e78023          	sb	a4,0(a5)
 1dc:	0007c783          	lbu	a5,0(a5)
 1e0:	fff1                	bnez	a5,1bc <strcpy+0x18>
 1e2:	fe843783          	ld	a5,-24(s0)
 1e6:	853e                	mv	a0,a5
 1e8:	7422                	ld	s0,40(sp)
 1ea:	6145                	addi	sp,sp,48
 1ec:	8082                	ret

00000000000001ee <strcmp>:
 1ee:	1101                	addi	sp,sp,-32
 1f0:	ec22                	sd	s0,24(sp)
 1f2:	1000                	addi	s0,sp,32
 1f4:	fea43423          	sd	a0,-24(s0)
 1f8:	feb43023          	sd	a1,-32(s0)
 1fc:	a819                	j	212 <strcmp+0x24>
 1fe:	fe843783          	ld	a5,-24(s0)
 202:	0785                	addi	a5,a5,1
 204:	fef43423          	sd	a5,-24(s0)
 208:	fe043783          	ld	a5,-32(s0)
 20c:	0785                	addi	a5,a5,1
 20e:	fef43023          	sd	a5,-32(s0)
 212:	fe843783          	ld	a5,-24(s0)
 216:	0007c783          	lbu	a5,0(a5)
 21a:	cb99                	beqz	a5,230 <strcmp+0x42>
 21c:	fe843783          	ld	a5,-24(s0)
 220:	0007c703          	lbu	a4,0(a5)
 224:	fe043783          	ld	a5,-32(s0)
 228:	0007c783          	lbu	a5,0(a5)
 22c:	fcf709e3          	beq	a4,a5,1fe <strcmp+0x10>
 230:	fe843783          	ld	a5,-24(s0)
 234:	0007c783          	lbu	a5,0(a5)
 238:	0007871b          	sext.w	a4,a5
 23c:	fe043783          	ld	a5,-32(s0)
 240:	0007c783          	lbu	a5,0(a5)
 244:	2781                	sext.w	a5,a5
 246:	40f707bb          	subw	a5,a4,a5
 24a:	2781                	sext.w	a5,a5
 24c:	853e                	mv	a0,a5
 24e:	6462                	ld	s0,24(sp)
 250:	6105                	addi	sp,sp,32
 252:	8082                	ret

0000000000000254 <strlen>:
 254:	7179                	addi	sp,sp,-48
 256:	f422                	sd	s0,40(sp)
 258:	1800                	addi	s0,sp,48
 25a:	fca43c23          	sd	a0,-40(s0)
 25e:	fe042623          	sw	zero,-20(s0)
 262:	a031                	j	26e <strlen+0x1a>
 264:	fec42783          	lw	a5,-20(s0)
 268:	2785                	addiw	a5,a5,1
 26a:	fef42623          	sw	a5,-20(s0)
 26e:	fec42783          	lw	a5,-20(s0)
 272:	fd843703          	ld	a4,-40(s0)
 276:	97ba                	add	a5,a5,a4
 278:	0007c783          	lbu	a5,0(a5)
 27c:	f7e5                	bnez	a5,264 <strlen+0x10>
 27e:	fec42783          	lw	a5,-20(s0)
 282:	853e                	mv	a0,a5
 284:	7422                	ld	s0,40(sp)
 286:	6145                	addi	sp,sp,48
 288:	8082                	ret

000000000000028a <memset>:
 28a:	7179                	addi	sp,sp,-48
 28c:	f422                	sd	s0,40(sp)
 28e:	1800                	addi	s0,sp,48
 290:	fca43c23          	sd	a0,-40(s0)
 294:	87ae                	mv	a5,a1
 296:	8732                	mv	a4,a2
 298:	fcf42a23          	sw	a5,-44(s0)
 29c:	87ba                	mv	a5,a4
 29e:	fcf42823          	sw	a5,-48(s0)
 2a2:	fd843783          	ld	a5,-40(s0)
 2a6:	fef43023          	sd	a5,-32(s0)
 2aa:	fe042623          	sw	zero,-20(s0)
 2ae:	a00d                	j	2d0 <memset+0x46>
 2b0:	fec42783          	lw	a5,-20(s0)
 2b4:	fe043703          	ld	a4,-32(s0)
 2b8:	97ba                	add	a5,a5,a4
 2ba:	fd442703          	lw	a4,-44(s0)
 2be:	0ff77713          	zext.b	a4,a4
 2c2:	00e78023          	sb	a4,0(a5)
 2c6:	fec42783          	lw	a5,-20(s0)
 2ca:	2785                	addiw	a5,a5,1
 2cc:	fef42623          	sw	a5,-20(s0)
 2d0:	fec42703          	lw	a4,-20(s0)
 2d4:	fd042783          	lw	a5,-48(s0)
 2d8:	2781                	sext.w	a5,a5
 2da:	fcf76be3          	bltu	a4,a5,2b0 <memset+0x26>
 2de:	fd843783          	ld	a5,-40(s0)
 2e2:	853e                	mv	a0,a5
 2e4:	7422                	ld	s0,40(sp)
 2e6:	6145                	addi	sp,sp,48
 2e8:	8082                	ret

00000000000002ea <strchr>:
 2ea:	1101                	addi	sp,sp,-32
 2ec:	ec22                	sd	s0,24(sp)
 2ee:	1000                	addi	s0,sp,32
 2f0:	fea43423          	sd	a0,-24(s0)
 2f4:	87ae                	mv	a5,a1
 2f6:	fef403a3          	sb	a5,-25(s0)
 2fa:	a01d                	j	320 <strchr+0x36>
 2fc:	fe843783          	ld	a5,-24(s0)
 300:	0007c703          	lbu	a4,0(a5)
 304:	fe744783          	lbu	a5,-25(s0)
 308:	0ff7f793          	zext.b	a5,a5
 30c:	00e79563          	bne	a5,a4,316 <strchr+0x2c>
 310:	fe843783          	ld	a5,-24(s0)
 314:	a821                	j	32c <strchr+0x42>
 316:	fe843783          	ld	a5,-24(s0)
 31a:	0785                	addi	a5,a5,1
 31c:	fef43423          	sd	a5,-24(s0)
 320:	fe843783          	ld	a5,-24(s0)
 324:	0007c783          	lbu	a5,0(a5)
 328:	fbf1                	bnez	a5,2fc <strchr+0x12>
 32a:	4781                	li	a5,0
 32c:	853e                	mv	a0,a5
 32e:	6462                	ld	s0,24(sp)
 330:	6105                	addi	sp,sp,32
 332:	8082                	ret

0000000000000334 <gets>:
 334:	7179                	addi	sp,sp,-48
 336:	f406                	sd	ra,40(sp)
 338:	f022                	sd	s0,32(sp)
 33a:	1800                	addi	s0,sp,48
 33c:	fca43c23          	sd	a0,-40(s0)
 340:	87ae                	mv	a5,a1
 342:	fcf42a23          	sw	a5,-44(s0)
 346:	fe042623          	sw	zero,-20(s0)
 34a:	a8a1                	j	3a2 <gets+0x6e>
 34c:	fe740793          	addi	a5,s0,-25
 350:	4605                	li	a2,1
 352:	85be                	mv	a1,a5
 354:	4501                	li	a0,0
 356:	00000097          	auipc	ra,0x0
 35a:	2f8080e7          	jalr	760(ra) # 64e <read>
 35e:	87aa                	mv	a5,a0
 360:	fef42423          	sw	a5,-24(s0)
 364:	fe842783          	lw	a5,-24(s0)
 368:	2781                	sext.w	a5,a5
 36a:	04f05763          	blez	a5,3b8 <gets+0x84>
 36e:	fec42783          	lw	a5,-20(s0)
 372:	0017871b          	addiw	a4,a5,1
 376:	fee42623          	sw	a4,-20(s0)
 37a:	873e                	mv	a4,a5
 37c:	fd843783          	ld	a5,-40(s0)
 380:	97ba                	add	a5,a5,a4
 382:	fe744703          	lbu	a4,-25(s0)
 386:	00e78023          	sb	a4,0(a5)
 38a:	fe744783          	lbu	a5,-25(s0)
 38e:	873e                	mv	a4,a5
 390:	47a9                	li	a5,10
 392:	02f70463          	beq	a4,a5,3ba <gets+0x86>
 396:	fe744783          	lbu	a5,-25(s0)
 39a:	873e                	mv	a4,a5
 39c:	47b5                	li	a5,13
 39e:	00f70e63          	beq	a4,a5,3ba <gets+0x86>
 3a2:	fec42783          	lw	a5,-20(s0)
 3a6:	2785                	addiw	a5,a5,1
 3a8:	0007871b          	sext.w	a4,a5
 3ac:	fd442783          	lw	a5,-44(s0)
 3b0:	2781                	sext.w	a5,a5
 3b2:	f8f74de3          	blt	a4,a5,34c <gets+0x18>
 3b6:	a011                	j	3ba <gets+0x86>
 3b8:	0001                	nop
 3ba:	fec42783          	lw	a5,-20(s0)
 3be:	fd843703          	ld	a4,-40(s0)
 3c2:	97ba                	add	a5,a5,a4
 3c4:	00078023          	sb	zero,0(a5)
 3c8:	fd843783          	ld	a5,-40(s0)
 3cc:	853e                	mv	a0,a5
 3ce:	70a2                	ld	ra,40(sp)
 3d0:	7402                	ld	s0,32(sp)
 3d2:	6145                	addi	sp,sp,48
 3d4:	8082                	ret

00000000000003d6 <stat>:
 3d6:	7179                	addi	sp,sp,-48
 3d8:	f406                	sd	ra,40(sp)
 3da:	f022                	sd	s0,32(sp)
 3dc:	1800                	addi	s0,sp,48
 3de:	fca43c23          	sd	a0,-40(s0)
 3e2:	fcb43823          	sd	a1,-48(s0)
 3e6:	4581                	li	a1,0
 3e8:	fd843503          	ld	a0,-40(s0)
 3ec:	00000097          	auipc	ra,0x0
 3f0:	28a080e7          	jalr	650(ra) # 676 <open>
 3f4:	87aa                	mv	a5,a0
 3f6:	fef42623          	sw	a5,-20(s0)
 3fa:	fec42783          	lw	a5,-20(s0)
 3fe:	2781                	sext.w	a5,a5
 400:	0007d463          	bgez	a5,408 <stat+0x32>
 404:	57fd                	li	a5,-1
 406:	a035                	j	432 <stat+0x5c>
 408:	fec42783          	lw	a5,-20(s0)
 40c:	fd043583          	ld	a1,-48(s0)
 410:	853e                	mv	a0,a5
 412:	00000097          	auipc	ra,0x0
 416:	27c080e7          	jalr	636(ra) # 68e <fstat>
 41a:	87aa                	mv	a5,a0
 41c:	fef42423          	sw	a5,-24(s0)
 420:	fec42783          	lw	a5,-20(s0)
 424:	853e                	mv	a0,a5
 426:	00000097          	auipc	ra,0x0
 42a:	238080e7          	jalr	568(ra) # 65e <close>
 42e:	fe842783          	lw	a5,-24(s0)
 432:	853e                	mv	a0,a5
 434:	70a2                	ld	ra,40(sp)
 436:	7402                	ld	s0,32(sp)
 438:	6145                	addi	sp,sp,48
 43a:	8082                	ret

000000000000043c <atoi>:
 43c:	7179                	addi	sp,sp,-48
 43e:	f422                	sd	s0,40(sp)
 440:	1800                	addi	s0,sp,48
 442:	fca43c23          	sd	a0,-40(s0)
 446:	fe042623          	sw	zero,-20(s0)
 44a:	a81d                	j	480 <atoi+0x44>
 44c:	fec42783          	lw	a5,-20(s0)
 450:	873e                	mv	a4,a5
 452:	87ba                	mv	a5,a4
 454:	0027979b          	slliw	a5,a5,0x2
 458:	9fb9                	addw	a5,a5,a4
 45a:	0017979b          	slliw	a5,a5,0x1
 45e:	0007871b          	sext.w	a4,a5
 462:	fd843783          	ld	a5,-40(s0)
 466:	00178693          	addi	a3,a5,1
 46a:	fcd43c23          	sd	a3,-40(s0)
 46e:	0007c783          	lbu	a5,0(a5)
 472:	2781                	sext.w	a5,a5
 474:	9fb9                	addw	a5,a5,a4
 476:	2781                	sext.w	a5,a5
 478:	fd07879b          	addiw	a5,a5,-48
 47c:	fef42623          	sw	a5,-20(s0)
 480:	fd843783          	ld	a5,-40(s0)
 484:	0007c783          	lbu	a5,0(a5)
 488:	873e                	mv	a4,a5
 48a:	02f00793          	li	a5,47
 48e:	00e7fb63          	bgeu	a5,a4,4a4 <atoi+0x68>
 492:	fd843783          	ld	a5,-40(s0)
 496:	0007c783          	lbu	a5,0(a5)
 49a:	873e                	mv	a4,a5
 49c:	03900793          	li	a5,57
 4a0:	fae7f6e3          	bgeu	a5,a4,44c <atoi+0x10>
 4a4:	fec42783          	lw	a5,-20(s0)
 4a8:	853e                	mv	a0,a5
 4aa:	7422                	ld	s0,40(sp)
 4ac:	6145                	addi	sp,sp,48
 4ae:	8082                	ret

00000000000004b0 <memmove>:
 4b0:	7139                	addi	sp,sp,-64
 4b2:	fc22                	sd	s0,56(sp)
 4b4:	0080                	addi	s0,sp,64
 4b6:	fca43c23          	sd	a0,-40(s0)
 4ba:	fcb43823          	sd	a1,-48(s0)
 4be:	87b2                	mv	a5,a2
 4c0:	fcf42623          	sw	a5,-52(s0)
 4c4:	fd843783          	ld	a5,-40(s0)
 4c8:	fef43423          	sd	a5,-24(s0)
 4cc:	fd043783          	ld	a5,-48(s0)
 4d0:	fef43023          	sd	a5,-32(s0)
 4d4:	fe043703          	ld	a4,-32(s0)
 4d8:	fe843783          	ld	a5,-24(s0)
 4dc:	02e7fc63          	bgeu	a5,a4,514 <memmove+0x64>
 4e0:	a00d                	j	502 <memmove+0x52>
 4e2:	fe043703          	ld	a4,-32(s0)
 4e6:	00170793          	addi	a5,a4,1
 4ea:	fef43023          	sd	a5,-32(s0)
 4ee:	fe843783          	ld	a5,-24(s0)
 4f2:	00178693          	addi	a3,a5,1
 4f6:	fed43423          	sd	a3,-24(s0)
 4fa:	00074703          	lbu	a4,0(a4)
 4fe:	00e78023          	sb	a4,0(a5)
 502:	fcc42783          	lw	a5,-52(s0)
 506:	fff7871b          	addiw	a4,a5,-1
 50a:	fce42623          	sw	a4,-52(s0)
 50e:	fcf04ae3          	bgtz	a5,4e2 <memmove+0x32>
 512:	a891                	j	566 <memmove+0xb6>
 514:	fcc42783          	lw	a5,-52(s0)
 518:	fe843703          	ld	a4,-24(s0)
 51c:	97ba                	add	a5,a5,a4
 51e:	fef43423          	sd	a5,-24(s0)
 522:	fcc42783          	lw	a5,-52(s0)
 526:	fe043703          	ld	a4,-32(s0)
 52a:	97ba                	add	a5,a5,a4
 52c:	fef43023          	sd	a5,-32(s0)
 530:	a01d                	j	556 <memmove+0xa6>
 532:	fe043783          	ld	a5,-32(s0)
 536:	17fd                	addi	a5,a5,-1
 538:	fef43023          	sd	a5,-32(s0)
 53c:	fe843783          	ld	a5,-24(s0)
 540:	17fd                	addi	a5,a5,-1
 542:	fef43423          	sd	a5,-24(s0)
 546:	fe043783          	ld	a5,-32(s0)
 54a:	0007c703          	lbu	a4,0(a5)
 54e:	fe843783          	ld	a5,-24(s0)
 552:	00e78023          	sb	a4,0(a5)
 556:	fcc42783          	lw	a5,-52(s0)
 55a:	fff7871b          	addiw	a4,a5,-1
 55e:	fce42623          	sw	a4,-52(s0)
 562:	fcf048e3          	bgtz	a5,532 <memmove+0x82>
 566:	fd843783          	ld	a5,-40(s0)
 56a:	853e                	mv	a0,a5
 56c:	7462                	ld	s0,56(sp)
 56e:	6121                	addi	sp,sp,64
 570:	8082                	ret

0000000000000572 <memcmp>:
 572:	7139                	addi	sp,sp,-64
 574:	fc22                	sd	s0,56(sp)
 576:	0080                	addi	s0,sp,64
 578:	fca43c23          	sd	a0,-40(s0)
 57c:	fcb43823          	sd	a1,-48(s0)
 580:	87b2                	mv	a5,a2
 582:	fcf42623          	sw	a5,-52(s0)
 586:	fd843783          	ld	a5,-40(s0)
 58a:	fef43423          	sd	a5,-24(s0)
 58e:	fd043783          	ld	a5,-48(s0)
 592:	fef43023          	sd	a5,-32(s0)
 596:	a0a1                	j	5de <memcmp+0x6c>
 598:	fe843783          	ld	a5,-24(s0)
 59c:	0007c703          	lbu	a4,0(a5)
 5a0:	fe043783          	ld	a5,-32(s0)
 5a4:	0007c783          	lbu	a5,0(a5)
 5a8:	02f70163          	beq	a4,a5,5ca <memcmp+0x58>
 5ac:	fe843783          	ld	a5,-24(s0)
 5b0:	0007c783          	lbu	a5,0(a5)
 5b4:	0007871b          	sext.w	a4,a5
 5b8:	fe043783          	ld	a5,-32(s0)
 5bc:	0007c783          	lbu	a5,0(a5)
 5c0:	2781                	sext.w	a5,a5
 5c2:	40f707bb          	subw	a5,a4,a5
 5c6:	2781                	sext.w	a5,a5
 5c8:	a01d                	j	5ee <memcmp+0x7c>
 5ca:	fe843783          	ld	a5,-24(s0)
 5ce:	0785                	addi	a5,a5,1
 5d0:	fef43423          	sd	a5,-24(s0)
 5d4:	fe043783          	ld	a5,-32(s0)
 5d8:	0785                	addi	a5,a5,1
 5da:	fef43023          	sd	a5,-32(s0)
 5de:	fcc42783          	lw	a5,-52(s0)
 5e2:	fff7871b          	addiw	a4,a5,-1
 5e6:	fce42623          	sw	a4,-52(s0)
 5ea:	f7dd                	bnez	a5,598 <memcmp+0x26>
 5ec:	4781                	li	a5,0
 5ee:	853e                	mv	a0,a5
 5f0:	7462                	ld	s0,56(sp)
 5f2:	6121                	addi	sp,sp,64
 5f4:	8082                	ret

00000000000005f6 <memcpy>:
 5f6:	7179                	addi	sp,sp,-48
 5f8:	f406                	sd	ra,40(sp)
 5fa:	f022                	sd	s0,32(sp)
 5fc:	1800                	addi	s0,sp,48
 5fe:	fea43423          	sd	a0,-24(s0)
 602:	feb43023          	sd	a1,-32(s0)
 606:	87b2                	mv	a5,a2
 608:	fcf42e23          	sw	a5,-36(s0)
 60c:	fdc42783          	lw	a5,-36(s0)
 610:	863e                	mv	a2,a5
 612:	fe043583          	ld	a1,-32(s0)
 616:	fe843503          	ld	a0,-24(s0)
 61a:	00000097          	auipc	ra,0x0
 61e:	e96080e7          	jalr	-362(ra) # 4b0 <memmove>
 622:	87aa                	mv	a5,a0
 624:	853e                	mv	a0,a5
 626:	70a2                	ld	ra,40(sp)
 628:	7402                	ld	s0,32(sp)
 62a:	6145                	addi	sp,sp,48
 62c:	8082                	ret

000000000000062e <fork>:
 62e:	4885                	li	a7,1
 630:	00000073          	ecall
 634:	8082                	ret

0000000000000636 <exit>:
 636:	4889                	li	a7,2
 638:	00000073          	ecall
 63c:	8082                	ret

000000000000063e <wait>:
 63e:	488d                	li	a7,3
 640:	00000073          	ecall
 644:	8082                	ret

0000000000000646 <pipe>:
 646:	4891                	li	a7,4
 648:	00000073          	ecall
 64c:	8082                	ret

000000000000064e <read>:
 64e:	4895                	li	a7,5
 650:	00000073          	ecall
 654:	8082                	ret

0000000000000656 <write>:
 656:	48c1                	li	a7,16
 658:	00000073          	ecall
 65c:	8082                	ret

000000000000065e <close>:
 65e:	48d5                	li	a7,21
 660:	00000073          	ecall
 664:	8082                	ret

0000000000000666 <kill>:
 666:	4899                	li	a7,6
 668:	00000073          	ecall
 66c:	8082                	ret

000000000000066e <exec>:
 66e:	489d                	li	a7,7
 670:	00000073          	ecall
 674:	8082                	ret

0000000000000676 <open>:
 676:	48bd                	li	a7,15
 678:	00000073          	ecall
 67c:	8082                	ret

000000000000067e <mknod>:
 67e:	48c5                	li	a7,17
 680:	00000073          	ecall
 684:	8082                	ret

0000000000000686 <unlink>:
 686:	48c9                	li	a7,18
 688:	00000073          	ecall
 68c:	8082                	ret

000000000000068e <fstat>:
 68e:	48a1                	li	a7,8
 690:	00000073          	ecall
 694:	8082                	ret

0000000000000696 <link>:
 696:	48cd                	li	a7,19
 698:	00000073          	ecall
 69c:	8082                	ret

000000000000069e <mkdir>:
 69e:	48d1                	li	a7,20
 6a0:	00000073          	ecall
 6a4:	8082                	ret

00000000000006a6 <chdir>:
 6a6:	48a5                	li	a7,9
 6a8:	00000073          	ecall
 6ac:	8082                	ret

00000000000006ae <dup>:
 6ae:	48a9                	li	a7,10
 6b0:	00000073          	ecall
 6b4:	8082                	ret

00000000000006b6 <getpid>:
 6b6:	48ad                	li	a7,11
 6b8:	00000073          	ecall
 6bc:	8082                	ret

00000000000006be <sbrk>:
 6be:	48b1                	li	a7,12
 6c0:	00000073          	ecall
 6c4:	8082                	ret

00000000000006c6 <sleep>:
 6c6:	48b5                	li	a7,13
 6c8:	00000073          	ecall
 6cc:	8082                	ret

00000000000006ce <uptime>:
 6ce:	48b9                	li	a7,14
 6d0:	00000073          	ecall
 6d4:	8082                	ret

00000000000006d6 <waitx>:
 6d6:	48d9                	li	a7,22
 6d8:	00000073          	ecall
 6dc:	8082                	ret

00000000000006de <getsyscount>:
 6de:	48dd                	li	a7,23
 6e0:	00000073          	ecall
 6e4:	8082                	ret

00000000000006e6 <sigalarm>:
 6e6:	48e1                	li	a7,24
 6e8:	00000073          	ecall
 6ec:	8082                	ret

00000000000006ee <sigreturn>:
 6ee:	48e5                	li	a7,25
 6f0:	00000073          	ecall
 6f4:	8082                	ret

00000000000006f6 <settickets>:
 6f6:	48e9                	li	a7,26
 6f8:	00000073          	ecall
 6fc:	8082                	ret

00000000000006fe <putc>:
 6fe:	1101                	addi	sp,sp,-32
 700:	ec06                	sd	ra,24(sp)
 702:	e822                	sd	s0,16(sp)
 704:	1000                	addi	s0,sp,32
 706:	87aa                	mv	a5,a0
 708:	872e                	mv	a4,a1
 70a:	fef42623          	sw	a5,-20(s0)
 70e:	87ba                	mv	a5,a4
 710:	fef405a3          	sb	a5,-21(s0)
 714:	feb40713          	addi	a4,s0,-21
 718:	fec42783          	lw	a5,-20(s0)
 71c:	4605                	li	a2,1
 71e:	85ba                	mv	a1,a4
 720:	853e                	mv	a0,a5
 722:	00000097          	auipc	ra,0x0
 726:	f34080e7          	jalr	-204(ra) # 656 <write>
 72a:	0001                	nop
 72c:	60e2                	ld	ra,24(sp)
 72e:	6442                	ld	s0,16(sp)
 730:	6105                	addi	sp,sp,32
 732:	8082                	ret

0000000000000734 <printint>:
 734:	7139                	addi	sp,sp,-64
 736:	fc06                	sd	ra,56(sp)
 738:	f822                	sd	s0,48(sp)
 73a:	0080                	addi	s0,sp,64
 73c:	87aa                	mv	a5,a0
 73e:	8736                	mv	a4,a3
 740:	fcf42623          	sw	a5,-52(s0)
 744:	87ae                	mv	a5,a1
 746:	fcf42423          	sw	a5,-56(s0)
 74a:	87b2                	mv	a5,a2
 74c:	fcf42223          	sw	a5,-60(s0)
 750:	87ba                	mv	a5,a4
 752:	fcf42023          	sw	a5,-64(s0)
 756:	fe042423          	sw	zero,-24(s0)
 75a:	fc042783          	lw	a5,-64(s0)
 75e:	2781                	sext.w	a5,a5
 760:	c38d                	beqz	a5,782 <printint+0x4e>
 762:	fc842783          	lw	a5,-56(s0)
 766:	2781                	sext.w	a5,a5
 768:	0007dd63          	bgez	a5,782 <printint+0x4e>
 76c:	4785                	li	a5,1
 76e:	fef42423          	sw	a5,-24(s0)
 772:	fc842783          	lw	a5,-56(s0)
 776:	40f007bb          	negw	a5,a5
 77a:	2781                	sext.w	a5,a5
 77c:	fef42223          	sw	a5,-28(s0)
 780:	a029                	j	78a <printint+0x56>
 782:	fc842783          	lw	a5,-56(s0)
 786:	fef42223          	sw	a5,-28(s0)
 78a:	fe042623          	sw	zero,-20(s0)
 78e:	fc442783          	lw	a5,-60(s0)
 792:	fe442703          	lw	a4,-28(s0)
 796:	02f777bb          	remuw	a5,a4,a5
 79a:	0007861b          	sext.w	a2,a5
 79e:	fec42783          	lw	a5,-20(s0)
 7a2:	0017871b          	addiw	a4,a5,1
 7a6:	fee42623          	sw	a4,-20(s0)
 7aa:	00001697          	auipc	a3,0x1
 7ae:	85668693          	addi	a3,a3,-1962 # 1000 <digits>
 7b2:	02061713          	slli	a4,a2,0x20
 7b6:	9301                	srli	a4,a4,0x20
 7b8:	9736                	add	a4,a4,a3
 7ba:	00074703          	lbu	a4,0(a4)
 7be:	17c1                	addi	a5,a5,-16
 7c0:	97a2                	add	a5,a5,s0
 7c2:	fee78023          	sb	a4,-32(a5)
 7c6:	fc442783          	lw	a5,-60(s0)
 7ca:	fe442703          	lw	a4,-28(s0)
 7ce:	02f757bb          	divuw	a5,a4,a5
 7d2:	fef42223          	sw	a5,-28(s0)
 7d6:	fe442783          	lw	a5,-28(s0)
 7da:	2781                	sext.w	a5,a5
 7dc:	fbcd                	bnez	a5,78e <printint+0x5a>
 7de:	fe842783          	lw	a5,-24(s0)
 7e2:	2781                	sext.w	a5,a5
 7e4:	cf85                	beqz	a5,81c <printint+0xe8>
 7e6:	fec42783          	lw	a5,-20(s0)
 7ea:	0017871b          	addiw	a4,a5,1
 7ee:	fee42623          	sw	a4,-20(s0)
 7f2:	17c1                	addi	a5,a5,-16
 7f4:	97a2                	add	a5,a5,s0
 7f6:	02d00713          	li	a4,45
 7fa:	fee78023          	sb	a4,-32(a5)
 7fe:	a839                	j	81c <printint+0xe8>
 800:	fec42783          	lw	a5,-20(s0)
 804:	17c1                	addi	a5,a5,-16
 806:	97a2                	add	a5,a5,s0
 808:	fe07c703          	lbu	a4,-32(a5)
 80c:	fcc42783          	lw	a5,-52(s0)
 810:	85ba                	mv	a1,a4
 812:	853e                	mv	a0,a5
 814:	00000097          	auipc	ra,0x0
 818:	eea080e7          	jalr	-278(ra) # 6fe <putc>
 81c:	fec42783          	lw	a5,-20(s0)
 820:	37fd                	addiw	a5,a5,-1
 822:	fef42623          	sw	a5,-20(s0)
 826:	fec42783          	lw	a5,-20(s0)
 82a:	2781                	sext.w	a5,a5
 82c:	fc07dae3          	bgez	a5,800 <printint+0xcc>
 830:	0001                	nop
 832:	0001                	nop
 834:	70e2                	ld	ra,56(sp)
 836:	7442                	ld	s0,48(sp)
 838:	6121                	addi	sp,sp,64
 83a:	8082                	ret

000000000000083c <printptr>:
 83c:	7179                	addi	sp,sp,-48
 83e:	f406                	sd	ra,40(sp)
 840:	f022                	sd	s0,32(sp)
 842:	1800                	addi	s0,sp,48
 844:	87aa                	mv	a5,a0
 846:	fcb43823          	sd	a1,-48(s0)
 84a:	fcf42e23          	sw	a5,-36(s0)
 84e:	fdc42783          	lw	a5,-36(s0)
 852:	03000593          	li	a1,48
 856:	853e                	mv	a0,a5
 858:	00000097          	auipc	ra,0x0
 85c:	ea6080e7          	jalr	-346(ra) # 6fe <putc>
 860:	fdc42783          	lw	a5,-36(s0)
 864:	07800593          	li	a1,120
 868:	853e                	mv	a0,a5
 86a:	00000097          	auipc	ra,0x0
 86e:	e94080e7          	jalr	-364(ra) # 6fe <putc>
 872:	fe042623          	sw	zero,-20(s0)
 876:	a82d                	j	8b0 <printptr+0x74>
 878:	fd043783          	ld	a5,-48(s0)
 87c:	93f1                	srli	a5,a5,0x3c
 87e:	00000717          	auipc	a4,0x0
 882:	78270713          	addi	a4,a4,1922 # 1000 <digits>
 886:	97ba                	add	a5,a5,a4
 888:	0007c703          	lbu	a4,0(a5)
 88c:	fdc42783          	lw	a5,-36(s0)
 890:	85ba                	mv	a1,a4
 892:	853e                	mv	a0,a5
 894:	00000097          	auipc	ra,0x0
 898:	e6a080e7          	jalr	-406(ra) # 6fe <putc>
 89c:	fec42783          	lw	a5,-20(s0)
 8a0:	2785                	addiw	a5,a5,1
 8a2:	fef42623          	sw	a5,-20(s0)
 8a6:	fd043783          	ld	a5,-48(s0)
 8aa:	0792                	slli	a5,a5,0x4
 8ac:	fcf43823          	sd	a5,-48(s0)
 8b0:	fec42783          	lw	a5,-20(s0)
 8b4:	873e                	mv	a4,a5
 8b6:	47bd                	li	a5,15
 8b8:	fce7f0e3          	bgeu	a5,a4,878 <printptr+0x3c>
 8bc:	0001                	nop
 8be:	0001                	nop
 8c0:	70a2                	ld	ra,40(sp)
 8c2:	7402                	ld	s0,32(sp)
 8c4:	6145                	addi	sp,sp,48
 8c6:	8082                	ret

00000000000008c8 <vprintf>:
 8c8:	715d                	addi	sp,sp,-80
 8ca:	e486                	sd	ra,72(sp)
 8cc:	e0a2                	sd	s0,64(sp)
 8ce:	0880                	addi	s0,sp,80
 8d0:	87aa                	mv	a5,a0
 8d2:	fcb43023          	sd	a1,-64(s0)
 8d6:	fac43c23          	sd	a2,-72(s0)
 8da:	fcf42623          	sw	a5,-52(s0)
 8de:	fe042023          	sw	zero,-32(s0)
 8e2:	fe042223          	sw	zero,-28(s0)
 8e6:	a42d                	j	b10 <vprintf+0x248>
 8e8:	fe442783          	lw	a5,-28(s0)
 8ec:	fc043703          	ld	a4,-64(s0)
 8f0:	97ba                	add	a5,a5,a4
 8f2:	0007c783          	lbu	a5,0(a5)
 8f6:	fcf42e23          	sw	a5,-36(s0)
 8fa:	fe042783          	lw	a5,-32(s0)
 8fe:	2781                	sext.w	a5,a5
 900:	eb9d                	bnez	a5,936 <vprintf+0x6e>
 902:	fdc42783          	lw	a5,-36(s0)
 906:	0007871b          	sext.w	a4,a5
 90a:	02500793          	li	a5,37
 90e:	00f71763          	bne	a4,a5,91c <vprintf+0x54>
 912:	02500793          	li	a5,37
 916:	fef42023          	sw	a5,-32(s0)
 91a:	a2f5                	j	b06 <vprintf+0x23e>
 91c:	fdc42783          	lw	a5,-36(s0)
 920:	0ff7f713          	zext.b	a4,a5
 924:	fcc42783          	lw	a5,-52(s0)
 928:	85ba                	mv	a1,a4
 92a:	853e                	mv	a0,a5
 92c:	00000097          	auipc	ra,0x0
 930:	dd2080e7          	jalr	-558(ra) # 6fe <putc>
 934:	aac9                	j	b06 <vprintf+0x23e>
 936:	fe042783          	lw	a5,-32(s0)
 93a:	0007871b          	sext.w	a4,a5
 93e:	02500793          	li	a5,37
 942:	1cf71263          	bne	a4,a5,b06 <vprintf+0x23e>
 946:	fdc42783          	lw	a5,-36(s0)
 94a:	0007871b          	sext.w	a4,a5
 94e:	06400793          	li	a5,100
 952:	02f71463          	bne	a4,a5,97a <vprintf+0xb2>
 956:	fb843783          	ld	a5,-72(s0)
 95a:	00878713          	addi	a4,a5,8
 95e:	fae43c23          	sd	a4,-72(s0)
 962:	4398                	lw	a4,0(a5)
 964:	fcc42783          	lw	a5,-52(s0)
 968:	4685                	li	a3,1
 96a:	4629                	li	a2,10
 96c:	85ba                	mv	a1,a4
 96e:	853e                	mv	a0,a5
 970:	00000097          	auipc	ra,0x0
 974:	dc4080e7          	jalr	-572(ra) # 734 <printint>
 978:	a269                	j	b02 <vprintf+0x23a>
 97a:	fdc42783          	lw	a5,-36(s0)
 97e:	0007871b          	sext.w	a4,a5
 982:	06c00793          	li	a5,108
 986:	02f71663          	bne	a4,a5,9b2 <vprintf+0xea>
 98a:	fb843783          	ld	a5,-72(s0)
 98e:	00878713          	addi	a4,a5,8
 992:	fae43c23          	sd	a4,-72(s0)
 996:	639c                	ld	a5,0(a5)
 998:	0007871b          	sext.w	a4,a5
 99c:	fcc42783          	lw	a5,-52(s0)
 9a0:	4681                	li	a3,0
 9a2:	4629                	li	a2,10
 9a4:	85ba                	mv	a1,a4
 9a6:	853e                	mv	a0,a5
 9a8:	00000097          	auipc	ra,0x0
 9ac:	d8c080e7          	jalr	-628(ra) # 734 <printint>
 9b0:	aa89                	j	b02 <vprintf+0x23a>
 9b2:	fdc42783          	lw	a5,-36(s0)
 9b6:	0007871b          	sext.w	a4,a5
 9ba:	07800793          	li	a5,120
 9be:	02f71463          	bne	a4,a5,9e6 <vprintf+0x11e>
 9c2:	fb843783          	ld	a5,-72(s0)
 9c6:	00878713          	addi	a4,a5,8
 9ca:	fae43c23          	sd	a4,-72(s0)
 9ce:	4398                	lw	a4,0(a5)
 9d0:	fcc42783          	lw	a5,-52(s0)
 9d4:	4681                	li	a3,0
 9d6:	4641                	li	a2,16
 9d8:	85ba                	mv	a1,a4
 9da:	853e                	mv	a0,a5
 9dc:	00000097          	auipc	ra,0x0
 9e0:	d58080e7          	jalr	-680(ra) # 734 <printint>
 9e4:	aa39                	j	b02 <vprintf+0x23a>
 9e6:	fdc42783          	lw	a5,-36(s0)
 9ea:	0007871b          	sext.w	a4,a5
 9ee:	07000793          	li	a5,112
 9f2:	02f71263          	bne	a4,a5,a16 <vprintf+0x14e>
 9f6:	fb843783          	ld	a5,-72(s0)
 9fa:	00878713          	addi	a4,a5,8
 9fe:	fae43c23          	sd	a4,-72(s0)
 a02:	6398                	ld	a4,0(a5)
 a04:	fcc42783          	lw	a5,-52(s0)
 a08:	85ba                	mv	a1,a4
 a0a:	853e                	mv	a0,a5
 a0c:	00000097          	auipc	ra,0x0
 a10:	e30080e7          	jalr	-464(ra) # 83c <printptr>
 a14:	a0fd                	j	b02 <vprintf+0x23a>
 a16:	fdc42783          	lw	a5,-36(s0)
 a1a:	0007871b          	sext.w	a4,a5
 a1e:	07300793          	li	a5,115
 a22:	04f71c63          	bne	a4,a5,a7a <vprintf+0x1b2>
 a26:	fb843783          	ld	a5,-72(s0)
 a2a:	00878713          	addi	a4,a5,8
 a2e:	fae43c23          	sd	a4,-72(s0)
 a32:	639c                	ld	a5,0(a5)
 a34:	fef43423          	sd	a5,-24(s0)
 a38:	fe843783          	ld	a5,-24(s0)
 a3c:	eb8d                	bnez	a5,a6e <vprintf+0x1a6>
 a3e:	00000797          	auipc	a5,0x0
 a42:	4c278793          	addi	a5,a5,1218 # f00 <malloc+0x188>
 a46:	fef43423          	sd	a5,-24(s0)
 a4a:	a015                	j	a6e <vprintf+0x1a6>
 a4c:	fe843783          	ld	a5,-24(s0)
 a50:	0007c703          	lbu	a4,0(a5)
 a54:	fcc42783          	lw	a5,-52(s0)
 a58:	85ba                	mv	a1,a4
 a5a:	853e                	mv	a0,a5
 a5c:	00000097          	auipc	ra,0x0
 a60:	ca2080e7          	jalr	-862(ra) # 6fe <putc>
 a64:	fe843783          	ld	a5,-24(s0)
 a68:	0785                	addi	a5,a5,1
 a6a:	fef43423          	sd	a5,-24(s0)
 a6e:	fe843783          	ld	a5,-24(s0)
 a72:	0007c783          	lbu	a5,0(a5)
 a76:	fbf9                	bnez	a5,a4c <vprintf+0x184>
 a78:	a069                	j	b02 <vprintf+0x23a>
 a7a:	fdc42783          	lw	a5,-36(s0)
 a7e:	0007871b          	sext.w	a4,a5
 a82:	06300793          	li	a5,99
 a86:	02f71463          	bne	a4,a5,aae <vprintf+0x1e6>
 a8a:	fb843783          	ld	a5,-72(s0)
 a8e:	00878713          	addi	a4,a5,8
 a92:	fae43c23          	sd	a4,-72(s0)
 a96:	439c                	lw	a5,0(a5)
 a98:	0ff7f713          	zext.b	a4,a5
 a9c:	fcc42783          	lw	a5,-52(s0)
 aa0:	85ba                	mv	a1,a4
 aa2:	853e                	mv	a0,a5
 aa4:	00000097          	auipc	ra,0x0
 aa8:	c5a080e7          	jalr	-934(ra) # 6fe <putc>
 aac:	a899                	j	b02 <vprintf+0x23a>
 aae:	fdc42783          	lw	a5,-36(s0)
 ab2:	0007871b          	sext.w	a4,a5
 ab6:	02500793          	li	a5,37
 aba:	00f71f63          	bne	a4,a5,ad8 <vprintf+0x210>
 abe:	fdc42783          	lw	a5,-36(s0)
 ac2:	0ff7f713          	zext.b	a4,a5
 ac6:	fcc42783          	lw	a5,-52(s0)
 aca:	85ba                	mv	a1,a4
 acc:	853e                	mv	a0,a5
 ace:	00000097          	auipc	ra,0x0
 ad2:	c30080e7          	jalr	-976(ra) # 6fe <putc>
 ad6:	a035                	j	b02 <vprintf+0x23a>
 ad8:	fcc42783          	lw	a5,-52(s0)
 adc:	02500593          	li	a1,37
 ae0:	853e                	mv	a0,a5
 ae2:	00000097          	auipc	ra,0x0
 ae6:	c1c080e7          	jalr	-996(ra) # 6fe <putc>
 aea:	fdc42783          	lw	a5,-36(s0)
 aee:	0ff7f713          	zext.b	a4,a5
 af2:	fcc42783          	lw	a5,-52(s0)
 af6:	85ba                	mv	a1,a4
 af8:	853e                	mv	a0,a5
 afa:	00000097          	auipc	ra,0x0
 afe:	c04080e7          	jalr	-1020(ra) # 6fe <putc>
 b02:	fe042023          	sw	zero,-32(s0)
 b06:	fe442783          	lw	a5,-28(s0)
 b0a:	2785                	addiw	a5,a5,1
 b0c:	fef42223          	sw	a5,-28(s0)
 b10:	fe442783          	lw	a5,-28(s0)
 b14:	fc043703          	ld	a4,-64(s0)
 b18:	97ba                	add	a5,a5,a4
 b1a:	0007c783          	lbu	a5,0(a5)
 b1e:	dc0795e3          	bnez	a5,8e8 <vprintf+0x20>
 b22:	0001                	nop
 b24:	0001                	nop
 b26:	60a6                	ld	ra,72(sp)
 b28:	6406                	ld	s0,64(sp)
 b2a:	6161                	addi	sp,sp,80
 b2c:	8082                	ret

0000000000000b2e <fprintf>:
 b2e:	7159                	addi	sp,sp,-112
 b30:	fc06                	sd	ra,56(sp)
 b32:	f822                	sd	s0,48(sp)
 b34:	0080                	addi	s0,sp,64
 b36:	fcb43823          	sd	a1,-48(s0)
 b3a:	e010                	sd	a2,0(s0)
 b3c:	e414                	sd	a3,8(s0)
 b3e:	e818                	sd	a4,16(s0)
 b40:	ec1c                	sd	a5,24(s0)
 b42:	03043023          	sd	a6,32(s0)
 b46:	03143423          	sd	a7,40(s0)
 b4a:	87aa                	mv	a5,a0
 b4c:	fcf42e23          	sw	a5,-36(s0)
 b50:	03040793          	addi	a5,s0,48
 b54:	fcf43423          	sd	a5,-56(s0)
 b58:	fc843783          	ld	a5,-56(s0)
 b5c:	fd078793          	addi	a5,a5,-48
 b60:	fef43423          	sd	a5,-24(s0)
 b64:	fe843703          	ld	a4,-24(s0)
 b68:	fdc42783          	lw	a5,-36(s0)
 b6c:	863a                	mv	a2,a4
 b6e:	fd043583          	ld	a1,-48(s0)
 b72:	853e                	mv	a0,a5
 b74:	00000097          	auipc	ra,0x0
 b78:	d54080e7          	jalr	-684(ra) # 8c8 <vprintf>
 b7c:	0001                	nop
 b7e:	70e2                	ld	ra,56(sp)
 b80:	7442                	ld	s0,48(sp)
 b82:	6165                	addi	sp,sp,112
 b84:	8082                	ret

0000000000000b86 <printf>:
 b86:	7159                	addi	sp,sp,-112
 b88:	f406                	sd	ra,40(sp)
 b8a:	f022                	sd	s0,32(sp)
 b8c:	1800                	addi	s0,sp,48
 b8e:	fca43c23          	sd	a0,-40(s0)
 b92:	e40c                	sd	a1,8(s0)
 b94:	e810                	sd	a2,16(s0)
 b96:	ec14                	sd	a3,24(s0)
 b98:	f018                	sd	a4,32(s0)
 b9a:	f41c                	sd	a5,40(s0)
 b9c:	03043823          	sd	a6,48(s0)
 ba0:	03143c23          	sd	a7,56(s0)
 ba4:	04040793          	addi	a5,s0,64
 ba8:	fcf43823          	sd	a5,-48(s0)
 bac:	fd043783          	ld	a5,-48(s0)
 bb0:	fc878793          	addi	a5,a5,-56
 bb4:	fef43423          	sd	a5,-24(s0)
 bb8:	fe843783          	ld	a5,-24(s0)
 bbc:	863e                	mv	a2,a5
 bbe:	fd843583          	ld	a1,-40(s0)
 bc2:	4505                	li	a0,1
 bc4:	00000097          	auipc	ra,0x0
 bc8:	d04080e7          	jalr	-764(ra) # 8c8 <vprintf>
 bcc:	0001                	nop
 bce:	70a2                	ld	ra,40(sp)
 bd0:	7402                	ld	s0,32(sp)
 bd2:	6165                	addi	sp,sp,112
 bd4:	8082                	ret

0000000000000bd6 <free>:
 bd6:	7179                	addi	sp,sp,-48
 bd8:	f422                	sd	s0,40(sp)
 bda:	1800                	addi	s0,sp,48
 bdc:	fca43c23          	sd	a0,-40(s0)
 be0:	fd843783          	ld	a5,-40(s0)
 be4:	17c1                	addi	a5,a5,-16
 be6:	fef43023          	sd	a5,-32(s0)
 bea:	00000797          	auipc	a5,0x0
 bee:	44678793          	addi	a5,a5,1094 # 1030 <freep>
 bf2:	639c                	ld	a5,0(a5)
 bf4:	fef43423          	sd	a5,-24(s0)
 bf8:	a815                	j	c2c <free+0x56>
 bfa:	fe843783          	ld	a5,-24(s0)
 bfe:	639c                	ld	a5,0(a5)
 c00:	fe843703          	ld	a4,-24(s0)
 c04:	00f76f63          	bltu	a4,a5,c22 <free+0x4c>
 c08:	fe043703          	ld	a4,-32(s0)
 c0c:	fe843783          	ld	a5,-24(s0)
 c10:	02e7eb63          	bltu	a5,a4,c46 <free+0x70>
 c14:	fe843783          	ld	a5,-24(s0)
 c18:	639c                	ld	a5,0(a5)
 c1a:	fe043703          	ld	a4,-32(s0)
 c1e:	02f76463          	bltu	a4,a5,c46 <free+0x70>
 c22:	fe843783          	ld	a5,-24(s0)
 c26:	639c                	ld	a5,0(a5)
 c28:	fef43423          	sd	a5,-24(s0)
 c2c:	fe043703          	ld	a4,-32(s0)
 c30:	fe843783          	ld	a5,-24(s0)
 c34:	fce7f3e3          	bgeu	a5,a4,bfa <free+0x24>
 c38:	fe843783          	ld	a5,-24(s0)
 c3c:	639c                	ld	a5,0(a5)
 c3e:	fe043703          	ld	a4,-32(s0)
 c42:	faf77ce3          	bgeu	a4,a5,bfa <free+0x24>
 c46:	fe043783          	ld	a5,-32(s0)
 c4a:	479c                	lw	a5,8(a5)
 c4c:	1782                	slli	a5,a5,0x20
 c4e:	9381                	srli	a5,a5,0x20
 c50:	0792                	slli	a5,a5,0x4
 c52:	fe043703          	ld	a4,-32(s0)
 c56:	973e                	add	a4,a4,a5
 c58:	fe843783          	ld	a5,-24(s0)
 c5c:	639c                	ld	a5,0(a5)
 c5e:	02f71763          	bne	a4,a5,c8c <free+0xb6>
 c62:	fe043783          	ld	a5,-32(s0)
 c66:	4798                	lw	a4,8(a5)
 c68:	fe843783          	ld	a5,-24(s0)
 c6c:	639c                	ld	a5,0(a5)
 c6e:	479c                	lw	a5,8(a5)
 c70:	9fb9                	addw	a5,a5,a4
 c72:	0007871b          	sext.w	a4,a5
 c76:	fe043783          	ld	a5,-32(s0)
 c7a:	c798                	sw	a4,8(a5)
 c7c:	fe843783          	ld	a5,-24(s0)
 c80:	639c                	ld	a5,0(a5)
 c82:	6398                	ld	a4,0(a5)
 c84:	fe043783          	ld	a5,-32(s0)
 c88:	e398                	sd	a4,0(a5)
 c8a:	a039                	j	c98 <free+0xc2>
 c8c:	fe843783          	ld	a5,-24(s0)
 c90:	6398                	ld	a4,0(a5)
 c92:	fe043783          	ld	a5,-32(s0)
 c96:	e398                	sd	a4,0(a5)
 c98:	fe843783          	ld	a5,-24(s0)
 c9c:	479c                	lw	a5,8(a5)
 c9e:	1782                	slli	a5,a5,0x20
 ca0:	9381                	srli	a5,a5,0x20
 ca2:	0792                	slli	a5,a5,0x4
 ca4:	fe843703          	ld	a4,-24(s0)
 ca8:	97ba                	add	a5,a5,a4
 caa:	fe043703          	ld	a4,-32(s0)
 cae:	02f71563          	bne	a4,a5,cd8 <free+0x102>
 cb2:	fe843783          	ld	a5,-24(s0)
 cb6:	4798                	lw	a4,8(a5)
 cb8:	fe043783          	ld	a5,-32(s0)
 cbc:	479c                	lw	a5,8(a5)
 cbe:	9fb9                	addw	a5,a5,a4
 cc0:	0007871b          	sext.w	a4,a5
 cc4:	fe843783          	ld	a5,-24(s0)
 cc8:	c798                	sw	a4,8(a5)
 cca:	fe043783          	ld	a5,-32(s0)
 cce:	6398                	ld	a4,0(a5)
 cd0:	fe843783          	ld	a5,-24(s0)
 cd4:	e398                	sd	a4,0(a5)
 cd6:	a031                	j	ce2 <free+0x10c>
 cd8:	fe843783          	ld	a5,-24(s0)
 cdc:	fe043703          	ld	a4,-32(s0)
 ce0:	e398                	sd	a4,0(a5)
 ce2:	00000797          	auipc	a5,0x0
 ce6:	34e78793          	addi	a5,a5,846 # 1030 <freep>
 cea:	fe843703          	ld	a4,-24(s0)
 cee:	e398                	sd	a4,0(a5)
 cf0:	0001                	nop
 cf2:	7422                	ld	s0,40(sp)
 cf4:	6145                	addi	sp,sp,48
 cf6:	8082                	ret

0000000000000cf8 <morecore>:
 cf8:	7179                	addi	sp,sp,-48
 cfa:	f406                	sd	ra,40(sp)
 cfc:	f022                	sd	s0,32(sp)
 cfe:	1800                	addi	s0,sp,48
 d00:	87aa                	mv	a5,a0
 d02:	fcf42e23          	sw	a5,-36(s0)
 d06:	fdc42783          	lw	a5,-36(s0)
 d0a:	0007871b          	sext.w	a4,a5
 d0e:	6785                	lui	a5,0x1
 d10:	00f77563          	bgeu	a4,a5,d1a <morecore+0x22>
 d14:	6785                	lui	a5,0x1
 d16:	fcf42e23          	sw	a5,-36(s0)
 d1a:	fdc42783          	lw	a5,-36(s0)
 d1e:	0047979b          	slliw	a5,a5,0x4
 d22:	2781                	sext.w	a5,a5
 d24:	2781                	sext.w	a5,a5
 d26:	853e                	mv	a0,a5
 d28:	00000097          	auipc	ra,0x0
 d2c:	996080e7          	jalr	-1642(ra) # 6be <sbrk>
 d30:	fea43423          	sd	a0,-24(s0)
 d34:	fe843703          	ld	a4,-24(s0)
 d38:	57fd                	li	a5,-1
 d3a:	00f71463          	bne	a4,a5,d42 <morecore+0x4a>
 d3e:	4781                	li	a5,0
 d40:	a03d                	j	d6e <morecore+0x76>
 d42:	fe843783          	ld	a5,-24(s0)
 d46:	fef43023          	sd	a5,-32(s0)
 d4a:	fe043783          	ld	a5,-32(s0)
 d4e:	fdc42703          	lw	a4,-36(s0)
 d52:	c798                	sw	a4,8(a5)
 d54:	fe043783          	ld	a5,-32(s0)
 d58:	07c1                	addi	a5,a5,16 # 1010 <digits+0x10>
 d5a:	853e                	mv	a0,a5
 d5c:	00000097          	auipc	ra,0x0
 d60:	e7a080e7          	jalr	-390(ra) # bd6 <free>
 d64:	00000797          	auipc	a5,0x0
 d68:	2cc78793          	addi	a5,a5,716 # 1030 <freep>
 d6c:	639c                	ld	a5,0(a5)
 d6e:	853e                	mv	a0,a5
 d70:	70a2                	ld	ra,40(sp)
 d72:	7402                	ld	s0,32(sp)
 d74:	6145                	addi	sp,sp,48
 d76:	8082                	ret

0000000000000d78 <malloc>:
 d78:	7139                	addi	sp,sp,-64
 d7a:	fc06                	sd	ra,56(sp)
 d7c:	f822                	sd	s0,48(sp)
 d7e:	0080                	addi	s0,sp,64
 d80:	87aa                	mv	a5,a0
 d82:	fcf42623          	sw	a5,-52(s0)
 d86:	fcc46783          	lwu	a5,-52(s0)
 d8a:	07bd                	addi	a5,a5,15
 d8c:	8391                	srli	a5,a5,0x4
 d8e:	2781                	sext.w	a5,a5
 d90:	2785                	addiw	a5,a5,1
 d92:	fcf42e23          	sw	a5,-36(s0)
 d96:	00000797          	auipc	a5,0x0
 d9a:	29a78793          	addi	a5,a5,666 # 1030 <freep>
 d9e:	639c                	ld	a5,0(a5)
 da0:	fef43023          	sd	a5,-32(s0)
 da4:	fe043783          	ld	a5,-32(s0)
 da8:	ef95                	bnez	a5,de4 <malloc+0x6c>
 daa:	00000797          	auipc	a5,0x0
 dae:	27678793          	addi	a5,a5,630 # 1020 <base>
 db2:	fef43023          	sd	a5,-32(s0)
 db6:	00000797          	auipc	a5,0x0
 dba:	27a78793          	addi	a5,a5,634 # 1030 <freep>
 dbe:	fe043703          	ld	a4,-32(s0)
 dc2:	e398                	sd	a4,0(a5)
 dc4:	00000797          	auipc	a5,0x0
 dc8:	26c78793          	addi	a5,a5,620 # 1030 <freep>
 dcc:	6398                	ld	a4,0(a5)
 dce:	00000797          	auipc	a5,0x0
 dd2:	25278793          	addi	a5,a5,594 # 1020 <base>
 dd6:	e398                	sd	a4,0(a5)
 dd8:	00000797          	auipc	a5,0x0
 ddc:	24878793          	addi	a5,a5,584 # 1020 <base>
 de0:	0007a423          	sw	zero,8(a5)
 de4:	fe043783          	ld	a5,-32(s0)
 de8:	639c                	ld	a5,0(a5)
 dea:	fef43423          	sd	a5,-24(s0)
 dee:	fe843783          	ld	a5,-24(s0)
 df2:	4798                	lw	a4,8(a5)
 df4:	fdc42783          	lw	a5,-36(s0)
 df8:	2781                	sext.w	a5,a5
 dfa:	06f76763          	bltu	a4,a5,e68 <malloc+0xf0>
 dfe:	fe843783          	ld	a5,-24(s0)
 e02:	4798                	lw	a4,8(a5)
 e04:	fdc42783          	lw	a5,-36(s0)
 e08:	2781                	sext.w	a5,a5
 e0a:	00e79963          	bne	a5,a4,e1c <malloc+0xa4>
 e0e:	fe843783          	ld	a5,-24(s0)
 e12:	6398                	ld	a4,0(a5)
 e14:	fe043783          	ld	a5,-32(s0)
 e18:	e398                	sd	a4,0(a5)
 e1a:	a825                	j	e52 <malloc+0xda>
 e1c:	fe843783          	ld	a5,-24(s0)
 e20:	479c                	lw	a5,8(a5)
 e22:	fdc42703          	lw	a4,-36(s0)
 e26:	9f99                	subw	a5,a5,a4
 e28:	0007871b          	sext.w	a4,a5
 e2c:	fe843783          	ld	a5,-24(s0)
 e30:	c798                	sw	a4,8(a5)
 e32:	fe843783          	ld	a5,-24(s0)
 e36:	479c                	lw	a5,8(a5)
 e38:	1782                	slli	a5,a5,0x20
 e3a:	9381                	srli	a5,a5,0x20
 e3c:	0792                	slli	a5,a5,0x4
 e3e:	fe843703          	ld	a4,-24(s0)
 e42:	97ba                	add	a5,a5,a4
 e44:	fef43423          	sd	a5,-24(s0)
 e48:	fe843783          	ld	a5,-24(s0)
 e4c:	fdc42703          	lw	a4,-36(s0)
 e50:	c798                	sw	a4,8(a5)
 e52:	00000797          	auipc	a5,0x0
 e56:	1de78793          	addi	a5,a5,478 # 1030 <freep>
 e5a:	fe043703          	ld	a4,-32(s0)
 e5e:	e398                	sd	a4,0(a5)
 e60:	fe843783          	ld	a5,-24(s0)
 e64:	07c1                	addi	a5,a5,16
 e66:	a091                	j	eaa <malloc+0x132>
 e68:	00000797          	auipc	a5,0x0
 e6c:	1c878793          	addi	a5,a5,456 # 1030 <freep>
 e70:	639c                	ld	a5,0(a5)
 e72:	fe843703          	ld	a4,-24(s0)
 e76:	02f71063          	bne	a4,a5,e96 <malloc+0x11e>
 e7a:	fdc42783          	lw	a5,-36(s0)
 e7e:	853e                	mv	a0,a5
 e80:	00000097          	auipc	ra,0x0
 e84:	e78080e7          	jalr	-392(ra) # cf8 <morecore>
 e88:	fea43423          	sd	a0,-24(s0)
 e8c:	fe843783          	ld	a5,-24(s0)
 e90:	e399                	bnez	a5,e96 <malloc+0x11e>
 e92:	4781                	li	a5,0
 e94:	a819                	j	eaa <malloc+0x132>
 e96:	fe843783          	ld	a5,-24(s0)
 e9a:	fef43023          	sd	a5,-32(s0)
 e9e:	fe843783          	ld	a5,-24(s0)
 ea2:	639c                	ld	a5,0(a5)
 ea4:	fef43423          	sd	a5,-24(s0)
 ea8:	b799                	j	dee <malloc+0x76>
 eaa:	853e                	mv	a0,a5
 eac:	70e2                	ld	ra,56(sp)
 eae:	7442                	ld	s0,48(sp)
 eb0:	6121                	addi	sp,sp,64
 eb2:	8082                	ret
