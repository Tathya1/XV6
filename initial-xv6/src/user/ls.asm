
user/_ls:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <fmtname>:
       0:	7139                	addi	sp,sp,-64
       2:	fc06                	sd	ra,56(sp)
       4:	f822                	sd	s0,48(sp)
       6:	f426                	sd	s1,40(sp)
       8:	0080                	addi	s0,sp,64
       a:	fca43423          	sd	a0,-56(s0)
       e:	fc843503          	ld	a0,-56(s0)
      12:	00000097          	auipc	ra,0x0
      16:	458080e7          	jalr	1112(ra) # 46a <strlen>
      1a:	87aa                	mv	a5,a0
      1c:	2781                	sext.w	a5,a5
      1e:	1782                	slli	a5,a5,0x20
      20:	9381                	srli	a5,a5,0x20
      22:	fc843703          	ld	a4,-56(s0)
      26:	97ba                	add	a5,a5,a4
      28:	fcf43c23          	sd	a5,-40(s0)
      2c:	a031                	j	38 <fmtname+0x38>
      2e:	fd843783          	ld	a5,-40(s0)
      32:	17fd                	addi	a5,a5,-1
      34:	fcf43c23          	sd	a5,-40(s0)
      38:	fd843703          	ld	a4,-40(s0)
      3c:	fc843783          	ld	a5,-56(s0)
      40:	00f76b63          	bltu	a4,a5,56 <fmtname+0x56>
      44:	fd843783          	ld	a5,-40(s0)
      48:	0007c783          	lbu	a5,0(a5)
      4c:	873e                	mv	a4,a5
      4e:	02f00793          	li	a5,47
      52:	fcf71ee3          	bne	a4,a5,2e <fmtname+0x2e>
      56:	fd843783          	ld	a5,-40(s0)
      5a:	0785                	addi	a5,a5,1
      5c:	fcf43c23          	sd	a5,-40(s0)
      60:	fd843503          	ld	a0,-40(s0)
      64:	00000097          	auipc	ra,0x0
      68:	406080e7          	jalr	1030(ra) # 46a <strlen>
      6c:	87aa                	mv	a5,a0
      6e:	2781                	sext.w	a5,a5
      70:	873e                	mv	a4,a5
      72:	47b5                	li	a5,13
      74:	00e7f563          	bgeu	a5,a4,7e <fmtname+0x7e>
      78:	fd843783          	ld	a5,-40(s0)
      7c:	a8b5                	j	f8 <fmtname+0xf8>
      7e:	fd843503          	ld	a0,-40(s0)
      82:	00000097          	auipc	ra,0x0
      86:	3e8080e7          	jalr	1000(ra) # 46a <strlen>
      8a:	87aa                	mv	a5,a0
      8c:	2781                	sext.w	a5,a5
      8e:	2781                	sext.w	a5,a5
      90:	863e                	mv	a2,a5
      92:	fd843583          	ld	a1,-40(s0)
      96:	00002517          	auipc	a0,0x2
      9a:	f8a50513          	addi	a0,a0,-118 # 2020 <buf.0>
      9e:	00000097          	auipc	ra,0x0
      a2:	628080e7          	jalr	1576(ra) # 6c6 <memmove>
      a6:	fd843503          	ld	a0,-40(s0)
      aa:	00000097          	auipc	ra,0x0
      ae:	3c0080e7          	jalr	960(ra) # 46a <strlen>
      b2:	87aa                	mv	a5,a0
      b4:	2781                	sext.w	a5,a5
      b6:	02079713          	slli	a4,a5,0x20
      ba:	9301                	srli	a4,a4,0x20
      bc:	00002797          	auipc	a5,0x2
      c0:	f6478793          	addi	a5,a5,-156 # 2020 <buf.0>
      c4:	00f704b3          	add	s1,a4,a5
      c8:	fd843503          	ld	a0,-40(s0)
      cc:	00000097          	auipc	ra,0x0
      d0:	39e080e7          	jalr	926(ra) # 46a <strlen>
      d4:	87aa                	mv	a5,a0
      d6:	2781                	sext.w	a5,a5
      d8:	4739                	li	a4,14
      da:	40f707bb          	subw	a5,a4,a5
      de:	2781                	sext.w	a5,a5
      e0:	863e                	mv	a2,a5
      e2:	02000593          	li	a1,32
      e6:	8526                	mv	a0,s1
      e8:	00000097          	auipc	ra,0x0
      ec:	3b8080e7          	jalr	952(ra) # 4a0 <memset>
      f0:	00002797          	auipc	a5,0x2
      f4:	f3078793          	addi	a5,a5,-208 # 2020 <buf.0>
      f8:	853e                	mv	a0,a5
      fa:	70e2                	ld	ra,56(sp)
      fc:	7442                	ld	s0,48(sp)
      fe:	74a2                	ld	s1,40(sp)
     100:	6121                	addi	sp,sp,64
     102:	8082                	ret

0000000000000104 <ls>:
     104:	da010113          	addi	sp,sp,-608
     108:	24113c23          	sd	ra,600(sp)
     10c:	24813823          	sd	s0,592(sp)
     110:	1480                	addi	s0,sp,608
     112:	daa43423          	sd	a0,-600(s0)
     116:	4581                	li	a1,0
     118:	da843503          	ld	a0,-600(s0)
     11c:	00000097          	auipc	ra,0x0
     120:	770080e7          	jalr	1904(ra) # 88c <open>
     124:	87aa                	mv	a5,a0
     126:	fef42623          	sw	a5,-20(s0)
     12a:	fec42783          	lw	a5,-20(s0)
     12e:	2781                	sext.w	a5,a5
     130:	0007de63          	bgez	a5,14c <ls+0x48>
     134:	da843603          	ld	a2,-600(s0)
     138:	00001597          	auipc	a1,0x1
     13c:	f9858593          	addi	a1,a1,-104 # 10d0 <malloc+0x142>
     140:	4509                	li	a0,2
     142:	00001097          	auipc	ra,0x1
     146:	c02080e7          	jalr	-1022(ra) # d44 <fprintf>
     14a:	a2e1                	j	312 <ls+0x20e>
     14c:	db840713          	addi	a4,s0,-584
     150:	fec42783          	lw	a5,-20(s0)
     154:	85ba                	mv	a1,a4
     156:	853e                	mv	a0,a5
     158:	00000097          	auipc	ra,0x0
     15c:	74c080e7          	jalr	1868(ra) # 8a4 <fstat>
     160:	87aa                	mv	a5,a0
     162:	0207d563          	bgez	a5,18c <ls+0x88>
     166:	da843603          	ld	a2,-600(s0)
     16a:	00001597          	auipc	a1,0x1
     16e:	f7e58593          	addi	a1,a1,-130 # 10e8 <malloc+0x15a>
     172:	4509                	li	a0,2
     174:	00001097          	auipc	ra,0x1
     178:	bd0080e7          	jalr	-1072(ra) # d44 <fprintf>
     17c:	fec42783          	lw	a5,-20(s0)
     180:	853e                	mv	a0,a5
     182:	00000097          	auipc	ra,0x0
     186:	6f2080e7          	jalr	1778(ra) # 874 <close>
     18a:	a261                	j	312 <ls+0x20e>
     18c:	dc041783          	lh	a5,-576(s0)
     190:	873e                	mv	a4,a5
     192:	86ba                	mv	a3,a4
     194:	4785                	li	a5,1
     196:	04f68563          	beq	a3,a5,1e0 <ls+0xdc>
     19a:	87ba                	mv	a5,a4
     19c:	16f05463          	blez	a5,304 <ls+0x200>
     1a0:	0007079b          	sext.w	a5,a4
     1a4:	37f9                	addiw	a5,a5,-2
     1a6:	2781                	sext.w	a5,a5
     1a8:	873e                	mv	a4,a5
     1aa:	4785                	li	a5,1
     1ac:	14e7ec63          	bltu	a5,a4,304 <ls+0x200>
     1b0:	da843503          	ld	a0,-600(s0)
     1b4:	00000097          	auipc	ra,0x0
     1b8:	e4c080e7          	jalr	-436(ra) # 0 <fmtname>
     1bc:	85aa                	mv	a1,a0
     1be:	dc041783          	lh	a5,-576(s0)
     1c2:	863e                	mv	a2,a5
     1c4:	dbc42783          	lw	a5,-580(s0)
     1c8:	dc843703          	ld	a4,-568(s0)
     1cc:	86be                	mv	a3,a5
     1ce:	00001517          	auipc	a0,0x1
     1d2:	f3250513          	addi	a0,a0,-206 # 1100 <malloc+0x172>
     1d6:	00001097          	auipc	ra,0x1
     1da:	bc6080e7          	jalr	-1082(ra) # d9c <printf>
     1de:	a21d                	j	304 <ls+0x200>
     1e0:	da843503          	ld	a0,-600(s0)
     1e4:	00000097          	auipc	ra,0x0
     1e8:	286080e7          	jalr	646(ra) # 46a <strlen>
     1ec:	87aa                	mv	a5,a0
     1ee:	2781                	sext.w	a5,a5
     1f0:	27c1                	addiw	a5,a5,16
     1f2:	2781                	sext.w	a5,a5
     1f4:	873e                	mv	a4,a5
     1f6:	20000793          	li	a5,512
     1fa:	00e7fb63          	bgeu	a5,a4,210 <ls+0x10c>
     1fe:	00001517          	auipc	a0,0x1
     202:	f1250513          	addi	a0,a0,-238 # 1110 <malloc+0x182>
     206:	00001097          	auipc	ra,0x1
     20a:	b96080e7          	jalr	-1130(ra) # d9c <printf>
     20e:	a8dd                	j	304 <ls+0x200>
     210:	de040793          	addi	a5,s0,-544
     214:	da843583          	ld	a1,-600(s0)
     218:	853e                	mv	a0,a5
     21a:	00000097          	auipc	ra,0x0
     21e:	1a0080e7          	jalr	416(ra) # 3ba <strcpy>
     222:	de040793          	addi	a5,s0,-544
     226:	853e                	mv	a0,a5
     228:	00000097          	auipc	ra,0x0
     22c:	242080e7          	jalr	578(ra) # 46a <strlen>
     230:	87aa                	mv	a5,a0
     232:	2781                	sext.w	a5,a5
     234:	1782                	slli	a5,a5,0x20
     236:	9381                	srli	a5,a5,0x20
     238:	de040713          	addi	a4,s0,-544
     23c:	97ba                	add	a5,a5,a4
     23e:	fef43023          	sd	a5,-32(s0)
     242:	fe043783          	ld	a5,-32(s0)
     246:	00178713          	addi	a4,a5,1
     24a:	fee43023          	sd	a4,-32(s0)
     24e:	02f00713          	li	a4,47
     252:	00e78023          	sb	a4,0(a5)
     256:	a071                	j	2e2 <ls+0x1de>
     258:	dd045783          	lhu	a5,-560(s0)
     25c:	e391                	bnez	a5,260 <ls+0x15c>
     25e:	a051                	j	2e2 <ls+0x1de>
     260:	dd040793          	addi	a5,s0,-560
     264:	0789                	addi	a5,a5,2
     266:	4639                	li	a2,14
     268:	85be                	mv	a1,a5
     26a:	fe043503          	ld	a0,-32(s0)
     26e:	00000097          	auipc	ra,0x0
     272:	458080e7          	jalr	1112(ra) # 6c6 <memmove>
     276:	fe043783          	ld	a5,-32(s0)
     27a:	07b9                	addi	a5,a5,14
     27c:	00078023          	sb	zero,0(a5)
     280:	db840713          	addi	a4,s0,-584
     284:	de040793          	addi	a5,s0,-544
     288:	85ba                	mv	a1,a4
     28a:	853e                	mv	a0,a5
     28c:	00000097          	auipc	ra,0x0
     290:	360080e7          	jalr	864(ra) # 5ec <stat>
     294:	87aa                	mv	a5,a0
     296:	0007de63          	bgez	a5,2b2 <ls+0x1ae>
     29a:	de040793          	addi	a5,s0,-544
     29e:	85be                	mv	a1,a5
     2a0:	00001517          	auipc	a0,0x1
     2a4:	e4850513          	addi	a0,a0,-440 # 10e8 <malloc+0x15a>
     2a8:	00001097          	auipc	ra,0x1
     2ac:	af4080e7          	jalr	-1292(ra) # d9c <printf>
     2b0:	a80d                	j	2e2 <ls+0x1de>
     2b2:	de040793          	addi	a5,s0,-544
     2b6:	853e                	mv	a0,a5
     2b8:	00000097          	auipc	ra,0x0
     2bc:	d48080e7          	jalr	-696(ra) # 0 <fmtname>
     2c0:	85aa                	mv	a1,a0
     2c2:	dc041783          	lh	a5,-576(s0)
     2c6:	863e                	mv	a2,a5
     2c8:	dbc42783          	lw	a5,-580(s0)
     2cc:	dc843703          	ld	a4,-568(s0)
     2d0:	86be                	mv	a3,a5
     2d2:	00001517          	auipc	a0,0x1
     2d6:	e5650513          	addi	a0,a0,-426 # 1128 <malloc+0x19a>
     2da:	00001097          	auipc	ra,0x1
     2de:	ac2080e7          	jalr	-1342(ra) # d9c <printf>
     2e2:	dd040713          	addi	a4,s0,-560
     2e6:	fec42783          	lw	a5,-20(s0)
     2ea:	4641                	li	a2,16
     2ec:	85ba                	mv	a1,a4
     2ee:	853e                	mv	a0,a5
     2f0:	00000097          	auipc	ra,0x0
     2f4:	574080e7          	jalr	1396(ra) # 864 <read>
     2f8:	87aa                	mv	a5,a0
     2fa:	873e                	mv	a4,a5
     2fc:	47c1                	li	a5,16
     2fe:	f4f70de3          	beq	a4,a5,258 <ls+0x154>
     302:	0001                	nop
     304:	fec42783          	lw	a5,-20(s0)
     308:	853e                	mv	a0,a5
     30a:	00000097          	auipc	ra,0x0
     30e:	56a080e7          	jalr	1386(ra) # 874 <close>
     312:	25813083          	ld	ra,600(sp)
     316:	25013403          	ld	s0,592(sp)
     31a:	26010113          	addi	sp,sp,608
     31e:	8082                	ret

0000000000000320 <main>:
     320:	7179                	addi	sp,sp,-48
     322:	f406                	sd	ra,40(sp)
     324:	f022                	sd	s0,32(sp)
     326:	1800                	addi	s0,sp,48
     328:	87aa                	mv	a5,a0
     32a:	fcb43823          	sd	a1,-48(s0)
     32e:	fcf42e23          	sw	a5,-36(s0)
     332:	fdc42783          	lw	a5,-36(s0)
     336:	0007871b          	sext.w	a4,a5
     33a:	4785                	li	a5,1
     33c:	00e7cf63          	blt	a5,a4,35a <main+0x3a>
     340:	00001517          	auipc	a0,0x1
     344:	df850513          	addi	a0,a0,-520 # 1138 <malloc+0x1aa>
     348:	00000097          	auipc	ra,0x0
     34c:	dbc080e7          	jalr	-580(ra) # 104 <ls>
     350:	4501                	li	a0,0
     352:	00000097          	auipc	ra,0x0
     356:	4fa080e7          	jalr	1274(ra) # 84c <exit>
     35a:	4785                	li	a5,1
     35c:	fef42623          	sw	a5,-20(s0)
     360:	a015                	j	384 <main+0x64>
     362:	fec42783          	lw	a5,-20(s0)
     366:	078e                	slli	a5,a5,0x3
     368:	fd043703          	ld	a4,-48(s0)
     36c:	97ba                	add	a5,a5,a4
     36e:	639c                	ld	a5,0(a5)
     370:	853e                	mv	a0,a5
     372:	00000097          	auipc	ra,0x0
     376:	d92080e7          	jalr	-622(ra) # 104 <ls>
     37a:	fec42783          	lw	a5,-20(s0)
     37e:	2785                	addiw	a5,a5,1
     380:	fef42623          	sw	a5,-20(s0)
     384:	fec42783          	lw	a5,-20(s0)
     388:	873e                	mv	a4,a5
     38a:	fdc42783          	lw	a5,-36(s0)
     38e:	2701                	sext.w	a4,a4
     390:	2781                	sext.w	a5,a5
     392:	fcf748e3          	blt	a4,a5,362 <main+0x42>
     396:	4501                	li	a0,0
     398:	00000097          	auipc	ra,0x0
     39c:	4b4080e7          	jalr	1204(ra) # 84c <exit>

00000000000003a0 <_main>:
     3a0:	1141                	addi	sp,sp,-16
     3a2:	e406                	sd	ra,8(sp)
     3a4:	e022                	sd	s0,0(sp)
     3a6:	0800                	addi	s0,sp,16
     3a8:	00000097          	auipc	ra,0x0
     3ac:	f78080e7          	jalr	-136(ra) # 320 <main>
     3b0:	4501                	li	a0,0
     3b2:	00000097          	auipc	ra,0x0
     3b6:	49a080e7          	jalr	1178(ra) # 84c <exit>

00000000000003ba <strcpy>:
     3ba:	7179                	addi	sp,sp,-48
     3bc:	f422                	sd	s0,40(sp)
     3be:	1800                	addi	s0,sp,48
     3c0:	fca43c23          	sd	a0,-40(s0)
     3c4:	fcb43823          	sd	a1,-48(s0)
     3c8:	fd843783          	ld	a5,-40(s0)
     3cc:	fef43423          	sd	a5,-24(s0)
     3d0:	0001                	nop
     3d2:	fd043703          	ld	a4,-48(s0)
     3d6:	00170793          	addi	a5,a4,1
     3da:	fcf43823          	sd	a5,-48(s0)
     3de:	fd843783          	ld	a5,-40(s0)
     3e2:	00178693          	addi	a3,a5,1
     3e6:	fcd43c23          	sd	a3,-40(s0)
     3ea:	00074703          	lbu	a4,0(a4)
     3ee:	00e78023          	sb	a4,0(a5)
     3f2:	0007c783          	lbu	a5,0(a5)
     3f6:	fff1                	bnez	a5,3d2 <strcpy+0x18>
     3f8:	fe843783          	ld	a5,-24(s0)
     3fc:	853e                	mv	a0,a5
     3fe:	7422                	ld	s0,40(sp)
     400:	6145                	addi	sp,sp,48
     402:	8082                	ret

0000000000000404 <strcmp>:
     404:	1101                	addi	sp,sp,-32
     406:	ec22                	sd	s0,24(sp)
     408:	1000                	addi	s0,sp,32
     40a:	fea43423          	sd	a0,-24(s0)
     40e:	feb43023          	sd	a1,-32(s0)
     412:	a819                	j	428 <strcmp+0x24>
     414:	fe843783          	ld	a5,-24(s0)
     418:	0785                	addi	a5,a5,1
     41a:	fef43423          	sd	a5,-24(s0)
     41e:	fe043783          	ld	a5,-32(s0)
     422:	0785                	addi	a5,a5,1
     424:	fef43023          	sd	a5,-32(s0)
     428:	fe843783          	ld	a5,-24(s0)
     42c:	0007c783          	lbu	a5,0(a5)
     430:	cb99                	beqz	a5,446 <strcmp+0x42>
     432:	fe843783          	ld	a5,-24(s0)
     436:	0007c703          	lbu	a4,0(a5)
     43a:	fe043783          	ld	a5,-32(s0)
     43e:	0007c783          	lbu	a5,0(a5)
     442:	fcf709e3          	beq	a4,a5,414 <strcmp+0x10>
     446:	fe843783          	ld	a5,-24(s0)
     44a:	0007c783          	lbu	a5,0(a5)
     44e:	0007871b          	sext.w	a4,a5
     452:	fe043783          	ld	a5,-32(s0)
     456:	0007c783          	lbu	a5,0(a5)
     45a:	2781                	sext.w	a5,a5
     45c:	40f707bb          	subw	a5,a4,a5
     460:	2781                	sext.w	a5,a5
     462:	853e                	mv	a0,a5
     464:	6462                	ld	s0,24(sp)
     466:	6105                	addi	sp,sp,32
     468:	8082                	ret

000000000000046a <strlen>:
     46a:	7179                	addi	sp,sp,-48
     46c:	f422                	sd	s0,40(sp)
     46e:	1800                	addi	s0,sp,48
     470:	fca43c23          	sd	a0,-40(s0)
     474:	fe042623          	sw	zero,-20(s0)
     478:	a031                	j	484 <strlen+0x1a>
     47a:	fec42783          	lw	a5,-20(s0)
     47e:	2785                	addiw	a5,a5,1
     480:	fef42623          	sw	a5,-20(s0)
     484:	fec42783          	lw	a5,-20(s0)
     488:	fd843703          	ld	a4,-40(s0)
     48c:	97ba                	add	a5,a5,a4
     48e:	0007c783          	lbu	a5,0(a5)
     492:	f7e5                	bnez	a5,47a <strlen+0x10>
     494:	fec42783          	lw	a5,-20(s0)
     498:	853e                	mv	a0,a5
     49a:	7422                	ld	s0,40(sp)
     49c:	6145                	addi	sp,sp,48
     49e:	8082                	ret

00000000000004a0 <memset>:
     4a0:	7179                	addi	sp,sp,-48
     4a2:	f422                	sd	s0,40(sp)
     4a4:	1800                	addi	s0,sp,48
     4a6:	fca43c23          	sd	a0,-40(s0)
     4aa:	87ae                	mv	a5,a1
     4ac:	8732                	mv	a4,a2
     4ae:	fcf42a23          	sw	a5,-44(s0)
     4b2:	87ba                	mv	a5,a4
     4b4:	fcf42823          	sw	a5,-48(s0)
     4b8:	fd843783          	ld	a5,-40(s0)
     4bc:	fef43023          	sd	a5,-32(s0)
     4c0:	fe042623          	sw	zero,-20(s0)
     4c4:	a00d                	j	4e6 <memset+0x46>
     4c6:	fec42783          	lw	a5,-20(s0)
     4ca:	fe043703          	ld	a4,-32(s0)
     4ce:	97ba                	add	a5,a5,a4
     4d0:	fd442703          	lw	a4,-44(s0)
     4d4:	0ff77713          	zext.b	a4,a4
     4d8:	00e78023          	sb	a4,0(a5)
     4dc:	fec42783          	lw	a5,-20(s0)
     4e0:	2785                	addiw	a5,a5,1
     4e2:	fef42623          	sw	a5,-20(s0)
     4e6:	fec42703          	lw	a4,-20(s0)
     4ea:	fd042783          	lw	a5,-48(s0)
     4ee:	2781                	sext.w	a5,a5
     4f0:	fcf76be3          	bltu	a4,a5,4c6 <memset+0x26>
     4f4:	fd843783          	ld	a5,-40(s0)
     4f8:	853e                	mv	a0,a5
     4fa:	7422                	ld	s0,40(sp)
     4fc:	6145                	addi	sp,sp,48
     4fe:	8082                	ret

0000000000000500 <strchr>:
     500:	1101                	addi	sp,sp,-32
     502:	ec22                	sd	s0,24(sp)
     504:	1000                	addi	s0,sp,32
     506:	fea43423          	sd	a0,-24(s0)
     50a:	87ae                	mv	a5,a1
     50c:	fef403a3          	sb	a5,-25(s0)
     510:	a01d                	j	536 <strchr+0x36>
     512:	fe843783          	ld	a5,-24(s0)
     516:	0007c703          	lbu	a4,0(a5)
     51a:	fe744783          	lbu	a5,-25(s0)
     51e:	0ff7f793          	zext.b	a5,a5
     522:	00e79563          	bne	a5,a4,52c <strchr+0x2c>
     526:	fe843783          	ld	a5,-24(s0)
     52a:	a821                	j	542 <strchr+0x42>
     52c:	fe843783          	ld	a5,-24(s0)
     530:	0785                	addi	a5,a5,1
     532:	fef43423          	sd	a5,-24(s0)
     536:	fe843783          	ld	a5,-24(s0)
     53a:	0007c783          	lbu	a5,0(a5)
     53e:	fbf1                	bnez	a5,512 <strchr+0x12>
     540:	4781                	li	a5,0
     542:	853e                	mv	a0,a5
     544:	6462                	ld	s0,24(sp)
     546:	6105                	addi	sp,sp,32
     548:	8082                	ret

000000000000054a <gets>:
     54a:	7179                	addi	sp,sp,-48
     54c:	f406                	sd	ra,40(sp)
     54e:	f022                	sd	s0,32(sp)
     550:	1800                	addi	s0,sp,48
     552:	fca43c23          	sd	a0,-40(s0)
     556:	87ae                	mv	a5,a1
     558:	fcf42a23          	sw	a5,-44(s0)
     55c:	fe042623          	sw	zero,-20(s0)
     560:	a8a1                	j	5b8 <gets+0x6e>
     562:	fe740793          	addi	a5,s0,-25
     566:	4605                	li	a2,1
     568:	85be                	mv	a1,a5
     56a:	4501                	li	a0,0
     56c:	00000097          	auipc	ra,0x0
     570:	2f8080e7          	jalr	760(ra) # 864 <read>
     574:	87aa                	mv	a5,a0
     576:	fef42423          	sw	a5,-24(s0)
     57a:	fe842783          	lw	a5,-24(s0)
     57e:	2781                	sext.w	a5,a5
     580:	04f05763          	blez	a5,5ce <gets+0x84>
     584:	fec42783          	lw	a5,-20(s0)
     588:	0017871b          	addiw	a4,a5,1
     58c:	fee42623          	sw	a4,-20(s0)
     590:	873e                	mv	a4,a5
     592:	fd843783          	ld	a5,-40(s0)
     596:	97ba                	add	a5,a5,a4
     598:	fe744703          	lbu	a4,-25(s0)
     59c:	00e78023          	sb	a4,0(a5)
     5a0:	fe744783          	lbu	a5,-25(s0)
     5a4:	873e                	mv	a4,a5
     5a6:	47a9                	li	a5,10
     5a8:	02f70463          	beq	a4,a5,5d0 <gets+0x86>
     5ac:	fe744783          	lbu	a5,-25(s0)
     5b0:	873e                	mv	a4,a5
     5b2:	47b5                	li	a5,13
     5b4:	00f70e63          	beq	a4,a5,5d0 <gets+0x86>
     5b8:	fec42783          	lw	a5,-20(s0)
     5bc:	2785                	addiw	a5,a5,1
     5be:	0007871b          	sext.w	a4,a5
     5c2:	fd442783          	lw	a5,-44(s0)
     5c6:	2781                	sext.w	a5,a5
     5c8:	f8f74de3          	blt	a4,a5,562 <gets+0x18>
     5cc:	a011                	j	5d0 <gets+0x86>
     5ce:	0001                	nop
     5d0:	fec42783          	lw	a5,-20(s0)
     5d4:	fd843703          	ld	a4,-40(s0)
     5d8:	97ba                	add	a5,a5,a4
     5da:	00078023          	sb	zero,0(a5)
     5de:	fd843783          	ld	a5,-40(s0)
     5e2:	853e                	mv	a0,a5
     5e4:	70a2                	ld	ra,40(sp)
     5e6:	7402                	ld	s0,32(sp)
     5e8:	6145                	addi	sp,sp,48
     5ea:	8082                	ret

00000000000005ec <stat>:
     5ec:	7179                	addi	sp,sp,-48
     5ee:	f406                	sd	ra,40(sp)
     5f0:	f022                	sd	s0,32(sp)
     5f2:	1800                	addi	s0,sp,48
     5f4:	fca43c23          	sd	a0,-40(s0)
     5f8:	fcb43823          	sd	a1,-48(s0)
     5fc:	4581                	li	a1,0
     5fe:	fd843503          	ld	a0,-40(s0)
     602:	00000097          	auipc	ra,0x0
     606:	28a080e7          	jalr	650(ra) # 88c <open>
     60a:	87aa                	mv	a5,a0
     60c:	fef42623          	sw	a5,-20(s0)
     610:	fec42783          	lw	a5,-20(s0)
     614:	2781                	sext.w	a5,a5
     616:	0007d463          	bgez	a5,61e <stat+0x32>
     61a:	57fd                	li	a5,-1
     61c:	a035                	j	648 <stat+0x5c>
     61e:	fec42783          	lw	a5,-20(s0)
     622:	fd043583          	ld	a1,-48(s0)
     626:	853e                	mv	a0,a5
     628:	00000097          	auipc	ra,0x0
     62c:	27c080e7          	jalr	636(ra) # 8a4 <fstat>
     630:	87aa                	mv	a5,a0
     632:	fef42423          	sw	a5,-24(s0)
     636:	fec42783          	lw	a5,-20(s0)
     63a:	853e                	mv	a0,a5
     63c:	00000097          	auipc	ra,0x0
     640:	238080e7          	jalr	568(ra) # 874 <close>
     644:	fe842783          	lw	a5,-24(s0)
     648:	853e                	mv	a0,a5
     64a:	70a2                	ld	ra,40(sp)
     64c:	7402                	ld	s0,32(sp)
     64e:	6145                	addi	sp,sp,48
     650:	8082                	ret

0000000000000652 <atoi>:
     652:	7179                	addi	sp,sp,-48
     654:	f422                	sd	s0,40(sp)
     656:	1800                	addi	s0,sp,48
     658:	fca43c23          	sd	a0,-40(s0)
     65c:	fe042623          	sw	zero,-20(s0)
     660:	a81d                	j	696 <atoi+0x44>
     662:	fec42783          	lw	a5,-20(s0)
     666:	873e                	mv	a4,a5
     668:	87ba                	mv	a5,a4
     66a:	0027979b          	slliw	a5,a5,0x2
     66e:	9fb9                	addw	a5,a5,a4
     670:	0017979b          	slliw	a5,a5,0x1
     674:	0007871b          	sext.w	a4,a5
     678:	fd843783          	ld	a5,-40(s0)
     67c:	00178693          	addi	a3,a5,1
     680:	fcd43c23          	sd	a3,-40(s0)
     684:	0007c783          	lbu	a5,0(a5)
     688:	2781                	sext.w	a5,a5
     68a:	9fb9                	addw	a5,a5,a4
     68c:	2781                	sext.w	a5,a5
     68e:	fd07879b          	addiw	a5,a5,-48
     692:	fef42623          	sw	a5,-20(s0)
     696:	fd843783          	ld	a5,-40(s0)
     69a:	0007c783          	lbu	a5,0(a5)
     69e:	873e                	mv	a4,a5
     6a0:	02f00793          	li	a5,47
     6a4:	00e7fb63          	bgeu	a5,a4,6ba <atoi+0x68>
     6a8:	fd843783          	ld	a5,-40(s0)
     6ac:	0007c783          	lbu	a5,0(a5)
     6b0:	873e                	mv	a4,a5
     6b2:	03900793          	li	a5,57
     6b6:	fae7f6e3          	bgeu	a5,a4,662 <atoi+0x10>
     6ba:	fec42783          	lw	a5,-20(s0)
     6be:	853e                	mv	a0,a5
     6c0:	7422                	ld	s0,40(sp)
     6c2:	6145                	addi	sp,sp,48
     6c4:	8082                	ret

00000000000006c6 <memmove>:
     6c6:	7139                	addi	sp,sp,-64
     6c8:	fc22                	sd	s0,56(sp)
     6ca:	0080                	addi	s0,sp,64
     6cc:	fca43c23          	sd	a0,-40(s0)
     6d0:	fcb43823          	sd	a1,-48(s0)
     6d4:	87b2                	mv	a5,a2
     6d6:	fcf42623          	sw	a5,-52(s0)
     6da:	fd843783          	ld	a5,-40(s0)
     6de:	fef43423          	sd	a5,-24(s0)
     6e2:	fd043783          	ld	a5,-48(s0)
     6e6:	fef43023          	sd	a5,-32(s0)
     6ea:	fe043703          	ld	a4,-32(s0)
     6ee:	fe843783          	ld	a5,-24(s0)
     6f2:	02e7fc63          	bgeu	a5,a4,72a <memmove+0x64>
     6f6:	a00d                	j	718 <memmove+0x52>
     6f8:	fe043703          	ld	a4,-32(s0)
     6fc:	00170793          	addi	a5,a4,1
     700:	fef43023          	sd	a5,-32(s0)
     704:	fe843783          	ld	a5,-24(s0)
     708:	00178693          	addi	a3,a5,1
     70c:	fed43423          	sd	a3,-24(s0)
     710:	00074703          	lbu	a4,0(a4)
     714:	00e78023          	sb	a4,0(a5)
     718:	fcc42783          	lw	a5,-52(s0)
     71c:	fff7871b          	addiw	a4,a5,-1
     720:	fce42623          	sw	a4,-52(s0)
     724:	fcf04ae3          	bgtz	a5,6f8 <memmove+0x32>
     728:	a891                	j	77c <memmove+0xb6>
     72a:	fcc42783          	lw	a5,-52(s0)
     72e:	fe843703          	ld	a4,-24(s0)
     732:	97ba                	add	a5,a5,a4
     734:	fef43423          	sd	a5,-24(s0)
     738:	fcc42783          	lw	a5,-52(s0)
     73c:	fe043703          	ld	a4,-32(s0)
     740:	97ba                	add	a5,a5,a4
     742:	fef43023          	sd	a5,-32(s0)
     746:	a01d                	j	76c <memmove+0xa6>
     748:	fe043783          	ld	a5,-32(s0)
     74c:	17fd                	addi	a5,a5,-1
     74e:	fef43023          	sd	a5,-32(s0)
     752:	fe843783          	ld	a5,-24(s0)
     756:	17fd                	addi	a5,a5,-1
     758:	fef43423          	sd	a5,-24(s0)
     75c:	fe043783          	ld	a5,-32(s0)
     760:	0007c703          	lbu	a4,0(a5)
     764:	fe843783          	ld	a5,-24(s0)
     768:	00e78023          	sb	a4,0(a5)
     76c:	fcc42783          	lw	a5,-52(s0)
     770:	fff7871b          	addiw	a4,a5,-1
     774:	fce42623          	sw	a4,-52(s0)
     778:	fcf048e3          	bgtz	a5,748 <memmove+0x82>
     77c:	fd843783          	ld	a5,-40(s0)
     780:	853e                	mv	a0,a5
     782:	7462                	ld	s0,56(sp)
     784:	6121                	addi	sp,sp,64
     786:	8082                	ret

0000000000000788 <memcmp>:
     788:	7139                	addi	sp,sp,-64
     78a:	fc22                	sd	s0,56(sp)
     78c:	0080                	addi	s0,sp,64
     78e:	fca43c23          	sd	a0,-40(s0)
     792:	fcb43823          	sd	a1,-48(s0)
     796:	87b2                	mv	a5,a2
     798:	fcf42623          	sw	a5,-52(s0)
     79c:	fd843783          	ld	a5,-40(s0)
     7a0:	fef43423          	sd	a5,-24(s0)
     7a4:	fd043783          	ld	a5,-48(s0)
     7a8:	fef43023          	sd	a5,-32(s0)
     7ac:	a0a1                	j	7f4 <memcmp+0x6c>
     7ae:	fe843783          	ld	a5,-24(s0)
     7b2:	0007c703          	lbu	a4,0(a5)
     7b6:	fe043783          	ld	a5,-32(s0)
     7ba:	0007c783          	lbu	a5,0(a5)
     7be:	02f70163          	beq	a4,a5,7e0 <memcmp+0x58>
     7c2:	fe843783          	ld	a5,-24(s0)
     7c6:	0007c783          	lbu	a5,0(a5)
     7ca:	0007871b          	sext.w	a4,a5
     7ce:	fe043783          	ld	a5,-32(s0)
     7d2:	0007c783          	lbu	a5,0(a5)
     7d6:	2781                	sext.w	a5,a5
     7d8:	40f707bb          	subw	a5,a4,a5
     7dc:	2781                	sext.w	a5,a5
     7de:	a01d                	j	804 <memcmp+0x7c>
     7e0:	fe843783          	ld	a5,-24(s0)
     7e4:	0785                	addi	a5,a5,1
     7e6:	fef43423          	sd	a5,-24(s0)
     7ea:	fe043783          	ld	a5,-32(s0)
     7ee:	0785                	addi	a5,a5,1
     7f0:	fef43023          	sd	a5,-32(s0)
     7f4:	fcc42783          	lw	a5,-52(s0)
     7f8:	fff7871b          	addiw	a4,a5,-1
     7fc:	fce42623          	sw	a4,-52(s0)
     800:	f7dd                	bnez	a5,7ae <memcmp+0x26>
     802:	4781                	li	a5,0
     804:	853e                	mv	a0,a5
     806:	7462                	ld	s0,56(sp)
     808:	6121                	addi	sp,sp,64
     80a:	8082                	ret

000000000000080c <memcpy>:
     80c:	7179                	addi	sp,sp,-48
     80e:	f406                	sd	ra,40(sp)
     810:	f022                	sd	s0,32(sp)
     812:	1800                	addi	s0,sp,48
     814:	fea43423          	sd	a0,-24(s0)
     818:	feb43023          	sd	a1,-32(s0)
     81c:	87b2                	mv	a5,a2
     81e:	fcf42e23          	sw	a5,-36(s0)
     822:	fdc42783          	lw	a5,-36(s0)
     826:	863e                	mv	a2,a5
     828:	fe043583          	ld	a1,-32(s0)
     82c:	fe843503          	ld	a0,-24(s0)
     830:	00000097          	auipc	ra,0x0
     834:	e96080e7          	jalr	-362(ra) # 6c6 <memmove>
     838:	87aa                	mv	a5,a0
     83a:	853e                	mv	a0,a5
     83c:	70a2                	ld	ra,40(sp)
     83e:	7402                	ld	s0,32(sp)
     840:	6145                	addi	sp,sp,48
     842:	8082                	ret

0000000000000844 <fork>:
     844:	4885                	li	a7,1
     846:	00000073          	ecall
     84a:	8082                	ret

000000000000084c <exit>:
     84c:	4889                	li	a7,2
     84e:	00000073          	ecall
     852:	8082                	ret

0000000000000854 <wait>:
     854:	488d                	li	a7,3
     856:	00000073          	ecall
     85a:	8082                	ret

000000000000085c <pipe>:
     85c:	4891                	li	a7,4
     85e:	00000073          	ecall
     862:	8082                	ret

0000000000000864 <read>:
     864:	4895                	li	a7,5
     866:	00000073          	ecall
     86a:	8082                	ret

000000000000086c <write>:
     86c:	48c1                	li	a7,16
     86e:	00000073          	ecall
     872:	8082                	ret

0000000000000874 <close>:
     874:	48d5                	li	a7,21
     876:	00000073          	ecall
     87a:	8082                	ret

000000000000087c <kill>:
     87c:	4899                	li	a7,6
     87e:	00000073          	ecall
     882:	8082                	ret

0000000000000884 <exec>:
     884:	489d                	li	a7,7
     886:	00000073          	ecall
     88a:	8082                	ret

000000000000088c <open>:
     88c:	48bd                	li	a7,15
     88e:	00000073          	ecall
     892:	8082                	ret

0000000000000894 <mknod>:
     894:	48c5                	li	a7,17
     896:	00000073          	ecall
     89a:	8082                	ret

000000000000089c <unlink>:
     89c:	48c9                	li	a7,18
     89e:	00000073          	ecall
     8a2:	8082                	ret

00000000000008a4 <fstat>:
     8a4:	48a1                	li	a7,8
     8a6:	00000073          	ecall
     8aa:	8082                	ret

00000000000008ac <link>:
     8ac:	48cd                	li	a7,19
     8ae:	00000073          	ecall
     8b2:	8082                	ret

00000000000008b4 <mkdir>:
     8b4:	48d1                	li	a7,20
     8b6:	00000073          	ecall
     8ba:	8082                	ret

00000000000008bc <chdir>:
     8bc:	48a5                	li	a7,9
     8be:	00000073          	ecall
     8c2:	8082                	ret

00000000000008c4 <dup>:
     8c4:	48a9                	li	a7,10
     8c6:	00000073          	ecall
     8ca:	8082                	ret

00000000000008cc <getpid>:
     8cc:	48ad                	li	a7,11
     8ce:	00000073          	ecall
     8d2:	8082                	ret

00000000000008d4 <sbrk>:
     8d4:	48b1                	li	a7,12
     8d6:	00000073          	ecall
     8da:	8082                	ret

00000000000008dc <sleep>:
     8dc:	48b5                	li	a7,13
     8de:	00000073          	ecall
     8e2:	8082                	ret

00000000000008e4 <uptime>:
     8e4:	48b9                	li	a7,14
     8e6:	00000073          	ecall
     8ea:	8082                	ret

00000000000008ec <waitx>:
     8ec:	48d9                	li	a7,22
     8ee:	00000073          	ecall
     8f2:	8082                	ret

00000000000008f4 <getsyscount>:
     8f4:	48dd                	li	a7,23
     8f6:	00000073          	ecall
     8fa:	8082                	ret

00000000000008fc <sigalarm>:
     8fc:	48e1                	li	a7,24
     8fe:	00000073          	ecall
     902:	8082                	ret

0000000000000904 <sigreturn>:
     904:	48e5                	li	a7,25
     906:	00000073          	ecall
     90a:	8082                	ret

000000000000090c <settickets>:
     90c:	48e9                	li	a7,26
     90e:	00000073          	ecall
     912:	8082                	ret

0000000000000914 <putc>:
     914:	1101                	addi	sp,sp,-32
     916:	ec06                	sd	ra,24(sp)
     918:	e822                	sd	s0,16(sp)
     91a:	1000                	addi	s0,sp,32
     91c:	87aa                	mv	a5,a0
     91e:	872e                	mv	a4,a1
     920:	fef42623          	sw	a5,-20(s0)
     924:	87ba                	mv	a5,a4
     926:	fef405a3          	sb	a5,-21(s0)
     92a:	feb40713          	addi	a4,s0,-21
     92e:	fec42783          	lw	a5,-20(s0)
     932:	4605                	li	a2,1
     934:	85ba                	mv	a1,a4
     936:	853e                	mv	a0,a5
     938:	00000097          	auipc	ra,0x0
     93c:	f34080e7          	jalr	-204(ra) # 86c <write>
     940:	0001                	nop
     942:	60e2                	ld	ra,24(sp)
     944:	6442                	ld	s0,16(sp)
     946:	6105                	addi	sp,sp,32
     948:	8082                	ret

000000000000094a <printint>:
     94a:	7139                	addi	sp,sp,-64
     94c:	fc06                	sd	ra,56(sp)
     94e:	f822                	sd	s0,48(sp)
     950:	0080                	addi	s0,sp,64
     952:	87aa                	mv	a5,a0
     954:	8736                	mv	a4,a3
     956:	fcf42623          	sw	a5,-52(s0)
     95a:	87ae                	mv	a5,a1
     95c:	fcf42423          	sw	a5,-56(s0)
     960:	87b2                	mv	a5,a2
     962:	fcf42223          	sw	a5,-60(s0)
     966:	87ba                	mv	a5,a4
     968:	fcf42023          	sw	a5,-64(s0)
     96c:	fe042423          	sw	zero,-24(s0)
     970:	fc042783          	lw	a5,-64(s0)
     974:	2781                	sext.w	a5,a5
     976:	c38d                	beqz	a5,998 <printint+0x4e>
     978:	fc842783          	lw	a5,-56(s0)
     97c:	2781                	sext.w	a5,a5
     97e:	0007dd63          	bgez	a5,998 <printint+0x4e>
     982:	4785                	li	a5,1
     984:	fef42423          	sw	a5,-24(s0)
     988:	fc842783          	lw	a5,-56(s0)
     98c:	40f007bb          	negw	a5,a5
     990:	2781                	sext.w	a5,a5
     992:	fef42223          	sw	a5,-28(s0)
     996:	a029                	j	9a0 <printint+0x56>
     998:	fc842783          	lw	a5,-56(s0)
     99c:	fef42223          	sw	a5,-28(s0)
     9a0:	fe042623          	sw	zero,-20(s0)
     9a4:	fc442783          	lw	a5,-60(s0)
     9a8:	fe442703          	lw	a4,-28(s0)
     9ac:	02f777bb          	remuw	a5,a4,a5
     9b0:	0007861b          	sext.w	a2,a5
     9b4:	fec42783          	lw	a5,-20(s0)
     9b8:	0017871b          	addiw	a4,a5,1
     9bc:	fee42623          	sw	a4,-20(s0)
     9c0:	00001697          	auipc	a3,0x1
     9c4:	64068693          	addi	a3,a3,1600 # 2000 <digits>
     9c8:	02061713          	slli	a4,a2,0x20
     9cc:	9301                	srli	a4,a4,0x20
     9ce:	9736                	add	a4,a4,a3
     9d0:	00074703          	lbu	a4,0(a4)
     9d4:	17c1                	addi	a5,a5,-16
     9d6:	97a2                	add	a5,a5,s0
     9d8:	fee78023          	sb	a4,-32(a5)
     9dc:	fc442783          	lw	a5,-60(s0)
     9e0:	fe442703          	lw	a4,-28(s0)
     9e4:	02f757bb          	divuw	a5,a4,a5
     9e8:	fef42223          	sw	a5,-28(s0)
     9ec:	fe442783          	lw	a5,-28(s0)
     9f0:	2781                	sext.w	a5,a5
     9f2:	fbcd                	bnez	a5,9a4 <printint+0x5a>
     9f4:	fe842783          	lw	a5,-24(s0)
     9f8:	2781                	sext.w	a5,a5
     9fa:	cf85                	beqz	a5,a32 <printint+0xe8>
     9fc:	fec42783          	lw	a5,-20(s0)
     a00:	0017871b          	addiw	a4,a5,1
     a04:	fee42623          	sw	a4,-20(s0)
     a08:	17c1                	addi	a5,a5,-16
     a0a:	97a2                	add	a5,a5,s0
     a0c:	02d00713          	li	a4,45
     a10:	fee78023          	sb	a4,-32(a5)
     a14:	a839                	j	a32 <printint+0xe8>
     a16:	fec42783          	lw	a5,-20(s0)
     a1a:	17c1                	addi	a5,a5,-16
     a1c:	97a2                	add	a5,a5,s0
     a1e:	fe07c703          	lbu	a4,-32(a5)
     a22:	fcc42783          	lw	a5,-52(s0)
     a26:	85ba                	mv	a1,a4
     a28:	853e                	mv	a0,a5
     a2a:	00000097          	auipc	ra,0x0
     a2e:	eea080e7          	jalr	-278(ra) # 914 <putc>
     a32:	fec42783          	lw	a5,-20(s0)
     a36:	37fd                	addiw	a5,a5,-1
     a38:	fef42623          	sw	a5,-20(s0)
     a3c:	fec42783          	lw	a5,-20(s0)
     a40:	2781                	sext.w	a5,a5
     a42:	fc07dae3          	bgez	a5,a16 <printint+0xcc>
     a46:	0001                	nop
     a48:	0001                	nop
     a4a:	70e2                	ld	ra,56(sp)
     a4c:	7442                	ld	s0,48(sp)
     a4e:	6121                	addi	sp,sp,64
     a50:	8082                	ret

0000000000000a52 <printptr>:
     a52:	7179                	addi	sp,sp,-48
     a54:	f406                	sd	ra,40(sp)
     a56:	f022                	sd	s0,32(sp)
     a58:	1800                	addi	s0,sp,48
     a5a:	87aa                	mv	a5,a0
     a5c:	fcb43823          	sd	a1,-48(s0)
     a60:	fcf42e23          	sw	a5,-36(s0)
     a64:	fdc42783          	lw	a5,-36(s0)
     a68:	03000593          	li	a1,48
     a6c:	853e                	mv	a0,a5
     a6e:	00000097          	auipc	ra,0x0
     a72:	ea6080e7          	jalr	-346(ra) # 914 <putc>
     a76:	fdc42783          	lw	a5,-36(s0)
     a7a:	07800593          	li	a1,120
     a7e:	853e                	mv	a0,a5
     a80:	00000097          	auipc	ra,0x0
     a84:	e94080e7          	jalr	-364(ra) # 914 <putc>
     a88:	fe042623          	sw	zero,-20(s0)
     a8c:	a82d                	j	ac6 <printptr+0x74>
     a8e:	fd043783          	ld	a5,-48(s0)
     a92:	93f1                	srli	a5,a5,0x3c
     a94:	00001717          	auipc	a4,0x1
     a98:	56c70713          	addi	a4,a4,1388 # 2000 <digits>
     a9c:	97ba                	add	a5,a5,a4
     a9e:	0007c703          	lbu	a4,0(a5)
     aa2:	fdc42783          	lw	a5,-36(s0)
     aa6:	85ba                	mv	a1,a4
     aa8:	853e                	mv	a0,a5
     aaa:	00000097          	auipc	ra,0x0
     aae:	e6a080e7          	jalr	-406(ra) # 914 <putc>
     ab2:	fec42783          	lw	a5,-20(s0)
     ab6:	2785                	addiw	a5,a5,1
     ab8:	fef42623          	sw	a5,-20(s0)
     abc:	fd043783          	ld	a5,-48(s0)
     ac0:	0792                	slli	a5,a5,0x4
     ac2:	fcf43823          	sd	a5,-48(s0)
     ac6:	fec42783          	lw	a5,-20(s0)
     aca:	873e                	mv	a4,a5
     acc:	47bd                	li	a5,15
     ace:	fce7f0e3          	bgeu	a5,a4,a8e <printptr+0x3c>
     ad2:	0001                	nop
     ad4:	0001                	nop
     ad6:	70a2                	ld	ra,40(sp)
     ad8:	7402                	ld	s0,32(sp)
     ada:	6145                	addi	sp,sp,48
     adc:	8082                	ret

0000000000000ade <vprintf>:
     ade:	715d                	addi	sp,sp,-80
     ae0:	e486                	sd	ra,72(sp)
     ae2:	e0a2                	sd	s0,64(sp)
     ae4:	0880                	addi	s0,sp,80
     ae6:	87aa                	mv	a5,a0
     ae8:	fcb43023          	sd	a1,-64(s0)
     aec:	fac43c23          	sd	a2,-72(s0)
     af0:	fcf42623          	sw	a5,-52(s0)
     af4:	fe042023          	sw	zero,-32(s0)
     af8:	fe042223          	sw	zero,-28(s0)
     afc:	a42d                	j	d26 <vprintf+0x248>
     afe:	fe442783          	lw	a5,-28(s0)
     b02:	fc043703          	ld	a4,-64(s0)
     b06:	97ba                	add	a5,a5,a4
     b08:	0007c783          	lbu	a5,0(a5)
     b0c:	fcf42e23          	sw	a5,-36(s0)
     b10:	fe042783          	lw	a5,-32(s0)
     b14:	2781                	sext.w	a5,a5
     b16:	eb9d                	bnez	a5,b4c <vprintf+0x6e>
     b18:	fdc42783          	lw	a5,-36(s0)
     b1c:	0007871b          	sext.w	a4,a5
     b20:	02500793          	li	a5,37
     b24:	00f71763          	bne	a4,a5,b32 <vprintf+0x54>
     b28:	02500793          	li	a5,37
     b2c:	fef42023          	sw	a5,-32(s0)
     b30:	a2f5                	j	d1c <vprintf+0x23e>
     b32:	fdc42783          	lw	a5,-36(s0)
     b36:	0ff7f713          	zext.b	a4,a5
     b3a:	fcc42783          	lw	a5,-52(s0)
     b3e:	85ba                	mv	a1,a4
     b40:	853e                	mv	a0,a5
     b42:	00000097          	auipc	ra,0x0
     b46:	dd2080e7          	jalr	-558(ra) # 914 <putc>
     b4a:	aac9                	j	d1c <vprintf+0x23e>
     b4c:	fe042783          	lw	a5,-32(s0)
     b50:	0007871b          	sext.w	a4,a5
     b54:	02500793          	li	a5,37
     b58:	1cf71263          	bne	a4,a5,d1c <vprintf+0x23e>
     b5c:	fdc42783          	lw	a5,-36(s0)
     b60:	0007871b          	sext.w	a4,a5
     b64:	06400793          	li	a5,100
     b68:	02f71463          	bne	a4,a5,b90 <vprintf+0xb2>
     b6c:	fb843783          	ld	a5,-72(s0)
     b70:	00878713          	addi	a4,a5,8
     b74:	fae43c23          	sd	a4,-72(s0)
     b78:	4398                	lw	a4,0(a5)
     b7a:	fcc42783          	lw	a5,-52(s0)
     b7e:	4685                	li	a3,1
     b80:	4629                	li	a2,10
     b82:	85ba                	mv	a1,a4
     b84:	853e                	mv	a0,a5
     b86:	00000097          	auipc	ra,0x0
     b8a:	dc4080e7          	jalr	-572(ra) # 94a <printint>
     b8e:	a269                	j	d18 <vprintf+0x23a>
     b90:	fdc42783          	lw	a5,-36(s0)
     b94:	0007871b          	sext.w	a4,a5
     b98:	06c00793          	li	a5,108
     b9c:	02f71663          	bne	a4,a5,bc8 <vprintf+0xea>
     ba0:	fb843783          	ld	a5,-72(s0)
     ba4:	00878713          	addi	a4,a5,8
     ba8:	fae43c23          	sd	a4,-72(s0)
     bac:	639c                	ld	a5,0(a5)
     bae:	0007871b          	sext.w	a4,a5
     bb2:	fcc42783          	lw	a5,-52(s0)
     bb6:	4681                	li	a3,0
     bb8:	4629                	li	a2,10
     bba:	85ba                	mv	a1,a4
     bbc:	853e                	mv	a0,a5
     bbe:	00000097          	auipc	ra,0x0
     bc2:	d8c080e7          	jalr	-628(ra) # 94a <printint>
     bc6:	aa89                	j	d18 <vprintf+0x23a>
     bc8:	fdc42783          	lw	a5,-36(s0)
     bcc:	0007871b          	sext.w	a4,a5
     bd0:	07800793          	li	a5,120
     bd4:	02f71463          	bne	a4,a5,bfc <vprintf+0x11e>
     bd8:	fb843783          	ld	a5,-72(s0)
     bdc:	00878713          	addi	a4,a5,8
     be0:	fae43c23          	sd	a4,-72(s0)
     be4:	4398                	lw	a4,0(a5)
     be6:	fcc42783          	lw	a5,-52(s0)
     bea:	4681                	li	a3,0
     bec:	4641                	li	a2,16
     bee:	85ba                	mv	a1,a4
     bf0:	853e                	mv	a0,a5
     bf2:	00000097          	auipc	ra,0x0
     bf6:	d58080e7          	jalr	-680(ra) # 94a <printint>
     bfa:	aa39                	j	d18 <vprintf+0x23a>
     bfc:	fdc42783          	lw	a5,-36(s0)
     c00:	0007871b          	sext.w	a4,a5
     c04:	07000793          	li	a5,112
     c08:	02f71263          	bne	a4,a5,c2c <vprintf+0x14e>
     c0c:	fb843783          	ld	a5,-72(s0)
     c10:	00878713          	addi	a4,a5,8
     c14:	fae43c23          	sd	a4,-72(s0)
     c18:	6398                	ld	a4,0(a5)
     c1a:	fcc42783          	lw	a5,-52(s0)
     c1e:	85ba                	mv	a1,a4
     c20:	853e                	mv	a0,a5
     c22:	00000097          	auipc	ra,0x0
     c26:	e30080e7          	jalr	-464(ra) # a52 <printptr>
     c2a:	a0fd                	j	d18 <vprintf+0x23a>
     c2c:	fdc42783          	lw	a5,-36(s0)
     c30:	0007871b          	sext.w	a4,a5
     c34:	07300793          	li	a5,115
     c38:	04f71c63          	bne	a4,a5,c90 <vprintf+0x1b2>
     c3c:	fb843783          	ld	a5,-72(s0)
     c40:	00878713          	addi	a4,a5,8
     c44:	fae43c23          	sd	a4,-72(s0)
     c48:	639c                	ld	a5,0(a5)
     c4a:	fef43423          	sd	a5,-24(s0)
     c4e:	fe843783          	ld	a5,-24(s0)
     c52:	eb8d                	bnez	a5,c84 <vprintf+0x1a6>
     c54:	00000797          	auipc	a5,0x0
     c58:	4ec78793          	addi	a5,a5,1260 # 1140 <malloc+0x1b2>
     c5c:	fef43423          	sd	a5,-24(s0)
     c60:	a015                	j	c84 <vprintf+0x1a6>
     c62:	fe843783          	ld	a5,-24(s0)
     c66:	0007c703          	lbu	a4,0(a5)
     c6a:	fcc42783          	lw	a5,-52(s0)
     c6e:	85ba                	mv	a1,a4
     c70:	853e                	mv	a0,a5
     c72:	00000097          	auipc	ra,0x0
     c76:	ca2080e7          	jalr	-862(ra) # 914 <putc>
     c7a:	fe843783          	ld	a5,-24(s0)
     c7e:	0785                	addi	a5,a5,1
     c80:	fef43423          	sd	a5,-24(s0)
     c84:	fe843783          	ld	a5,-24(s0)
     c88:	0007c783          	lbu	a5,0(a5)
     c8c:	fbf9                	bnez	a5,c62 <vprintf+0x184>
     c8e:	a069                	j	d18 <vprintf+0x23a>
     c90:	fdc42783          	lw	a5,-36(s0)
     c94:	0007871b          	sext.w	a4,a5
     c98:	06300793          	li	a5,99
     c9c:	02f71463          	bne	a4,a5,cc4 <vprintf+0x1e6>
     ca0:	fb843783          	ld	a5,-72(s0)
     ca4:	00878713          	addi	a4,a5,8
     ca8:	fae43c23          	sd	a4,-72(s0)
     cac:	439c                	lw	a5,0(a5)
     cae:	0ff7f713          	zext.b	a4,a5
     cb2:	fcc42783          	lw	a5,-52(s0)
     cb6:	85ba                	mv	a1,a4
     cb8:	853e                	mv	a0,a5
     cba:	00000097          	auipc	ra,0x0
     cbe:	c5a080e7          	jalr	-934(ra) # 914 <putc>
     cc2:	a899                	j	d18 <vprintf+0x23a>
     cc4:	fdc42783          	lw	a5,-36(s0)
     cc8:	0007871b          	sext.w	a4,a5
     ccc:	02500793          	li	a5,37
     cd0:	00f71f63          	bne	a4,a5,cee <vprintf+0x210>
     cd4:	fdc42783          	lw	a5,-36(s0)
     cd8:	0ff7f713          	zext.b	a4,a5
     cdc:	fcc42783          	lw	a5,-52(s0)
     ce0:	85ba                	mv	a1,a4
     ce2:	853e                	mv	a0,a5
     ce4:	00000097          	auipc	ra,0x0
     ce8:	c30080e7          	jalr	-976(ra) # 914 <putc>
     cec:	a035                	j	d18 <vprintf+0x23a>
     cee:	fcc42783          	lw	a5,-52(s0)
     cf2:	02500593          	li	a1,37
     cf6:	853e                	mv	a0,a5
     cf8:	00000097          	auipc	ra,0x0
     cfc:	c1c080e7          	jalr	-996(ra) # 914 <putc>
     d00:	fdc42783          	lw	a5,-36(s0)
     d04:	0ff7f713          	zext.b	a4,a5
     d08:	fcc42783          	lw	a5,-52(s0)
     d0c:	85ba                	mv	a1,a4
     d0e:	853e                	mv	a0,a5
     d10:	00000097          	auipc	ra,0x0
     d14:	c04080e7          	jalr	-1020(ra) # 914 <putc>
     d18:	fe042023          	sw	zero,-32(s0)
     d1c:	fe442783          	lw	a5,-28(s0)
     d20:	2785                	addiw	a5,a5,1
     d22:	fef42223          	sw	a5,-28(s0)
     d26:	fe442783          	lw	a5,-28(s0)
     d2a:	fc043703          	ld	a4,-64(s0)
     d2e:	97ba                	add	a5,a5,a4
     d30:	0007c783          	lbu	a5,0(a5)
     d34:	dc0795e3          	bnez	a5,afe <vprintf+0x20>
     d38:	0001                	nop
     d3a:	0001                	nop
     d3c:	60a6                	ld	ra,72(sp)
     d3e:	6406                	ld	s0,64(sp)
     d40:	6161                	addi	sp,sp,80
     d42:	8082                	ret

0000000000000d44 <fprintf>:
     d44:	7159                	addi	sp,sp,-112
     d46:	fc06                	sd	ra,56(sp)
     d48:	f822                	sd	s0,48(sp)
     d4a:	0080                	addi	s0,sp,64
     d4c:	fcb43823          	sd	a1,-48(s0)
     d50:	e010                	sd	a2,0(s0)
     d52:	e414                	sd	a3,8(s0)
     d54:	e818                	sd	a4,16(s0)
     d56:	ec1c                	sd	a5,24(s0)
     d58:	03043023          	sd	a6,32(s0)
     d5c:	03143423          	sd	a7,40(s0)
     d60:	87aa                	mv	a5,a0
     d62:	fcf42e23          	sw	a5,-36(s0)
     d66:	03040793          	addi	a5,s0,48
     d6a:	fcf43423          	sd	a5,-56(s0)
     d6e:	fc843783          	ld	a5,-56(s0)
     d72:	fd078793          	addi	a5,a5,-48
     d76:	fef43423          	sd	a5,-24(s0)
     d7a:	fe843703          	ld	a4,-24(s0)
     d7e:	fdc42783          	lw	a5,-36(s0)
     d82:	863a                	mv	a2,a4
     d84:	fd043583          	ld	a1,-48(s0)
     d88:	853e                	mv	a0,a5
     d8a:	00000097          	auipc	ra,0x0
     d8e:	d54080e7          	jalr	-684(ra) # ade <vprintf>
     d92:	0001                	nop
     d94:	70e2                	ld	ra,56(sp)
     d96:	7442                	ld	s0,48(sp)
     d98:	6165                	addi	sp,sp,112
     d9a:	8082                	ret

0000000000000d9c <printf>:
     d9c:	7159                	addi	sp,sp,-112
     d9e:	f406                	sd	ra,40(sp)
     da0:	f022                	sd	s0,32(sp)
     da2:	1800                	addi	s0,sp,48
     da4:	fca43c23          	sd	a0,-40(s0)
     da8:	e40c                	sd	a1,8(s0)
     daa:	e810                	sd	a2,16(s0)
     dac:	ec14                	sd	a3,24(s0)
     dae:	f018                	sd	a4,32(s0)
     db0:	f41c                	sd	a5,40(s0)
     db2:	03043823          	sd	a6,48(s0)
     db6:	03143c23          	sd	a7,56(s0)
     dba:	04040793          	addi	a5,s0,64
     dbe:	fcf43823          	sd	a5,-48(s0)
     dc2:	fd043783          	ld	a5,-48(s0)
     dc6:	fc878793          	addi	a5,a5,-56
     dca:	fef43423          	sd	a5,-24(s0)
     dce:	fe843783          	ld	a5,-24(s0)
     dd2:	863e                	mv	a2,a5
     dd4:	fd843583          	ld	a1,-40(s0)
     dd8:	4505                	li	a0,1
     dda:	00000097          	auipc	ra,0x0
     dde:	d04080e7          	jalr	-764(ra) # ade <vprintf>
     de2:	0001                	nop
     de4:	70a2                	ld	ra,40(sp)
     de6:	7402                	ld	s0,32(sp)
     de8:	6165                	addi	sp,sp,112
     dea:	8082                	ret

0000000000000dec <free>:
     dec:	7179                	addi	sp,sp,-48
     dee:	f422                	sd	s0,40(sp)
     df0:	1800                	addi	s0,sp,48
     df2:	fca43c23          	sd	a0,-40(s0)
     df6:	fd843783          	ld	a5,-40(s0)
     dfa:	17c1                	addi	a5,a5,-16
     dfc:	fef43023          	sd	a5,-32(s0)
     e00:	00001797          	auipc	a5,0x1
     e04:	24078793          	addi	a5,a5,576 # 2040 <freep>
     e08:	639c                	ld	a5,0(a5)
     e0a:	fef43423          	sd	a5,-24(s0)
     e0e:	a815                	j	e42 <free+0x56>
     e10:	fe843783          	ld	a5,-24(s0)
     e14:	639c                	ld	a5,0(a5)
     e16:	fe843703          	ld	a4,-24(s0)
     e1a:	00f76f63          	bltu	a4,a5,e38 <free+0x4c>
     e1e:	fe043703          	ld	a4,-32(s0)
     e22:	fe843783          	ld	a5,-24(s0)
     e26:	02e7eb63          	bltu	a5,a4,e5c <free+0x70>
     e2a:	fe843783          	ld	a5,-24(s0)
     e2e:	639c                	ld	a5,0(a5)
     e30:	fe043703          	ld	a4,-32(s0)
     e34:	02f76463          	bltu	a4,a5,e5c <free+0x70>
     e38:	fe843783          	ld	a5,-24(s0)
     e3c:	639c                	ld	a5,0(a5)
     e3e:	fef43423          	sd	a5,-24(s0)
     e42:	fe043703          	ld	a4,-32(s0)
     e46:	fe843783          	ld	a5,-24(s0)
     e4a:	fce7f3e3          	bgeu	a5,a4,e10 <free+0x24>
     e4e:	fe843783          	ld	a5,-24(s0)
     e52:	639c                	ld	a5,0(a5)
     e54:	fe043703          	ld	a4,-32(s0)
     e58:	faf77ce3          	bgeu	a4,a5,e10 <free+0x24>
     e5c:	fe043783          	ld	a5,-32(s0)
     e60:	479c                	lw	a5,8(a5)
     e62:	1782                	slli	a5,a5,0x20
     e64:	9381                	srli	a5,a5,0x20
     e66:	0792                	slli	a5,a5,0x4
     e68:	fe043703          	ld	a4,-32(s0)
     e6c:	973e                	add	a4,a4,a5
     e6e:	fe843783          	ld	a5,-24(s0)
     e72:	639c                	ld	a5,0(a5)
     e74:	02f71763          	bne	a4,a5,ea2 <free+0xb6>
     e78:	fe043783          	ld	a5,-32(s0)
     e7c:	4798                	lw	a4,8(a5)
     e7e:	fe843783          	ld	a5,-24(s0)
     e82:	639c                	ld	a5,0(a5)
     e84:	479c                	lw	a5,8(a5)
     e86:	9fb9                	addw	a5,a5,a4
     e88:	0007871b          	sext.w	a4,a5
     e8c:	fe043783          	ld	a5,-32(s0)
     e90:	c798                	sw	a4,8(a5)
     e92:	fe843783          	ld	a5,-24(s0)
     e96:	639c                	ld	a5,0(a5)
     e98:	6398                	ld	a4,0(a5)
     e9a:	fe043783          	ld	a5,-32(s0)
     e9e:	e398                	sd	a4,0(a5)
     ea0:	a039                	j	eae <free+0xc2>
     ea2:	fe843783          	ld	a5,-24(s0)
     ea6:	6398                	ld	a4,0(a5)
     ea8:	fe043783          	ld	a5,-32(s0)
     eac:	e398                	sd	a4,0(a5)
     eae:	fe843783          	ld	a5,-24(s0)
     eb2:	479c                	lw	a5,8(a5)
     eb4:	1782                	slli	a5,a5,0x20
     eb6:	9381                	srli	a5,a5,0x20
     eb8:	0792                	slli	a5,a5,0x4
     eba:	fe843703          	ld	a4,-24(s0)
     ebe:	97ba                	add	a5,a5,a4
     ec0:	fe043703          	ld	a4,-32(s0)
     ec4:	02f71563          	bne	a4,a5,eee <free+0x102>
     ec8:	fe843783          	ld	a5,-24(s0)
     ecc:	4798                	lw	a4,8(a5)
     ece:	fe043783          	ld	a5,-32(s0)
     ed2:	479c                	lw	a5,8(a5)
     ed4:	9fb9                	addw	a5,a5,a4
     ed6:	0007871b          	sext.w	a4,a5
     eda:	fe843783          	ld	a5,-24(s0)
     ede:	c798                	sw	a4,8(a5)
     ee0:	fe043783          	ld	a5,-32(s0)
     ee4:	6398                	ld	a4,0(a5)
     ee6:	fe843783          	ld	a5,-24(s0)
     eea:	e398                	sd	a4,0(a5)
     eec:	a031                	j	ef8 <free+0x10c>
     eee:	fe843783          	ld	a5,-24(s0)
     ef2:	fe043703          	ld	a4,-32(s0)
     ef6:	e398                	sd	a4,0(a5)
     ef8:	00001797          	auipc	a5,0x1
     efc:	14878793          	addi	a5,a5,328 # 2040 <freep>
     f00:	fe843703          	ld	a4,-24(s0)
     f04:	e398                	sd	a4,0(a5)
     f06:	0001                	nop
     f08:	7422                	ld	s0,40(sp)
     f0a:	6145                	addi	sp,sp,48
     f0c:	8082                	ret

0000000000000f0e <morecore>:
     f0e:	7179                	addi	sp,sp,-48
     f10:	f406                	sd	ra,40(sp)
     f12:	f022                	sd	s0,32(sp)
     f14:	1800                	addi	s0,sp,48
     f16:	87aa                	mv	a5,a0
     f18:	fcf42e23          	sw	a5,-36(s0)
     f1c:	fdc42783          	lw	a5,-36(s0)
     f20:	0007871b          	sext.w	a4,a5
     f24:	6785                	lui	a5,0x1
     f26:	00f77563          	bgeu	a4,a5,f30 <morecore+0x22>
     f2a:	6785                	lui	a5,0x1
     f2c:	fcf42e23          	sw	a5,-36(s0)
     f30:	fdc42783          	lw	a5,-36(s0)
     f34:	0047979b          	slliw	a5,a5,0x4
     f38:	2781                	sext.w	a5,a5
     f3a:	2781                	sext.w	a5,a5
     f3c:	853e                	mv	a0,a5
     f3e:	00000097          	auipc	ra,0x0
     f42:	996080e7          	jalr	-1642(ra) # 8d4 <sbrk>
     f46:	fea43423          	sd	a0,-24(s0)
     f4a:	fe843703          	ld	a4,-24(s0)
     f4e:	57fd                	li	a5,-1
     f50:	00f71463          	bne	a4,a5,f58 <morecore+0x4a>
     f54:	4781                	li	a5,0
     f56:	a03d                	j	f84 <morecore+0x76>
     f58:	fe843783          	ld	a5,-24(s0)
     f5c:	fef43023          	sd	a5,-32(s0)
     f60:	fe043783          	ld	a5,-32(s0)
     f64:	fdc42703          	lw	a4,-36(s0)
     f68:	c798                	sw	a4,8(a5)
     f6a:	fe043783          	ld	a5,-32(s0)
     f6e:	07c1                	addi	a5,a5,16 # 1010 <malloc+0x82>
     f70:	853e                	mv	a0,a5
     f72:	00000097          	auipc	ra,0x0
     f76:	e7a080e7          	jalr	-390(ra) # dec <free>
     f7a:	00001797          	auipc	a5,0x1
     f7e:	0c678793          	addi	a5,a5,198 # 2040 <freep>
     f82:	639c                	ld	a5,0(a5)
     f84:	853e                	mv	a0,a5
     f86:	70a2                	ld	ra,40(sp)
     f88:	7402                	ld	s0,32(sp)
     f8a:	6145                	addi	sp,sp,48
     f8c:	8082                	ret

0000000000000f8e <malloc>:
     f8e:	7139                	addi	sp,sp,-64
     f90:	fc06                	sd	ra,56(sp)
     f92:	f822                	sd	s0,48(sp)
     f94:	0080                	addi	s0,sp,64
     f96:	87aa                	mv	a5,a0
     f98:	fcf42623          	sw	a5,-52(s0)
     f9c:	fcc46783          	lwu	a5,-52(s0)
     fa0:	07bd                	addi	a5,a5,15
     fa2:	8391                	srli	a5,a5,0x4
     fa4:	2781                	sext.w	a5,a5
     fa6:	2785                	addiw	a5,a5,1
     fa8:	fcf42e23          	sw	a5,-36(s0)
     fac:	00001797          	auipc	a5,0x1
     fb0:	09478793          	addi	a5,a5,148 # 2040 <freep>
     fb4:	639c                	ld	a5,0(a5)
     fb6:	fef43023          	sd	a5,-32(s0)
     fba:	fe043783          	ld	a5,-32(s0)
     fbe:	ef95                	bnez	a5,ffa <malloc+0x6c>
     fc0:	00001797          	auipc	a5,0x1
     fc4:	07078793          	addi	a5,a5,112 # 2030 <base>
     fc8:	fef43023          	sd	a5,-32(s0)
     fcc:	00001797          	auipc	a5,0x1
     fd0:	07478793          	addi	a5,a5,116 # 2040 <freep>
     fd4:	fe043703          	ld	a4,-32(s0)
     fd8:	e398                	sd	a4,0(a5)
     fda:	00001797          	auipc	a5,0x1
     fde:	06678793          	addi	a5,a5,102 # 2040 <freep>
     fe2:	6398                	ld	a4,0(a5)
     fe4:	00001797          	auipc	a5,0x1
     fe8:	04c78793          	addi	a5,a5,76 # 2030 <base>
     fec:	e398                	sd	a4,0(a5)
     fee:	00001797          	auipc	a5,0x1
     ff2:	04278793          	addi	a5,a5,66 # 2030 <base>
     ff6:	0007a423          	sw	zero,8(a5)
     ffa:	fe043783          	ld	a5,-32(s0)
     ffe:	639c                	ld	a5,0(a5)
    1000:	fef43423          	sd	a5,-24(s0)
    1004:	fe843783          	ld	a5,-24(s0)
    1008:	4798                	lw	a4,8(a5)
    100a:	fdc42783          	lw	a5,-36(s0)
    100e:	2781                	sext.w	a5,a5
    1010:	06f76763          	bltu	a4,a5,107e <malloc+0xf0>
    1014:	fe843783          	ld	a5,-24(s0)
    1018:	4798                	lw	a4,8(a5)
    101a:	fdc42783          	lw	a5,-36(s0)
    101e:	2781                	sext.w	a5,a5
    1020:	00e79963          	bne	a5,a4,1032 <malloc+0xa4>
    1024:	fe843783          	ld	a5,-24(s0)
    1028:	6398                	ld	a4,0(a5)
    102a:	fe043783          	ld	a5,-32(s0)
    102e:	e398                	sd	a4,0(a5)
    1030:	a825                	j	1068 <malloc+0xda>
    1032:	fe843783          	ld	a5,-24(s0)
    1036:	479c                	lw	a5,8(a5)
    1038:	fdc42703          	lw	a4,-36(s0)
    103c:	9f99                	subw	a5,a5,a4
    103e:	0007871b          	sext.w	a4,a5
    1042:	fe843783          	ld	a5,-24(s0)
    1046:	c798                	sw	a4,8(a5)
    1048:	fe843783          	ld	a5,-24(s0)
    104c:	479c                	lw	a5,8(a5)
    104e:	1782                	slli	a5,a5,0x20
    1050:	9381                	srli	a5,a5,0x20
    1052:	0792                	slli	a5,a5,0x4
    1054:	fe843703          	ld	a4,-24(s0)
    1058:	97ba                	add	a5,a5,a4
    105a:	fef43423          	sd	a5,-24(s0)
    105e:	fe843783          	ld	a5,-24(s0)
    1062:	fdc42703          	lw	a4,-36(s0)
    1066:	c798                	sw	a4,8(a5)
    1068:	00001797          	auipc	a5,0x1
    106c:	fd878793          	addi	a5,a5,-40 # 2040 <freep>
    1070:	fe043703          	ld	a4,-32(s0)
    1074:	e398                	sd	a4,0(a5)
    1076:	fe843783          	ld	a5,-24(s0)
    107a:	07c1                	addi	a5,a5,16
    107c:	a091                	j	10c0 <malloc+0x132>
    107e:	00001797          	auipc	a5,0x1
    1082:	fc278793          	addi	a5,a5,-62 # 2040 <freep>
    1086:	639c                	ld	a5,0(a5)
    1088:	fe843703          	ld	a4,-24(s0)
    108c:	02f71063          	bne	a4,a5,10ac <malloc+0x11e>
    1090:	fdc42783          	lw	a5,-36(s0)
    1094:	853e                	mv	a0,a5
    1096:	00000097          	auipc	ra,0x0
    109a:	e78080e7          	jalr	-392(ra) # f0e <morecore>
    109e:	fea43423          	sd	a0,-24(s0)
    10a2:	fe843783          	ld	a5,-24(s0)
    10a6:	e399                	bnez	a5,10ac <malloc+0x11e>
    10a8:	4781                	li	a5,0
    10aa:	a819                	j	10c0 <malloc+0x132>
    10ac:	fe843783          	ld	a5,-24(s0)
    10b0:	fef43023          	sd	a5,-32(s0)
    10b4:	fe843783          	ld	a5,-24(s0)
    10b8:	639c                	ld	a5,0(a5)
    10ba:	fef43423          	sd	a5,-24(s0)
    10be:	b799                	j	1004 <malloc+0x76>
    10c0:	853e                	mv	a0,a5
    10c2:	70e2                	ld	ra,56(sp)
    10c4:	7442                	ld	s0,48(sp)
    10c6:	6121                	addi	sp,sp,64
    10c8:	8082                	ret
